--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Mux Ram Memory
--|| Descricao: Este bloco define qual sera o dado que sera armazenado na memoria ram 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity Kmeans_MuxRamMemory is

	 GENERIC (Palavra : INTEGER := 64);
	
    PORT ( 
		romData            : in  STD_LOGIC_VECTOR (Palavra-1 downto 0); --Dado recebido da memoria rom (externa)
		centroidInit       : in  STD_LOGIC_VECTOR (Palavra-1 downto 0); --Dado recebido do bloco de centroid initialize
		centroidCalc       : in  STD_LOGIC_VECTOR (Palavra-1 downto 0); --Dado recebido do bloco de centroid calc module
		centroidCalcFP     : in  STD_LOGIC_VECTOR (Palavra-1 downto 0); --Dado recebido do bloco de centroid calc module ponto flutuante
		centroidCalcKmodes : in  STD_LOGIC_VECTOR (Palavra-1 downto 0); --Dado recebido do bloco de centroid calc module do Kmodes
	--	centroidData_A	: in  STD_LOGIC_VECTOR (Palavra-1 downto 0); --Dado recebido do mux de centroid data A
	--	centroidData_B	: in  STD_LOGIC_VECTOR (Palavra-1 downto 0); --Dado recebido do mux de centroid data B
--		mapData     	: in  STD_LOGIC_VECTOR (Palavra-1 downto 0); --Dado recebido do mux de mapeamento data
--		mapInit        : in  STD_LOGIC_VECTOR (Palavra-1 downto 0); --Dado recebido do bloco de map initialize
--		mapCalc        : in  STD_LOGIC_VECTOR (Palavra-1 downto 0); --Dado recebido do bloco de map calc module 
--		mapCalcFP      : in  STD_LOGIC_VECTOR (Palavra-1 downto 0); --Dado recebido do bloco de map calc module ponto flutuante
		op				       : in  STD_LOGIC_VECTOR (2 downto 0);		   --Operador que seleciona qual sera o bloco escolhido
		ramData_A		    : out STD_LOGIC_VECTOR (Palavra-1 downto 0); --Dado que sera escrito na memoria ram pela entrada A
		ramData_B		    : out STD_LOGIC_VECTOR (Palavra-1 downto 0)  --Dado que sera escrito na memoria ram pela entrada B
	 );
END Kmeans_MuxRamMemory;

ARCHITECTURE arch of Kmeans_MuxRamMemory is

BEGIN
	--Resultado que recebe do controlador op que ira conduzir qual das entradas irao para as saidas
	with op select	
   ramData_A <= (others =>'0')     when "001",
					 centroidCalc	     when "010",
					 centroidCalcFP     when "011",
					 centroidCalcKmodes when "100",
					 romData            when others;
					 
--	             centroidData_A when '1',
----					 mapData 	    when "10",
--					 romData 	    when '0';
--	(others =>'0')  when "001",
--						centroidCalc	when "010",
--						centroidCalcFP when "011",
--						mapInit        when "100",
--						mapCalc        when "101",
--						mapCalcFP      when "110",
--						romData        when others;
	
	

				
	with op select	
	ramData_B <=  centroidInit when "001",
				    (others =>'0') when others;
	
--	centroidData_B   when '1',
--	             (others =>'0') when '0';


END arch;