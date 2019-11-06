--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: BufferOutControl - Kmodes CalcCentroidModule 
--|| Descricao: Este bloco determina qualvalor de  buffer sera armazenado na memoria.


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all ;
use ieee.numeric_std.all;

Entity BufferOutControl is
    GENERIC (Palavra          : INTEGER := 64; 
	          TamanhoAtributo  : INTEGER := 8;
	          MaxCentroidsBits : INTEGER := 10); 
				  
	 PORT (
	  value_Buffer0   : in STD_LOGIC_VECTOR(TamanhoAtributo-1 downto 0);	 --Valor calculado para o atributo do buffer 0 
	  value_Buffer1   : in STD_LOGIC_VECTOR(TamanhoAtributo-1 downto 0);	 --Valor calculado para o atributo do buffer 1
	  value_Buffer2   : in STD_LOGIC_VECTOR(TamanhoAtributo-1 downto 0);	 --Valor calculado para o atributo do buffer 2
	  value_Buffer3   : in STD_LOGIC_VECTOR(TamanhoAtributo-1 downto 0);	 --Valor calculado para o atributo do buffer 3
	  value_Buffer4   : in STD_LOGIC_VECTOR(TamanhoAtributo-1 downto 0);	 --Valor calculado para o atributo do buffer 4
	  value_Buffer5   : in STD_LOGIC_VECTOR(TamanhoAtributo-1 downto 0);	 --Valor calculado para o atributo do buffer 5
	  value_Buffer6   : in STD_LOGIC_VECTOR(TamanhoAtributo-1 downto 0);	 --Valor calculado para o atributo do buffer 6
	  value_Buffer7   : in STD_LOGIC_VECTOR(TamanhoAtributo-1 downto 0);	 --Valor calculado para o atributo do buffer 7
	  newCentroidValue: out STD_LOGIC_VECTOR(Palavra-1 downto 0)	       --Valor atualiado do centroide avaliado
    );
END BufferOutControl;

ARCHITECTURE arch of BufferOutControl is

BEGIN
   PROCESS(value_Buffer7, value_Buffer6, value_Buffer5, value_Buffer4, value_Buffer3, value_Buffer2, value_Buffer1, value_Buffer0)
   BEGIN  
		newCentroidValue <= value_Buffer7 & value_Buffer6 & value_Buffer5 & value_Buffer4 & value_Buffer3 & value_Buffer2 & value_Buffer1 & value_Buffer0;
   END PROCESS;	
	
END arch;