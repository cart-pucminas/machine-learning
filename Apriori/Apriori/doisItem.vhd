	library ieee;
	use ieee.std_logic_1164.all;
	
	Entity doisitem is
	generic (n: integer := 127;
	         z: integer := 4095);
	Port (
		clk_in     : in std_logic;
		enablepro  : in std_logic;
		mem_1item  : in std_logic_vector(n downto 0);
		mem_1item_1: in std_logic_vector(n downto 0);
		reset      : in bit;
		saida      : out std_logic_vector(n downto 0);
		desatiRam  : out bit;
		contador   : out integer range 0 to 4095
	);
	end Entity;
	
	Architecture arch of doisitem is
	Begin
		Process (clk_in, enablepro, mem_1item, mem_1item_1, reset)
		variable vector1, vector2, zero : std_logic_vector(n downto 0);
		variable cont : integer range 0 to z;
		Begin
		   if reset = '1' then
			cont := 0;
			vector1 := (others => '0');
			vector2 := (others => '0');
			saida  <= (others => '0');
			elsif clk_in'event and clk_in = '1' and enablepro = '1' then
			  zero := (others => '0');
			   vector1 := mem_1item;
				vector2 := mem_1item_1;
				if vector1 /= zero and vector2 /= zero and vector1 /= vector2 then
					saida <= vector1 or vector2;
					contador <= cont;
					cont := cont + 1;
					desatiRam <= '1';
				else
					desatiRam <= '0';
				end if;
			end if;

		end Process;
	end arch;