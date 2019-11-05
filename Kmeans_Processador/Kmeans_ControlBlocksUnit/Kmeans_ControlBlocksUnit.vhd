--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Control Blocks Unit
--|| Descricao: Este bloco atua como o controlador do processador Kmeans, definindo qual bloco sera executado a cada pulso de clock.
--||            Habilitando (1) ou desabilitando(0) cad bloco. 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity Kmeans_ControlBlocksUnit is
	
	PORT(
		clk  		                    : in STD_LOGIC;                    --Sinal de clock
		nrst 			                 : in STD_LOGIC;                    --Sinal de reset
		next_State                   : in STD_LOGIC_VECTOR(3 downto 0); --Proximo estado(bloco) a ser acessado na FMS 
		en_MemoryInitialize	        : out STD_LOGIC;                   --Habilita bloco de memory initialize 
		en_ControlCentroidInitialize : out STD_LOGIC;                   --Habilita bloco de Control centroid initialize
		en_CentroidInitialize        : out STD_LOGIC;                   --Habilita bloco de Centroid initialize   
	--	en_MapInitialize             : out STD_LOGIC;                   --Habilita bloco de Map initialize
		en_ControlCalcMap            : out STD_LOGIC;                   --Habilita bloco de Calc Map module
		en_ControlCalcCentroid       : out STD_LOGIC;                   --Habilita bloco de Calc Centroid module
		en_IterationCount            : out STD_LOGIC;                   --Habilita bloco de Iteration count 
		en_OutputResult              : out STD_LOGIC;                   --Habilita bloco de Output Result
		en_CalcMapFP				  	  : out STD_LOGIC;						 --Habilita bloco de Calc Map module com ponto flutuante
		en_CalcCentroidFP				  : out STD_LOGIC;						 --Habilita bloco de Calc Centroid module com ponto flutuante
		en_CalcMapKmodes			  	  : out STD_LOGIC;						 --Habilita bloco de Calc Map module do Kmodes
		en_CalcCentroidKmodes    	  : out STD_LOGIC;						 --Habilita bloco de Calc Centroid module do Kmodes
		en_wrRamMemoryA              : out STD_LOGIC;                   --Habilita escrita(1) ou leitura(0) na memoria ram no canal A
		en_wrRamMemoryB              : out STD_LOGIC;                   --Habilita escrita(1) ou leitura(0) na memoria ram no canal B
		op_muxRamMemory              : out STD_LOGIC_VECTOR(2 downto 0);--Define o operador do mux ram memory 
		op_muxRamMemoryAddr          : out STD_LOGIC_VECTOR(2 downto 0);--Define o operador do mux ram memory addr
	--	op_muxCentroidData           : out STD_LOGIC_VECTOR(1 downto 0);                   --Define o operador do mux centroid data
	--	op_muxCentroidAddr           : out STD_LOGIC;						 --Define o operador do mux centroid addr 
		op_muxMapData                : out STD_LOGIC_VECTOR(2 downto 0);--Define o operador do mux map data 
	--	op_muxMapAddr                : out STD_LOGIC;                   --Define o operador do mux map addr
		op_muxWrRam                  : out STD_LOGIC_VECTOR(2 downto 0);--Define o operador do mux wr ram 
		op_muxNextState              : out STD_LOGIC_VECTOR(3 downto 0); --Define o operador do mux next state
		en_Count                     : out STD_LOGIC
	);

end Kmeans_ControlBlocksUnit;

ARCHITECTURE arch OF Kmeans_ControlBlocksUnit IS 
--Declaracao dos estados da FSM
TYPE state_type is (RESET, STATE_1);
SIGNAL state, state_fut 	: state_type;	

