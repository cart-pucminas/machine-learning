--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: SeparaDadoCentroidXY- CalcMapModuleFP
--|| Descricao: Este bloco recebe um dado e um centroid de 64 bits contendo XY e o separa em dois dados.
        


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all ;
use ieee.numeric_std.all;

Entity SeparaDadoCentroidXY is
    GENERIC ( Palavra      : INTEGER := 64;
			     PalavraXY	   : INTEGER := 32); 
				  
	 PORT (	 
	  valueDado		   : in STD_LOGIC_VECTOR(Palavra-1 downto 0);      --Valor XY do dado de entrada que sera analisado
	  valueCentroid   : in STD_LOGIC_VECTOR(Palavra-1 downto 0);      --Valor XY do centroid de entrada que sera analisado
	  o_valueDadoX	   : out STD_LOGIC_VECTOR(PalavraXY-1 downto 0);   --Valor dado(x)
	  o_valueDadoY    : out STD_LOGIC_VECTOR(PalavraXY-1 downto 0);   --Valor dado(y)
	  o_valueCentroidX: out STD_LOGIC_VECTOR(PalavraXY-1 downto 0);   --Valor centroid(x)
	  o_valueCentroidY: out STD_LOGIC_VECTOR(PalavraXY-1 downto 0)    --Valor centroid(y)
    );
END SeparaDadoCentroidXY;

ARCHITECTURE arch of SeparaDadoCentroidXY is
BEGIN
	o_valueDadoX <= valueDado(Palavra-1 downto PalavraXY);			
	o_valueDadoY <= valueDado(PalavraXY-1 downto 0);
	o_valueCentroidX <= valueCentroid(Palavra-1 downto PalavraXY);			
	o_valueCentroidY <= valueCentroid(PalavraXY-1 downto 0);
END arch;