library ieee;
use ieee.std_logic_1164.all;

Entity Mult is 
generic (n : integer := 127); --tamanho da palavra;
	Port(
		entradaend1: in std_logic_vector(127 downto 0); --DualRam
		entradaend2: in std_logic_vector(127 downto 0); --MiniRam
		ativa: in integer range 0 to 2;
		saida_ender: out std_logic_vector(127 downto 0);
		saida_ender_1: out std_logic_vector(n downto 0)
	);
end Entity;


ARCHITECTURE arch of Mult is
	Begin
	saida_ender <= entradaend1 when ativa = 0 else
	             entradaend2 when ativa = 1 else
	(others => '0');
end arch;       