--Sinais de dados
SIGNAL s_en_MemoryInitialize          : STD_LOGIC :='0';
SIGNAL s_en_ControlCentroidInitialize : STD_LOGIC :='0'; 
SIGNAL s_en_CentroidInitialize        : STD_LOGIC :='0';
--SIGNAL s_en_MapInitialize       	     : STD_LOGIC :='0';
SIGNAL s_en_ControlCalcMap      	     : STD_LOGIC :='0';
SIGNAL s_en_ControlCalcCentroid 	     : STD_LOGIC :='0';
SIGNAL s_en_IterationCount      	     : STD_LOGIC :='0';
SIGNAL s_en_OutputResult        	     : STD_LOGIC :='0';
SIGNAL s_en_CalcMapFP					  : STD_LOGIC :='0';
SIGNAL s_en_CalcCentroidFP            : STD_LOGIC :='0';
SIGNAL s_en_CalcMapKmodes				  : STD_LOGIC :='0';
SIGNAL s_en_CalcCentroidKmodes        : STD_LOGIC :='0';
SIGNAL s_en_wrRamMemoryA	    	     : STD_LOGIC :='0';
SIGNAL s_en_wrRamMemoryB	    	     : STD_LOGIC :='0';
SIGNAL s_muxRamMemory          		  : STD_LOGIC_VECTOR (2 downto 0)  :=(others =>'0');
SIGNAL s_muxRamMemoryAddr      		  : STD_LOGIC_VECTOR (2 downto 0) :=(others =>'0');
--SIGNAL s_muxCentroidData       		  : STD_LOGIC_VECTOR (1 downto 0) :=(others =>'0');
--SIGNAL s_muxCentroidAddr       	     : STD_LOGIC :='0';
SIGNAL s_muxMapData			  		     : STD_LOGIC_VECTOR(2 downto 0):=(others =>'0');
--SIGNAL s_muxMapAddr			   		  : STD_LOGIC :='0';
SIGNAL s_muxWrRam			   			  : STD_LOGIC_VECTOR (2 downto 0) :=(others =>'0');
SIGNAL s_muxNextState          		  : STD_LOGIC_VECTOR (3 downto 0) :=(others =>'0');
SIGNAL s_en_Count                     : STD_LOGIC := '0';

