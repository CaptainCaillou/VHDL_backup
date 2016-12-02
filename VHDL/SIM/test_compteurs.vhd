library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity test_compteurs is
end entity test_compteurs;

architecture mise_en_marche of test_compteurs is
	--Déclaration des process
	signal C : unsigned (3 downto 0) := "0000";
	signal D : unsigned (3 downto 0) := "0000";
	signal So1 : std_logic_vector (3 downto 0);
	signal So2 : std_logic; 
begin
	add : entity work.add_4(additionneur_4_b)
		port map (bs_1 => std_logic_vector(C), bs_2 => std_logic_vector(D), o_1 => So1, o_n => So2);
	
	P1 : process is 
		begin
			wait for 10ps;
			C <= C + 1;
	end process P1;

	P2 : process is 
		begin
			wait for 15ps;
			D <= D + 1;
	end process P2;

end architecture ; -- mise_en_marche