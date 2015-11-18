library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity module_diff is
  port (
	in_active_area	: in std_logic;
	iY1				: in std_logic_vector(7 downto 0) ;
	iY2				: in std_logic_vector(7 downto 0) ;
	oY				: out std_logic_vector(7 downto 0);
	threshold		: in std_logic_vector(7 downto 0)
  ) ;
end entity ; -- module_diff


architecture arch of module_diff is

begin

	process_diff : process( in_active_area, iY1, iY2, threshold )
	begin
		if in_active_area = '1' then
			if (unsigned(iY1) > (unsigned(iY2)+unsigned(threshold))) then
				oY<=X"EB";	-- pixel blanc
			elsif (unsigned(iY2) > (unsigned(iY1)+unsigned(threshold))) then
				oY<=X"EB";	-- pixel blanc
			else	
				oY<=X"10";	-- pixel noir
			end if;
		else
			oY<=X"10";	-- pixel noir
		end if;	
	end process ; -- process_diff
	
end architecture ; -- arch