BEGIN		
      --Parte combinacional
		PROCESS(clk, nrst)
		BEGIN
		   if nrst = '0' then
				state <= RESET;
		   elsif clk'event and clk='1' then					
				state <= state_fut;				
		   end if;
		END PROCESS;
		
		--Parte sequencial
		PROCESS(clk)
		BEGIN
			if clk'event and clk='1' then
			   s_en_Count <='0';
				case state is
					
					when RESET =>
						state_fut                      <= STATE_1;
						s_en_MemoryInitialize          <= '0';
						s_en_ControlCentroidInitialize <= '0';
						s_en_CentroidInitialize        <= '0';
	--					s_en_MapInitialize       	    <= '0';
						s_en_ControlCalcMap		       <= '0';
						s_en_ControlCalcCentroid	    <= '0';
						s_en_IterationCount			    <= '0';
						s_en_OutputResult	 		   	 <= '0';
						s_en_CalcMapFP                 <= '0';
						s_en_CalcCentroidFP            <= '0';
						s_en_CalcMapKmodes             <= '0';
						s_en_CalcCentroidKmodes        <= '0';
						s_en_wrRamMemoryA			   	 <= '0';
						s_en_wrRamMemoryB			   	 <= '0';
						s_muxRamMemory				   	 <= "000";
						s_muxRamMemoryAddr			    <= "000";
						--s_muxCentroidData      		    <= "00";
						--s_muxCentroidAddr			  	    <= '0';
						s_muxMapData           		    <= "000";
						--s_muxMapAddr                   <= '0';
						s_muxWrRam 					       <= "000";
						s_muxNextState         		    <= "0001";
						
					when STATE_1 =>
						
						case next_State is
							--Estado IDLE
							when "0000" =>
								state_fut                      <= STATE_1;
								s_en_MemoryInitialize          <= '0';
								s_en_ControlCentroidInitialize <= '0';
								s_en_CentroidInitialize        <= '0';
	--							s_en_MapInitialize       	    <= '0';
								s_en_ControlCalcMap		       <= '0';
								s_en_ControlCalcCentroid	    <= '0';
								s_en_IterationCount			    <= '0';
								s_en_OutputResult	 		       <= '0';
								s_en_CalcMapFP                 <= '0';
							   s_en_CalcCentroidFP            <= '0';
								s_en_CalcMapKmodes             <= '0';
						      s_en_CalcCentroidKmodes        <= '0';
								s_en_wrRamMemoryA			       <= '0';
								s_en_wrRamMemoryB			       <= '0';
								s_muxRamMemory				       <= "000";
								s_muxRamMemoryAddr			    <= "000";
							--	s_muxCentroidData      		    <= "00";
							--	s_muxCentroidAddr			       <= '0';
								s_muxMapData           		    <= "000";
							--	s_muxMapAddr                   <= '0';
								s_muxWrRam 					       <= "000";
								s_muxNextState         	       <= "0000";		
								s_en_Count <='1';							
							
							--Estado Memory Initialize e RegisterBank
							when "0001" =>
								state_fut                      <= STATE_1;
								s_en_MemoryInitialize          <= '1';
								s_en_ControlCentroidInitialize <= '0';
								s_en_CentroidInitialize        <= '0';
	--							s_en_MapInitialize       	    <= '0';
								s_en_ControlCalcMap		       <= '0';
								s_en_ControlCalcCentroid	    <= '0';
								s_en_IterationCount			    <= '0';
								s_en_OutputResult	 		       <= '0';
								s_en_CalcMapFP                 <= '0';
							   s_en_CalcCentroidFP            <= '0';
								s_en_CalcMapKmodes             <= '0';
						      s_en_CalcCentroidKmodes        <= '0';
								s_en_wrRamMemoryA			       <= '1';
								s_en_wrRamMemoryB			       <= '0';
								s_muxRamMemory				       <= "000";
								s_muxRamMemoryAddr			    <= "000";
								--s_muxCentroidData      		    <= "00";
								--s_muxCentroidAddr			   	 <= '0';
								s_muxMapData           		    <= "000";
								--s_muxMapAddr                   <= '0';
								s_muxWrRam 					   	 <= "000";
								s_muxNextState         		    <= "0001";
								
							--Estado Control Centroid Initialize
							when "0010" =>
								state_fut                      <= STATE_1;
								s_en_MemoryInitialize          <= '0';
								s_en_ControlCentroidInitialize <= '1';
								s_en_CentroidInitialize        <= '0';
		--						s_en_MapInitialize       	    <= '0';
								s_en_ControlCalcMap		       <= '0';
								s_en_ControlCalcCentroid	    <= '0';
								s_en_IterationCount			    <= '0';
								s_en_OutputResult	 		   	 <= '0';
								s_en_CalcMapFP                 <= '0';
							   s_en_CalcCentroidFP            <= '0';
								s_en_CalcMapKmodes             <= '0';
						      s_en_CalcCentroidKmodes        <= '0';
								s_en_wrRamMemoryA			   	 <= '0';
								s_en_wrRamMemoryB			   	 <= '0';
								s_muxRamMemory				   	 <= "001";
								s_muxRamMemoryAddr			    <= "001";
								--s_muxCentroidData      		    <= "00";
								--s_muxCentroidAddr			   	 <= '0';
								s_muxMapData           		    <= "000";
								--s_muxMapAddr                   <= '0';
								s_muxWrRam 					   	 <= "011";
								s_muxNextState         		    <= "0010";
							
							--Estado Centroid Initialize
							when "0011" =>
								state_fut                      <= STATE_1;
								s_en_MemoryInitialize          <= '0';
								s_en_ControlCentroidInitialize <= '0';
								s_en_CentroidInitialize        <= '1';
		--						s_en_MapInitialize       	    <= '0';
								s_en_ControlCalcMap		       <= '0';
								s_en_ControlCalcCentroid	    <= '0';
								s_en_IterationCount			    <= '0';
								s_en_OutputResult	 		   	 <= '0';
								s_en_CalcMapFP                 <= '0';
							   s_en_CalcCentroidFP            <= '0';
								s_en_CalcMapKmodes             <= '0';
						      s_en_CalcCentroidKmodes        <= '0';
								s_en_wrRamMemoryA			       <= '0';
								s_en_wrRamMemoryB			   	 <= '1';
								s_muxRamMemory				   	 <= "001";
								s_muxRamMemoryAddr			    <= "001";
							--	s_muxCentroidData      		    <= "00";
							--	s_muxCentroidAddr			   	 <= '0';
								s_muxMapData           		    <= "000";
							--	s_muxMapAddr                   <= '0';
								s_muxWrRam 					   	 <= "011";
								s_muxNextState         		    <= "0011";
								
							--Estado Map Initialize
