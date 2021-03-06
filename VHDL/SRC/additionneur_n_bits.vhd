library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity additionneurnbit is
  
  generic(
    n : natural := 10);

  port (
    a : in  std_logic_vector (n-1 downto 0);
    b : in  std_logic_vector (n-1 downto 0);
    s : out std_logic_vector (n downto 0));

end entity additionneurnbit;

architecture additionneurnbit of additionneurnbit is

  signal r : std_logic_vector (n downto 0) := (others => '0');

begin  -- architecture additionneur4bit

  les4comp: for i in 0 to n-1 generate
    Ci:   entity work.add(add_1_b)
      port map (
        i_1 => a(i),
        i_2 => b(i),
        c_nm1 => r(i),
        o_n => r(i+1),
        o_1 => s(i));
  end generate les4comp;

  s(n) <= r(n);

end architecture additionneurnbit;
