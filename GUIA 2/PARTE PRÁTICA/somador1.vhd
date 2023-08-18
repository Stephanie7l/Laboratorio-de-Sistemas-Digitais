-- Somador comportamental
-- com uso do package std_logic_unsigned da Synopsys da IEEE
-- Se usar o GHDL da GNU é necessário incluir a opção de compilação: -fsynopsys em "Make Options"
-- Observação: operadores e tipos da linguagem VHDL variam de um package para outro package
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity somador is
  port ( x, y 	: in std_logic_vector(3 downto 0);
		 s 		: out std_logic_vector(3 downto 0));
end somador;

architecture fluxo_de_dados of somador is
begin
  s <= x + y;
end fluxo_de_dados;