--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Result
--|| Descricao: Este bloco exibe os resultados de saida do kmeans quando ele eh habilitado pelo bloco de output result. Caso contrario exibe zero.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all ;
use ieee.numeric_std.all;

Entity Kmeans_Result is
    GENERIC (MaxCentroidsBits : INTEGER := 10);
				  
	 PORT (
     en_Saida    : in STD_LOGIC;		                           --Habilita a saida dos resultados bloco							   
	  ent			  : in STD_LOGIC_VECTOR (MaxCentroidsBits-1 downto 0);   --Valor de entrada lido da memoria ram	 
	  saida		  : out STD_LOGIC_VECTOR (MaxCentroidsBits-1 downto 0);   --Valor do resultado da saida 
	  hex0        : out STD_LOGIC;
	  hex1        : out STD_LOGIC;
	  hex2        : out STD_LOGIC;
	  hex3        : out STD_LOGIC;
	  hex4        : out STD_LOGIC;
	  hex5        : out STD_LOGIC;
	  hex6        : out STD_LOGIC
	 );
END Kmeans_Result;

ARCHITECTURE arch of Kmeans_Result is

BEGIN
   
	--with en_Saida select
	--	saida <= (others =>'0') when '0',
	--				 ent 				when '1';
					 
	process (ent, en_Saida)
	  begin
	  if (en_Saida = '1') then
	   saida <= ent;	  
	    
			if(ent = "0000000001") then
			  hex0 <= '0';
			  hex1 <= '1';
			  hex2 <= '1';
			  hex3 <= '0';
			  hex4 <= '0';
			  hex5 <= '0';
			  hex6 <= '0';
			else
			  hex0 <= '1';
			  hex1 <= '1';
			  hex2 <= '1';
			  hex3 <= '1';
			  hex4 <= '1';
			  hex5 <= '1';
			  hex6 <= '0';
			end if;
		else
	      saida <= (others =>'0');		
	  end if;
	  
   end process;	
					
END arch;