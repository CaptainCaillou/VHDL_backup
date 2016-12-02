library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity stimu is
end entity stimu;

architecture stimulation of stimu is
	--Déclaration des process
	signal A : unsigned (3 downto 0) := "0000";
	signal B : unsigned (3 downto 0) := "0000";
	signal S1 : std_logic;
	signal S2 : std_logic; 
begin
	Comp1 : entity work.comp_4(comparateur_4_b)
		port map (bs_1 => std_logic_vector(A), bs_2 => std_logic_vector(B), out_1 => S1, o_2 => S2);
	
	P1 : process is 
		begin
			wait for 10ps;
			A <= A + 1;
	end process P1;

	P2 : process is 
		begin
			wait for 15ps;
			B <= B + 1;
	end process P2;




end architecture ; -- stimulation