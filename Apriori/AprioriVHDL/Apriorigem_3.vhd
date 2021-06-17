Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

	Entity Apriorigem_3 is 
	generic (n: integer := 127);
	Port(
		clk_in:  in std_logic;
		enable: in bit;
		reset : in bit;
		tamanhobuff : in integer range 0 to 4095;
		tamanhoitens: in integer range 0 to 4095;
		mem_rom: in std_logic_vector(127 downto 0);
		mem_rom_2: in std_logic_vector(127 downto 0);
		palavra: in std_logic_vector(127 downto 0);
		saida: out std_logic_vector(127 downto 0);
		ativa: out bit;
		ativa2: out integer range 0 to 127
		
	);
	end Entity;
	Architecture arch of Apriorigem_3 is
	type vetors is array (0 to n)  of std_logic_vector(n downto 0);
	signal aux1, aux2 : vetors;
	Begin
	Process(clk_in)
	variable cont1, cont2 : integer range 0 to 4095;
	variable verify, verify2 : bit;
	Begin
	 if clk_in'event and clk_in = '1' and enable= '1' then
	   ---wr <= '1';
	   if cont1 = 0 then
		  verify := '0';
		end if;
	   if mem_rom = mem_rom_2 then
		   verify := '1';
	   end if;	
		cont1 := cont1 + 1;
		if cont1 > tamanhobuff  then
		   verify2 := verify;
			verify := '0';
		   cont1 := 0;
			cont2 := cont2 + 1;
		end if;
    if cont2 = tamanhoitens then
	    if verify2 = '1' then
		    ativa <= '1';
			 saida <= palavra;
		 else 
		    ativa <='0';
		 end if;
	   cont2 := 0;
		verify2 := '0';
	 end if;
	 ativa2 <= cont1;
	 
	 end if;
	end Process;
	end arch;