--							when "0100" =>
--								state_fut                      <= STATE_1;
--								s_en_MemoryInitialize          <= '0';
--								s_en_ControlCentroidInitialize <= '0';
--								s_en_CentroidInitialize        <= '0';
--								s_en_MapInitialize       	    <= '1';
--								s_en_ControlCalcMap		       <= '0';
--								s_en_ControlCalcCentroid	    <= '0';
--								s_en_IterationCount			    <= '0';
--								s_en_OutputResult	 		       <= '0';
--								s_en_CalcMapFP                 <= '0';
--							   s_en_CalcCentroidFP            <= '0';
--                       s_en_CalcMapKmodes             <= '0';
--						      s_en_CalcCentroidKmodes        <= '0';
--								s_en_wrRamMemoryA			       <= '1';
--								s_en_wrRamMemoryB			   	 <= '0';
--								s_muxRamMemory				   	 <= "10";
--								s_muxRamMemoryAddr			    <= "100";
--								s_muxCentroidData      		    <= "00";
--								--s_muxCentroidAddr			   	 <= '0';
--								s_muxMapData           		    <= "00";
--								--s_muxMapAddr                   <= '0';
--								s_muxWrRam 					   	 <= "100";
--								s_muxNextState         		    <= "0100";	
							
							--Estado CalcMap Module
							when "0100" =>
								state_fut                      <= STATE_1;
								s_en_MemoryInitialize          <= '0';
								s_en_ControlCentroidInitialize <= '0';
								s_en_CentroidInitialize        <= '0';
			--					s_en_MapInitialize       	    <= '0';
								s_en_ControlCalcMap		       <= '1';
								s_en_ControlCalcCentroid	    <= '0';
								s_en_IterationCount			    <= '0';
								s_en_OutputResult	 		   	 <= '0';
								s_en_CalcMapFP                 <= '0';
							   s_en_CalcCentroidFP            <= '0';
								s_en_CalcMapKmodes             <= '0';
						      s_en_CalcCentroidKmodes        <= '0';
								s_en_wrRamMemoryA			       <= '0';
								s_en_wrRamMemoryB			   	 <= '0';
								s_muxRamMemory				   	 <= "000";
								s_muxRamMemoryAddr			    <= "100";
								--s_muxCentroidData      		    <= "00";
								--s_muxCentroidAddr			   	 <= '0';
								s_muxMapData           		    <= "000";
								--s_muxMapAddr                   <= '1';
								s_muxWrRam 					   	 <= "000";
								s_muxNextState         		    <= "0100";
								
							--Estado CalcCentroid Module
							when "0101" =>
								state_fut                      <= STATE_1;
								s_en_MemoryInitialize          <= '0';
								s_en_ControlCentroidInitialize <= '0';
								s_en_CentroidInitialize        <= '0';
					--			s_en_MapInitialize       	    <= '0';
								s_en_ControlCalcMap		       <= '0';
								s_en_ControlCalcCentroid	    <= '1';
								s_en_IterationCount			    <= '0';
								s_en_OutputResult	 		       <= '0';
								s_en_CalcMapFP                 <= '0';
							   s_en_CalcCentroidFP            <= '0';
								s_en_CalcMapKmodes             <= '0';
						      s_en_CalcCentroidKmodes        <= '0';
								s_en_wrRamMemoryA			       <= '0';
								s_en_wrRamMemoryB			       <= '0';
								s_muxRamMemory				   	 <= "010";
								s_muxRamMemoryAddr			    <= "010";
								--s_muxCentroidData      		    <= "01";
								--s_muxCentroidAddr			   	 <= '1';
								s_muxMapData           		    <= "010";
								--s_muxMapAddr                   <= '0';
								s_muxWrRam 					       <= "001";
								s_muxNextState         		    <= "0101";	
								
							--Estado Interation Count
							when "0110" =>
								state_fut                      <= STATE_1;
								s_en_MemoryInitialize          <= '0';
								s_en_ControlCentroidInitialize <= '0';
								s_en_CentroidInitialize        <= '0';
					--			s_en_MapInitialize       	    <= '0';
								s_en_ControlCalcMap		       <= '0';
								s_en_ControlCalcCentroid	    <= '0';
								s_en_IterationCount			    <= '1';
								s_en_OutputResult	 		       <= '0';
								s_en_CalcMapFP                 <= '0';
							   s_en_CalcCentroidFP            <= '0';
								s_en_CalcMapKmodes             <= '0';
						      s_en_CalcCentroidKmodes        <= '0';
								s_en_wrRamMemoryA			       <= '0';
								s_en_wrRamMemoryB			       <= '0';
								s_muxRamMemory				       <= "000";
								s_muxRamMemoryAddr			    <= "000";
								--s_muxCentroidData      		    <= "00";
								--s_muxCentroidAddr			       <= '0';
								s_muxMapData           		    <= "000";
								--s_muxMapAddr                   <= '0';
								s_muxWrRam 					       <= "000";
								s_muxNextState         		    <= "0110";	
								
							--Estado Output Result 
							when "0111" =>
								state_fut                      <= STATE_1;
								s_en_MemoryInitialize          <= '0';
								s_en_ControlCentroidInitialize <= '0';
								s_en_CentroidInitialize        <= '0';
					--			s_en_MapInitialize       	    <= '0';
								s_en_ControlCalcMap		       <= '0';
								s_en_ControlCalcCentroid	    <= '0';
								s_en_IterationCount			    <= '0';
								s_en_OutputResult	 		       <= '1';
								s_en_CalcMapFP                 <= '0';
							   s_en_CalcCentroidFP            <= '0';
								s_en_CalcMapKmodes             <= '0';
						      s_en_CalcCentroidKmodes        <= '0';
								s_en_wrRamMemoryA			       <= '0';
								s_en_wrRamMemoryB			       <= '0';
								s_muxRamMemory				       <= "000";
								s_muxRamMemoryAddr			    <= "000";
								--s_muxCentroidData      		    <= "00";
								--s_muxCentroidAddr			       <= '0';
								s_muxMapData           		    <= "100";
								--s_muxMapAddr                   <= '0';
								s_muxWrRam 					       <= "000";
								s_muxNextState         		    <= "0111";	
								
							--Estado Calc Map Module FP 
							when "1000" =>
								state_fut                      <= STATE_1;
								s_en_MemoryInitialize          <= '0';
								s_en_ControlCentroidInitialize <= '0';
								s_en_CentroidInitialize        <= '0';
						--		s_en_MapInitialize       	    <= '0';
								s_en_ControlCalcMap		       <= '0';
								s_en_ControlCalcCentroid	    <= '0';
								s_en_IterationCount			    <= '0';
								s_en_OutputResult	 		       <= '0';
								s_en_CalcMapFP                 <= '1';
							   s_en_CalcCentroidFP            <= '0';
								s_en_CalcMapKmodes             <= '0';
						      s_en_CalcCentroidKmodes        <= '0';
								s_en_wrRamMemoryA			       <= '0';
								s_en_wrRamMemoryB			       <= '0';
								s_muxRamMemory				       <= "000";
								s_muxRamMemoryAddr			    <= "101";
								--s_muxCentroidData      		    <= "00";
								--s_muxCentroidAddr			       <= '0';
								s_muxMapData           		    <= "101";
								--s_muxMapAddr                   <= '0';
								s_muxWrRam 					       <= "000";
								s_muxNextState         		    <= "1000";		
								
							--Estado Calc Centroid Module FP 
							when "1001" =>
								state_fut                      <= STATE_1;
								s_en_MemoryInitialize          <= '0';
								s_en_ControlCentroidInitialize <= '0';
								s_en_CentroidInitialize        <= '0';
					--			s_en_MapInitialize       	    <= '0';
								s_en_ControlCalcMap		       <= '0';
								s_en_ControlCalcCentroid	    <= '0';
								s_en_IterationCount			    <= '0';
								s_en_OutputResult	 		       <= '0';
								s_en_CalcMapFP                 <= '0';
							   s_en_CalcCentroidFP            <= '1';
								s_en_CalcMapKmodes             <= '0';
						      s_en_CalcCentroidKmodes        <= '0';
								s_en_wrRamMemoryA			       <= '0';
								s_en_wrRamMemoryB			       <= '0';
								s_muxRamMemory				       <= "011";
								s_muxRamMemoryAddr			    <= "011";
								--s_muxCentroidData      		    <= "10";
								--s_muxCentroidAddr			       <= '0';
								s_muxMapData           		    <= "110";
								--s_muxMapAddr                   <= '0';
								s_muxWrRam 					       <= "010";
								s_muxNextState         		    <= "1001";		
								
							--Estado Calc Map Module Kmodes 
							when "1010" =>
								state_fut                      <= STATE_1;
								s_en_MemoryInitialize          <= '0';
								s_en_ControlCentroidInitialize <= '0';
								s_en_CentroidInitialize        <= '0';
						--		s_en_MapInitialize       	    <= '0';
								s_en_ControlCalcMap		       <= '0';
								s_en_ControlCalcCentroid	    <= '0';
								s_en_IterationCount			    <= '0';
								s_en_OutputResult	 		       <= '0';
								s_en_CalcMapFP                 <= '0';
							   s_en_CalcCentroidFP            <= '0';
								s_en_CalcMapKmodes             <= '1';
						      s_en_CalcCentroidKmodes        <= '0';
								s_en_wrRamMemoryA			       <= '0';
								s_en_wrRamMemoryB			       <= '0';
								s_muxRamMemory				       <= "000";
								s_muxRamMemoryAddr			    <= "111";
								--s_muxCentroidData      		    <= "00";
								--s_muxCentroidAddr			       <= '0';
								s_muxMapData           		    <= "101";
								--s_muxMapAddr                   <= '0';
								s_muxWrRam 					       <= "000";
								s_muxNextState         		    <= "1010";		
							
							--Estado Calc Centroid Module Kmodes 
							when others =>
								state_fut                      <= STATE_1;
								s_en_MemoryInitialize          <= '0';
								s_en_ControlCentroidInitialize <= '0';
								s_en_CentroidInitialize        <= '0';
						--		s_en_MapInitialize       	    <= '0';
								s_en_ControlCalcMap		       <= '0';
								s_en_ControlCalcCentroid	    <= '0';
								s_en_IterationCount			    <= '0';
								s_en_OutputResult	 		       <= '0';
								s_en_CalcMapFP                 <= '0';
							   s_en_CalcCentroidFP            <= '0';
								s_en_CalcMapKmodes             <= '0';
						      s_en_CalcCentroidKmodes        <= '1';
								s_en_wrRamMemoryA			       <= '0';
								s_en_wrRamMemoryB			       <= '0';
								s_muxRamMemory				       <= "100";
								s_muxRamMemoryAddr			    <= "110";
								--s_muxCentroidData      		    <= "00";
								--s_muxCentroidAddr			       <= '0';
								s_muxMapData           		    <= "110";
								--s_muxMapAddr                   <= '0';
								s_muxWrRam 					       <= "100";
								s_muxNextState         		    <= "1011";		
							
							end case;										
				end case;
			end if;
		END PROCESS;
		
