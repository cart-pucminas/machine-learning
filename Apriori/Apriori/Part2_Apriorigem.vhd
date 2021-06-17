--Juma Helena Costa Miranda

--Faz a parte2 do Apriorigem, que faz as combinações entre as palavras.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_unsigned.all;


ENTITY Part2_Apriorigem is
   Generic (n : INTEGER:= 127 );
	PORT (
		
		clk_in  		    : in STD_LOGIC; 
		reset           : in bit;
		mem_onput1		 : in STD_LOGIC_VECTOR (127	 DOWNTO 0); --vem da saida da memoria
		mem_onput2		 : in STD_LOGIC_VECTOR (127 DOWNTO 0); --vem da saida da memoria
		enable_proc1    : in bit; 
		tam_palavra     : in INTEGER range 0 to 4095; -- tamanho da palavra
		contadorbuff    : in INTEGER range 0 to 4095;
		saida           : out STD_LOGIC_VECTOR (127 DOWNTO 0);
		verificador     : out bit;
      enable_ModEn    : out bit;
		wr_RamUitem     : out bit;
		endRamUmitem    : out  STD_LOGIC_VECTOR (127 DOWNTO 0)
	   
	);
END ENTITY;

ARCHITECTURE apriorigem OF Part2_Apriorigem IS

begin
--- Processo que avalia os 1's da palavra e salva no array a posição do 1 encontrado
	Process (clk_in) 
	variable i,j,y,z, cont : INTEGER range 0 to 4095; 
	variable verif0, verif, verif2, verif3, verif4, x, w : bit;
	variable vector1 , vector2 : STD_LOGIC_VECTOR (n DOWNTO 0);
	begin
		if reset = '1' then
		   cont := 0;
			enable_ModEn <= '0';	
		elsif clk_in' event and clk_in='1' and enable_proc1='1' then
         if  y = 0 then
			  enable_ModEn <= '1';
			  wr_RamUitem <= '1';
			end if;
			
			if i < tam_palavra  then
			  
				if mem_onput1(y) = mem_onput2(y) and verif = '0'  then
				  if mem_onput1(y) /= '0' and mem_onput2(y) /= '0' then
					vector1(y) := '1';
					vector2(y) := '1';
					i := i + 1;
				  end if;
				elsif (mem_onput1(y) /= mem_onput2(y)) and verif = '0' then
				    verif := '1';
					 vector1 := (others => '0');
			       vector2 := (others => '0');
				end if;
			end if;
			y := y + 1;
			if i >= tam_palavra and verif = '0' then
			  
				if mem_onput1(y) /= mem_onput2(y) then
					if mem_onput1(y) = '1' and x = '0' then
						vector1(y) := '1';
						verif3 := '1';	
						x := '1';
					end if;
					if mem_onput2(y) = '1' and w = '0' then
						vector2(y) := '1';
						verif4 := '1';
						w := '1';
					end if;
				
				end if;
			 
		 end if;
		 if y > n then
				enable_ModEn <= '0';	
			end if;
		if y > n then
		  if verif3 = '0' or verif4 = '0' then
			  verif := '1';
			  vector1 := (others => '0');
			  vector2 := (others => '0');  
		  end if;
		end if;
		 if y > n then
			 i := 0;
			 y := 0;
			 if verif = '0'  then
				saida <= vector1 or vector2;
				verificador <= '0';
				endRamUmitem <= std_logic_vector(to_unsigned(cont, 128));
				cont := cont + 1;
			 else 
				verificador <= '1';
			 end if;
			 vector1 := (others => '0');
			 vector2 := (others => '0');
			 verif := '0';
			 verif2 := '0';
			 verif3 := '0';
			 verif4 := '0';
			 x := '0';
			 w := '0';
		 end if;
	    if cont > contadorbuff then
		    ---cont := 0;
		 end if;
	   end if;
  end Process;
end ARCHITECTURE;