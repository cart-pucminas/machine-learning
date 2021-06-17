
Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;


Entity ModEndDois is 
Port (
	clk_in : in std_logic;
	enable : in bit;
	tamanhoRam : in integer range 0 to 128;
	reset      : in bit;
	saida_end1 : out integer range 0 to 128;
	saida_end2 : out integer range 0 to 128;
	tamanhofinal : out integer range 0 to 128

);
end Entity;

Architecture arch of ModEndDois is
	Begin
	Process(clk_in)
	variable cont, cont3 : integer range 0 to 128;
	variable cont2 : integer range 0 to 128;
		Begin
		if reset = '1' then
		   cont2 := 0;
		   cont := 0;
			cont3 := 0;
		elsif clk_in'event and clk_in = '1'and enable = '1' then
			saida_end2 <= cont2;
			cont2 := cont2 + 1;
			if cont2 > tamanhoRam then --tamanho quem vem do suporte1 
			   tamanhofinal <= cont2 - 1;
				cont2 := 0;
				cont3 := cont3 + 1;
				cont := cont3 ;
			end if;
		end if;
		saida_end1 <= cont;	
	end Process;
end arch;