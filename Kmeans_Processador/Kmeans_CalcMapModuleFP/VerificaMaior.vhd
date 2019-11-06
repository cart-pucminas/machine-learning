--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: VerificaMaior
--|| Descricao: Este bloco vertifica o resultado da comparacao entre os valores do dado e do centroid e informa qual o maior e o menor

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity VerificaMaior is

	GENERIC (PalavraXY : INTEGER := 32);
	
    PORT ( 
	 valueDadoX	   	: in STD_LOGIC_VECTOR(PalavraXY-1 downto 0);   	 --Valor dado(x)
	 valueDadoY    	: in STD_LOGIC_VECTOR(PalavraXY-1 downto 0);   	 --Valor dado(y)
	 valueCentroidX	: in STD_LOGIC_VECTOR(PalavraXY-1 downto 0);   	 --Valor centroid(x)
	 valueCentroidY	: in STD_LOGIC_VECTOR(PalavraXY-1 downto 0);     --Valor centroid(y)
	 opX			      : in  STD_LOGIC;                                 --Operador que seleciona qual sera o valor escolhido
	 opY			      : in  STD_LOGIC;                                 --Operador que seleciona qual sera o valor escolhido
	 maiorX	         : out STD_LOGIC_VECTOR(PalavraXY-1 downto 0);    --Valor maior entre o dado e o centroid na posicao X
	 menorX	         : out STD_LOGIC_VECTOR(PalavraXY-1 downto 0);    --Valor menor entre o dado e o centroid na posicao X
	 maiorY           : out STD_LOGIC_VECTOR(PalavraXY-1 downto 0);    --Valor maior entre o dado e o centroid na posicao X 
	 menorY           : out STD_LOGIC_VECTOR(PalavraXY-1 downto 0)     --Valor menor entre o dado e o centroid na posicao Y
	);
END VerificaMaior;

ARCHITECTURE arch of VerificaMaior is

BEGIN

	--resultado que recebe do controlador op que ira conduzir qual das entradas irao para as saidas
	with opX select	
	maiorX <= valueDadoX        when '0',
				 valueCentroidX    when '1';
					 
	with opX select	
	menorX <= valueCentroidX    when '0',
			    valueDadoX        when '1';	
					  
	with opY select	
	maiorY <= valueDadoY        when '0',
				 valueCentroidY    when '1';
					  
	with opY select	
	menorY <= valueCentroidY    when '0',
				 valueDadoY        when '1';

END arch;