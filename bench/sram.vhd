library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all ;

entity SRAM is
  port (
    -- SRAM interfaces
	clk				: in std_logic;
	address_SRAM 	: in std_logic_vector(17 downto 0); 	-- à connecter à SRAM_ADDR
	data_SRAM		: inout std_logic_vector(15 downto 0);  -- à connecter à SRAM_DQ
	write_enable 	: in std_logic; 						-- à connecter à SRAM_WE_N
	read_enable 	: in std_logic; 						-- à connecter à SRAM_OE_N
	chip_enable 	: in std_logic;							-- à connecter à SRAM_CE_N 
	high_mask 		: in std_logic ; 						-- à connecter à SRAM_UB_N
	low_mask 		: in std_logic
  ) ;
end entity SRAM ;

architecture arch of SRAM is

	type mem_type is array (262143 downto 0) of std_logic_vector(15 downto 0);
	signal memoire : mem_type;
	signal data_in, data_out : std_logic_vector(15 downto 0);
	
begin

	process_SRAM:process(clk)
	begin
		if(clk='1' and clk'event) then
			if write_enable = '0' then --ecriture
				memoire(to_integer(unsigned(address_SRAM))) <= data_in;
			end if;	
		end if;	
	end process process_SRAM;

	-- lecture
	data_out <= memoire(to_integer(unsigned(address_SRAM)));	
	
	data_in <= data_SRAM;
	data_SRAM <= data_out when write_enable ='1' else (others => 'Z');

end architecture arch ;