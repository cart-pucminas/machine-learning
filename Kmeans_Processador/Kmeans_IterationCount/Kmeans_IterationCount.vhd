--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Iteration Count
--|| Descricao: Este bloco conta o numero de iteracoes ja executadas pelo hardware. Caso seja menor que a quantidade informada na entrada
--||				 volta para o bloco de CalcCentroidModule, caso contrario vai para o OutputResult.	 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all ;
use ieee.numeric_std.all;

Entity Kmeans_IterationCount is
    GENERIC ( MaxIteracoesBits : INTEGER := 7;
			     NumBitsStates	 : INTEGER := 4); 
				  
	 PORT (
     clk          	 : in STD_LOGIC;									    		   --Sinal de Clock
	  nrst			    : in STD_LOGIC;									            --Sinal de Reset
	  reg2			    : in STD_LOGIC_VECTOR(MaxIteracoesBits-1 downto 0);  --Numero de iteracoes da entrada
	  count_Iteration  : in STD_LOGIC_VECTOR(MaxIteracoesBits-1 downto 0);  --Quantidade de iteracoes realizadas
	  en_IterationCount: in STD_LOGIC;									            --Habilita o bloco								
	  floatInput       : in STD_LOGIC;												   --Se (1) os dados de entrada sao do tipo float, se (0) inteiros
     kmodesInput      : in STD_LOGIC;											      --Se (1) indica a execucao do Kmodes, se (0) do kmeans  	  
	  o_count_Iteration: out STD_LOGIC_VECTOR(MaxIteracoesBits-1 downto 0); --Contador de saida do bloco      
	  next_State       : out STD_LOGIC_VECTOR(NumBitsStates-1 downto 0)     --Proximo estado(bloco) a ser acessado na FMS
	 );
END Kmeans_IterationCount;

ARCHITECTURE arch of Kmeans_IterationCount is

--Sinais de dados 
SIGNAL s_countIteration  : STD_LOGIC_VECTOR(MaxIteracoesBits-1 downto 0):= (others =>'0');
SIGNAL s_blockState      : STD_LOGIC_VECTOR (NumBitsStates-1 downto 0) := "0110";

BEGIN

	PROCESS(clk, nrst, en_IterationCount, floatInput, kmodesInput)

	BEGIN
	   if nrst='0' then
			s_countIteration <= (others =>'0');
			s_blockState <= "0110";
			
		elsif clk'event and clk='1' and en_IterationCount='1' then
			s_countIteration <= count_Iteration;
			
			if (s_countIteration < (reg2-1)) then
				s_countIteration <= s_countIteration + 1;
				
				if kmodesInput = '0' then 
					if floatInput = '0' then			
						s_blockState <= "0100";	
					else
						s_blockState <= "1000";
					end if;
				else
					s_blockState <= "1010";
				end if;	
				
			else
		      s_blockState <= "0111";
		      s_countIteration <= (others =>'0');
		    end if;   	
		end if;
			
	END PROCESS;

next_state        <= s_blockState;	
o_count_Iteration <= s_countIteration;

END arch;