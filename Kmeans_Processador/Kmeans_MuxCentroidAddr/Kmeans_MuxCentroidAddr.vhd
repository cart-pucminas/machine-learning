--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Mux Centroid Addr
--|| Descricao: Este bloco define de qual bloco devera ser considera o endereco para leitura/escrita na memoria ram 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity Kmeans_MuxCentroidAddr is

	GENERIC (TamanhoAddr : INTEGER := 14);
	
    PORT (
	 centroidControlInit   : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0); -- Endereco recebido pelo bloco centroid control init
	 centroidInit          : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0); -- Endereco recebido pelo bloco centroid init
	 centroidCalcModule_A  : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0); -- Endereco recebido pelo bloco centroid calc module para entrada A
	 centroidCalcModule_B  : in  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0); -- Endereco recebido pelo bloco centroid calc module para entrada B
	 op			     	     : in  STD_LOGIC;             							-- Operador que seleciona qual sera o endereco utilizado  
	 centroidAddr_A        : out STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0); -- Endereco de saida para a entrada A da memoria ram
	 centroidAddr_B        : out STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0)  -- Endereco de saida para a entrada B da memoria ram
	);
END Kmeans_MuxCentroidAddr;

ARCHITECTURE arch of Kmeans_MuxCentroidAddr is

BEGIN

	--resultado que recebe do controlador op que ira conduzir qual das entradas irao para as saidas
	with op select	
	centroidAddr_A <= centroidControlInit   when '0',
						   centroidCalcModule_A  when '1';
					  
	with op select	
	centroidAddr_B <= centroidInit          when '0',
							centroidCalcModule_B  when '1';

END arch;