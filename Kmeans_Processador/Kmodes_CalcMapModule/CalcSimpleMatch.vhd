--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Calc Simple Match
--|| Descricao: Este bloco realiza o calculo da distancia entre o ponto(dado) e o centroide recebidos. Ele compara cada atributo de 8 bits
--||            do centroide e do ponto, adicionando no acumulador 1 quando os elementos forem distintos e zero quando forem iguais. 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all ;
use ieee.numeric_std.all;

Entity CalcSimpleMatch is
    GENERIC (Palavra : INTEGER := 64); 
				  
	 PORT (
     clk             : in STD_LOGIC;                            --Sinal de clock
	  en_SimpleMatch  : in STD_LOGIC;	  								 --Habilita a execucao deste bloco
	  dado			   : in STD_LOGIC_VECTOR(Palavra-1 downto 0); --Ponto(dado) recebido
	  centroid  	   : in STD_LOGIC_VECTOR(Palavra-1 downto 0); --Centroid recebido
	  endDistanceMatch: out STD_LOGIC;                           --Informa que o calculo foi finalizado
	  dist7 			   : out STD_LOGIC;                           --Distancia dado e centroid nos bits 63 downto 56
	  dist6 			   : out STD_LOGIC;                           --Distancia dado e centroid nos bits 55 downto 48
	  dist5 			   : out STD_LOGIC;                           --Distancia dado e centroid nos bits 47 downto 40
	  dist4 			   : out STD_LOGIC;                           --Distancia dado e centroid nos bits 39 downto 32
	  dist3 			   : out STD_LOGIC;                           --Distancia dado e centroid nos bits 31 downto 24
	  dist2 			   : out STD_LOGIC;                           --Distancia dado e centroid nos bits 23 downto 16
	  dist1 			   : out STD_LOGIC;                           --Distancia dado e centroid nos bits 15 downto 8
	  dist0 			   : out STD_LOGIC                            --Distancia dado e centroid nos bits 7 downto 0
    );
END CalcSimpleMatch;

ARCHITECTURE arch of CalcSimpleMatch is

--Sinais de dados 
SIGNAL s_dado    	        : STD_LOGIC_VECTOR (Palavra-1 downto 0) := (others =>'0');
SIGNAL s_centroid  	     : STD_LOGIC_VECTOR (Palavra-1 downto 0) := (others =>'0');
SIGNAL s_endDistanceMatch : STD_LOGIC := '0';
SIGNAL s_dist0 			  : STD_LOGIC := '0';
SIGNAL s_dist1 			  : STD_LOGIC := '0';
SIGNAL s_dist2 			  : STD_LOGIC := '0';
SIGNAL s_dist3 			  : STD_LOGIC := '0';
SIGNAL s_dist4 			  : STD_LOGIC := '0';
SIGNAL s_dist5 			  : STD_LOGIC := '0';
SIGNAL s_dist6 			  : STD_LOGIC := '0';
SIGNAL s_dist7 			  : STD_LOGIC := '0';

BEGIN

	PROCESS(clk, en_SimpleMatch)
		 
	BEGIN
		if clk'event and clk='1' then		  
	     if en_SimpleMatch='1' then
				--Atribuicao de valores aos signals
				s_dado <= dado;
				s_centroid <= centroid;	
	         s_endDistanceMatch <='0';	
		      s_dist0 <= '0';
				s_dist1 <= '0';
				s_dist2 <= '0';
				s_dist3 <= '0';
				s_dist4 <= '0';
				s_dist5 <= '0';
				s_dist6 <= '0';
				s_dist7 <= '0';			
				
				--Calcula distancia entre ponto e centroid utilizando o metodo de simple match		
				if s_centroid(Palavra-1 downto 56) /=  s_dado(Palavra-1 downto 56) then
					s_dist7 <= '1';
				end if;
				
				if s_centroid(55 downto 48) /=  s_dado(55 downto 48) then
					s_dist6 <= '1';
				end if;
				
				if s_centroid(47 downto 40) /=  s_dado(47 downto 40) then
					s_dist5 <= '1';
				end if;
				
				if s_centroid(39 downto 32) /=  s_dado(39 downto 32) then
					s_dist4 <= '1';
				end if;
				
				if s_centroid(31 downto 24) /=  s_dado(31 downto 24) then
					s_dist3 <= '1';
				end if;
				
				if s_centroid(23 downto 16) /=  s_dado(23 downto 16) then
					s_dist2 <= '1';
				end if;
				
				if s_centroid(15 downto 8) /=  s_dado(15 downto 8) then
					s_dist1 <= '1';
				end if;
				
				if s_centroid(7 downto 0) /=  s_dado(7 downto 0) then
					s_dist0 <= '1';
				end if;
						
				s_endDistanceMatch <='1';
			else
    			s_endDistanceMatch <='0';							
			end if;	
		end if;
	END PROCESS;
	
endDistanceMatch <= s_endDistanceMatch;
dist0 			  <= s_dist0;
dist1 			  <= s_dist1;
dist2 			  <= s_dist2;
dist3 			  <= s_dist3;
dist4 			  <= s_dist4;
dist5 			  <= s_dist5;
dist6 			  <= s_dist6;
dist7 			  <= s_dist7;

END arch;