-- Testbench da função 1f

library ieee;
use ieee.std_logic_1164.all;

entity tb_funcao1F is
end tb_funcao1F;

architecture teste of tb_funcao1F is
  component exercicio_1 is
    port(A, B, C, D : in std_logic;
         F : out std_logic);
  end component;

  signal a, b, c, d, f: std_logic;
  begin
    instancia_somador: exercicio_1 port map(A => a, B => b, C => c, D => d, F => f);
    a <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 60 ns;
    b <= '0', '1' after 10 ns, '1' after 30 ns, '0' after 50 ns;
    c <= '0', '0' after 10 ns, '1' after 30 ns, '1' after 50 ns;
    d <= '0', '1' after 10 ns, '0' after 30 ns, '0' after 50 ns;
end teste;
