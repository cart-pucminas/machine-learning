--|| Apriori Processador 
--|| Desenvolvedor: Juma Helena Costa Miranda
--|| Grupo: CArT - Computer Architecture and Parallel Processing Team
--|| Bloco: Controler
--|| Descricao: Bloco que faz envia os sinais necessários para iniciar e finalizar todos 
--|| os outros blocos. 


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Controler is

  GENERIC (n: integer := 64;
           z: integer := 4095); 

Port 
(
	 clk_in 		          : in  std_logic;
	 out_cont	          : in  std_logic_vector(24 downto 0); 
	 enable_rom           : out bit; 
	 enable_1itemap       : out std_logic; 
	 reset_cont           : out bit ;  
	 enable_proc1_1item   : out bit;
	 enable_proc2_1item   : out bit;
	 saida_Mpf            : in  bit; 
	 saida1_Mend          : in  integer range 0 to 4095;
	 saida2_Mend          : in  integer range 0 to 4095;
	 verifPro1Sup1        : in  bit;
	 desaRam              : in  bit;
	 desativaSup1         : in  bit;
	 enderecoRam          : in  integer range 0 to 4095;
	 tamanhoenderecoRam   : in  integer range 0 to 4095;
	 contadordoisitem     : in  integer range 0 to 256;
	 saida3_Mend          : in  integer range 0 to 4095;
	 saida4_Mend          : in  integer range 0 to 4095;
	 saida_Apriorigem2    : in  std_logic_vector(64 downto 0);
	 verifoutApri2        : in  bit;
	 saida_ModEnde2       : in  integer range 0 to 4095;
	 saida_ModEnde2_2     : in  integer range 0 to 4095;
	 tamanhoEndUm         : in  integer range 0 to 4095;
	 contadorBuff2        : in  integer range 0 to 4095;
	 saida_1itemfreque1   : in  bit;
	 saida_1itemfreque2   : in  integer range 0 to 4095;
	 contadoritemfreque   : in  integer range 0 to 4095;
	 contadorparte2aprior : in  integer range 0 to 4095;
	 enable1_MPF          : out bit; 
	 enable2_MPF          : out bit; 
	 enable3_MPF          : out bit;
	 enable4_MPF          : out bit;
	 enable_MPD1          : out bit;
	 enable_MPD2          : out bit;
	 enable_MPC           : out bit;
	 quant_totl           : out integer range 0 to 4095;
	 env_cem              : out integer range 0 to 128;
	 end_proc1_1item      : out std_logic_vector(64 downto 0);
	 end_proc2_1item      : out std_logic_vector(64 downto 0);
	 suporte              : out integer range 0 to 128 ;
	 end_rom              : out std_logic_vector(11 downto 0);
	 ena_wren             : out bit;
	 enderew_RAM          : out std_logic_vector(11 downto 0);
	 enable_MER1          : out bit;
	 resetend1            : out bit;
	 tam_palavra          : out integer range 0 to 256;
	 ena_reden1           : out bit;
	 ena_reden2           : out bit;
	 enable_doisitem      : out bit;
	 ena_wren_RAM2        : out bit;
	 ende_wrRAM2          : out std_logic_vector(11 downto 0);
	 enabProc1Sup1        : out bit;
	 k_item               : out integer range 0 to 4095;
	 ativaBuff            : out integer range 0 to 2;
	 ena2_wren_RAM2       : out bit;
	 tamanhoRom           : out integer range 0 to 4095;
	 enabModEnd2          : out bit;
	 ena_ren_RAM2         : out bit;
	 ena2_ren_RAM2        : out bit;
	 enabProcSup2         : out bit;
	 mulx                 : out integer range 0 to 2;
	 endRomFinal          : out std_logic_vector(11 downto 0);
	 enabredenFinal       : out bit;
	 enablRomFinal        : out bit;
	 saidaBUF             : out bit;
	 enablebuf2           : out bit;
	 endBuff              : out std_logic_vector(11 downto 0);
	 enablApriorigem2     : out bit;
	  k_itemdois          : out integer range 0 to 4095;
	 mulx2                : out integer range 0 to 2;
	 contadorRamF         : out integer range 0 to 1024;
	 enablepro11item      : out bit;
	 end1item             : out std_logic_vector(11 downto 0);
	 wr_RamUitem          : out bit;
	 rd_RamUitem          : out bit;
	 end_RamUitem         : out std_logic_vector(11 downto 0);
	 end_RamFina1         : out std_logic_vector(11 downto 0);
	 wr_Ramfinal1         : out bit;
	 rd_Ramfinal1         : out bit;
	 end_RomReden         : out std_logic_vector(11 downto 0);
	 end_RomFinal         : out std_logic_vector(11 downto 0);
	 enable_MER2          : out bit;
	 tam_palavra_1        : out integer range 0 to 256;
	 ena_reden1_1         : out bit;
	 ena_reden2_2         : out bit;
	 reset                : out bit;
	 enableModEnd2_2      : out bit;
	 wr_Ramfinal2         : out bit;
	 rd_Ramfinal2         : out bit;
	 end_RamFina2         : out std_logic_vector(11 downto 0);
	 tamanhoRamApriorigem_2 : out integer range 0 to 256;
	 resetModEndereco2    : out bit;
	 enablApriorigem3     : out bit;
	 mulx3                : out integer range 0 to 2;
	 resetModEndereco2_2  : out bit;
	 tamanhoModEndereco2  : out integer range 0 to 4095;
	 mulx4                : out integer range 0 to 2;
	 teste01              : out integer range 0 to 4095;
	 reset_EndDois        : out bit;
	 resetBuff            : out bit;
	 ena_wren_2           : out bit;
	 teste02              : out bit;
	 enableapriorigem3    : out bit;
	 rd_DuaRamFinal       : out bit;
	 rd_DuaRamFinal2      : out bit;
	 reset_1itemf         : out bit;
	 resetmodend02        : out bit;
	 resetpart2apriorigem : out bit;
	 saidaBuf_1           : out bit
    
 );
