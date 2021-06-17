
Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;


Entity ModEndDois_2 is 
Port (
	clk_in : in std_logic;
	enable : in bit;
	tamanhoBuff2 : in integer range 0 to 5000;
	reset      : in bit;
	saida_end1 : out integer range 0 to 5000;
	saida_end2 : out integer range 0 to 5000;
	tamanhofinal : out integer range 0 to 5000
	

);
end Entity;

Architecture arch of ModEndDois_2 is
	Begin
	Process(clk_in)
	variable cont, cont3 : integer range 0 to 5000;
	variable cont2 : integer range 0 to 5000;
	Begin
      if reset = '1' then
			cont2 := 0;
			cont3 := 0;
			cont := 0;
			saida_end1 <= 0;
			saida_end2 <= 0;
		elsif clk_in'event and clk_in = '1'and enable = '1' then
			saida_end2 <= cont2;
			cont2 := cont2 + 1;
	      
			if cont2 > tamanhoBuff2 then --tamanho quem vem do suporte1 
			   tamanhofinal <= cont2 - 1;
				cont2 := 0;
				cont3 := cont3 + 1;
				cont := cont3 ;
			end if;

		end if;
		
		
		saida_end1 <= cont;
	   	
	end Process;
end arch;

