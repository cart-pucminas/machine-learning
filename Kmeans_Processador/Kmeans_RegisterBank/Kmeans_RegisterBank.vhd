--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Register Bank
--|| Descricao: Este bloco copia os dados de entrada para o banco de registrador e define as divisoes na memoria ram


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity Kmeans_RegisterBank is

	GENERIC (TamanhoAddr     : INTEGER := 14;
			   MaxCentroidsBits: INTEGER := 10;
				MaxPontosBits   : INTEGER := 15;
				MaxIteracoesBits: INTEGER := 7;
				MaxDimensoesBits: INTEGER := 4);
	
	PORT(
	   clk				 : in STD_LOGIC;                                          --Sinal de Clock
	   nrst		       : in STD_LOGIC;														 --Sinal de reset 
		nCentroids    	 : in STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0); 	    --Numero de centroids- MAX 1024
		nIteracoes      : in STD_LOGIC_VECTOR(MaxIteracoesBits-1 downto 0); 	    --Numero de iteracoes- MAX 128
		nPontos       	 : in STD_LOGIC_VECTOR(MaxPontosBits-1 downto 0); 	       --Numero de pontos  - MAX 31744 para ate 2 dimensoes
		nDimensoes      : in STD_LOGIC_VECTOR(MaxDimensoesBits-1 downto 0);      --Numero de dimensoes - MAX 16
 		reg1 		  		 : out STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0);	    --Registrador 1
		reg2 		  		 : out STD_LOGIC_VECTOR(MaxIteracoesBits-1 downto 0);  	 --Registrador 2
		reg3 		  		 : out STD_LOGIC_VECTOR(MaxPontosBits-1 downto 0);     	 --Registrador 3
		reg5 		  		 : out STD_LOGIC_VECTOR(TamanhoAddr-1 downto 0);  			 --Registrador 5
		--reg6 		  		 : out STD_LOGIC_VECTOR(TamanhoAddr-1 downto 0);  			 --Registrador 6
		reg8				 : out STD_LOGIC_VECTOR(2 downto 0)								 --Registrador 8
	);

end Kmeans_RegisterBank;

ARCHITECTURE arch OF Kmeans_RegisterBank IS 
	SIGNAL s_nPontos : INTEGER RANGE 0 TO 31744 := 0;
	SIGNAL s_reg1    : STD_LOGIC_VECTOR(MaxCentroidsBits-1 downto 0) := (others => '0');
	SIGNAL s_reg2    : STD_LOGIC_VECTOR(MaxIteracoesBits-1 downto 0) := (others => '0');
	SIGNAL s_reg3    : STD_LOGIC_VECTOR(MaxPontosBits-1 downto 0) := (others => '0');
	SIGNAL s_reg5    : STD_LOGIC_VECTOR(TamanhoAddr-1 downto 0) := (others => '0');
	--SIGNAL s_reg6    : STD_LOGIC_VECTOR(TamanhoAddr-1 downto 0) := (others => '0');
	SIGNAL s_reg8    : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
	--SIGNAL aux 		  : INTEGER RANGE 0 TO 4 := 0; 		
		
	BEGIN
		PROCESS(clk, nrst, nPontos, nDimensoes)
		BEGIN
		   if (conv_integer(nPontos) > 31744) then
				s_nPontos <= 31744;
			else		
				s_nPontos <= conv_integer(nPontos);
			end if;	
			 
		   if nrst = '0' then
				s_reg1 <= (others => '0');
				s_reg2 <= (others => '0');
				s_reg3 <= (others => '0');
				s_reg5 <= (others => '0');
			--	s_reg6 <= (others => '0');
				s_reg8 <= (others => '0');
				
			elsif clk'event and clk = '1' then 	
			   --Armazena a quantidade de posicoes de memoria que deve considerar para representar as dimensoes de 1 dado
				if (nDimensoes < 2 ) then
					s_reg8 <= "000"; 
				elsif (nDimensoes < 4) then
					s_reg8 <= "001";
				elsif (nDimensoes < 6) then
					s_reg8 <= "010";
				elsif (nDimensoes < 8) then
					s_reg8 <= "011";
				elsif (nDimensoes < 10) then
					s_reg8 <= "100";	
				elsif (nDimensoes < 12) then
					s_reg8 <= "101";
				elsif (nDimensoes < 14) then
					s_reg8 <= "110";
				else
					s_reg8 <= "111";
			   end if;
				
				--aux <= (conv_integer(s_reg8) + 1);
			
				s_reg1 <= nCentroids;
				s_reg2 <= nIteracoes;
				s_reg3 <= std_logic_vector(to_unsigned(s_nPontos,MaxPontosBits));
				--Posicao inicial na memoria interna de centroids
				s_reg5 <= std_logic_vector(to_unsigned(s_nPontos*(conv_integer(s_reg8) + 1),TamanhoAddr));            
			   --Posicao inicial na memoria interna do mapeamento final	
		--		s_reg6 <= std_logic_vector(to_unsigned(conv_integer(s_reg5) + (conv_integer(nCentroids)*aux),TamanhoAddr));
				    
			end if;
		END PROCESS;
		
	reg1 <= s_reg1;		
	reg2 <= s_reg2;	
	reg3 <= s_reg3;	
	reg5 <= s_reg5;	
	--reg6 <= s_reg6;	
	reg8 <= s_reg8;

end arch;
