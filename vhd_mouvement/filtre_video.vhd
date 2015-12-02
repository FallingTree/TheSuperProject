library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity filtre_video is
	generic (
			size	: integer := 8 	-- taille de la sous-fenetre = 2**size pixels
			);
    port (
			--horloge et reset
			CLK			: in std_logic; -- clock � 54 MHz
			RESET 		: in std_logic; -- reset � 0 			
			-- flux video � 27 MHz
			-- synchro
			VGA_X :	in std_logic_vector(10 downto 0); -- compteur pixels
			VGA_Y :	in std_logic_vector(10 downto 0); -- compteur lignes
			-- entr�e
			iY : 	in std_logic_vector(7 downto 0); -- flux video entrant : luminance
			iCb : 	in std_logic_vector(7 downto 0); -- flux video entrant : chrominance bleu
			iCr : 	in std_logic_vector(7 downto 0); -- flux video entrant : chrominance rouge
			-- sortie
			oY	: 	out std_logic_vector(7 downto 0); -- flux video sortant : luminance
			oCb	: 	out std_logic_vector(7 downto 0); -- flux video sortant : chrominance bleu
			oCr	: 	out std_logic_vector(7 downto 0); -- flux video sortant : chrominance rouge
			--switch D2E
			switch			: in std_logic_vector(17 downto 0)		-- � connecter � DPDT_SW;
			);			
end entity filtre_video;


architecture A of filtre_video is

component module_fenetrage
	generic (
			size			: integer := 8
			);
	port (
			VGA_X 			:	in std_logic_vector(10 downto 0);
			VGA_Y 			:	in std_logic_vector(10 downto 0);			
			iY 				: 	in std_logic_vector(7 downto 0);
			oY				: 	out std_logic_vector(7 downto 0);
			in_active_area 	:	out std_logic;
			X_cpt			:	out std_logic_vector(10 downto 0);
			Y_cpt			:	out std_logic_vector(10 downto 0)
		);
end component;


component memoire_ligne
  generic (
		address_size : integer;
		word_size : integer
		);
	port (
		CLK			: in std_logic;
		RESET		: in std_logic;		
		address 	: in std_logic_vector(address_size-1 downto 0);
		data_in		: in std_logic_vector(word_size-1 downto 0);
		data_out	: out std_logic_vector(word_size-1 downto 0);
		read_write	: in std_logic
		);	
end component;

component module_gradient
  port (
	in_active_area	: in std_logic;
	iYd				: in std_logic_vector(7 downto 0) ; -- Current pixel
	iYu				: in std_logic_vector(7 downto 0) ; -- Pixel in the line memory (the pixel up to the current)
	oY				: out std_logic_vector(15 downto 0)
  ) ;
end component ; -- module_gradient


--signaux flux video
signal pixel_in		: std_logic_vector(7 downto 0) ;
signal grad		: std_logic_vector(15 downto 0) ;
signal pixel_out		: std_logic_vector(7 downto 0) ;

--signaux de synchro module fentrage
signal Y_cpt			: std_logic_vector(10 downto 0);
signal X_cpt 			: std_logic_vector(10 downto 0);
signal in_active_area 	: std_logic;

-- signaux memoire_ligne
signal adresse_memoire_ligne 	: std_logic_vector(7 downto 0);
signal read_write_memoire_ligne	: std_logic;
signal out_memoire_ligne		: std_logic_vector(7 downto 0) ;

-- signal gradient
signal out_gradient		: std_logic_vector(15 downto 0) ;

begin
	u_1: module_fenetrage 
	generic map(
			size => size
			)
	port map(
			VGA_X => VGA_X,
			VGA_Y => VGA_Y,			
			iY	=> iY,
			oY	=> pixel_in,
			in_active_area => in_active_area,
			X_cpt => X_cpt,
			Y_cpt => Y_cpt
			);
			
	u_2: memoire_ligne
	generic map (
	address_size   => 8, 
	word_size => 8
	)
	port map(
			CLK => CLK,
			RESET => RESET,
			address 	=> adresse_memoire_ligne,
		  data_in		=> pixel_in,
		  data_out	=> out_memoire_ligne,
		  read_write	=> read_write_memoire_ligne
			);
	
	u_3 : module_gradient
	port map(
	   in_active_area	=> in_active_area,
	   iYd				=> pixel_in,
	   iYu				=> out_memoire_ligne, -- Pixel in the line memory (the pixel up to the current)
	   oY				=> out_gradient
	);
	
	
	--process
	process_affichage : process( switch, iY, pixel_in, out_memoire_ligne, out_gradient)
	begin
	  if (in_active_area = '1') then
			adresse_memoire_ligne <= std_logic_vector(unsigned(adresse_memoire_ligne )+1);
		else
		  adresse_memoire_ligne <= "00000000";
		end if;
			
		case( switch(4 downto 0) ) is
			when "00000" => oY <= iY; -- avant fenetrage		
			when "00001" => oY <= pixel_in; -- apr�s fenetrage				
			when "00011" => oY <= out_memoire_ligne; -- apr�s memoire
			when others  => oY <= out_gradient(7 downto 0);  -- apr�s diff
		end case ;
	end process ; -- process_affichage
	

end architecture A;	