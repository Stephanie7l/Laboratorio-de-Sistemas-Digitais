-- Solução do exercício 2d usando atribuição de sinal condicional.
-- 2-d) F(A, B, C, D) = Somatório(1,2)

library ieee;
use ieee.std_logic_1164.all;

entity exercicio_2Conditional is
  port(A, B, C, D : in std_logic;
		   F : out std_logic);
end exercicio_2Conditional;

architecture funcao2D of exercicio_2Conditional is
  begin 
    F <= '1' when (A = '0' and B = '0' and C = '1' and D = '0') else
         '1' when (A = '0' and B = '0' and C = '0' and D = '1') else
         '0';
end funcao2D;

