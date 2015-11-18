library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity module_fenetrage is
	generic (
			size			: integer
		 	);	
    port 	(
			--signaux de synchro du flux video
			VGA_X 			:	in std_logic_vector(10 downto 0);	
			VGA_Y 			:	in std_logic_vector(10 downto 0);
			--flux video - entree
			iY 				: 	in std_logic_vector(7 downto 0);
			-- flux video - sortie du bloc de fenetrage
			oY				: 	out std_logic_vector(7 downto 0);
			-- signaux de snchro interne
			in_active_area 	:	out std_logic;					   	-- vaut "1" en zone active
			X_cpt			:	out std_logic_vector(10 downto 0); 	-- compteur de pixels dans la fenetre
			Y_cpt			:	out std_logic_vector(10 downto 0)  	-- compteur de lignes dans la fenetre
			
			);
			
end entity module_fenetrage;

architecture A of module_fenetrage is
			
	--Y : max 235 et min 16
	--CrCb : max 240 et 16 (128=0)

begin
	
	--combinatoire
	process_combi:process(VGA_X, VGA_Y, iY)
	begin
	if (VGA_Y >= std_logic_vector(to_unsigned(2**size,11))) then
		in_active_area <= '0';	
		oY <= "00010000";
	elsif (VGA_X >= std_logic_vector(to_unsigned(2**size,11))) then
		in_active_area <= '0';			--pixel noir
		oY <= "00010000";
	else
		in_active_area <= '1';
		--pas de modif			
		oY <= iY;
	end if;
	end process process_combi;

	X_cpt <= VGA_X;
	Y_cpt <= VGA_Y;

end architecture A; 			