--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Map Initialize
--|| Descricao: Este bloco define os valores iniciais para o mapeamento. Ex, com 2 centroids: Map0 - 0, Map1 - 1, Map2 - 0, Map3 - 1

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all ;
use ieee.numeric_std.all;

Entity Kmeans_MapInitialize is
    GENERIC (TamanhoAddr      : INTEGER := 14; 
			    Palavra          : INTEGER := 64;
			    MaxCentroidsBits : INTEGER := 10;
			    MaxPontosBits    : INTEGER := 14;
			    NumBitsStates    : INTEGER := 4); 
				  
	 PORT (
     clk          	: in STD_LOGIC;									           --Sinal de Clock
	  nrst			   : in STD_LOGIC;									           --Reset do bloco
	  reg1			   : in STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0);  --Numero de centroids
	  reg3			   : in STD_LOGIC_VECTOR(MaxPontosBits-1 downto 0);     --Numero de pontos
	  reg6 		      : in STD_LOGIC_VECTOR(TamanhoAddr-1 downto 0);       --Endereco para salvar os mapeamentos calculados
	--  count_Map  	   : in STD_LOGIC_VECTOR(MaxPontosBits-1 downto 0);     --Quantidade de dados inicializados no mapeamento
	  count_Centroid  : in STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0);  --Quantidade de centroids contados
	  en_MapInitialize: in STD_LOGIC;									           --Habilita o bloco		
     floatInput      : in STD_LOGIC;												  --Se (1) os dados de entrada sao do tipo float, se (0) inteiros  
	--  o_count_Map	   : out STD_LOGIC_VECTOR(MaxPontosBits-1 downto 0);    --Contador de saida do bloco
	  o_count_Centroid: out STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0); --Contador de saida do bloco
	  o_dado    	   : out STD_LOGIC_VECTOR(Palavra-1 downto 0);		     --Dado que sera salvo na memoria ram
     addr_Ram    	   : out STD_LOGIC_VECTOR(TamanhoAddr-1 downto 0); 	  --Endereco de escrita na memoria ram            
	  next_State      : out STD_LOGIC_VECTOR(NumBitsStates-1 downto 0);    --Proximo estado(bloco) a ser acessado na FMS
	  wr_RamA		   : out STD_LOGIC                                      --Habilita leitura(0) ou escrita(1) na memoria ram A
	 );
END Kmeans_MapInitialize;

ARCHITECTURE arch of Kmeans_MapInitialize is

--Sinais de dados 
SIGNAL s_blockState    : STD_LOGIC_VECTOR (NumBitsStates-1 downto 0) := "0100";
SIGNAL s_countMap      : STD_LOGIC_VECTOR(MaxPontosBits-1 downto 0);
SIGNAL s_countCentroid : STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0):= (others =>'0');
SIGNAL s_addrRam       : STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0) := (others =>'0');
SIGNAL s_dado    	     : STD_LOGIC_VECTOR (Palavra-1 downto 0) := (others =>'0');
SIGNAL s_wren		     : STD_LOGIC := '0';

BEGIN

	PROCESS(clk, nrst, en_MapInitialize, s_countCentroid, reg1, floatInput)
	 	 
	BEGIN
	   if nrst='0' then
			s_countMap <= (others =>'0');
			s_countCentroid <= (others =>'0');
			s_blockState <= "0100";
			s_dado <= (others =>'0');
			s_addrRam <= (others =>'0');
			s_wren <= '0';
			
		elsif clk'event and clk='1' and en_MapInitialize='1' then
		   s_wren <= '0';	 
			
			if (s_countMap < reg3) then				
				--O mapeamento sera armazenado na memoria ram no primeiro endereco disponivel
				--apos a insercao dos centroids inicializados
				--addPosicao(posicao inicial de mapeamento + item do mapeamento) 
				s_addrRam <= std_logic_vector(to_unsigned(conv_integer(reg6) + conv_integer(s_countMap),TamanhoAddr)); 
				s_wren <= '1';					
				s_countMap <= s_countMap + 1; --Incrementa o contador				
				s_blockState <= "0100";	
				
				--Verifica qual sera o proximo centroid a ser definido
				if (s_countCentroid < (reg1-1)) then
					s_countCentroid <= s_countCentroid + 1;
				else 
					s_countCentroid <= (others =>'0');
				end if;	
						
			else
            if floatInput = '0' then			
					s_blockState <= "0101";	
				else
					s_blockState <= "1001";
				end if;
				
	         s_wren <= '0';			
				s_countMap <= (others =>'0');
			end if;
			
			s_dado <= std_logic_vector(resize(signed(s_countCentroid),Palavra));
			
		end if;
			
	END PROCESS;
	
o_dado           <= s_dado;
--o_count_Map      <= s_countMap;
o_count_Centroid <= s_countCentroid;
addr_Ram         <= s_addrRam;
wr_RamA          <= s_wren;
next_State       <= s_blockState;

END arch;