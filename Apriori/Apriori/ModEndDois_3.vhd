Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;


Entity ModEndDois_3 is 

  generic ( tamRom : integer := 4095);
Port (
	clk_in : in std_logic;
	enable : in bit;
	tamanhocontdois : in integer range 0 to 4095;
	tamanhoBuff2 : in integer range 0 to 4095;
	reset      : in bit;
	saida_end1 : out integer range 0 to 4095;
	saida_end2 : out integer range 0 to 4095;
	tamanhofinal : out integer range 0 to 4095
	

);
end Entity;

Architecture arch of ModEndDois_3 is
	Begin
	Process(clk_in, reset, enable)
	variable cont, cont3 , tamanhocont : integer range 0 to tamRom;
	variable cont2 : integer range 0 to tamRom;
	variable salva : bit;
		Begin
		if reset = '1' then
			cont2 := 1;
			cont := 0;
		elsif clk_in'event and clk_in = '1'and enable = '1' then
			saida_end2 <= cont2;
			cont2 := cont2 + 1;
	      if salva = '0' then
			   tamanhocont := tamanhocontdois;
				salva := '1';
			end if;
			if cont2 > tamanhoBuff2 + 1 then --tamanho quem vem do suporte1 
			
			   tamanhofinal <= cont2 - 1;
				cont2 := 0;
				cont3 := cont3 + 1;
				cont := cont3 ;
			end if;
		 if cont > tamanhocont then
		    cont := 0;
			 cont2 := 0;
			 cont3 := 0;
		 end if;
		end if;
		saida_end1 <= cont;
	   	
	end Process;
end arch;