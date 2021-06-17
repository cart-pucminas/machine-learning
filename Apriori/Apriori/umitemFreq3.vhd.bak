Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

	Entity umItemFreq3 is 
	generic (n: integer := 63);
	Port(
		clk_in:  in std_logic;
		mem_rom: in std_logic_vector(n downto 0);
	   enablepro1:  in std_logic;
		reset : in bit;
		saidafinal:   out std_logic_vector(n downto 0);
		contador : out integer range 0 to 4095;
		enviasinal : out bit
		
	);
	end Entity;
	Architecture arch of umItemFreq3 is
	
	type vetors is array (0 to 255)  of std_logic_vector(n downto 0);
	signal aux2 : vetors;
	signal contador1 : integer range 0 to 4095;
	begin 
		Process(clk_in, enablepro1)
		variable i,  cont, cont1, cont2 : integer range 0 to 4095;
		variable j : integer range 1 to 4095;
		variable zero, vetor, vetor2, vetor3 : std_logic_vector(n downto 0);
		variable desativa : bit;
		Begin
		   if reset = '1' then
			  
	      elsif clk_in'event and clk_in = '1' and enablepro1= '1' then
	         zero := (others => '0');
			   cont :=  cont + 1;
			   vetor(i) := mem_rom(i);
			   if cont > 1  then
			    vetor2(j) := mem_rom(j);
				 if vetor /= zero and vetor2 /= zero and vetor /= vetor2 and desativa = '0' then 
					 vetor3 := vetor or vetor2;
					 aux2(cont1) <= vetor3;
					 cont1 := cont1 + 1;
				 end if;
				 vetor2(j) := '0';
				 if j <= n  then
					 j := j + 1;
				 end if;
			    if j > n and desativa = '0' then
				    vetor(i) := '0'; 
			       i := i + 1;
				    j := i  + 1;
				    cont := 0;	 
				end if;
				if i = n then
				   enviasinal <= '1';
				end if;
				if i > n  then 
					contador <= cont1;
					contador1 <= cont1;
					---cont := 0;
					---cont1 := 0;
					desativa := '1';
					
			   end if;	
			  end if;
			  
			  if desativa = '1'  then
				  saidafinal <= aux2(cont2);
				  cont2 := cont2 + 1;
			  end if;
			  if cont2 > cont1 then
			     cont2 := 0;
				  cont1 := 0;
				  desativa := '0';
				  cont := 0;
				  enviasinal <= '0';
				  i := 0;
				  j := 1;
			  end if;
		  end if;
		  
		 
		end Process;

	end arch;