--- Juma Helena Costa Miranda

--- Input : saida da memoria que contém todas as palavra de tamanho n retiradas de todas as transacoes e
--- tamanho da memoria, item da mem que grava os itens da apriorigem.
--- Output : um inteiro que contabliza as quantidades de palavras vindo do apriorigem que deu match com as 
--- palavras vindo da transacoes. 


Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_unsigned.all;

Entity Suporte_Frequencia_2 is
    generic (tamPal: integer := 127;
	          tamMem: integer := 4095);-- tamanho da palavra
Port 
(
	 outmem_sup_freq  : in std_logic_vector(127 downto 0);
	 outmem_apriorig  : in std_logic_vector(127 downto 0);
	 clk_in           : in std_logic ;	
	 enable_proc      : in std_logic;
	 mem_tam          : in integer range 0 to 4095;
    saida            : out integer range 0 to 4095;
	 saidafinal       : out integer range 0 to 4095
	 
 );
end Entity;
 
Architecture suport_counting_arch of Suporte_Frequencia_2 is
Begin
	Process(clk_in, enable_proc, outmem_apriorig, outmem_sup_freq )
	variable contador, contsup : integer range 0 to tamMem;
	variable salva : std_logic_vector(tamPal downto 0);
	variable verificador : bit;
		Begin
		if clk_in'event and clk_in = '1' and enable_proc= '1' then
			if outmem_sup_freq = outmem_apriorig then
				contador := contador + 1;
				salva := outmem_apriorig;
			end if;
			saidafinal <= contsup;
			contsup := contsup + 1;
			if contsup > (mem_tam - 1) then
				saida <= contador;
			   contsup := 0;
				contador := 0;
				verificador := '0';
			end if;
         
		end if;
	end Process;
end Architecture;

		