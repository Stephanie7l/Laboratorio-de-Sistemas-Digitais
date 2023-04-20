-- Solução do exercício 2d usando atribuição de sinal selecionado.
-- 2-d) F(A, B, C, D) = Somatório(1,2)

library ieee;
use ieee.std_logic_1164.all;

entity exercicio_2Selected is
  port(A, B, C, D : in std_logic;
		   F : out std_logic);
end exercicio_2Selected;

architecture funcao2D of exercicio_2Selected is
  signal t_sig : std_logic_vector(3 downto 0);
  begin 
    t_sig <= (A & B & C & D);
    with (t_sig) select
      F <= D when "0001",
           C when "0010",
          '0' when others;
end funcao2D;
