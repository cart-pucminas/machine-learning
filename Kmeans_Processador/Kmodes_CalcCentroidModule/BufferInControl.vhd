--|| Kmeans Processador 
--|| Desenvolvedor: Lucas Andrade Maciel
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: BufferInControl - Kmodes CalcCentroidModule 
--|| Descricao: Este bloco determina qual atributo ira para cada buffer


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all ;
use ieee.numeric_std.all;

Entity BufferInControl is
    GENERIC ( Palavra          : INTEGER := 64;
	           TamanhoAtributo  : INTEGER := 8); 
				  
	 PORT (
	  valueDado	 : in STD_LOGIC_VECTOR(Palavra-1 downto 0);            --Valor do dado atual
	  value0     : out STD_LOGIC_VECTOR(TamanhoAtributo-1 downto 0);	 --Informa o valor do atributo que sera analisado
	  value1     : out STD_LOGIC_VECTOR(TamanhoAtributo-1 downto 0);	 --Informa o valor do atributo que sera analisado
	  value2     : out STD_LOGIC_VECTOR(TamanhoAtributo-1 downto 0);	 --Informa o valor do atributo que sera analisado
	  value3     : out STD_LOGIC_VECTOR(TamanhoAtributo-1 downto 0);	 --Informa o valor do atributo que sera analisado
	  value4     : out STD_LOGIC_VECTOR(TamanhoAtributo-1 downto 0);	 --Informa o valor do atributo que sera analisado
	  value5     : out STD_LOGIC_VECTOR(TamanhoAtributo-1 downto 0);	 --Informa o valor do atributo que sera analisado
	  value6     : out STD_LOGIC_VECTOR(TamanhoAtributo-1 downto 0);	 --Informa o valor do atributo que sera analisado
	  value7     : out STD_LOGIC_VECTOR(TamanhoAtributo-1 downto 0)	 --Informa o valor do atributo que sera analisado
    );
END BufferInControl;

ARCHITECTURE arch of BufferInControl is

BEGIN
   PROCESS(valueDado)
   BEGIN  
		value0 <= valueDado(7 downto 0);
		value1 <= valueDado(15 downto 8);
		value2 <= valueDado(23 downto 16);
		value3 <= valueDado(31 downto 24);
		value4 <= valueDado(39 downto 32);
		value5 <= valueDado(47 downto 40);
		value6 <= valueDado(55 downto 48);
		value7 <= valueDado(63 downto 56);
   END PROCESS;	

END arch;