library IEEE;
use IEEE.std_logic_1164.all;

entity comp is
	port (
		i_1 : in std_logic;
		i_2 : in std_logic;
		o_1 : out std_logic;
		o_2 : out std_logic);
end entity comp;


architecture comparateur_1_b of comp is
begin

	o_1 <= (i_1 and i_2) or (not i_1 and not i_2); --si les deux sont égaux
	o_2 <= i_1 and not i_2; -- si i1 > i2

end architecture ; -- comparateur_1_b