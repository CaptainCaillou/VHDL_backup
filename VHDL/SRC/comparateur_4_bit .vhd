library IEEE;
use IEEE.std_logic_1164.all;

entity comp_4 is
	port (
		bs_1 	:	in 		std_logic_vector(3 downto 0);
		bs_2	:	in 		std_logic_vector(3 downto 0);
		out_1 	: 	out 	std_logic; 
		o_2 	: 	out 	std_logic); --la retenue
end entity comp_4;
architecture comparateur_4_b of comp_4 is
	--Déclaration des variables internes
	signal C1 : std_logic;
	signal E1 : std_logic;
	signal C2 : std_logic;
	signal E2 : std_logic;
	signal C3 : std_logic;
	signal E3 : std_logic;
	signal C4 : std_logic;
	signal E4 : std_logic;

begin
	Comp1 : entity work.comp(comparateur_1_b)
		port map (i_1 => bs_1(0), i_2 => bs_2(0), o_1 => E1, o_2 => C1);
	Comp2 : entity work.comp(comparateur_1_b)
		port map (i_1 => bs_1(1), i_2 => bs_2(1), o_1 => E2, o_2 => C2);
	Comp3 : entity work.comp(comparateur_1_b)
		port map (i_1 => bs_1(2), i_2 => bs_2(2), o_1 => E3, o_2 => C3);
	Comp4 : entity work.comp(comparateur_1_b)
		port map (i_1 => bs_1(3), i_2 => bs_2(3), o_1 => E4, o_2 => C4);


	out_1 <= (E1) and (E2) and (E3) and (E4);
	o_2 <= C4 or (E4 and C3) or (E4 and E3 and C2) or (E4 and E3 and E2 and C1);

end architecture ; -- comparateur_4_b
