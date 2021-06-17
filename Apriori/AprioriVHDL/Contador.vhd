library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_unsigned.all;


Entity Contador is
Generic (n : INTEGER:= 256;
        z : integer:= 4095);
Port(

	clk_in : in std_logic;
	reset : in std_logic;
	saida:  out std_logic_vector(24 downto 0)


); 
end Entity;

Architecture arch of Contador is
Begin
	Process(clk_in, reset)
	variable cont: integer range 0 to 1044255;
	Begin
		if reset = '1' then
			cont := 0;
		elsif clk_in'event and clk_in = '1' then
			cont :=  cont + 1;
		end if;
	
		saida <= std_logic_vector(to_unsigned(cont, 25));
	end Process;
end arch;