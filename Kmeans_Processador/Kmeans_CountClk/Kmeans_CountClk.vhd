--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Count Clk
--|| Descricao: Este bloco realizaa contagem da quantidade de ciclos de clock necess´arios para executar uma operaçao do hardware

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all ;
use ieee.numeric_std.all;

Entity Kmeans_CountClk is
    GENERIC ( MaxCountBits: INTEGER := 64;
			     NumBitsStates: INTEGER := 4); 
				  
	 PORT (
     clk          	: in STD_LOGIC;									       	--Sinal de Clock
	  nrst			   : in STD_LOGIC;								          	--Sinal de Reset
	  countClk        : in STD_LOGIC_VECTOR(MaxCountBits-1 downto 0);    
	  en_Count        : in STD_LOGIC;                                    --Termina processamento
	  continue   		: in STD_LOGIC;									         --Executa novo kmeans
     readDone   		: in STD_LOGIC;
     en_MemoryInitialize	: in STD_LOGIC;                              --Inicializa kmeans
	  o_countClk      : out STD_LOGIC_VECTOR(MaxCountBits-1 downto 0);  --Contador de saida do bloco 
	  dado            : out STD_LOGIC_VECTOR(7 downto 0);	      
	  next_State      : out STD_LOGIC_VECTOR (NumBitsStates-1 downto 0) --Proximo estado(bloco) a ser acessado na FMS
	 );
END Kmeans_CountClk;

ARCHITECTURE arch of Kmeans_CountClk is

--Sinais de dados 
TYPE state_type is (RESET, IDLE, COUNT, READDATA, WAITDATA, WAITDATA2);
SIGNAL state, state_fut 	: state_type;
SIGNAL s_countClk    : STD_LOGIC_VECTOR (MaxCountBits-1 downto 0):= (others =>'0');
SIGNAL s_blockState  : STD_LOGIC_VECTOR (NumBitsStates-1 downto 0) := "0000";
SIGNAL s_countDado   : STD_LOGIC_VECTOR (2 downto 0):= (others =>'0');
SIGNAL s_Dado        : STD_LOGIC_VECTOR (7 downto 0):= (others => '1');

BEGIN
   
	PROCESS (clk, nrst, en_Count)
		BEGIN
			if nrst = '0' then
				state <= RESET;				
			elsif clk'event and clk='1' then
				state <= state_fut;	
			end if;
	END PROCESS;
	
	PROCESS (clk, continue, en_MemoryInitialize)
	BEGIN
		if clk'event and clk='0' then
			case state is
				when RESET =>
					s_countClk   <= (others =>'0');
					s_Dado       <= (others =>'1');
					s_blockState <= "0000";
					state_fut    <= IDLE;
					
				when IDLE =>
				    s_countClk   <= countClk;
					 s_blockState <= "0000";		
					 s_Dado       <= (others =>'1');
					 
					 if en_MemoryInitialize='1' then
						state_fut <= COUNT;						
					 else
						state_fut <= IDLE;					
					 end if;
					 
				when COUNT =>	
			       s_countClk <= countClk;
					 s_blockState <= "0000";	
					 s_countClk <= s_countClk + 1;
					 s_Dado       <= (others =>'1');					 
					  
					 if en_Count='1' then
						state_fut <= READDATA; 
					 else	
					 state_fut <= COUNT;					
					 end if;
					
				when READDATA =>
					  s_countClk <= countClk;  
					  
					  if (conv_integer(s_countDado) < 8)  then
					     if (conv_integer(s_countDado) = 0) then
								s_Dado <= s_countClk(7 downto 0);
						  elsif (conv_integer(s_countDado) = 1) then
								s_Dado <= s_countClk(15 downto 8);
						  elsif (conv_integer(s_countDado) = 2) then
								s_Dado <= s_countClk(23 downto 16);
						  elsif (conv_integer(s_countDado) = 3) then
								s_Dado <= s_countClk(31 downto 24);
						  elsif (conv_integer(s_countDado) = 4) then
								s_Dado <= s_countClk(39 downto 32);
						  elsif (conv_integer(s_countDado) = 5) then
								s_Dado <= s_countClk(47 downto 40);
						  elsif (conv_integer(s_countDado) = 6) then
								s_Dado <= s_countClk(55 downto 48);
					     else
								s_Dado <= s_countClk(63 downto 56);
						  end if;
						  
					      s_countDado <= s_countDado + 1;
							state_fut <= WAITDATA2;
					  else
					     state_fut <= WAITDATA;
						  s_countDado <= (others =>'0');
						  s_Dado       <= (others =>'1');
					  end if;	  
			    
           when WAITDATA =>	
		              s_Dado       <= (others =>'1');	  
			         --  if (continue='1') then
								s_countClk <= (others =>'0');
								s_blockState <= "0001";
								state_fut <= RESET;
						 -- else
						--		s_blockState <= "0000";
						--		state_fut <= WAITDATA;
						--  end if;
					
			 when WAITDATA2 =>
			         s_countClk <= countClk;
						if (readDone = '1') then
						   state_fut <= READDATA;
						else
					      state_fut <= WAITDATA2;	
						end if;
						
			end case;	
		end if;
	END PROCESS;

next_state     <= s_blockState;	
o_countClk     <= s_countClk;
dado 				<= s_Dado;

END arch;