--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Div Value Final - CalcCentroidModule
--|| Descricao: Este bloco concatena os valores de X e Y referentes ao centroid e o envia para a saida, que sera armazenada na memoria ram 


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all ;
use ieee.numeric_std.all;

Entity DivValueFinalFP is
    GENERIC ( Palavra      : INTEGER := 64;
			     PalavraXY	   : INTEGER := 32 ); 
				  
	 PORT (	  
	  valueX		  : in STD_LOGIC_VECTOR(PalavraXY-1 downto 0);     --Valor da posicao X do centroid
	  valueY 	      : in STD_LOGIC_VECTOR(PalavraXY-1 downto 0);	--Valor da posicao Y do centroid   
	  o_value		  : out STD_LOGIC_VECTOR(Palavra-1 downto 0)    --Valor XY concatenado do centroid
    );
END DivValueFinalFP;

ARCHITECTURE arch of DivValueFinalFP is

BEGIN	
	
o_value <= valueX & valueY;

END arch;