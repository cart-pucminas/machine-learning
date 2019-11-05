--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Memory Initialize
--|| Descricao: Este bloco realiza a inicializacao da memoria ram, lendo os dados de entrada (rom) e os armazenando na memoria ram interna.
--||            Executa um loop a partir de um contador para ler um dado na posicao 'x' da rom e escrever na posicao 'x' da ram.


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity Kmeans_MemoryInitialize is

	GENERIC (TamanhoAddr  : INTEGER := 14;
			   MaxPontosBits: INTEGER := 15;
		      NumBitsStates: INTEGER := 4);
	
	PORT(
		clk 		  			  : in STD_LOGIC;													  --Sinal de clock
		nrst 		  			  : in STD_LOGIC;                                       --Sinal de reset
		reg3    			  : in STD_LOGIC_VECTOR(MaxPontosBits-1 downto 0);      --Quantidade de pontos informados
		en_MemoryInitialize : in STD_LOGIC; 									           --Habilita Inicializacao deste bloco							  
	--	countData  		     : in STD_LOGIC_VECTOR (MaxPontosBits-1 downto 0);      --Contador que define qual foi o ultimo dado processado
		initAddr            : in STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);       --Endereco inicial para a leitura dos dados da memoria rom
		reg8			        : in STD_LOGIC_VECTOR (2 downto 0);						  --Quantidade de posicoes de memoria + 1 referente ao numero de dimensoes dos dados
	--	o_countData			  : out STD_LOGIC_VECTOR (MaxPontosBits-1 downto 0);     --Contador que define qual sera o proximo dado a ser processado
		addr_Rom   			  : out STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);       --Endereco para realizar a leitura na memoria rom
		addr_Ram   			  : out STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);       --Endereco para realizar a escrita na memoria ram interna
		next_State			  : out STD_LOGIC_VECTOR(NumBitsStates-1 downto 0)       --Proximo estado a ser executado
	);

end Kmeans_MemoryInitialize;

ARCHITECTURE arch OF Kmeans_MemoryInitialize IS 

--Sinais de dados
SIGNAL s_countData   :  STD_LOGIC_VECTOR (MaxPontosBits-1 downto 0);
SIGNAL s_addr_Rom    :  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0) := (others => '0');
SIGNAL s_addr_Ram    :  STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0) := (others => '0');
SIGNAL s_blockState  :  STD_LOGIC_VECTOR (NumBitsStates-1 downto 0) := "0001";

BEGIN
	PROCESS(clk,nrst, en_MemoryInitialize, initAddr, reg8, reg3)
	BEGIN
		if nrst='0' then			
			s_blockState <= "0001";
			s_countData  <=(others => '0');
			s_addr_rom   <=(others => '0');
			s_addr_ram   <=(others => '0');
			
		elsif clk'event and clk='1' and en_MemoryInitialize='1' then
			--s_countData <= countData;
			if (s_countData < (reg3*(reg8 + 1))) then
				s_addr_rom <= std_logic_vector(to_unsigned(conv_integer(initAddr) + conv_integer(s_countData),TamanhoAddr));
				s_addr_ram <= std_logic_vector(to_unsigned(conv_integer(s_countData),TamanhoAddr));					
				s_countData <= s_countData + 1;
				s_blockState <= "0001";
			else
				s_countData  <= (others => '0');
				s_blockState <="0010";
			end if;	
		end if;
	END PROCESS;

addr_rom    <= s_addr_rom;
--o_countData <= s_countData;
addr_ram    <= s_addr_ram;	
next_State  <= s_blockState;

end arch;