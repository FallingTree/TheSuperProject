library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity module_max is
  port (
	in_active_area	: in std_logic;
	clk : in std_logic;
  reset	: in std_logic;
	out_memoire_ligne				: in std_logic_vector(15 downto 0) ; -- Current pixel
	out 			: out std_logic_vector(15 downto 0)
  ) ;
end entity ; -- module_max


architecture arch of module_max is

signal module,angle : std_logic_vector(7 downto 0);

begin
  
process_seq:process(clk)	-- clk à 27 MHz <=> 1 périodes en 1 pixel 
	begin	
	if (clk = '1' and clk'event) then 	
		if reset ='0' then -- reset actif		


		else

		end if;	
	end if;			
end process process_seq;
	
	process_max : process(in_active_area,)
	begin
		if in_active_area = '1' then 
		  module = unsigned(out_memoire_ligne(7 downto 0))* + unsigned(out_memoire_ligne(15 downto 8))

		end if;	
	end process ; -- process_max
	
	Oy <= Rg_curr;
	
end architecture ; -- arch