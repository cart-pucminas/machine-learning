--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Centroid Initialize
--|| Descricao: Este bloco define os valores iniciais para os centroids, gravando na memoria ram o valor recebido pelo controlador 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all ;
use ieee.numeric_std.all;

Entity Kmeans_CentroidInitialize is
    GENERIC (TamanhoAddr      : INTEGER := 14; 
				 Palavra          : INTEGER := 64;
				 MaxCountCentroids: INTEGER := 13;
			    NumBitsStates    : INTEGER := 4); 
				  
	 PORT (
     clk          			 : in STD_LOGIC;													--Sinal de clock
	  count_Centroid  		 : in STD_LOGIC_VECTOR(MaxCountCentroids-1 downto 0);	--Contador que informa qual sera o centroid inicializado
	  dado         		    : in STD_LOGIC_VECTOR (Palavra-1 downto 0);          --Valor lido da memoria ram
	  en_CentroidInitialize  : in STD_LOGIC;												   --Habilita o bloco
	  reg5 		             : in STD_LOGIC_VECTOR(TamanhoAddr-1 downto 0);       --Valor do registrador 5
	  o_countCentoid		 	 : out STD_LOGIC_VECTOR(MaxCountCentroids-1 downto 0); --Contador que informa qual sera o proximo centroid processado
	  o_dado    			    : out STD_LOGIC_VECTOR (Palavra-1 downto 0);         --Valor que sera inicializado no centroid
	  next_State      		 : out STD_LOGIC_VECTOR(NumBitsStates-1 downto 0);    --Proximo estado(bloco) a ser acessado na FMS 
     addr_Ram    			 	 : out STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0);     --Endereco de escrita na memoria ram    
     wr_RamB				 	 : out STD_LOGIC                                      --Habilita leitura(0) ou escrita(1) na memoria ram B 
    );
END Kmeans_CentroidInitialize;

ARCHITECTURE arch of Kmeans_CentroidInitialize is
SIGNAL s_countCentroid : STD_LOGIC_VECTOR(MaxCountCentroids-1 downto 0) := (others =>'0');
SIGNAL s_addrRam       : STD_LOGIC_VECTOR (TamanhoAddr-1 downto 0) := (others =>'0');
SIGNAL s_dado          : STD_LOGIC_VECTOR (Palavra-1 downto 0) := (others =>'0');
SIGNAL s_wren		     : STD_LOGIC := '0';

BEGIN
	PROCESS(clk,en_CentroidInitialize)
	BEGIN
	   
		if clk'event and clk='1' then	
		   s_countCentroid <= count_Centroid;
         
			if en_CentroidInitialize='1' then		
				s_addrRam <= std_logic_vector(to_unsigned(conv_integer(reg5) + conv_integer(count_Centroid),TamanhoAddr));
				s_countCentroid <= s_countCentroid + 1;
				s_dado <= dado;
				s_wren <= '1';
			else
				s_wren <= '0';
			end if;	

		end if;
		
	END PROCESS;
	
o_dado         <= s_dado;
o_countCentoid <= s_countCentroid;
addr_Ram       <= s_addrRam;
next_State     <= "0010";
wr_RamB        <= s_wren;

END arch;