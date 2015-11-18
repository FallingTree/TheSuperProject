library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity module_SRAM is
    port (
			CLK				: 	in std_logic;
			RESET 			: 	in std_logic;
			--module top
			in_active_area	:	in std_logic;
			X_cpt			: 	in std_logic_vector(10 downto 0);
			Y_cpt			: 	in std_logic_vector(10 downto 0);
			data_in			:	in std_logic_vector(7 downto 0);
			data_out		: 	out std_logic_vector(7 downto 0);
			-- SRAM
			address_SRAM 	: out std_logic_vector(17 downto 0); 	-- à connecter à SRAM_ADDR
			data_SRAM		: inout std_logic_vector(15 downto 0);  -- à connecter à SRAM_DQ
			write_enable 	: out std_logic; 						-- à connecter à SRAM_WE_N
			read_enable 	: out std_logic; 						-- à connecter à SRAM_OE_N
			chip_enable 	: out std_logic;						-- à connecter à SRAM_CE_N 
			high_mask 		: out std_logic ; 						-- à connecter à SRAM_UB_N
			low_mask 		: out std_logic  						-- à connecter à SRAM_LB_N
			);			
end entity module_SRAM;


architecture A of module_SRAM is

	signal address_curr, address_next : std_logic_vector(17 downto 0);  	-- gestion des adresses mémoire
	signal data_out_curr, data_out_next :std_logic_vector(7 downto 0);		-- mémorisation de la sortie pendant deux périodes
	signal synchro_curr, synchro_next : std_logic; 							-- synchro pixel
	
	begin
	
	-- concurent
	data_out <= data_out_curr;
	address_SRAM <= address_curr;
		
	--process	
	process_seq:process(clk)	-- clk à 27 MHz <=> 2 périodes en 1 pixel 
	begin	
	if (clk = '1' and clk'event) then 	
		if reset ='0' then -- reset actif		
			address_curr <= (others => '0');
			synchro_curr <= '1';
			data_out_curr <= (others => '0');
		else
			address_curr <= address_next;
			synchro_curr <= synchro_next;
			data_out_curr <= data_out_next;
		end if;	
	end if;			
	end process process_seq;
		
	process_com : process( in_active_area, X_cpt, Y_cpt, address_curr, synchro_curr, data_out_curr, data_in, data_SRAM )
	begin
	if in_active_area = '1'	then		-- zone active
		
		synchro_next <= not(synchro_curr) ;		-- génération signal de synchro pixel
		
		chip_enable <= '0'; 				-- SRAM activée
		high_mask <= '0';					-- config par défaut		
		low_mask <= '0';					-- config par défaut
		
		if synchro_curr = '1' then				-- cycle lecture
			read_enable <= '0';					-- SRAM en mode lecture	
			write_enable <= '1';				-- SRAM en mode lecture
			data_SRAM <= (others => 'Z');		-- bus en haute impédance
			data_out_next <= data_SRAM(7 downto 0);	-- lecture du poids faible		
			address_next <= address_curr;				-- address conservée pour le cycle d'écriture
		else  								-- cycle écriture
			read_enable <= '0';					-- SRAM en mode écriture
			write_enable <= '0';				-- SRAM en mode écriture
			data_out_next <= data_out_curr;		-- memorisation de data_out pendant le cycle d'écriture
			data_SRAM <= X"00" & data_in;		-- ecriture poids faible
			if Y_cpt = "00000000000" then
				address_next <= (others => '0');
			else
				address_next <= std_logic_vector(unsigned(address_curr)+1);	
			end if;
		end if;		

	else 								-- zone inactive			

		synchro_next <= '1' ;		-- synchro inactive

		chip_enable <= '1';					-- SRAM désactivée
		high_mask <= '0';					-- config par défaut		
		low_mask <= '0';					-- config par défaut
		read_enable <= '0';
		write_enable <= '1';
		data_out_next <= X"00";
		data_SRAM <= (others => 'Z');
		address_next <= address_curr;
		
	end if;
	end process ; -- process_com
		
		
end architecture A;

