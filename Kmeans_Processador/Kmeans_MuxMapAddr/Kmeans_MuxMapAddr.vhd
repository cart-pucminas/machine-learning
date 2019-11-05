--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Mux Map Addr
--|| Descricao: Este bloco define de qual bloco devera ser considerado o endereco de mapeamento para ser escrito/lido na memoria ram 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity Kmeans_MuxMapAddr is

	GENERIC (TamanhoAddr : INTEGER := 14);
	
    PORT ( 
	 mapInit          : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0); --Endereco do bloco MapInitialize
	 mapCalcModule_A  : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0); --Endereco do Dado do bloco CalcMapModule 
	 mapCalcModule_B  : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0); --Endereco do Centroid do bloco CalcMapModule
	 op			      : in  STD_LOGIC;                                 --Operador que seleciona qual sera o endereco escolhido
	 mapAddr_A        : out STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0); --Endereco que sera acessado na memoria ram A
	 mapAddr_B        : out STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0)  --Endereco que sera acessado na memoria ram B
	);
END Kmeans_MuxMapAddr;

ARCHITECTURE arch of Kmeans_MuxMapAddr is

BEGIN

	--resultado que recebe do controlador op que ira conduzir qual das entradas irao para as saidas
	with op select	
	mapAddr_A <= mapInit           when '0',
					 mapCalcModule_A   when '1';
					  
	with op select	
	mapAddr_B <= (others =>'0')    when '0',
					  mapCalcModule_B  when '1';

END arch;