--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Min Distance Match
--|| Descricao: Este bloco armazena a menor distancia utilizando o K-modes,
--||            entre todos os pontos e um centroid no reg6 e o numero do centroid correspondente no reg7.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all ;
use ieee.numeric_std.all;

Entity MinDistanceMatch is
    GENERIC ( MaxSumMatch      : INTEGER := 7;
			     MaxCentroidsBits : INTEGER := 10); 
				  
	 PORT (
     clk                 : in STD_LOGIC;                                          --Sinal de clock
	  reg6 		          : in STD_LOGIC_VECTOR(MaxSumMatch-1 downto 0);           --Distancia minima armazenada
	  reg7 		          : in STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0);      --Centroid vinculado a distancia minima
	  count_Centroid      : in STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0);      --Contador que informa qual sera o centroid verificado
	  distanceMatch       : in STD_LOGIC_VECTOR(MaxSumMatch-1 downto 0);          --Somatorio das distancias	  
	  en_MinDistanceMatch : in STD_LOGIC;                                          --Habilita o bloco
	  o_reg6              : out STD_LOGIC_VECTOR (MaxSumMatch-1 downto 0);        --Saida da distancia minima atualizada
	  o_reg7 		       : out STD_LOGIC_VECTOR (MaxCentroidsBits-1 downto 0)     --Saida do centroid atualizada
    );
END MinDistanceMatch;

ARCHITECTURE arch of MinDistanceMatch is

--Sinais de dados 
SIGNAL s_distanceMatch : STD_LOGIC_VECTOR (MaxSumMatch-1 downto 0) := (others =>'0');
SIGNAL s_reg6  		 : STD_LOGIC_VECTOR (MaxSumMatch-1 downto 0) := (others =>'0');
SIGNAL s_reg7		    : STD_LOGIC_VECTOR (MaxCentroidsBits-1 downto 0) := (others =>'0');
SIGNAL s_countCentroid: STD_LOGIC_VECTOR (MaxCentroidsBits-1 downto 0) := (others => '0');

BEGIN

	PROCESS(clk, reg6, count_Centroid, distanceMatch, en_MinDistanceMatch, reg7)
		 
	BEGIN
		if clk'event and clk='1' then
		   s_countCentroid <= count_Centroid;
			
--			if (endCalc ='1') then
			s_distanceMatch <= distanceMatch;
--			end if;
			
			if (en_MinDistanceMatch = '1') then
				--Caso a distancia calculada for menor que a distancia armazenada no reg6 ou for o primeiro calculo, o reg6 e reg7 sao atualizados
				if((s_countCentroid=0) or (s_distanceMatch < reg6)) then
					s_reg6 <= s_distanceMatch;	
					s_reg7 <= s_countCentroid;				
				else
					s_reg6 <= reg6;
					s_reg7 <= reg7;
				end if;	
			end if;	
		end if;	
		
	END PROCESS;

o_reg6 <= s_reg6;
o_reg7 <= s_reg7;

END arch;