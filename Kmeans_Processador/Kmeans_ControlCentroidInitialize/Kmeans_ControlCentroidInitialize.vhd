--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Control Centroid Initialize
--|| Descricao: Este bloco realiza o controle da inicializacao dos centroids, a partir de uma maquina de estados ele realiza uma leitura 
--||            memoria ram e define qual sera o proximo bloco a atuar 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity Kmeans_ControlCentroidInitialize is

	GENERIC (Palavra          : INTEGER := 64;
		      TamanhoAddr      : INTEGER := 14;
				MaxCentroidsBits : INTEGER := 10;
				MaxCountCentroids: INTEGER := 13;
				NumBitsStates	  : INTEGER := 4);
	
	PORT(
		clk  		      		        : in STD_LOGIC;                                        --Sinal de clock
		nrst 			   		        : in STD_LOGIC;                                        --Sinal de reset
		reg1                         : in STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0); 	--Numero de centroids
		count_Centroid               : in STD_LOGIC_VECTOR(MaxCountCentroids-1 downto 0); 	--Numero de centroids inicializados
		en_ControlCentroidInitialize : in STD_LOGIC;                                        --Habilita Inicializacao deste bloco
		floatInput      				  : in STD_LOGIC;												      --Se (1) os dados de entrada sao do tipo float, se (0) inteiros  
		reg8			        			  : in STD_LOGIC_VECTOR (2 downto 0); 						   --Quantidade de posicoes de memoria + 1 referente ao numero de dimensoes dos dados
		kmodesInput      				  : in STD_LOGIC;												      --Se (1) indica a execucao do Kmodes, se (0) do kmeans  
		next_State      		        : out STD_LOGIC_VECTOR(NumBitsStates-1 downto 0);      --Proximo estado(bloco) a ser acessado na FMS 
		o_countCentroid  		        : out STD_LOGIC_VECTOR(MaxCountCentroids-1 downto 0);   --Contador de centroids que serao processados
		addr_Ram 				        : out STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0)        --Endereco para realizar a leitura na memoria ram
	);

end Kmeans_ControlCentroidInitialize;

ARCHITECTURE arch OF Kmeans_ControlCentroidInitialize IS 

TYPE state_type is (RESET, IDLE, READDATA);
SIGNAL state, state_fut 	: state_type;
SIGNAL s_blockState      :  STD_LOGIC_VECTOR (NumBitsStates-1 downto 0) := "0010";
SIGNAL s_countCentroid	 :  STD_LOGIC_VECTOR (MaxCountCentroids-1 downto 0) := (others => '0');--INTEGER range 0 to MaxCentroid := 0;
SIGNAL s_addrRam         :  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0) := (others => '0');
	
BEGIN
		--Caso o botao de nrst seja acionado o bloco sera resetado
		--Caso contrario sera verificado se o todos os centroids foram inicializados, se verdadeiro vai 
		--para o bloco 3, se falso solicita a inicializacao do proximo centroid
		PROCESS (clk, nrst)
		BEGIN
			if nrst = '0' then
				state <= RESET;
			elsif clk'event and clk='1' then
				state <= state_fut;	
			end if;
		END PROCESS;	
		
		
		PROCESS(clk, en_ControlCentroidInitialize, floatInput, kmodesInput)
		BEGIN
			if clk'event and clk='0' then
			    
				case state is
				when RESET =>	
					s_blockState <= "0010";
					s_countCentroid <= (others => '0');
					s_addrRam <= (others => '0');
					state_fut <= IDLE;
					
				when IDLE =>
					s_blockState <= "0010";
					s_countCentroid <= count_Centroid;					
					--O modo aleatorio realizado atraves do metodo Round-robin
	            s_addrRam <= std_logic_vector(to_unsigned(conv_integer(s_countCentroid),TamanhoAddr));
					
					if en_ControlCentroidInitialize='1' then
						state_fut <= READDATA;						
					else
						state_fut <= IDLE;					
					end if;
					
				when READDATA =>
					s_countCentroid <= count_Centroid;					
					
					--O modo aleatorio realizado atraves do metodo Round-robin
	            s_addrRam <= std_logic_vector(to_unsigned(conv_integer(s_countCentroid),TamanhoAddr));
	                
	            if (s_countCentroid < (reg1*(reg8 + 1))) then
						s_blockState <= "0011";
					else
					   if kmodesInput = '0' then 
							if floatInput = '0' then			
								s_blockState <= "0100";	
							else
								s_blockState <= "1000";
							end if;
						else
						   s_blockState <= "1010";
						end if;	
						s_countCentroid <= (others => '0');
					end if;	
	                
	            state_fut <= IDLE;
					
				end case;
			end if;		
		END PROCESS;
--Ligacao dos sinais com os bis de saida
 o_countCentroid <= s_countCentroid;
 next_State      <= s_blockState;
 addr_Ram        <= s_addrRam;

END arch;		
