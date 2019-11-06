--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Kmodes Control Calc Centroid
--|| Descricao: Este bloco realiza a atualizacao dos valores dos centroids do kmodes.  

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity Kmodes_ControlCalcCentroid is

	GENERIC (TamanhoAddr      : INTEGER := 14;
				Palavra	        : INTEGER := 64; 
				TamanhoAtributo  : INTEGER := 8;
				MaxCentroidsBits : INTEGER := 10;
				MaxPontosBits    : INTEGER := 15;
				--MaxCountCentroids: INTEGER := 13;
				NumBitsStates	  : INTEGER := 4);
	
	PORT(
		clk  		      		   : in STD_LOGIC;                                           --Sinal de clock
		nrst 			   		   : in STD_LOGIC;													    --Sinal de reset
		en_KmodesControlCentroid: in STD_LOGIC;  													    --Habilita Inicializacao deste bloco
		reg1			  		      : in STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0);       --Numero de centroids de entrada
	   reg3			  		 	   : in STD_LOGIC_VECTOR(MaxPontosBits-1 downto 0); 		    --Numero de pontos de entrada 
	   reg5 		               : in STD_LOGIC_VECTOR(TamanhoAddr-1 downto 0);            --Endereco inicial da memoria para os valores dos centroids 
	--	reg6 		               : in STD_LOGIC_VECTOR(TamanhoAddr-1 downto 0);				 --Endereco inicial da memoria para os valores dos mapeamentos
		reg8			        	   : in STD_LOGIC_VECTOR (2 downto 0); 					       --Quantidade de posicoes de memoria + 1 referente ao numero de dimensoes dos dados
   	count_Centroid          : in STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0); 	    --Centroid que sera processado
		count_Dado              : in STD_LOGIC_VECTOR(MaxPontosBits-1 downto 0);   		 --Ponto que sera rocessado
		end_CalcFreq 	  			: in STD_LOGIC;		                                     --Informa se o processo de atualizacao da frequencia foi finalizado
		end_CalcMode 	  			: in STD_LOGIC;                                           --Informa se o processo de calculo de moda foi finalizado	
		next_State      		   : out STD_LOGIC_VECTOR (NumBitsStates-1 downto 0); 		 --Proximo estado(bloco) a ser acessado na FMS
		addr_Ram_Dado	     	   : out STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);          --Endereco da memoria ram onde sera lido/escrito o valor do dado/centroid
		addr_Ram_Map     		   : out STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);          --Endereco da memoria ram onde sera lido o valor do mapeamento atual
		o_count_Centroid        : out STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0);      --Numero de centroids processados
		o_count_Dado            : out STD_LOGIC_VECTOR(MaxPontosBits-1 downto 0);         --Numero de pontos processados
		wr_RamA		  			   : out STD_LOGIC;														 --Habilita a leitura(0) ou escrita(1) no canal A da memoria ram
		wr_RamB		  		      : out STD_LOGIC;													    --Habilita a leitura(0) ou escrita(1) no canal B da memoria ram
		en_CountFreqData	      : out STD_LOGIC;													    --Habilita a execucao da contagem da frequencia dos valores
		en_FindMaxValue	      : out STD_LOGIC;													    --Habilita a execucao do calculo da moda dos dados (maior contador)
		clearFreqVector	      : out STD_LOGIC;													    --Zero o vetor de contagem de frequencia
		estado : out STD_LOGIC_VECTOR(3 downto 0)
	);

end Kmodes_ControlCalcCentroid;

ARCHITECTURE arch OF Kmodes_ControlCalcCentroid IS 

TYPE state_type is (RESET, IDLE, LOADDATA, WAITDATA, COUNTFREQUENCE, VERIFYMODE, MODE, STOREDATA, ADDCENTROID, ENDSTATE);

--Sinais de dados
SIGNAL state, state_fut  : state_type;	
SIGNAL s_blockState  	 : STD_LOGIC_VECTOR (NumBitsStates-1 downto 0) := "1011";
SIGNAL s_addrRamDado 	 : STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0) := (others => '0');
SIGNAL s_addrRamMap  	 : STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0) := (others => '0');
SIGNAL s_countCentroid   : STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0) := (others => '0');
SIGNAL s_countDado		 : STD_LOGIC_VECTOR(MaxPontosBits-1 downto 0) := (others => '0');
SIGNAL s_countDimensions : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
SIGNAL s_wrRamA  	       : STD_LOGIC := '0';
SIGNAL s_wrRamB  	       : STD_LOGIC := '0';
SIGNAL s_enCountFreqData : STD_LOGIC := '0';
SIGNAL s_enFindMaxValue  : STD_LOGIC := '0';
SIGNAL s_clearFreqVector : STD_LOGIC := '0';
	
