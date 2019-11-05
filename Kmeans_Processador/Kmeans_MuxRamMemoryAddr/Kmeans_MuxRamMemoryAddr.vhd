--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Mux Ram Memory Addr
--|| Descricao: Este bloco define qual sera o endereco acessado na memoria ram 


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity Kmeans_MuxRamMemoryAddr is

	GENERIC (TamanhoAddr : INTEGER := 14);
	
    PORT ( 
		memInitAddr                 : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);    -- Endereco recebido do bloco de Memory Initialize
      centroidControlInit         : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);    -- Endereco recebido pelo bloco centroid control init
		centroidInit                : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);    -- Endereco recebido pelo bloco centroid init
		centroidCalcModule_A        : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);  -- Endereco recebido pelo bloco centroid calc module para entrada A
	--   centroidCalcModule_B  : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);    -- Endereco recebido pelo bloco centroid calc module para entrada B
		centroidCalcModuleFP_A      : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);  -- Endereco recebido pelo bloco centroid calc module para entrada A
		centroidCalcModuleKmodes_A  : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);  -- Endereco recebido pelo bloco centroid calc modul do Kmodes para entrada A
	 --  centroidCalcModuleFP_B  : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);    -- Endereco recebido pelo bloco centroid calc module para entrada B
--		mapInit          : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0); --Endereco do bloco MapInitialize
	   mapCalcModule_A             : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0); --Endereco do Dado do bloco CalcMapModule 
	   mapCalcModule_B             : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0); --Endereco do Centroid do bloco CalcMapModule
		mapCalcModuleFP_A           : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0); --Endereco do Dado do bloco CalcMapModule com ponto flutuante 
	   mapCalcModuleFP_B           : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0); --Endereco do Centroid do bloco CalcMapModule com ponto flutuante
		mapCalcModuleKmodes_A       : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0); --Endereco do Dado do bloco CalcMapModule do Kmodes 
	   mapCalcModuleKmodes_B       : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0); --Endereco do Centroid do bloco CalcMapModule do Kmodes
		
--		centroidAddr_A	 : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);  --Endereco recebido do mux CentroidAddr A
--		centroidAddr_B	 : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);  --Endereco recebido do mux CentroidAddr B
--		mapAddr_A     	 : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);  --Endereco recebido do mux Map Addr A
--		mapAddr_B     	 : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);  --Endereco recebido do mux Map Addr B
--		outputResultAddr: in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);  --Endereco recebido do bloco de output result
		op				                : in  STD_LOGIC_VECTOR (2 downto 0);              --Operador que seleciona qual sera o endereco utilizado
		ramAddr_A		             : out STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);  --Endereco de saida para a entrada A da memoria ram
		ramAddr_B		             : out STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0)   --Endereco de saida para a entrada B da memoria ram
	 );
END Kmeans_MuxRamMemoryAddr;

ARCHITECTURE arch of Kmeans_MuxRamMemoryAddr is

BEGIN

	--Resultado que recebe do controlador op que ira conduzir qual das entradas irao para as saidas
	with op select	
	ramAddr_A <=  memInitAddr                when "000",
					  centroidControlInit        when "001",
					  centroidCalcModule_A       when "010",
					  centroidCalcModuleFP_A     when "011",
					 -- mapInit                when "100",
					  mapCalcModule_A            when "100",
					  mapCalcModuleFP_A          when "101",
					  centroidCalcModuleKmodes_A when "110",
					  mapCalcModuleKmodes_A      when "111";
					  
					  
					  
--					  centroidAddr_A when "01",
--					  mapAddr_A 	  when "10",
--					  (others =>'0') when "11";
				  
	with op select		  
	ramAddr_B <=  (others =>'0')         when "000",
	              centroidInit           when "001",
					  (others =>'0')   		 when "010",
					  (others =>'0') 			 when "011",
					--  (others =>'0')         when "100",
					  mapCalcModule_B        when "100",
					  mapCalcModuleFP_B      when "101",
					  (others =>'0')         when "110",
					  mapCalcModuleKmodes_B  when "111";
					  
					  
--					  centroidAddr_B   when "01",
--					  mapAddr_B   	    when "10",
--					  outputResultAddr when "11";
				 
END arch;