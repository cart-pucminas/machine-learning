--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Kmeans_EntradaDados
--|| Descricao: Este bloco permite que o usuario preencha as entradas do hardware. Utilizado apenas para testes na placa;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all ;
use ieee.numeric_std.all;

Entity Kmeans_EntradaDados is
    GENERIC (TamanhoAddr     : INTEGER := 14;
				 MaxCentroidsBits: INTEGER := 10;
				 MaxPontosBits   : INTEGER := 15;
				 MaxIteracoesBits: INTEGER := 7;
				 MaxDimensoesBits: INTEGER := 4);
				  
	 PORT (
      nCentroids    	 : out STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0); 	    --Numero de centroids- MAX 1024
		nIteracoes      : out STD_LOGIC_VECTOR(MaxIteracoesBits-1 downto 0); 	    --Numero de iteracoes- MAX 128
		nPontos       	 : out STD_LOGIC_VECTOR(MaxPontosBits-1 downto 0); 	       --Numero de pontos  - MAX 31744 para ate 2 dimensoes
		nDimensoes      : out STD_LOGIC_VECTOR(MaxDimensoesBits-1 downto 0);        --Numero de dimensoes - MAX 16
		initAddr        : out STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0)       --Endereco inicial para a leitura dos dados da memoria rom
    );
END Kmeans_EntradaDados;

ARCHITECTURE arch of Kmeans_EntradaDados is

BEGIN
    nCentroids <=  std_logic_vector(to_unsigned(8,MaxCentroidsBits));
	 nIteracoes <=  std_logic_vector(to_unsigned(5,MaxIteracoesBits));
	 nPontos    <=  std_logic_vector(to_unsigned(4096,MaxPontosBits));
	 nDimensoes <=  std_logic_vector(to_unsigned(0,MaxDimensoesBits));
	 initAddr   <=   std_logic_vector(to_unsigned(0,TamanhoAddr));

END arch;
