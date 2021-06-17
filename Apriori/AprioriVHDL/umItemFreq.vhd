Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

	Entity umItemFreq is 
	generic (n: integer := 127);
	Port(
		clk_in:  in std_logic;
		mem_rom: in std_logic_vector(127 downto 0);
	   enablepro1:  in std_logic;
		enablepro2:  in std_logic;
		enablepro3:  in std_logic;
		end_proc2:   in std_logic_vector(11 downto 0);
		end_proc3:   in std_logic_vector(11 downto 0);
		saida:      out std_logic_vector(127 downto 0);
		saida_freq: out std_logic_vector(11 downto 0)
	);
	end Entity;
	Architecture arch of umItemFreq is
	type lista is array (0 to 255)  of integer range 0 to 4095;
	type vetors is array (0 to n)  of std_logic_vector(n downto 0);
	signal aux1 : lista;
	signal aux2 : vetors;
	signal end1 , end2 : integer range 0 to n;
	begin 
		Process(clk_in, enablepro1)
		variable i ,  cont : integer range 0 to 100;
		variable vetor : std_logic_vector(n downto 0);
		Begin
		   end1 <= to_integer(unsigned(end_proc2));
		   end2 <= to_integer(unsigned(end_proc3));
		
		
	     if clk_in'event and clk_in = '1' and enablepro1= '1' then
			if mem_rom(i) = '1' then
				cont := aux1(i);
				cont := cont +1;
				aux1(i) <= cont;
				vetor(i) := '1';
				aux2(i) <= vetor;
				vetor := (others => '0');
			end if;
			i := i +1;
			if i > n then
				i := 0;
			end if;
			end if;
		end Process;
	   Process (clk_in,enablepro2, end1)
		variable i : integer range 0  to n;
		Begin
			if clk_in'event and clk_in = '1' and enablepro2 = '1' then
				saida_freq <= std_logic_vector(to_unsigned(aux1(end1), 12));
			end if;
		end Process;
		Process (clk_in,enablepro3, end2)
		variable i : integer range 0  to n;
		Begin
			if clk_in'event and clk_in = '1' and enablepro3 = '1' then
				saida<= aux2(end2);	
			end if;
		end Process;
	end arch;