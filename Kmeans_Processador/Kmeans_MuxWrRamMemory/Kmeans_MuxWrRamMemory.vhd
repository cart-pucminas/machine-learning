--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Mux Wr Ram Memory
--|| Descricao: Este bloco define de qual bloco vira a habilitacao de escrita/leitura da memoria ram.(Se vira do controlador ou de outro bloco)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity Kmeans_MuxWrRamMemory is
	
    PORT ( 
		controlBlock_A  	    	       : in  STD_LOGIC;							   --Valor de habilitacao definido pelo bloco de controle para o canal A
		controlBlock_B		    		    : in  STD_LOGIC;                      --Valor de habilitacao definido pelo bloco de controle para o canal B
		calcCentroidModule_A  		    : in  STD_LOGIC;                      --Valor de habilitacao definido pelo bloco de CalcCentroid Module canal A
		calcCentroidModule_B  			 : in  STD_LOGIC;							   --Valor de habilitacao definido pelo bloco de CalcCentroid Module canal B
	--	calcMapModule_A 	    		    : in  STD_LOGIC;                      --Valor de habilitacao definido pelo bloco de CalcMap Module canal A
	--	calcMapModule_B 	    		    : in  STD_LOGIC;							   --Valor de habilitacao definido pelo bloco de CalcMap Module canal B
		centroidInit_B	 	    		    : in  STD_LOGIC;							   --Valor de habilitacao definido pelo bloco de CentroidInitialize
	--	MapInit_A		 	    			 : in  STD_LOGIC;                      --Valor de habilitacao definido pelo bloco de Map Initialize
		calcCentroidModuleFP_A			 : in  STD_LOGIC;                      --Valor de habilitacao definido pelo bloco de CalcCentroid Module FP canal A
		calcCentroidModuleFP_B         : in  STD_LOGIC;							   --Valor de habilitacao definido pelo bloco de CalcCentroid Module FP canal B
		calcCentroidModuleKmodes_A 	 : in  STD_LOGIC;             		   --Valor de habilitacao definido pelo bloco de CalcCentroid Module Kmodes canal A
		calcCentroidModuleKmodes_B 	 : in  STD_LOGIC;							   --Valor de habilitacao definido pelo bloco de CalcCentroid Module Kmodes canal B
		op					       	       : in  STD_LOGIC_VECTOR (2 downto 0);  --Operador que seleciona qual qual sera o resultado da habilitacao da mem Ram
		wrRam_A		          			 : out STD_LOGIC;                      --Saida de habilitacao do canal A da memoria ram 
		wrRam_B 			       		    : out STD_LOGIC							   --Saida de habilitacao do canal B da memoria ram
	 );
END Kmeans_MuxWrRamMemory;

ARCHITECTURE arch of Kmeans_MuxWrRamMemory is

BEGIN

	--Resultado que recebe do controlador op que ira conduzir qual das entradas irao para as saidas
	with op select	
	wrRam_A <= calcCentroidModule_A   	  when "001",
				--  calcMapModule_A 	    	  when "010",
				--  MapInit_A 	         	  when "100",
				  calcCentroidModuleFP_A     when "010",
				  calcCentroidModuleKmodes_A when "100",
				--  calcMapModuleFP_A     	  when "101",
				  controlBlock_A             when others;
				  
	with op select		  
	wrRam_B <= calcCentroidModule_B       when "001",
	           calcCentroidModuleFP_B     when "010",
				 -- calcMapModule_B 	        when "010",
				  centroidInit_B         	  when "011",
				  calcCentroidModuleKmodes_B when "100",
				 -- calcMapModuleFP_B        when "101",
				  controlBlock_B             when others;
				  
END arch;