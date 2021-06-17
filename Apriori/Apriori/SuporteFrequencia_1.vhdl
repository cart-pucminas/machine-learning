--- Juma Helena Costa Miranda

--- Inputs: clk, saida da memoria que contem todas as transções, o tamanho da palavra
--- Outputs; palavra com o tamanho de acordo com o tamanho passada na entrada
--- Este bloco percorrerá cada transacao e a quebra em n palavras. 


Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

Entity SuporteFrequencia_1 is
	generic (n: integer := 63; --tamanho da palavra
	         z: integer := 32; -- tamanho Rom
				x: integer := 11); --tamanho end Rom
	Port(
		clk_in       : in std_logic;
		enable_proc1 : in std_logic;
		transacao    : in std_logic_vector(63 downto 0);
		k_item       : in integer range 0 to 4095;
		tamanhoRom   : in integer range 0 to 4095;
		saida        : out std_logic_vector(63 downto 0);
		endwr_Ram    : out integer range 0 to 4095;
		tamanho      : out integer range 0 to 4095;
		end_Rom      : out std_logic_vector(11 downto 0);
		ativa_rom    : out bit;
		desabilita   : out bit
	);
end Entity;
Architecture suport_Counting_arch of SuporteFrequencia_1 is
	Begin
		Process(clk_in, enable_proc1)
		variable cont, cont2, cont3 , cont4, cont5, cont6, cont7 : integer range 0 to 128;
		variable aux3, aux4, aux5, aux6, aux7, aux8 : std_logic_vector(n downto 0);
		variable ativa , verif, verif1, verif2: bit;
		begin
		if clk_in'event and clk_in = '1' and enable_proc1 = '1' then
	      if cont6 <= tamanhoRom then
				ativa_rom <= '1';
			end if;
			cont7 := cont7 + 1;
			if cont7 > 2 then
		   if cont = 0 then
				aux3 := (others => '0');
				aux6 := (others => '0');
			end if;
			if cont2 <= k_item - 1 then
			if transacao(cont) = '1' then
			   aux3(cont) := '1';
				aux4:= aux3;
				aux5 := aux3;
				cont2 := cont2 + 1;
			end if;	
			end if;
			if cont2 > k_item - 1 then
			   if transacao(cont) = '1' then
				cont4:= cont4 + 1;
				aux4(cont) := '1';
				aux3 := aux4;
				if aux5 /= aux6 then
					if aux3 /= aux7 then
						saida <= aux3;
						aux7 := aux3;
						endwr_Ram <= cont5;
						cont5 := cont5 + 1;
					end if;
				end if;
				aux4(cont) := '0';
				end if;
			end if;
			   
			cont := cont + 1;
			end if;
			if cont > n  then
			   aux6 := aux5;
				aux3 := (others => '0');
				cont3 := cont3 + 1;
				cont := cont3;
				cont2 := 0;	
			end if;
			end_Rom <= std_logic_vector(to_unsigned((cont6), 12));
         
			if cont3 = n then
				cont2 := 0;
				cont := 0;
				cont3 := 0;
				cont7 := 0;
	         cont6 := cont6 + 1;
				aux6 := (others => '0');
				aux7 := (others => '0');
			end if;
		   
			if cont6 > tamanhoRom  then  --tamanho da Rom
				tamanho <= cont5;
				cont5:= 0;
				ativa_rom <= '0';
				desabilita <= '1';
				cont6 := 0;
			elsif cont6 = 0 then
			   desabilita <= '0';
			end if;

		end if;
	 end Process;
end Architecture;