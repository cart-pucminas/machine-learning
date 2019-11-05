--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Sum Centroid Values - CalcCentroidModule
--|| Descricao: Este bloco realiza a soma do valor do dado recebido, com o somatorio existente para o centroid verificado.
--||            Ele recebe um dado XY, separa em eixos X e Y, e em seguida soma com os respectivos valores de cada posicao que estao salvos no buffer.  


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all ;
use ieee.numeric_std.all;

Entity SumCentroidValues is
    GENERIC ( Palavra      : INTEGER := 64;
			     PalavraXY	   : INTEGER := 32); 
				  
	 PORT (	 
	  valueDado		  : in STD_LOGIC_VECTOR(Palavra-1 downto 0);     --Valor XY do dado de entrada que sera analisado
	  valueX		     : in STD_LOGIC_VECTOR(PalavraXY-1 downto 0);   --Valor do somatorio X armazenado no buffer
	  valueY 	     : in STD_LOGIC_VECTOR(PalavraXY-1 downto 0);	 --Valor do somatorio Y armazenado no buffer 
	  o_valueX		  : out STD_LOGIC_VECTOR(PalavraXY-1 downto 0);  --Valor atualizado do buffer com X + dado(x)
	  o_valueY 	     : out STD_LOGIC_VECTOR(PalavraXY-1 downto 0)   --Valor atualizado do buffer com Y + dado(y)
    );
END SumCentroidValues;

ARCHITECTURE arch of SumCentroidValues is

--Sinais de dados 
SIGNAL s_valueX  	   : STD_LOGIC_VECTOR (PalavraXY-1 downto 0) := (others =>'0');
SIGNAL s_valueY  	   : STD_LOGIC_VECTOR (PalavraXY-1 downto 0) := (others =>'0');

BEGIN
   PROCESS(valueDado, valueX, valueY)
   BEGIN  
	      --Caso possa ocorrer overflow seta todos os bits para '1', caso contrario realiza a soma
		   if (valueDado(Palavra-1)='1' and valueX(PalavraXY-1)='1') then
				s_valueX <= (others => '1');
		   else
				s_valueX <= valueX + valueDado(Palavra-1 downto PalavraXY);
		   end if;	
		  
		   --Caso possa ocorrer overflow seta todos os bits para '1', caso contrario realiza a soma
		   if (valueDado(PalavraXY-1)='1' and valueY(PalavraXY-1)='1') then
				s_valueY <= (others => '1');
		   else		
				s_valueY <= valueY + valueDado(PalavraXY-1 downto 0);
		   end if;
   END PROCESS;	
	
o_valueX <= s_valueX;
o_valueY <= s_valueY;

END arch;