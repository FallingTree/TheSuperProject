library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity module_gradient is
  port (
	in_active_area	: in std_logic;
	iYd				: in std_logic_vector(7 downto 0) ; -- Current pixel
	iYu				: in std_logic_vector(7 downto 0) ; -- Pixel in the line memory (the pixel up to the current)
	oY				: out std_logic_vector(15 downto 0)
  ) ;
end entity ; -- module_gradient


architecture arch of module_gradient is

signal Rs,Rg, R1,R2,R3 : std_logic_vector(15 downto 0);

begin

	process_grad : process( in_active_area, iYu, iYd)
	begin
		if in_active_area = '1' then -- A corriger au besoin
		  Rs <= std_logic_vector("00000000" - unsigned(iYu) - unsigned(iYd)) & std_logic_vector(unsigned(iYu) - unsigned(iYd));
			Rg <= std_logic_vector(unsigned(Rs) + unsigned(std_logic_vector("00000000" - unsigned(iYu) - unsigned(iYd)) & std_logic_vector(unsigned(iYu) - unsigned(iYd))));
		end if;	
	end process ; -- process_gradient
	
	Oy <= Rg;
	
end architecture ; -- arch
