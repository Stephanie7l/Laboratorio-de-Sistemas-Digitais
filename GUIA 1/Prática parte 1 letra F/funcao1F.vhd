-- Solução do exercício 1f usando atribuição de sinal concorrente.
-- 1-f) F(A, B, C, D) = Somatório(1,2)

library ieee;
use ieee.std_logic_1164.all;

entity exercicio_1 is
  port(A, B, C, D : in std_logic;
		   F : out std_logic);
end exercicio_1;

architecture funcao1F of exercicio_1 is
  begin
    F <= ((NOT A) AND (NOT B) AND (NOT C) AND D) OR ((NOT A) AND (NOT B) AND C AND (NOT D));
end funcao1F;
