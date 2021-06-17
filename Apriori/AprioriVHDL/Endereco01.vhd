library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

	Entity Endereco01 is 
	generic(n: integer := 8);--tamanho da memRom e memRam - 1
		Port (
		 clk_in :  in std_logic;
		 reset : in std_logic;
		 enable1 : in std_logic;
		 tam_Ram : in integer range 0 to 256;
		 saida1 : out integer range 0 to 128
		
		 );
	end Entity;
	
	Architecture cont1ador of Endereco01 is 
   Begin
	Process(enable1, clk_in)
	variable cont1, cont2, x: integer range 0 to 128;
		Begin
		   if reset = '1' then
			saida1 <= 0;
			elsif clk_in'event and clk_in = '1' and enable1 = '1' then
				 
			   if cont2 > (tam_Ram - x) then	
					saida1 <=  cont1;
					cont1 := cont1 + 1;
					cont2 := 0;
					x := x + 1;
				end if;
				cont2 := cont2 + 1;
				if cont1 = tam_Ram  then
					cont1 := 0;
					x := 0;
					cont2 := 0;
				end if;
			end if;
		
		end Process;
   end cont1ador;	