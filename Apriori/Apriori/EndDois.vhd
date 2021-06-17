Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;


Entity EndDois is 
   GENERIC (n: integer := 255);
Port (
	clk_in : in std_logic;
	ativa : in bit;
	reset  : in bit;
	tamanhoRam : in integer range 0 to 256;
	saida_end1 : out integer range 0 to 4095;
	saida_end2 : out integer range 0 to 4095

);
end Entity;
Architecture arch of EndDois is
Begin
Process(clk_in)
	variable cont1, cont2, cont3 : integer range 0 to 4095;
Begin
  if reset = '1' then
	  cont1 := 0;
	  cont2 := 1;
  elsif clk_in'event and clk_in = '1' and ativa = '1' then
  
     if cont1 = tamanhoRam  then
		  cont1 := 0;
		  cont2 := 0;
	  end if;
	  
	  cont3 := cont3 + 1;
	  if cont3 > n then
		  if cont1 = cont2 then
			  cont2:= cont1 + 1;
			else
			  cont2 := cont2 + 1;
		  end if;
		  cont3 := 0;
	  end if;
	  if cont2 > tamanhoRam then
		  cont1 := cont1 + 1;
		  cont2 := cont1 + 1;
	  end if;
     
	 
  end if;
  saida_end1 <= cont1;
  saida_end2 <= cont2;
  
end Process;
end arch;