--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Min Distance
--|| Descricao: Este bloco armazena a menor distancia entre todos os pontos e um centroid no reg4 e o numero do centroid correspondente no reg7.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all ;
use ieee.numeric_std.all;

Entity MinDistance is
    GENERIC ( TamanhoSoma      : INTEGER := 128;
			     MaxCentroidsBits : INTEGER := 10); 
				  
	 PORT (
     clk            : in STD_LOGIC;                                          --Sinal de clock
	  reg4 		     : in STD_LOGIC_VECTOR(TamanhoSoma-1 downto 0);           --Distancia minima armazenada
	  reg7 		     : in STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0);      --Centroid vinculado a distancia minima
	  count_Centroid : in STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0);      --Contador que informa qual sera o centroid verificado
	  distanceCalc   : in STD_LOGIC_VECTOR(TamanhoSoma-1 downto 0);           --Somatorio das distancias	  
	  en_MinDistance : in STD_LOGIC;                                          --Habilita o bloco
	  endCalc 	     : in STD_LOGIC;  													  --Permite a realizaçao do somatorio do bloco
	  o_reg4         : out STD_LOGIC_VECTOR (TamanhoSoma-1 downto 0);         --Saida da distancia minima atualizada
	  o_reg7 		  : out STD_LOGIC_VECTOR (MaxCentroidsBits-1 downto 0)     --Saida do centroid atualizada
    );
END MinDistance;

ARCHITECTURE arch of MinDistance is

--Sinais de dados 
SIGNAL s_distanceCalc : STD_LOGIC_VECTOR (TamanhoSoma-1 downto 0) := (others =>'0');
SIGNAL s_reg4  		 : STD_LOGIC_VECTOR (TamanhoSoma-1 downto 0) := (others =>'0');
SIGNAL s_reg7		    : STD_LOGIC_VECTOR (MaxCentroidsBits-1 downto 0) := (others =>'0');
SIGNAL s_countCentroid: STD_LOGIC_VECTOR (MaxCentroidsBits-1 downto 0) := (others => '0');

BEGIN

	PROCESS(clk, reg4, count_Centroid, distanceCalc, en_MinDistance, endCalc)
		 
	BEGIN
		if clk'event and clk='1' then
		   s_countCentroid <= count_Centroid;
			
--			if (endCalc ='1') then
			s_distanceCalc <= distanceCalc;
--			end if;
			
			if (en_MinDistance = '1') then
				--Caso a distancia calculada for menor que a distancia armazenada no reg4 ou for o primeiro calculo, o reg4 e reg7 sao atualizados
				if((s_countCentroid=0) or (s_distanceCalc < reg4)) then
					s_reg4 <= s_distanceCalc;	
					s_reg7 <= s_countCentroid;				
				else
					s_reg4 <= reg4;
					s_reg7 <= reg7;
				end if;	
			end if;	
		end if;	
		
	END PROCESS;

o_reg4 <= s_reg4;
o_reg7 <= s_reg7;

END arch;