--Ligacao dos sinais com os bits de saida
en_MemoryInitialize 		    <= s_en_MemoryInitialize;          
en_ControlCentroidInitialize<= s_en_ControlCentroidInitialize;
en_CentroidInitialize 		 <= s_en_CentroidInitialize;
--en_MapInitialize 		       <= s_en_MapInitialize;
en_ControlCalcMap			    <= s_en_ControlCalcMap;
en_ControlCalcCentroid		 <= s_en_ControlCalcCentroid;
en_IterationCount 			 <= s_en_IterationCount;
en_OutputResult				 <= s_en_OutputResult;
en_CalcMapFP   				 <= s_en_CalcMapFP;
en_CalcCentroidFP			    <= s_en_CalcCentroidFP;
en_CalcMapKmodes            <= s_en_CalcMapKmodes;
en_CalcCentroidKmodes       <= s_en_CalcCentroidKmodes;
en_wrRamMemoryA				 <= s_en_wrRamMemoryA;
en_wrRamMemoryB				 <= s_en_wrRamMemoryB;
op_muxRamMemory				 <= s_muxRamMemory;
op_muxRamMemoryAddr			 <= s_muxRamMemoryAddr;
--op_muxCentroidData			 <= s_muxCentroidData;
--op_muxCentroidAddr          <= s_muxCentroidAddr;
op_muxMapData			       <= s_muxMapData;
--op_muxMapAddr				    <= s_muxMapAddr;
op_muxWrRam					    <= s_muxWrRam;
op_muxNextState				 <= s_muxNextState;	
en_Count                    <= s_en_Count;

end arch;