end Entity;

Architecture arch of Controler is
signal ativaSuportFre1,ativaSuportFre1_2, ativa2SuportFre1,enableProc2, verifApriorigem, ativasuport2 : bit;
signal buff : std_logic_vector(255 downto 0);
signal buff2 : integer range 0 to 2;
signal Kitem : integer range 0 to z;
Begin
	Process(clk_in, out_cont)
	variable cont, cont2, cont3,cont4,cont5, cont6,cont8, cont15, cont16, endMemRom,endMemRom2,endMemRom2_2, contMPF : integer range 0  to 4095;
	variable ativaModPF, ativaMod2itens, desatMod1item, desativa,desativa1, verifMP2, ativaApriorigem2
	,ativaApriorigem2_2, ativaApriorigem2_3,ativaApriorigem2_4, verifAP1, verifAp2,verifSF2, verifApririgem3,verificadork_item, desativaSuporte1, test, verifAp3: bit; -- ativaModPF o modulo ponto flutante para o contador.
	variable contador , teste, kitemvariable, cont7, cont9, cont10, cont11, cont12,cont13, cont20 : integer range 0 to 4095;
	variable variab_Kitem, zero : integer range 0 to z;
	Begin
	contador := to_integer(unsigned(out_cont));
		if clk_in'event and clk_in = '1' then
		
			if contador < (2048 *128) and ativaModPF = '0' and desatMod1item = '0' then --- tamanho da palavra x quantidade
				ativaBuff<= 1;
				enable_rom <= '1' ;
			if contador >= 2 then
				enable_1itemap <= '1';
			end if;

			elsif contador = (2048 *128) and ativaModPF = '0'and desatMod1item = '0' then --- tamanho da palavra x quantidade
				enable_rom <= '0';
				ativaBuff<= 0;
				
			elsif contador = (2048 *128) + 2 and ativaModPF = '0'and desatMod1item = '0' then 
			   enable_1itemap <= '0';
				reset_cont <= '1';
				ativaModPF	:= '1';
				endMemRom := 0;
				desatMod1item := '1';
			end if;
			end_rom <= std_logic_vector(to_unsigned(endMemRom, 12));
			if cont = 35 and ativaModPF = '0' then
				endMemRom := endMemRom + 1;	
				cont := 0;
			end if;
			
			cont := cont + 1;
		--------------------------------------------------------------------	
			if ativaModPF =  '1'then
			   cont2 := cont2 + 1;
			end if;
			
			if cont2 >= 2 and ativaMod2itens = '0' then
			   reset_cont <= '0';
				mulx <= 0;
				if contador = 0 then
					enable_proc1_1item <= '1';
				   end_proc1_1item <= std_logic_vector(to_unsigned(contMPF, 65));
					enable1_MPF <= '1';
					enable2_MPF <= '1';
					enable3_MPF <= '1';
					enable4_MPF <= '1';
					quant_totl <= 2048;
					env_cem <= 100;
					suporte <= 90;
				end if;
				if contador >  6 then
				   enable1_MPF <= '0';
					enable2_MPF <= '0';
					enable3_MPF <= '0';
					enable4_MPF <= '0';
					enable_MPD1 <= '1';
					enable_MPD2 <= '1';
				end if;
				if contador = 7 then
				   enable_MPD1 <= '0';
					enable_MPD2 <= '0';
				   enable_MPC  <= '1';
					ena_wren <= '1';
				end if;
				if contador = 15 then
				   reset_cont  <= '1';
					enable_MPC  <= '0';
					mulx <= 0;
					if saida_Mpf = '1' then
					   enable_proc2_1item <= '1';
				      end_proc2_1item <= std_logic_vector(to_unsigned(contMPF, 65));
						enderew_RAM <= std_logic_vector(to_unsigned(contMPF, 12));
						cont7 := cont7 + 1;
						contadorRamF <= cont7;
					end if;
					contMPF := contMPF + 1;
					ena_wren_RAM2 <= '1';
					if contMPF > 255 then ---tamanho da palavra
						enable_MPC <= '0';
						ativaMod2itens := '1';
						cont2 := 0;
						ena_wren <= '0';
						reset_cont <= '1';
						ativaModPF := '0';
						contMPF := 0;
						enderew_RAM <= std_logic_vector(to_unsigned(contMPF, 12));
						cont7 := 0;
						contadorRamF <= 0;
					end if;
				end if;
			end if;
			
			if ativaMod2itens = '1' and desativa = '0'  then
			   ativaSuportFre1 <= '1';
				 k_itemdois <= 2;
				ativaBuff <= 2;
			   tam_palavra <= n;
				enable_MER1 <= '1';
				ena_reden1 <= '1';
				ena_reden2 <= '1';
				enable_doisitem <= '1';
				
				
			end if;
			if ativaMod2itens = '1' and desaRam = '1' then
				cont2 := cont2 + 1;
				ende_wrRAM2 <= std_logic_vector(to_unsigned((cont2 ), 12)); 
			 end if;
			
			if saida1_Mend = n - 1 and saida2_Mend = n then
			   enable_MER1 <= '0';
				ena_reden1 <= '0';
				ena_reden2 <= '0';
				desativa := '1';
				ena_wren_RAM2 <= '0';
				tam_palavra <= 0;
				ativaMod2itens := '0';
				---cont2 := 0;
				enable_doisitem <= '0';
				desativaSuporte1 := '1';
			end if;

			----------------------------------------------
			if ativa2SuportFre1 = '1' and desativaSuporte1 ='1' then
			   
			   cont3 := cont3 + 1;
				if cont3 > 1 then
				 enabProcSup2 <= '1';
				end if;
				resetBuff <= '0';
				ena2_ren_RAM2 <= '1';
				ena_ren_RAM2 <= '1';
				ativaSuportFre1 <= '0';
				enabredenFinal <= '1';
				resetModEndereco2_2 <= '0';
				saidaBuf_1 <= '0';
				enabModEnd2 <= '1';
			   enablebuf2 <= '1';
				wr_Ramfinal1 <= '1';
				
			   if enderecoRam = 0 then
					saidaBUF <= '0';
				end if;
				if cont13 > contadorparte2aprior  then
				   saidaBuf_1 <= '1';
				end if;
				if enderecoRam = tamanhoenderecoRam  then
					verifMP2 := '1';
					
				end if;
				if (enderecoRam = tamanhoenderecoRam - 15) and verifMP2 = '1' then
					reset_cont <= '0';
			   end if;
			   mulx <= 1;	
				if contador = 0 then
					enable1_MPF <= '1';
					enable2_MPF <= '1';
					enable3_MPF <= '1';
					enable4_MPF <= '1';
					quant_totl <= 2048;
					env_cem <= 100;
				   suporte <= 90;
				end if;
				if contador >  6 then
				   enable1_MPF <= '0';
					enable2_MPF <= '0';
					enable3_MPF <= '0';
					enable4_MPF <= '0';
					enable_MPD1 <= '1';
					enable_MPD2 <= '1';
				end if;
				if contador = 7 then 
				   enable_MPD1 <= '0';
					enable_MPD2 <= '0';
				   enable_MPC  <= '1';
					enablRomFinal <= '1';
					ena_wren_2 <= '1';
					
				end if; 
				if contador = 15 then
					enable_MPC  <= '0';
					if saida_Mpf = '1' then
						enablRomFinal <= '1';
						saidaBUF <= '1';
						endBuff <= std_logic_vector(to_unsigned(cont8 , 12));
						endRomFinal <= std_logic_vector(to_unsigned(endMemRom2 , 12));
						end_RamFina1 <= std_logic_vector(to_unsigned(endMemRom2, 12));
						endMemRom2 := endMemRom2 + 1;
					else
					   saidaBUF <= '0';
 					end if;
				  reset_cont <= '1';
				  cont8:= cont8 + 1;
				  cont7 := cont7 + 1;
				  cont11 := cont8;
			   end if;
          end if;
			if cont8 > contadordoisitem then   
			   
			   ena2_ren_RAM2 <= '0';
				ena_ren_RAM2 <= '0';
				enabredenFinal <= '0';
				enabModEnd2 <= '0';
			   enablebuf2 <= '0';
				wr_Ramfinal1 <= '0';
				ativaSuportFre1 <= '0';
				desativaSuporte1 := '0';
				enabProcSup2 <= '0';
				enablRomFinal <= '0';
				saidaBUF <= '0';
				saidaBuf_1 <= '1';
				verifMP2 := '0';
				resetModEndereco2_2 <= '1';
			   if verifAp2 = '0' then
			     ativaApriorigem2 := '1';
				end if;
				if verificadork_item = '0' then
				    variab_Kitem := variab_Kitem + 1;
				 end if;
			  end if;
			  
			 
			  if ativaApriorigem2 = '1' then
			     
			     if test = '0' then
			        enablApriorigem2 <= '1'; --ativa o Mod Apriorigem
					  resetpart2apriorigem <= '0';
					  ena_reden1_1 <= '1'; ---ativa o segundo DuaRam 
					  ena_reden2_2 <= '1'; 
				  end if;
				   k_itemdois <= variab_Kitem + 2;
				  ativaSuportFre1 <= '1';
				  wr_RamUitem <= '1';
				  ena_wren_2 <= '0';
				  tam_palavra_1 <= contadorBuff2;
				  resetmodend02 <= '0';
				  k_item <= variab_Kitem;
				  verificadork_item := '1';
				  reset <= '1'; ---reset o contador do modedoisitem
				  
				 ---resetend1<= '1'; ---reset o contador do mod de EnderecoUm
	          if saida3_Mend = contadorBuff2 - 1 and saida4_Mend = contadorBuff2  then ---finaliza o Mod Apriorigem2
				   enablApriorigem2 <= '0';
					ativaApriorigem2_2 := '1';
					verifAp2 := '1';
					ena_reden1_1 <= '0'; ---ativa o segundo DuaRam 
				   ena_reden2_2 <= '0';
				end if;
				test := '1';
			  end if;
		 --- extrai as palavras de 1 e 2 itens da palavra que vem do apriorigem com tam 3
			 if ativaApriorigem2_2 = '1' then 
			    resetpart2apriorigem <= '1';
				 ativaSuportFre1 <= '0';
				 ena_reden1_1 <= '0'; ---ativa o segundo DuaRam 
				 ena_reden2_2 <= '0'; 
			    enablApriorigem2 <= '0';
				 resetBuff <= '1';
			    enablepro11item <= '1';
				 ---reset_1itemf <= '0';
				 enablApriorigem2 <= '0';
				 verifAp2 := '1';
				 resetmodend02 <= '1';
				 wr_Ramfinal2 <= '1';
				 rd_RamUitem <= '1';
				 end_RomReden <= std_logic_vector(to_unsigned(cont6, 12));
				 
				 
				 if saida_1itemfreque1 = '1'  then
				 end_RamFina2 <= std_logic_vector(to_unsigned(cont9 , 12));
				 cont9 := cont9 + 1;
             verifAp3 := '1';
				 end if;
				 if verifAp3 = '1' then
				  if saida_1itemfreque1 = '0'  then
				     ativaApriorigem2_3 := '1';
					  wr_Ramfinal2 <= '0';
				     rd_RamUitem <= '0';
					  verifAp3 := '0';
					  enablepro11item <= '0';
					  
					end if;
				  end if;
				end if;
				 
				 if ativaApriorigem2_3 = '1' then
					
					 enablApriorigem3 <= '1';
					 resetModEndereco2 <= '0';
					 enable_MER2 <= '1';
					 rd_DuaRamFinal <= '1';
					 rd_DuaRamFinal2 <= '1';
					 ena_wren_RAM2 <= '1';
					 mulx3 <= 1;
					 mulx4 <= 1;
	              if saida_ModEnde2 = contadoritemfreque and saida_ModEnde2_2 = contadorBuff2 - 1 then
					    enable_MER2 <= '0';
						 ativaApriorigem2_3 := '0';
						 rd_DuaRamFinal <= '0';
					    rd_DuaRamFinal2 <= '0';
						 enablApriorigem3 <= '0';
						 resetModEndereco2 <= '1';
						 ende_wrRAM2 <= std_logic_vector(to_unsigned((cont20 ), 12));
						 cont9 := 0;
						 cont6 := cont6 + 1;
						 cont20 := cont20 + 1;
						 ativaApriorigem2_2 := '1';
					 end if;
					 if cont6 = 20 then
					    
						 ativaApriorigem2_2 := '0';
						 ativaApriorigem2_3 := '0';
						 ativaApriorigem2 := '0';
						 desativaSuporte1 := '1';
						 verifAp2 := '0';
						 test := '0';		
						 cont3 := 0;
						 cont8 := 0;
						 endMemRom2 := 0;
					    cont6 := 0;
						 cont12 := 0;
					 end if;
								 
			  end if;
			
					      
		 end if;
	end Process;
	Process(clk_in)
	variable cont_end,cont_end2, teste: integer range 0 to 64;
	Begin
	  if clk_in'event and clk_in = '1' and enableProc2 = '0' then
			if ativaSuportFre1 = '1' then
			   buff2 <= 2;
				
				enabProc1Sup1<= '1';
				ena2_wren_RAM2 <= '1';
				tamanhoRom <= 2048;
			end if;	
			if desativaSup1 = '1' then
				ativa2SuportFre1 <= '1';
				ena2_wren_RAM2 <= '0';
				enabProc1Sup1<= '0';
		  end if;
		 
		end if;
	end Process;

end arch;
