--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Kmodes Control Calc Map
--|| Descricao: Este bloco realiza o controle do calculo dos proximos valores de mapeamento dos dados. Ele executa uma maquina de estado
--||            que calcula a distancia de similaridade entre os pontos e os centroids e mapeia o ponto ao centroid mais proximo a ele.	

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity Kmodes_ControlCalcMap is

	GENERIC (Palavra	  		  : INTEGER := 64;
			   TamanhoAddr  	  : INTEGER := 14;
				MaxCentroidsBits : INTEGER := 10;
				MaxPontosBits    : INTEGER := 15;
				MaxCountCentroids: INTEGER := 13;
				TamanhoMatch     : INTEGER := 4;
				MaxSumMatch      : INTEGER := 7;
				NumBitsStates    : INTEGER := 4);
	
	PORT(
		clk  		      		   : in STD_LOGIC; 												  --Sinal de clock
		nrst 			   		   : in STD_LOGIC;                                      --Sinal de reset
		en_KmodesControlCalcMap : in STD_LOGIC;  											     --Habilita Inicializacao deste bloco
		count_Centroid          : in STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0);  --Numero de centroids processados
		count_Dado              : in STD_LOGIC_VECTOR(MaxPontosBits-1 downto 0);     --Numero de pontos processados
		reg1			  		      : in STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0);  --Numero de centroids de entrada
	   reg3			  		      : in STD_LOGIC_VECTOR(MaxPontosBits-1 downto 0);     --Numero de pontos de entrada 
	   reg5 		               : in STD_LOGIC_VECTOR(TamanhoAddr-1 downto 0);       --Endereco inicial de armazenamento dos valores dos centroids
	   reg7 		      		   : in STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0);  --Registrador interno do bloco que salva o resultado do mapeamento
	   reg8			        	   : in STD_LOGIC_VECTOR (2 downto 0); 					  --Quantidade de posicoes de memoria + 1 referente ao numero de dimensoes dos dados
		distanceMatch   		   : in STD_LOGIC_VECTOR(TamanhoMatch-1 downto 0);      --Distancia espacial em simple match 
		endDistanceMatch        : in STD_LOGIC;                                      --Informa que o calculo do simple match foi finalizado
		en_SimpleMatch    	   : out STD_LOGIC;                                     --Habilita o calculo do simple match 
		wr_Ram 	  			      : out STD_LOGIC;                                     --Habita leitura(0) ou escrita(1) na memoria ram de mapeamento
		o_dado    	  			   : out STD_LOGIC_VECTOR (MaxCentroidsBits-1 downto 0);--Valor do mapeamento que sera escrito na memoria ram
		o_count_Centroid        : out STD_LOGIC_VECTOR (MaxCentroidsBits-1 downto 0);--Numero de centroids processados
		o_count_Dado            : out STD_LOGIC_VECTOR (MaxPontosBits-1 downto 0);   --Numero de pontos processados
		next_State      		   : out STD_LOGIC_VECTOR (NumBitsStates-1 downto 0);   --Proximo estado(bloco) a ser acessado na FMS 
		addr_Ram_Dado	     	   : out STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);     --Endereco para ler um ponto(dado) da memoria ram
		addr_Ram_Centroid		   : out STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);     --Endereco para ler um centroid da memoria ram
		en_MinDistanceMatch	   : out STD_LOGIC; 											     --Habita o bloco de verificacao da distancia minima
		sumDistance             : out STD_LOGIC_VECTOR(MaxSumMatch-1 downto 0);      --Saida do somatorio das distancias
		estado       : out STD_LOGIC_VECTOR (3 downto 0)
	);

end Kmodes_ControlCalcMap;

ARCHITECTURE arch OF Kmodes_ControlCalcMap IS 

TYPE state_type is (RESET, IDLE, VERIFYDATA, LOADDATA, ENDCENTROIDS, CALCDISTANCE, WAITCALCDISTANCE, VERIFYDIMENSION, MINDISTANCE, STOREDATA, ENDSTATE);
SIGNAL state, state_fut 	 : state_type;	

SIGNAL s_blockState         : STD_LOGIC_VECTOR (NumBitsStates-1 downto 0) := "1010";
SIGNAL s_addrRamDado        : STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0) := (others => '0');
SIGNAL s_addrRamCentroid    : STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0) := (others => '0');
SIGNAL s_countCentroid      : STD_LOGIC_VECTOR (MaxCentroidsBits-1 downto 0) := (others => '0');
SIGNAL s_countDado		    : STD_LOGIC_VECTOR (MaxPontosBits-1 downto 0) := (others => '0');
SIGNAL s_countDimensions    : STD_LOGIC_VECTOR (MaxCountCentroids-1 downto 0) := (others => '0');
SIGNAL s_oDado     	       : STD_LOGIC_VECTOR (MaxCentroidsBits-1 downto 0) := (others =>'0');
SIGNAL s_distanceMatch      : STD_LOGIC_VECTOR (TamanhoMatch-1 downto 0) := (others =>'0');
SIGNAL s_sumDistance        : STD_LOGIC_VECTOR (MaxSumMatch-1 downto 0) := (others =>'0');
SIGNAL s_wrRam  	          : STD_LOGIC := '0';
SIGNAL s_en_SimpleMatch		 : STD_LOGIC := '0';
SIGNAL s_enMinDistanceMatch : STD_LOGIC := '0';
	