BEGIN

	PROCESS(clk, nrst, end_CalcFreq, end_CalcMode)
	BEGIN
		if nrst = '0' then
			state <= RESET;
	   elsif end_CalcFreq = '1' then
		  state <= LOADDATA;
		 elsif end_CalcMode = '1' then
		  state <= STOREDATA;
		elsif clk'event and clk='1' then
			state <= state_fut;	
		end if;
	
	END PROCESS;

	PROCESS(clk, en_KmodesControlCentroid)
	BEGIN
	    if clk'event and clk='0' then
			s_blockState <= "1011";
			s_wrRamA <= '0';
			s_wrRamB <= '0';		
		
			case state is
					when RESET =>
						s_countDado <= (others => '0');
						s_countCentroid <= (others => '0');
						s_enCountFreqData <= '0';
						s_enFindMaxValue <= '0';
						s_clearFreqVector <= '1';
						s_blockState <= "1011";
						state_fut <= IDLE;
						estado <= "0000";
						
					when IDLE =>
						s_countDado <= count_Dado;
						s_countCentroid <= count_Centroid;
						s_enCountFreqData <= '0';
						s_enFindMaxValue <= '0';
					
						if en_KmodesControlCentroid='1' then
							state_fut <= LOADDATA;
						else
							state_fut <= IDLE;
						end if;
						estado <= "0001";
						
					when LOADDATA =>	
                  s_enCountFreqData <= '0';	
		            s_clearFreqVector <= '0';				
						if (s_countDado < reg3) then
							s_addrRamDado <= std_logic_vector(to_unsigned(conv_integer((reg8+1)*s_countDado)+conv_integer(s_countDimensions),TamanhoAddr));
							s_addrRamMap  <= std_logic_vector(to_unsigned(conv_integer(s_countDado),TamanhoAddr));							
							state_fut <= WAITDATA;
						else
							state_fut <= MODE;
						end if;
					estado <= "0010";
					
					when WAITDATA =>
					   s_countDado <= s_countDado + 1;
						state_fut <= COUNTFREQUENCE;
					estado <= "0011";	
					
					when COUNTFREQUENCE =>			
                  s_enCountFreqData <= '1';	
				      s_clearFreqVector <= '0';		
						state_fut <= COUNTFREQUENCE;	
						estado <= "0100";
					
					when VERIFYMODE =>                  					
						if (s_countCentroid < reg1) then
							state_fut <= LOADDATA;								
						else
						   state_fut <= ENDSTATE;
						--	state_fut <= VERIFYDIMENSION;
						end if;
					estado <= "0101";
					
					when MODE =>			
					   s_enCountFreqData <= '0';
						s_enFindMaxValue <= '1';
	               s_clearFreqVector <= '0';					
						state_fut <= MODE;
						estado <= "0110";
						
					when STOREDATA =>
						s_addrRamDado <= std_logic_vector(to_unsigned(conv_integer(reg5)+conv_integer((reg8+1)*s_countCentroid)+conv_integer(s_countDimensions),TamanhoAddr));
						s_wrRamA <= '1';							
						s_enCountFreqData <= '0';
						s_enFindMaxValue <= '0';
						s_countDado <= (others => '0');
						s_clearFreqVector <= '0';
						state_fut <= ADDCENTROID;
						estado <= "0111";
					
				   when ADDCENTROID =>
					   s_countCentroid <= s_countCentroid + 1;
						s_clearFreqVector <= '1';
						state_fut <= VERIFYMODE;
					   estado <= "1000";
					
--					when VERIFYDIMENSION =>	
--						if (s_countDimensions < reg8) then
--						   s_countDimensions <= s_countDimensions + 1;
--							s_countDado <= (others => '0');
--						   s_countCentroid <= (others => '0');	
--							s_enCountFreqData <= '0';
--						   s_enFindMaxValue <= '0';
--							state_fut <= LOADDATA;	
--						else
--							state_fut <= ENDSTATE;
--						end if;
--						estado <= "1000";
						
					when ENDSTATE =>
					   s_blockState <= "0110";
						s_countDado <= (others => '0');
						s_countCentroid <= (others => '0');	
						s_countDimensions <= (others => '0');	
                  s_enCountFreqData <= '0';
						s_enFindMaxValue <= '0';
                  s_clearFreqVector <= '1';						
						state_fut <= IDLE;
						estado <= "1001";
			end case;
		end if;
	END PROCESS;
		
--Ligacao dos sinais com os dados de saida
 next_State    <= s_blockState;
 addr_Ram_Dado <= s_addrRamDado; 	 
 addr_Ram_Map  <= s_addrRamMap;  	 
 o_count_Centroid <= s_countCentroid;  
 o_count_Dado <= s_countDado;	     
 wr_RamA <= s_wrRamA;  	
 wr_RamB <= s_wrRamB;  
 en_CountFreqData <= s_enCountFreqData;
 en_FindMaxValue <= s_enFindMaxValue;
 clearFreqVector <= s_clearFreqVector; 
 	    
END arch;
