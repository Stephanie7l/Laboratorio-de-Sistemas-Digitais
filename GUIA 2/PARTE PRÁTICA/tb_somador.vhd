library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_somador is
end tb_somador;

architecture teste of tb_somador is

component somador is
  port ( x, y  : in std_logic_vector(7 downto 0);
		 s     : out std_logic_vector(7 downto 0));
end component;

signal A, B, S: std_logic_vector(7 downto 0);
begin
  instancia_somador: somador port map(x=>A,y=>B,s=>S);
  A <= x"00", x"03" after 20 ns, x"02" after 40 ns, x"04" after 60 ns;
  B <= x"00", x"04" after 10 ns, x"03" after 30 ns, x"01" after 50 ns;
end teste;
