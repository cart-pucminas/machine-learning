--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Mux Centroid Data
--|| Descricao: Este bloco define de qual bloco devera ser considerado o dado para ser escrito na memoria ram 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity Kmeans_MuxCentroidData is

	GENERIC (Palavra : INTEGER := 64);
	
    PORT ( 
	 centroidInit          : in  STD_LOGIC_VECTOR (Palavra-1 downto 0); --Dado do bloco centroid initialize
	 centroidCalc   	     : in  STD_LOGIC_VECTOR (Palavra-1 downto 0); --Dado do bloco calc centroid module
	 centroidCalcFP        : in  STD_LOGIC_VECTOR (Palavra-1 downto 0); --Dado recebido do bloco de centroid calc module ponto flutuante
	 op				        : in  STD_LOGIC_VECTOR (1 downto 0);         --Operador que define qual devera ser o bloco selecionado
	 centroidData_A        : out STD_LOGIC_VECTOR (Palavra-1 downto 0); --Dado que sera inserido na entrada A da memoria ram
	 centroidData_B        : out STD_LOGIC_VECTOR (Palavra-1 downto 0)  --Dado que sera inserido na entrada B da memoria ram
	 );
END Kmeans_MuxCentroidData;

ARCHITECTURE arch of Kmeans_MuxCentroidData is

BEGIN

	--resultado que recebe do controlador op que ira conduzir qual das entradas irao para as saidas
	with op select	
	centroidData_A <= (others =>'0') when "00",
							centroidCalc   when "01",
							centroidCalcFP when others;
					  
	with op select	
	centroidData_B <= centroidInit   when "00",
							(others =>'0') when others;

END arch;