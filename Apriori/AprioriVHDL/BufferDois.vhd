library ieee;
use ieee.std_logic_1164.all;

Entity BufferDois is 
generic (n : integer := 127); --tamanho da palavra;
	Port(
		clk: in  std_logic;
		enable: in  bit;
		saidaRamdois: in std_logic_vector(127 downto 0);
		ModEndDois: in integer range 0 to 4095;
		EndControler: in integer range 0 to 4095;
		ativa: in bit;
		ativaC : in bit;
		saida: out std_logic_vector(127 downto 0);
		Contador : out integer range 0 to 4095
		
	);
end Entity;

Architecture arch of BufferDois is
type lista is array (0 to 4095)  of std_logic_vector(n downto 0);
signal saidalista : lista;
signal cont : integer range 0 to 128;
	Begin
	Process(clk, ativa, ativaC)
	
	Begin
	 if clk'event and clk = '1' and enable = '1' then
			saidalista(modEndDois) <= saidaRamdois;
			if ativaC = '0' then
			   cont <= cont + 1;
			else
			   cont <= 0;
			end if;
	     --- saida2 <= cont;
			if ativa = '1' then
			 saida <= saidalista(EndControler);
	       Contador <= EndControler;		 
			end if;
		   
		end if;
		
		end Process;
end arch;