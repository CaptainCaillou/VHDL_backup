library IEEE;
use IEEE.std_logic_1164.all;

entity multiplexer is
  port (
	i_1 	: 	in std_logic;
	i_2 	: 	in std_logic;
	i_3 	: 	in std_logic;
	i_4 	: 	in std_logic;
	E1		:	in std_logic;
	E2		: 	in std_logic;
  	sortie : out std_logic
  );
end entity ; -- multiplexer

architecture multiplex of multiplexer is
begin
	sortie <= (i_1 and (not E1 and not E2)) or (i_2 and (E1 and not E2)) or (i_3 and (not E1 and E2)) or (i_4 and (E1 and E2));
end architecture ; -- multiplex

