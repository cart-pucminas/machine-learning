--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Output Result
--|| Descricao: Este bloco realiza um loop que le os resultados finais armazenados na memoria ram e os envia para a saida no bloco Result

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all ;
use ieee.numeric_std.all;

Entity Kmeans_OutputResult is
    GENERIC ( MaxPontosBits: INTEGER := 15;
			     TamanhoAddr  : INTEGER := 14;
			     NumBitsStates: INTEGER := 4); 
				  
	 PORT (
     clk          	: in STD_LOGIC;									       	--Sinal de Clock
	  nrst			   : in STD_LOGIC;								          	--Sinal de Reset
	  reg3			   : in STD_LOGIC_VECTOR(MaxPontosBits-1 downto 0); 	--Numero de pontos mapeados
	 -- reg6			   : in STD_LOGIC_VECTOR(TamanhoAddr-1 downto 0);      --Numero de pontos mapeados
	 -- reg8			   : in STD_LOGIC_VECTOR (2 downto 0); 				   --Quantidade de posicoes de memoria + 1 referente ao numero de dimensoes dos dados
	  count_Map       : in STD_LOGIC_VECTOR(MaxPontosBits-1 downto 0);   --Quantidade de iteracoes realizadas
	  en_OutputResult : in STD_LOGIC;									         --Habilita o bloco								
	  o_count_Map     : out STD_LOGIC_VECTOR(MaxPontosBits-1 downto 0);  --Contador de saida do bloco     
	  addr_Ram  	   : out STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);   --Endereco da memoria ram que sera acessado
	  next_State      : out STD_LOGIC_VECTOR (NumBitsStates-1 downto 0); --Proximo estado(bloco) a ser acessado na FMS
	  en_Saida			: out STD_LOGIC                                    --Habilita os resultados de saida
	 );
END Kmeans_OutputResult;

ARCHITECTURE arch of Kmeans_OutputResult is

--Sinais de dados 
TYPE state_type is (RESET, IDLE, READDATA);
SIGNAL state, state_fut 	: state_type;
SIGNAL s_countMap    : STD_LOGIC_VECTOR (MaxPontosBits-1 downto 0):= (others =>'0');
SIGNAL s_blockState  : STD_LOGIC_VECTOR (NumBitsStates-1 downto 0) := "0111";
SIGNAL s_addr_Ram    : STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0) := (others => '0');
SIGNAL s_enSaida     : STD_LOGIC := '0';

BEGIN
   
	PROCESS (clk, nrst)
		BEGIN
			if nrst = '0' then
				state <= RESET;
			elsif clk'event and clk='1' then
				state <= state_fut;	
			end if;
	END PROCESS;
	
	PROCESS (clk, en_OutputResult)
	BEGIN
		if clk'event and clk='0' then
			case state is
				when RESET =>
					s_countMap   <= (others =>'0');
					s_blockState <= "0111";
				s_addr_ram   <= (others =>'0');
					s_enSaida    <= '0';
					state_fut    <= IDLE;
					
				when IDLE =>
				    s_countMap <= count_Map;
					 s_blockState <= "0111";
         		 s_addr_ram <= std_logic_vector(to_unsigned(conv_integer(s_countMap),TamanhoAddr));						 
					 s_enSaida  <= '0';
					 
					 if en_OutputResult='1' then
						state_fut <= READDATA;						
					 else
						state_fut <= IDLE;					
					 end if;
					
				when READDATA =>
					  s_countMap <= count_Map;         		  						 
					  s_enSaida  <= '1';
					  
					  if (s_countMap < (reg3-1)) then
							s_countMap <= s_countMap + 1;
							s_blockState <= "0111";
							state_fut <= READDATA;
					  else
							s_blockState <= "0000";
							s_countMap <= (others =>'0');
							state_fut <= RESET;
					  end if;  
					  
					  s_addr_ram <= std_logic_vector(to_unsigned(conv_integer(s_countMap),TamanhoAddr));	
			end case;	
		end if;
	END PROCESS;

next_state     <= s_blockState;	
o_count_Map    <= s_countMap;
addr_Ram       <= s_addr_ram;
en_Saida       <= s_enSaida;

END arch;