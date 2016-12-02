library IEEE;
use IEEE.std_logic_1164.all;

entity bascule_d is
	port (
		d,clk : in std_logic;
		reset_n : in std_logic;
		o : inout std_logic);
end entity bascule_d;


architecture bascule_d of bascule_d is
begin
	process (clk, reset_n, d, o)
	begin
		if reset_n ='0' then
			o <= '0';
			else if clk = '1' then
				o <= d; 
			end if;
		end if;
	end process;
end architecture ; -- bascule_d