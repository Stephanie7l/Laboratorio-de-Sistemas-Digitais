-- Somador comportamental
-- com uso do package padrão numeric_std da IEEE
-- Observação: operadores e tipos da linguagem VHDL variam de um package para outro package
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity somador is
  port ( x, y 	: in std_logic_vector(7 downto 0);
		 s 		: out std_logic_vector(7 downto 0));
end somador;

architecture fluxo_de_dados of somador is
begin
  s <= std_logic_vector(unsigned(x) + unsigned(y));
end fluxo_de_dados;