library IEEE;
use IEEE.std_logic_1164.all;

entity add_4 is
	port (
		bs_1 	:	in 		std_logic_vector(3 downto 0);
		bs_2	:	in 		std_logic_vector(3 downto 0);
		o_1 	: 	out 	std_logic_vector(3 downto 0);
		o_n 	: 	out 	std_logic);
end entity add_4;

architecture additionneur_4_b of add_4 is
	--Déclaration des variables internes

	-- les 3 retenues
	signal n1 : std_logic;
	signal n2 : std_logic;
	signal n3 : std_logic;


begin
	Add1 : entity work.add(add_1_b)
		port map (i_1 => bs_1(0), i_2 => bs_2(0), c_nm1 => '0', o_1 => o_1(0), o_n => n1);
	Add2 : entity work.add(add_1_b)
		port map (i_1 => bs_1(1), i_2 => bs_2(1), c_nm1 => n1, o_1 => o_1(1), o_n => n2);
	Add3 : entity work.add(add_1_b)
		port map (i_1 => bs_1(2), i_2 => bs_2(2), c_nm1 => n2, o_1 => o_1(2), o_n => n3);
	Add4 : entity work.add(add_1_b)
		port map (i_1 => bs_1(3), i_2 => bs_2(3), c_nm1 => n3, o_1 => o_1(3), o_n => o_n);


end architecture ; -- comparateur_4_b