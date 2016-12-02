library IEEE;
use IEEE.std_logic_1164.all;

entity LFSR is
	port(
			clk : in std_logic;
			reset_0 : in std_logic;
			LFSR : out std_logic_vector (7 downto 0)
		);
end entity; 

architecture LFSR of LFSR is
	signal LFSR_int : std_logic_vector(7 downto 0) := "01010101";
begin
	process (clk, reset_0)
	begin
		if reset_0 = '0' then
			LFSR_int <= "01010101";
			else if clk = '1' then
				for i in 7 downto 1 loop
					LFSR_int(i) <= LFSR_int(i-1);
				end loop ;  
				LFSR_int(0) <= LFSR_int (7) xor (LFSR_int(5) xor (LFSR_int(4) xor LFSR_int(2)));
			end if;
		end if;
	end process;
	LFSR <= LFSR_int;
end architecture ; -- LFSR