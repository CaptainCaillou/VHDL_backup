library IEEE;
use IEEE.std_logic_1164.all;

entity add is
	port (
		i_1 	: in std_logic;
		i_2 	: in std_logic;
		c_nm1	: in std_logic; -- la retenue précédente
		o_1 	: out std_logic; -- la sortie
		o_n 	: out std_logic); -- la retenue
end entity add;


architecture add_1_b of add is
begin

	o_1 <= (i_1 and i_2 and c_nm1) or ((i_1 xor i_2) xor c_nm1); 
	o_n <= (i_1 and i_2) or ((i_1 xor i_2) and c_nm1); 

end architecture ; -- comparateur_1_b