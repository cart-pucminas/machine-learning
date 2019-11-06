--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Buffer Frequence Data - Kmodes CalcCentroidModule 
--|| Descricao: Este bloco calcula a frequencia que um atributo de um determinado ponto se repete no centroid vinulado.


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all ;
use ieee.numeric_std.all;

Entity BufferFrequenceData is
    GENERIC ( TamanhoAtributo  : INTEGER := 8;
				  MaxPontosBits    : INTEGER := 15;
				  MaxCentroidsBits : INTEGER := 10;
				  ValAtributo      : INTEGER := 256;
				  MaxSomaPontos    : INTEGER := 12); 
				  
	 PORT (
	  clk  		        : in STD_LOGIC;                                       --Sinal de clock
	  en_CountFreqData  : in STD_LOGIC;  												  --Habilita Soma dos Valores
	  en_FindMaxValue   : in STD_LOGIC;  												  --Habilita Verificacao do maior elemento
	  valueAtr		     : in STD_LOGIC_VECTOR(TamanhoAtributo-1 downto 0);    --Valor do atributo analisado
	  valueMap          : in STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0);   --Valor do mapeamento do dado atual
	  count_Centroid    : in STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0);   --Centroid que sera processado
	  clearFreqVector	  : in STD_LOGIC;                                       --Zero o vetor de contagem de frequencia
	  end_CalcFreq      : out STD_LOGIC;	                                   --Informa que a atualizacao das frequencias foi finalizada
	  end_CalcMode      : out STD_LOGIC;	                                   --Informa que a atualizacaodo centroid foi finalizada
	  newCentroidValue  : out STD_LOGIC_VECTOR(TamanhoAtributo-1 downto 0)    --Valor atualizado do centroid
    );
END BufferFrequenceData;

ARCHITECTURE arch of BufferFrequenceData is

--Cria um vetor com 256 colunas, com dados do tamanho maximo  possiveis
TYPE vector_t IS ARRAY (ValAtributo-1 downto 0) OF STD_LOGIC_VECTOR(MaxSomaPontos-1 downto 0);

--Sinais de dados 
SIGNAL countVector       : vector_t := (others=>(others => '0'));
--SIGNAL centroidLine      : INTEGER RANGE 0 to 65536;
SIGNAL s_end_CalcFreq    : STD_LOGIC := '0';
SIGNAL s_end_CalcMode    : STD_LOGIC := '0';
SIGNAL s_newCentroidValue: STD_LOGIC_VECTOR(TamanhoAtributo-1 downto 0) := (others => '0');
SIGNAL s_maxValue: STD_LOGIC_VECTOR(TamanhoAtributo-1 downto 0) := (others => '0');
SIGNAL s_maxCount: STD_LOGIC_VECTOR(MaxSomaPontos-1 downto 0) := (others => '0');

BEGIN
   PROCESS(clk, count_Centroid, valueMap, clearFreqVector)
   BEGIN  
	    if clk'event and clk='0' then
			--if (en_CountFreqData = '0' and en_FindMaxValue = '0') then
			   --Limpa a buffer de contagem
			   			
				s_end_CalcFreq <= '0';
				s_end_CalcMode <= '0';
			--	s_newCentroidValue<= (others => '0');
			--	s_maxValue <= (others => '0');
			--	s_maxCount <= (others => '0');
			
			if (clearFreqVector='1') then
			   countVector <= (others=>(others => '0'));
				s_newCentroidValue<= (others => '0');	
				s_maxValue <= (others => '0');
				s_maxCount <= (others => '0');
			end if;
				
			if	(en_CountFreqData = '1') then		
			   s_end_CalcFreq <= '0';
				
            if (conv_integer(count_Centroid)=conv_integer(valueMap)) then				
					countVector(conv_integer(valueAtr)) <= countVector(conv_integer(valueAtr)) + 1;
				end if;	
				
				s_end_CalcFreq <= '1';
				s_end_CalcMode <= '0';				
				
			elsif (en_FindMaxValue = '1') then
			   s_end_CalcFreq <= '0';	
			   s_end_CalcMode <= '0';				
          --  s_maxValue <= (others => '0');
			 --  s_maxCount <= (others => '0');	
				
				--if (conv_integer(count_Centroid)=conv_integer(valueMap)) then	
					for i in 0 to ValAtributo-1 loop
						if (conv_integer(countVector(i)) > conv_integer(s_maxCount)) then
							s_maxCount <= countVector(i);
							s_maxValue <= std_logic_vector(to_unsigned(i,TamanhoAtributo));
						end if;			
					end loop;
				--end if;
				
				s_newCentroidValue <= s_maxValue;
			   s_end_CalcMode <= '1';            					
	      end if;	
	     
		 end if;
	END PROCESS;	
	
end_CalcFreq <= s_end_CalcFreq;
end_CalcMode <= s_end_CalcMode;
newCentroidValue <= s_newCentroidValue;

END arch;