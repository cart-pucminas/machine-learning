--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Mux Next State
--|| Descricao: Este bloco define de qual sera o proximo bloco a ser executado de acordo com o op recebido do controlador 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity Kmeans_MuxNextState is
	
	GENERIC (NumBitsStates : INTEGER := 4);
	
    PORT ( 
		nrst					 		 : in  STD_LOGIC;                                    --Sinal de reset
		idle		         	 	 : in  STD_LOGIC_VECTOR (NumBitsStates-1 downto 0);  --Bloco Idle
		memoryInitialize     	 : in  STD_LOGIC_VECTOR (NumBitsStates-1 downto 0);  --Bloco Memory Initialize
		controlCentroidInitialize: in  STD_LOGIC_VECTOR (NumBitsStates-1 downto 0);  --Bloco Control Centroid Initialize
		centroidInitialize       : in  STD_LOGIC_VECTOR (NumBitsStates-1 downto 0);  --Bloco Centroid Initialize
	--	mapInitialize            : in  STD_LOGIC_VECTOR (NumBitsStates-1 downto 0);  --Bloco Map Initialize
		calcMapModule            : in  STD_LOGIC_VECTOR (NumBitsStates-1 downto 0);  --Bloco Calc Map Module
		calcCentroidModule       : in  STD_LOGIC_VECTOR (NumBitsStates-1 downto 0);  --Bloco Calc Centroid Module
		iterationCount	          : in  STD_LOGIC_VECTOR (NumBitsStates-1 downto 0);  --Bloco Iteration Calc
		outputResult	          : in  STD_LOGIC_VECTOR (NumBitsStates-1 downto 0);  --Bloco Output Result
		calcMapModuleFP          : in  STD_LOGIC_VECTOR (NumBitsStates-1 downto 0);  --Bloco Calc Map Module com ponto flutuante
		calcCentroidModuleFP     : in  STD_LOGIC_VECTOR (NumBitsStates-1 downto 0);  --Bloco Calc Centroid Module com ponto flutuante
		calcMapModuleKmodes      : in  STD_LOGIC_VECTOR (NumBitsStates-1 downto 0);  --Bloco Calc Map Module do kmodes
		calcCentroidModuleKmodes : in  STD_LOGIC_VECTOR (NumBitsStates-1 downto 0);  --Bloco Calc Centroid Module do kmodes
		op					     		 : in  STD_LOGIC_VECTOR (NumBitsStates-1 downto 0);  --Operador que seleciona qual sera o bloco escolhido
		next_State	             : out STD_LOGIC_VECTOR (NumBitsStates-1 downto 0)   --Saida indicando qual sera o proximo bloco a ser executado
	 );
END Kmeans_MuxNextState;

ARCHITECTURE arch of Kmeans_MuxNextState is

BEGIN

	PROCESS (nrst, op,idle, memoryInitialize, controlCentroidInitialize, centroidInitialize, calcMapModule, calcCentroidModule, iterationCount, outputResult, calcMapModuleFP, calcCentroidModuleFP, calcMapModuleKmodes, calcCentroidModuleKmodes)
	BEGIN
		if nrst = '0' then
			 next_State <= "0001";
		else
			--Resultado que recebe do controlador op que ira conduzir qual das entradas vai para a saida
			case op is
				when "0000" => next_State <= idle;
				when "0001" => next_State <= memoryInitialize;
				when "0010" => next_State <= controlCentroidInitialize;
				when "0011" => next_State <= centroidInitialize;
		--		when "0100" => next_State <= mapInitialize;
				when "0100" => next_State <= calcMapModule;
				when "0101" => next_State <= calcCentroidModule;
				when "0110" => next_State <= iterationCount;
				when "0111" => next_State <= outputResult;
				when "1000" => next_State <= calcMapModuleFP;
				when "1001" => next_State <= calcCentroidModuleFP;
				when "1010" => next_State <= calcMapModuleKmodes;
				when "1011" => next_State <= calcCentroidModuleKmodes;
				when others => next_State <= (others => '0');
			end case;			
		end if;
	END PROCESS;	

END arch;