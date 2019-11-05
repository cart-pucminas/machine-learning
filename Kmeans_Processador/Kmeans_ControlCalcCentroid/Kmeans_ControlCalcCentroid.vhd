--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Control Calc Centroid
--|| Descricao: Este bloco realiza a atualizacao dos valores dos centroids. A partir dos mapeamentos calculados eh realizado um somatorio 
--||            para cada centroid, com os valores dos dados mapeados e em seguida eh tirarada a media para cada centroid, obtendo assim
--||			    o seu novo valor. Este bloco possui dois buffers que armazenam a soma e a quantidade de dados para cada centroid. 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity Kmeans_ControlCalcCentroid is

	GENERIC (TamanhoAddr      : INTEGER := 14;
				Palavra	        : INTEGER := 64;
				PalavraXY	 	  : INTEGER := 32;
				MaxCentroidsBits : INTEGER := 10;
				MaxPontosBits    : INTEGER := 15;
				--MaxCountCentroids: INTEGER := 13;
				NumBitsStates	  : INTEGER := 4);
	
	PORT(
		clk  		      		 : in STD_LOGIC;                                          --Sinal de clock
		nrst 			   		 : in STD_LOGIC;														 --Sinal de reset
		en_ControlCalcCentroid: in STD_LOGIC;  													 --Habilita Inicializacao deste bloco
		reg1			  		    : in STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0);      --Numero de centroids de entrada
	   reg3			  		 	 : in STD_LOGIC_VECTOR(MaxPontosBits-1 downto 0); 		    --Numero de pontos de entrada 
	   reg5 		             : in STD_LOGIC_VECTOR(TamanhoAddr-1 downto 0);           --Endereco inicial da memoria para os valores dos centroids 
	--	reg6 		             : in STD_LOGIC_VECTOR(TamanhoAddr-1 downto 0);				 --Endereco inicial da memoria para os valores dos mapeamentos
		reg8			        	 : in STD_LOGIC_VECTOR (2 downto 0); 					       --Quantidade de posicoes de memoria + 1 referente ao numero de dimensoes dos dados
   	count_Centroid        : in STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0); 	    --Centroid que sera processado
		count_Dado            : in STD_LOGIC_VECTOR(MaxPontosBits-1 downto 0);   		 --Ponto que sera rocessado
		valueDadoX 	  			 : in STD_LOGIC_VECTOR (PalavraXY-1 downto 0);		       --Valor atualizado do somatorio dos dados na posicao X
		valueDadoY 	  			 : in STD_LOGIC_VECTOR (PalavraXY-1 downto 0);            --Valor atualizado do somatorio dos dados na posicao Y
		valueMap  	  			 : in STD_LOGIC_VECTOR (MaxCentroidsBits-1 downto 0);     --Numero do centroid que sera processado  
		next_State      		 : out STD_LOGIC_VECTOR (NumBitsStates-1 downto 0); 		 --Proximo estado(bloco) a ser acessado na FMS
		addr_Ram_Dado	     	 : out STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);         --Endereco da memoria ram onde sera lido/escrito o valor do dado/centroid
		addr_Ram_Map     		 : out STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);         --Endereco da memoria ram onde sera lido o valor do mapeamento atual
		memValueX				 : out STD_LOGIC_VECTOR (PalavraXY-1 downto 0);           --Somatorio de X armazenado no buffer  
		memValueY				 : out STD_LOGIC_VECTOR (PalavraXY-1 downto 0);           --Somatorio de Y armazenado no buffer
		numXDiv  	  			 : out STD_LOGIC_VECTOR (PalavraXY-1 downto 0);           --Somatorio de X armazenado no buffer para o centroid escolhido 
		numYDiv  	  			 : out STD_LOGIC_VECTOR (PalavraXY-1 downto 0);           --Somatorio de Y armazenado no buffer para o centroid escolhido
		denDiv  	  			    : out STD_LOGIC_VECTOR (PalavraXY-1 downto 0);           --Quantidade de pontos relacionados a um centroid, armazendo no buffer 
		o_count_Centroid      : out STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0);     --Numero de centroids processados
		o_count_Dado          : out STD_LOGIC_VECTOR(MaxPontosBits-1 downto 0);        --Numero de pontos processados
		wr_RamA		  			 : out STD_LOGIC;														 --Habilita a leitura(0) ou escrita(1) no canal A da memoria ram
		wr_RamB		  			 : out STD_LOGIC;													    --Habilita a leitura(0) ou escrita(1) no canal B da memoria ram
		estado : out STD_LOGIC_VECTOR(3 downto 0)
	);

end Kmeans_ControlCalcCentroid;

ARCHITECTURE arch OF Kmeans_ControlCalcCentroid IS 
--Tipos de dados 
TYPE sum_Array IS ARRAY (MaxCentroidsBits-1 downto 0) OF STD_LOGIC_VECTOR (PalavraXY-1 downto 0);
TYPE qtd_Array IS ARRAY (MaxCentroidsBits-1 downto 0) OF STD_LOGIC_VECTOR (PalavraXY-1 downto 0);
TYPE state_type is (RESET, IDLE, LOADDATA, WAITDATA, SUM, VERIFYDIV, DIV, STOREDATA, VERIFYDIMENSION, ENDSTATE);