BEGIN

	PROCESS(clk, nrst, endDistanceMatch)
	
	BEGIN
	   if nrst = '0' then
			state <= RESET;
		elsif endDistanceMatch = '1' then
			state<= WAITCALCDISTANCE;
	   elsif clk'event and clk='1' then					
			state <= state_fut;				
	   end if;
    END PROCESS;
    
    PROCESS(clk)
		BEGIN
			if clk'event and clk='0' then
			    s_blockState <= "1010";
			    s_en_SimpleMatch <= '0';
				 s_enMinDistanceMatch <= '0';
			    s_wrRam <= '0';
				 s_distanceMatch <= distanceMatch;
			    
				case state is
				when RESET =>					
					s_countDado <= (others => '0');
					s_countCentroid <= (others => '0');
					s_countDimensions <= (others => '0');
					s_blockState <= "1010";
					s_addrRamDado <= (others => '0');
					s_addrRamCentroid <= (others => '0');
					s_sumDistance <= (others =>'0');
					state_fut <= IDLE;
					estado <= "0000";
					
				when IDLE =>					
					s_countDado <= count_Dado;
					s_countCentroid <= count_Centroid;
					s_sumDistance <= (others =>'0');
				
					if en_KmodesControlCalcMap='1' then
						state_fut <= VERIFYDATA;
					else
						state_fut <= IDLE;
					end if;
					estado <= "0001";
					
				when VERIFYDATA =>				
					if (s_countDado < reg3) then
						state_fut <= LOADDATA;
					else
						state_fut <= ENDSTATE;
					end if;
					estado <= "0010";
				
				when LOADDATA =>
					s_addrRamDado <= std_logic_vector(to_unsigned(conv_integer(s_countDimensions) + conv_integer(s_countDado*(reg8+1)),TamanhoAddr));  -- Nº dimensoes + (2 * Nº Dados)
					s_addrRamCentroid <= std_logic_vector(to_unsigned(conv_integer(reg5) + conv_integer(s_countDimensions) +  conv_integer(s_countCentroid *(reg8+1)),TamanhoAddr)); -- Reg5 + Nº dimensoes + (2 * Nº centroids)	
					if (s_countCentroid < reg1) then
						state_fut <= CALCDISTANCE;
					else
						state_fut <= ENDCENTROIDS;
					end if;
					estado <= "0011";
				
				when CALCDISTANCE =>
					s_en_SimpleMatch <= '1';								
					state_fut <= CALCDISTANCE;
					estado <= "0100";
					
				when WAITCALCDISTANCE =>							
					state_fut <= VERIFYDIMENSION;
					estado <= "0100";
					
				when VERIFYDIMENSION =>
				   s_sumDistance <= s_sumDistance + std_logic_vector(to_unsigned(conv_integer(s_distanceMatch),MaxSumMatch));
					
					if (s_countDimensions < reg8) then 
						state_fut <= LOADDATA;
						s_countDimensions <= s_countDimensions + 1;
					else 
						state_fut <= MINDISTANCE;	
					end if;	
					estado <= "0101";
				
				when MINDISTANCE =>
				   s_enMinDistanceMatch <= '1';
					state_fut <= ENDCENTROIDS;
					estado <= "0110";
				
				when ENDCENTROIDS =>	  
				   s_sumDistance <= (others =>'0');   
					
					if (s_countCentroid < reg1-1) then
						s_countCentroid <= s_countCentroid + 1;
						s_countDimensions <= (others => '0');	
						state_fut <= LOADDATA;
					else
						state_fut <= STOREDATA;
					end if;
					estado <= "0111";
				
				when STOREDATA =>
					s_addrRamDado <= std_logic_vector(to_unsigned(conv_integer(s_countDado),TamanhoAddr));
					s_oDado <= reg7;
					s_wrRam <= '1';
					s_countCentroid <= (others =>'0');
					s_countDimensions <= (others => '0');			
					s_countDado <= s_countDado + 1;	
					state_fut <= VERIFYDATA;
					estado <= "1000";
					
				when ENDSTATE =>
				   s_blockState <= "1011";
					s_countDado <= (others => '0');
					s_countCentroid <= (others => '0');	
				   s_countDimensions <= (others => '0');	
	            s_sumDistance <= (others =>'0');				
				   state_fut <= IDLE;	
					estado <= "1001";
				 end case;									
			end if;			
		END PROCESS;
		
--Ligacao dos sinais com os dados de saida
 next_State          <= s_blockState;
 addr_Ram_Dado       <= s_addrRamDado;
 addr_Ram_Centroid   <= s_addrRamCentroid;
 o_count_Dado        <= s_countDado;
 o_count_Centroid    <= s_countCentroid;
 wr_Ram 		         <= s_wrRam;
 en_SimpleMatch	   <= s_en_SimpleMatch;
 o_dado 		         <= s_oDado;
 en_MinDistanceMatch <= s_enMinDistanceMatch;
 sumDistance         <= s_sumDistance;

END arch;