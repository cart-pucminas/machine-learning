--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Mux Map Data
--|| Descricao: Este bloco define de qual bloco devera ser considerado para as informacoes de mapeamento para serem escritas na memoria ram 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity Kmeans_MuxMapData is

	GENERIC (MaxCentroidsBits : INTEGER := 10;
	         TamanhoAddr      : INTEGER := 14);
	
    PORT ( 
		--	mapInit      : in  STD_LOGIC_VECTOR (Palavra-1 downto 0);    --Dado recebido do bloco de map initialize
			mapCalc   	         	     : in  STD_LOGIC_VECTOR (MaxCentroidsBits-1 downto 0);  --Dado recebido do bloco de calcmap module 
			mapCalcFP            	     : in  STD_LOGIC_VECTOR (MaxCentroidsBits-1 downto 0);  --Dado recebido do bloco de map calc module ponto flutuante
			mapCalcKmodes          	     : in  STD_LOGIC_VECTOR (MaxCentroidsBits-1 downto 0);  --Dado recebido do bloco de map calc module Kmodes
			mapCalcModule_Addr   	     : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);       --Endereco do Dado do bloco CalcMapModule 
		   mapCalcModuleFP_Addr 	     : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);       --Endereco do Dado do bloco CalcMapModule com ponto flutuante
			mapCalcModuleKmodes_Addr     : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);       --Endereco do Dado do bloco CalcMapModule Kmodes
			mapCalc_Wr   	      	     : in  STD_LOGIC;    										       --Sinal de leitura/escrita recebido do bloco de calcmap module 
			mapCalcFP_Wr         	     : in  STD_LOGIC;     									       --Sinal de leitura/escrita recebido do bloco de map calc module ponto flutuante
			mapCalcKmodes_Wr         	  : in  STD_LOGIC;     									       --Sinal de leitura/escrita recebido do bloco de map calc module Kmodes
			outputResult_Addr    	     : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);       --Endereco do dado a ser lido pelo bloco Output Result
			centroidCalcModule_Addr      : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);       --Endereco recebido pelo bloco centroid calc module 
			centroidCalcModuleFP_Addr    : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);       --Endereco recebido pelo bloco centroid calc module para ponto flutuante
			centroidCalcModuleKmodes_Addr: in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);   --Endereco recebido pelo bloco centroid calc module para Kmodes
			op			    				     : in  STD_LOGIC_VECTOR (2 downto 0);                   --Operador que seleciona qual sera o dado escolhido
			mapData      				     : out STD_LOGIC_VECTOR (MaxCentroidsBits-1 downto 0);  --Dado que sera escrito na memoria ram de mapeamento			
			mapWr   	      			     : out STD_LOGIC;                                 		 --Sinal de leitura/escrita que sera informado na memoria ram de mapeamento
			mapAddr   					     : out STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0)  		 --Endereco que sera acessado na memoria ram de mapeamento
		);
END Kmeans_MuxMapData;

ARCHITECTURE arch of Kmeans_MuxMapData is

BEGIN

	--Resultado que recebe do controlador op que ira conduzir qual das entradas vai para a saida
	with op select
	
	mapData <=	--mapInit   when "00",
				   mapCalc   		when "000",
					mapCalcFP 		when "001",
					mapCalcKmodes	when "101",
					(others =>'0') when others;
	
   with op select	
	mapAddr <=  mapCalcModule_Addr   	      when "000",
	            mapCalcModuleFP_Addr 	      when "001",
					centroidCalcModule_Addr       when "010",
					centroidCalcModuleFP_Addr     when "011",
					outputResult_Addr             when "100",
					mapCalcModuleKmodes_Addr 	   when "101",
					centroidCalcModuleKmodes_Addr when others;
	
   with op select	
	mapWr   <=  mapCalc_Wr       when "000",
               mapCalcFP_Wr     when "001",
					mapCalcKmodes_Wr when "101",
					'0'				  when others;
END arch;