--Sinais de dados
SIGNAL state, state_fut  : state_type;	
SIGNAL sumXArray         : sum_Array := (others=>(others => '0'));
SIGNAL sumYArray         : sum_Array := (others=>(others => '0'));
SIGNAL qtdArray          : qtd_Array := (others=>(others =>'0'));
SIGNAL s_blockState  	 : STD_LOGIC_VECTOR (NumBitsStates-1 downto 0) := "0101";
SIGNAL s_addrRamDado 	 : STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0) := (others => '0');
SIGNAL s_addrRamMap  	 : STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0) := (others => '0');
SIGNAL s_countCentroid   : STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0) := (others => '0');
SIGNAL s_countDado		 : STD_LOGIC_VECTOR(MaxPontosBits-1 downto 0) := (others => '0');
SIGNAL s_countDimensions : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
SIGNAL s_wrRamA  	       : STD_LOGIC := '0';
SIGNAL s_wrRamB  	       : STD_LOGIC := '0';
SIGNAL s_numXDiv	  	    : STD_LOGIC_VECTOR (PalavraXY-1 downto 0):= (others =>'0');
SIGNAL s_numYDiv	  	    : STD_LOGIC_VECTOR (PalavraXY-1 downto 0):= (others =>'0');
SIGNAL s_denDiv	  	    : STD_LOGIC_VECTOR (PalavraXY-1 downto 0):= (others =>'0');
SIGNAL s_memValueX 	    : STD_LOGIC_VECTOR (PalavraXY-1 downto 0):= (others =>'0');
SIGNAL s_memValueY	    : STD_LOGIC_VECTOR (PalavraXY-1 downto 0):= (others =>'0');
	
BEGIN

	PROCESS(clk, nrst)
	BEGIN
		if nrst = '0' then
			state <= RESET;
		elsif clk'event and clk='1' then
			state <= state_fut;	
		end if;
	
	END PROCESS;

	PROCESS(clk, en_ControlCalcCentroid)
	BEGIN
	    if clk'event and clk='0' then
			s_blockState <= "0101";
			s_wrRamA <= '0';
			s_wrRamB <= '0';
			s_memValueX <= sumXArray(conv_integer(valueMap));
			s_memValueY <= sumYArray(conv_integer(valueMap));			
		
			case state is
					when RESET =>
						s_countDado <= (others => '0');
						s_countCentroid <= (others => '0');
						sumXArray <= (others=>(others=>'0'));
						sumYArray <= (others=>(others=>'0'));
						qtdArray <= (others=>(others=>'0'));
						s_blockState <= "0101";
						state_fut <= IDLE;
						estado <= "0000";
						
					when IDLE =>
						s_countDado <= count_Dado;
						s_countCentroid <= count_Centroid;
					
						if en_ControlCalcCentroid='1' then
							state_fut <= LOADDATA;
						else
							state_fut <= IDLE;
						end if;
						estado <= "0001";
						
					when LOADDATA =>						
						if (s_countDado < reg3) then
							s_addrRamDado <= std_logic_vector(to_unsigned(conv_integer((reg8+1)*s_countDado)+conv_integer(s_countDimensions),TamanhoAddr));
							s_addrRamMap  <= std_logic_vector(to_unsigned(conv_integer(s_countDado),TamanhoAddr));
							state_fut <= WAITDATA;
						else
							state_fut <= VERIFYDIV;
						end if;
					estado <= "0010";
					
					when WAITDATA =>
						state_fut <= SUM;
					estado <= "0011";	
					
					when SUM =>					     
						sumXArray(conv_integer(valueMap)) <= valueDadoX;
						sumYArray(conv_integer(valueMap)) <= valueDadoY;
						qtdArray(conv_integer(valueMap)) <= qtdArray(conv_integer(valueMap)) + 1;
						s_countDado <= s_countDado + 1;	
						state_fut <= LOADDATA;	
						estado <= "0100";
					
					when VERIFYDIV =>
						if (s_countCentroid < reg1) then
							state_fut <= DIV;	
						else
							state_fut <= VERIFYDIMENSION;
						end if;
					estado <= "0101";
					
					when DIV =>					    
						s_numXDiv <= sumXArray(conv_integer(s_countCentroid));
						s_numYDiv <= sumYArray(conv_integer(s_countCentroid));
						
						if (conv_integer(qtdArray(conv_integer(s_countCentroid))) /= 0) then
							s_denDiv <= qtdArray(conv_integer(s_countCentroid));
						else
							s_denDiv <= (others=>'0');
							s_denDiv <= s_denDiv + 1;	
						end if; 
							
						state_fut <= STOREDATA;
						estado <= "0110";
						
					when STOREDATA =>
						s_addrRamDado <= std_logic_vector(to_unsigned(conv_integer(reg5)+conv_integer((reg8+1)*s_countCentroid)+conv_integer(s_countDimensions),TamanhoAddr));
						s_wrRamA <= '1';	
						s_countCentroid <= s_countCentroid + 1;
						state_fut <= VERIFYDIV;
						estado <= "0111";
						
					when VERIFYDIMENSION =>	
						if (s_countDimensions < reg8) then
						   s_countDimensions <= s_countDimensions + 1;
							s_countDado <= (others => '0');
						   s_countCentroid <= (others => '0');	
						   sumXArray <= (others=>(others=>'0'));
						   sumYArray <= (others=>(others=>'0'));
						   qtdArray <= (others=>(others=>'0'));
							state_fut <= LOADDATA;	
						else
							state_fut <= ENDSTATE;
						end if;
						estado <= "1000";
						
					when ENDSTATE =>
					   s_blockState <= "0110";
						s_countDado <= (others => '0');
						s_countCentroid <= (others => '0');	
						s_countDimensions <= (others => '0');	
						sumXArray <= (others=>(others=>'0'));
						sumYArray <= (others=>(others=>'0'));
						qtdArray <= (others=>(others=>'0'));						
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
 numXDiv <= s_numXDiv;	  
 numYDiv <= s_numYDiv;	     
 denDiv <= s_denDiv;	  	     
 memValueX <= s_memValueX; 	     
 memValueY <= s_memValueY;
 	    
END arch;
