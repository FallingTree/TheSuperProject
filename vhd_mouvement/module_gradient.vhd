library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity module_gradient is
  port (
	in_active_area	: in std_logic;
	clk : in std_logic;
  reset	: in std_logic;
	iYd				: in std_logic_vector(7 downto 0) ; -- Current pixel
	iYu				: in std_logic_vector(7 downto 0) ; -- Pixel in the line memory (the pixel up to the current)
	oY				: out std_logic_vector(15 downto 0)
  ) ;
end entity ; -- module_gradient


architecture arch of module_gradient is

signal Rs_curr, Rs_next, Rg_curr, Rg_next : std_logic_vector(integer range 0 to 15);
signal Gh_curr, Gh_next,Gv_curr, Gv_next : std_logic_vector(integer range 0 to 8);

begin
  
process_seq:process(clk)	-- clk à 27 MHz <=> 1 périodes en 1 pixel 
	begin	
	if (clk = '1' and clk'event) then 	
		if reset ='0' then -- reset actif		
			Rs_curr <= (others => '0');
			Rs_next <= (others => '0');
			
			Rg_curr <= (others => '0');
			Rg_next <= (others => '0');
			
			Gh_curr <= (others => '0');
			Gh_next <= (others => '0');
			
			Gv_curr <= (others => '0');
			Gv_next <= (others => '0');

		else
		  
			Rs_curr <= Rs_next;
			Rg_curr <= Rg_next;
			
			Gh_curr <= Gh_next;
			Gv_curr <= Gv_next;
			

		end if;	
	end if;			
end process process_seq;
	
	process_grad : process( in_active_area, iYu, iYd,Rs_curr,Rg_curr)
	begin
		if in_active_area = '1' then -- A corriger au besoin
		  Rs_next <= std_logic_vector(unsigned(iYu) + unsigned(iYd)) & std_logic_vector(unsigned(iYu) - unsigned(iYd));
			Gh_next <= std_logic_vector(  unsigned(iYu) + unsigned(iYd) - unsigned(Rs_curr(15 downto 8)));
			Gv_next <= std_logic_vector( unsigned(std_logic_vector( unsigned(iYu) - unsigned(iYd))) + unsigned(Rs_curr(7 downto 0)));
			Rg_next <=  Gh_next & Gv_next;
		end if;	
	end process ; -- process_gradient
	
	Oy <= Rg_curr;
	
end architecture ; -- arch
