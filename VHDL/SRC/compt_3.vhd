library IEEE;
use IEEE.std_logic_1164.all;

entity porte_logique is
	port (
		i_1 : in std_logic;
		i_2 : in std_logic;
		i_3 : in std_logic;
		i_4 : in std_logic;
		o_1 : inout std_logic;
		o_2 : inout std_logic;
		o_3 : out std_logic);
end entity porte_logique;


architecture porte_logic of porte_logique is
begin
	-- on associe à la sortie o_1 1 si uniquement 3 des sorties sont à 1
	o_1 <= (i_1 and i_2 and i_3 and (not i_4)) or (i_1 and i_2 and (not i_3) and i_4) or (i_1 and (not i_2) and i_3 and i_4) or ((not i_1) and i_2 and i_3 and i_4);
	o_2 <= i_3 or i_4;
	o_3 <= o_1 and o_2;
end architecture ; -- porte_logic