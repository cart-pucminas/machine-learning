--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: EndCalcDistance
--|| Descricao: Este bloco armazena envia '1' na saida para informar que o calculo da distancia foi concluido

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all ;
use ieee.numeric_std.all;

Entity EndCalcDistance is
				  
	 PORT (
     clk            : in STD_LOGIC;   --Sinal de clock
	  en_CalcMap     : in STD_LOGIC;	  --Habilita a execucao deste bloco	 
	  o_endCalc 	  : out STD_LOGIC   --Bit que informa que o calculo da distancia terminou 
    );
END EndCalcDistance;

ARCHITECTURE arch of EndCalcDistance is

--Sinais de dados 
SIGNAL s_endCalc  : STD_LOGIC := '0';

BEGIN

	PROCESS(clk, en_CalcMap)
		 
	BEGIN
		if en_CalcMap='0' then
			s_endCalc <= '0';
		elsif clk'event and clk='1' and en_CalcMap='1' then	
			s_endCalc <= '1';
		end if;	
		
	END PROCESS;
	
o_endCalc <= s_endCalc;

END arch;