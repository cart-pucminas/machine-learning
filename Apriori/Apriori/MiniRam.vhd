Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

	Entity MiniRam is 
	generic (n: integer := 7);
	Port(
		clk_in:  in std_logic;
		enable: in bit;
		wr : in bit;
		rd : in bit;
		reset : in bit;
		mem_rom: in std_logic_vector(n downto 0);
		endereco:   in integer range 0 to 128;
		endereco2:   in integer range 0 to 128;
		saida_freq: out std_logic_vector(n downto 0);
		saida_freq1: out std_logic_vector(n downto 0)
	);
	end Entity;
	Architecture arch of MiniRam is
	type vetors is array (0 to n)  of std_logic_vector(n downto 0);
	signal aux1, aux2, aux3 : vetors;
	Begin
	Process(clk_in, wr)
	variable  cont1, cont4: integer range 0 to 128;
	Begin
	 if clk_in'event and clk_in = '1' and wr= '1' then
		   cont4 := cont4 + 1;
			if cont4 > 1 then
				aux1(cont1) <= mem_rom;
				aux3(cont1) <= (others => '0');
				cont1 := cont1 + 1;
			end if;
		 if cont1 > n then
		    cont1 := 0;
			 cont4 := 0;
		 end if;
	 end if;
	end Process;
	Process (clk_in, rd)
	variable  cont2: integer range 0 to 128;
	variable cont3 : integer range 1 to 128;
	variable vetors, zero : std_logic_vector(n downto 0);
	Begin
	if clk_in'event and clk_in = '1' and rd = '1' then
      zero := (others => '0');
	   if aux1(cont2) /= zero  and aux1(cont3) /= zero then
		   vetors := aux1(cont2) or aux1(cont3);
	   end if;
		
		saida_freq1 <= aux1(cont2);
		  if cont3 = n  then
		  cont2 :=  cont2 + 1;
		  cont3 := cont2;
		  end if; 
		  cont3 := cont3 + 1;
		  if cont2 > n then
		  cont2 := 0;
		  cont3 := 1;
		  end if;
	  end if;
	end Process;
	end arch;