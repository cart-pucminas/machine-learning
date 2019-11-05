-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "06/29/2017 14:33:48"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Kmeans_CountClk IS
    PORT (
	clk : IN std_logic;
	nrst : IN std_logic;
	countClk : IN std_logic_vector(63 DOWNTO 0);
	en_Count : IN std_logic;
	continue : IN std_logic;
	readDone : IN std_logic;
	en_MemoryInitialize : IN std_logic;
	o_countClk : OUT std_logic_vector(63 DOWNTO 0);
	dado : OUT std_logic_vector(7 DOWNTO 0);
	next_State : OUT std_logic_vector(3 DOWNTO 0)
	);
END Kmeans_CountClk;

-- Design Ports Information
-- continue	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[0]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[1]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[3]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[4]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[5]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[6]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[7]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[8]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[9]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[10]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[11]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[12]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[13]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[14]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[15]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[16]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[17]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[18]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[19]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[20]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[21]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[22]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[23]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[24]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[25]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[26]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[27]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[28]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[29]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[30]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[31]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[32]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[33]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[34]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[35]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[36]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[37]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[38]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[39]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[40]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[41]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[42]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[43]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[44]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[45]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[46]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[47]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[48]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[49]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[50]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[51]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[52]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[53]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[54]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[55]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[56]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[57]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[58]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[59]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[60]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[61]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[62]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[63]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[0]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[1]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[2]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[4]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[5]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[6]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[7]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_State[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_State[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_State[2]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_State[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[0]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[1]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[2]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[3]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[4]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[5]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[6]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[7]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[8]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[9]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[10]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[11]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[12]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[13]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[14]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[15]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[16]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[17]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[18]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[19]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[20]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[21]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[22]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[23]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[24]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[25]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[26]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[27]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[28]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[29]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[30]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[31]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[32]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[33]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[34]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[35]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[36]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[37]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[38]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[39]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[40]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[41]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[42]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[43]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[44]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[45]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[46]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[47]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[48]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[49]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[50]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[51]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[52]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[53]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[54]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[55]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[56]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[57]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[58]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[59]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[60]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[61]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[62]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[63]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nrst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_MemoryInitialize	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_Count	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readDone	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Kmeans_CountClk IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_nrst : std_logic;
SIGNAL ww_countClk : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_en_Count : std_logic;
SIGNAL ww_continue : std_logic;
SIGNAL ww_readDone : std_logic;
SIGNAL ww_en_MemoryInitialize : std_logic;
SIGNAL ww_o_countClk : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_dado : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_next_State : std_logic_vector(3 DOWNTO 0);
SIGNAL \nrst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \continue~input_o\ : std_logic;
SIGNAL \o_countClk[0]~output_o\ : std_logic;
SIGNAL \o_countClk[1]~output_o\ : std_logic;
SIGNAL \o_countClk[2]~output_o\ : std_logic;
SIGNAL \o_countClk[3]~output_o\ : std_logic;
SIGNAL \o_countClk[4]~output_o\ : std_logic;
SIGNAL \o_countClk[5]~output_o\ : std_logic;
SIGNAL \o_countClk[6]~output_o\ : std_logic;
SIGNAL \o_countClk[7]~output_o\ : std_logic;
SIGNAL \o_countClk[8]~output_o\ : std_logic;
SIGNAL \o_countClk[9]~output_o\ : std_logic;
SIGNAL \o_countClk[10]~output_o\ : std_logic;
SIGNAL \o_countClk[11]~output_o\ : std_logic;
SIGNAL \o_countClk[12]~output_o\ : std_logic;
SIGNAL \o_countClk[13]~output_o\ : std_logic;
SIGNAL \o_countClk[14]~output_o\ : std_logic;
SIGNAL \o_countClk[15]~output_o\ : std_logic;
SIGNAL \o_countClk[16]~output_o\ : std_logic;
SIGNAL \o_countClk[17]~output_o\ : std_logic;
SIGNAL \o_countClk[18]~output_o\ : std_logic;
SIGNAL \o_countClk[19]~output_o\ : std_logic;
SIGNAL \o_countClk[20]~output_o\ : std_logic;
SIGNAL \o_countClk[21]~output_o\ : std_logic;
SIGNAL \o_countClk[22]~output_o\ : std_logic;
SIGNAL \o_countClk[23]~output_o\ : std_logic;
SIGNAL \o_countClk[24]~output_o\ : std_logic;
SIGNAL \o_countClk[25]~output_o\ : std_logic;
SIGNAL \o_countClk[26]~output_o\ : std_logic;
SIGNAL \o_countClk[27]~output_o\ : std_logic;
SIGNAL \o_countClk[28]~output_o\ : std_logic;
SIGNAL \o_countClk[29]~output_o\ : std_logic;
SIGNAL \o_countClk[30]~output_o\ : std_logic;
SIGNAL \o_countClk[31]~output_o\ : std_logic;
SIGNAL \o_countClk[32]~output_o\ : std_logic;
SIGNAL \o_countClk[33]~output_o\ : std_logic;
SIGNAL \o_countClk[34]~output_o\ : std_logic;
SIGNAL \o_countClk[35]~output_o\ : std_logic;
SIGNAL \o_countClk[36]~output_o\ : std_logic;
SIGNAL \o_countClk[37]~output_o\ : std_logic;
SIGNAL \o_countClk[38]~output_o\ : std_logic;
SIGNAL \o_countClk[39]~output_o\ : std_logic;
SIGNAL \o_countClk[40]~output_o\ : std_logic;
SIGNAL \o_countClk[41]~output_o\ : std_logic;
SIGNAL \o_countClk[42]~output_o\ : std_logic;
SIGNAL \o_countClk[43]~output_o\ : std_logic;
SIGNAL \o_countClk[44]~output_o\ : std_logic;
SIGNAL \o_countClk[45]~output_o\ : std_logic;
SIGNAL \o_countClk[46]~output_o\ : std_logic;
SIGNAL \o_countClk[47]~output_o\ : std_logic;
SIGNAL \o_countClk[48]~output_o\ : std_logic;
SIGNAL \o_countClk[49]~output_o\ : std_logic;
SIGNAL \o_countClk[50]~output_o\ : std_logic;
SIGNAL \o_countClk[51]~output_o\ : std_logic;
SIGNAL \o_countClk[52]~output_o\ : std_logic;
SIGNAL \o_countClk[53]~output_o\ : std_logic;
SIGNAL \o_countClk[54]~output_o\ : std_logic;
SIGNAL \o_countClk[55]~output_o\ : std_logic;
SIGNAL \o_countClk[56]~output_o\ : std_logic;
SIGNAL \o_countClk[57]~output_o\ : std_logic;
SIGNAL \o_countClk[58]~output_o\ : std_logic;
SIGNAL \o_countClk[59]~output_o\ : std_logic;
SIGNAL \o_countClk[60]~output_o\ : std_logic;
SIGNAL \o_countClk[61]~output_o\ : std_logic;
SIGNAL \o_countClk[62]~output_o\ : std_logic;
SIGNAL \o_countClk[63]~output_o\ : std_logic;
SIGNAL \dado[0]~output_o\ : std_logic;
SIGNAL \dado[1]~output_o\ : std_logic;
SIGNAL \dado[2]~output_o\ : std_logic;
SIGNAL \dado[3]~output_o\ : std_logic;
SIGNAL \dado[4]~output_o\ : std_logic;
SIGNAL \dado[5]~output_o\ : std_logic;
SIGNAL \dado[6]~output_o\ : std_logic;
SIGNAL \dado[7]~output_o\ : std_logic;
SIGNAL \next_State[0]~output_o\ : std_logic;
SIGNAL \next_State[1]~output_o\ : std_logic;
SIGNAL \next_State[2]~output_o\ : std_logic;
SIGNAL \next_State[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \countClk[0]~input_o\ : std_logic;
SIGNAL \en_MemoryInitialize~input_o\ : std_logic;
SIGNAL \state_fut.RESET~feeder_combout\ : std_logic;
SIGNAL \state_fut.RESET~q\ : std_logic;
SIGNAL \nrst~input_o\ : std_logic;
SIGNAL \nrst~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.RESET~q\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \state_fut.IDLE~q\ : std_logic;
SIGNAL \state.IDLE~feeder_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \en_Count~input_o\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \state_fut.COUNT~q\ : std_logic;
SIGNAL \state.COUNT~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \readDone~input_o\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \state_fut.WAITDATA2~q\ : std_logic;
SIGNAL \state.WAITDATA2~feeder_combout\ : std_logic;
SIGNAL \state.WAITDATA2~q\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \state_fut.READDATA~q\ : std_logic;
SIGNAL \state.READDATA~feeder_combout\ : std_logic;
SIGNAL \state.READDATA~q\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \countClk[1]~input_o\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \countClk[2]~input_o\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \countClk[3]~input_o\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \countClk[4]~input_o\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \countClk[5]~input_o\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \countClk[6]~input_o\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \countClk[7]~input_o\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \countClk[8]~input_o\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \countClk[9]~input_o\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \countClk[10]~input_o\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \countClk[11]~input_o\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \countClk[12]~input_o\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \countClk[13]~input_o\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \countClk[14]~input_o\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \countClk[15]~input_o\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \countClk[16]~input_o\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \countClk[17]~input_o\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \countClk[18]~input_o\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \countClk[19]~input_o\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \countClk[20]~input_o\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \countClk[21]~input_o\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \countClk[22]~input_o\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \countClk[23]~input_o\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \countClk[24]~input_o\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \countClk[25]~input_o\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \countClk[26]~input_o\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \countClk[27]~input_o\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \countClk[28]~input_o\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \countClk[29]~input_o\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \countClk[30]~input_o\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \countClk[31]~input_o\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \countClk[32]~input_o\ : std_logic;
SIGNAL \Add0~63\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \countClk[33]~input_o\ : std_logic;
SIGNAL \Add0~65\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \countClk[34]~input_o\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \countClk[35]~input_o\ : std_logic;
SIGNAL \Add0~69\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \countClk[36]~input_o\ : std_logic;
SIGNAL \Add0~71\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \countClk[37]~input_o\ : std_logic;
SIGNAL \Add0~73\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \countClk[38]~input_o\ : std_logic;
SIGNAL \Add0~75\ : std_logic;
SIGNAL \Add0~76_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \countClk[39]~input_o\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Add0~79\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \countClk[40]~input_o\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \countClk[41]~input_o\ : std_logic;
SIGNAL \Add0~81\ : std_logic;
SIGNAL \Add0~82_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Add0~83\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \countClk[42]~input_o\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \countClk[43]~input_o\ : std_logic;
SIGNAL \Add0~85\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \countClk[44]~input_o\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~88_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \countClk[45]~input_o\ : std_logic;
SIGNAL \Add0~89\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \countClk[46]~input_o\ : std_logic;
SIGNAL \Add0~91\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \countClk[47]~input_o\ : std_logic;
SIGNAL \Add0~93\ : std_logic;
SIGNAL \Add0~94_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \countClk[48]~input_o\ : std_logic;
SIGNAL \Add0~95\ : std_logic;
SIGNAL \Add0~96_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \countClk[49]~input_o\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~98_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \countClk[50]~input_o\ : std_logic;
SIGNAL \Add0~99\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \countClk[51]~input_o\ : std_logic;
SIGNAL \Add0~101\ : std_logic;
SIGNAL \Add0~102_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \countClk[52]~input_o\ : std_logic;
SIGNAL \Add0~103\ : std_logic;
SIGNAL \Add0~104_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \countClk[53]~input_o\ : std_logic;
SIGNAL \Add0~105\ : std_logic;
SIGNAL \Add0~106_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \countClk[54]~input_o\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~108_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \countClk[55]~input_o\ : std_logic;
SIGNAL \Add0~109\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \countClk[56]~input_o\ : std_logic;
SIGNAL \Add0~111\ : std_logic;
SIGNAL \Add0~112_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \countClk[57]~input_o\ : std_logic;
SIGNAL \Add0~113\ : std_logic;
SIGNAL \Add0~114_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \countClk[58]~input_o\ : std_logic;
SIGNAL \Add0~115\ : std_logic;
SIGNAL \Add0~116_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \countClk[59]~input_o\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~118_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \countClk[60]~input_o\ : std_logic;
SIGNAL \Add0~119\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \countClk[61]~input_o\ : std_logic;
SIGNAL \Add0~121\ : std_logic;
SIGNAL \Add0~122_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \countClk[62]~input_o\ : std_logic;
SIGNAL \Add0~123\ : std_logic;
SIGNAL \Add0~124_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \countClk[63]~input_o\ : std_logic;
SIGNAL \Add0~125\ : std_logic;
SIGNAL \Add0~126_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \s_countDado[0]~1_combout\ : std_logic;
SIGNAL \s_countDado[1]~0_combout\ : std_logic;
SIGNAL \s_countDado[2]~2_combout\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \Selector71~1_combout\ : std_logic;
SIGNAL \Selector71~2_combout\ : std_logic;
SIGNAL \Selector71~3_combout\ : std_logic;
SIGNAL \Selector71~4_combout\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \Selector70~1_combout\ : std_logic;
SIGNAL \Selector70~2_combout\ : std_logic;
SIGNAL \Selector70~3_combout\ : std_logic;
SIGNAL \Selector70~4_combout\ : std_logic;
SIGNAL \Selector69~2_combout\ : std_logic;
SIGNAL \Selector69~3_combout\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \Selector69~1_combout\ : std_logic;
SIGNAL \Selector69~4_combout\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \Selector68~1_combout\ : std_logic;
SIGNAL \Selector68~2_combout\ : std_logic;
SIGNAL \Selector68~3_combout\ : std_logic;
SIGNAL \Selector68~4_combout\ : std_logic;
SIGNAL \Selector67~2_combout\ : std_logic;
SIGNAL \Selector67~3_combout\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \Selector67~1_combout\ : std_logic;
SIGNAL \Selector67~4_combout\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \Selector66~1_combout\ : std_logic;
SIGNAL \Selector66~2_combout\ : std_logic;
SIGNAL \Selector66~3_combout\ : std_logic;
SIGNAL \Selector66~4_combout\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \Selector65~1_combout\ : std_logic;
SIGNAL \Selector65~2_combout\ : std_logic;
SIGNAL \Selector65~3_combout\ : std_logic;
SIGNAL \Selector65~4_combout\ : std_logic;
SIGNAL \Selector64~2_combout\ : std_logic;
SIGNAL \Selector64~3_combout\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \Selector64~1_combout\ : std_logic;
SIGNAL \Selector64~4_combout\ : std_logic;
SIGNAL s_countDado : std_logic_vector(2 DOWNTO 0);
SIGNAL s_Dado : std_logic_vector(7 DOWNTO 0);
SIGNAL s_countClk : std_logic_vector(63 DOWNTO 0);
SIGNAL \ALT_INV_state.WAITDATA2~q\ : std_logic;
SIGNAL ALT_INV_s_Dado : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_nrst <= nrst;
ww_countClk <= countClk;
ww_en_Count <= en_Count;
ww_continue <= continue;
ww_readDone <= readDone;
ww_en_MemoryInitialize <= en_MemoryInitialize;
o_countClk <= ww_o_countClk;
dado <= ww_dado;
next_State <= ww_next_State;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\nrst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \nrst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_state.WAITDATA2~q\ <= NOT \state.WAITDATA2~q\;
ALT_INV_s_Dado(7) <= NOT s_Dado(7);
ALT_INV_s_Dado(6) <= NOT s_Dado(6);
ALT_INV_s_Dado(5) <= NOT s_Dado(5);
ALT_INV_s_Dado(4) <= NOT s_Dado(4);
ALT_INV_s_Dado(3) <= NOT s_Dado(3);
ALT_INV_s_Dado(2) <= NOT s_Dado(2);
ALT_INV_s_Dado(1) <= NOT s_Dado(1);
ALT_INV_s_Dado(0) <= NOT s_Dado(0);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X52_Y0_N9
\o_countClk[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(0),
	devoe => ww_devoe,
	o => \o_countClk[0]~output_o\);

-- Location: IOOBUF_X115_Y7_N16
\o_countClk[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(1),
	devoe => ww_devoe,
	o => \o_countClk[1]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\o_countClk[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(2),
	devoe => ww_devoe,
	o => \o_countClk[2]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\o_countClk[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(3),
	devoe => ww_devoe,
	o => \o_countClk[3]~output_o\);

-- Location: IOOBUF_X115_Y13_N2
\o_countClk[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(4),
	devoe => ww_devoe,
	o => \o_countClk[4]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\o_countClk[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(5),
	devoe => ww_devoe,
	o => \o_countClk[5]~output_o\);

-- Location: IOOBUF_X115_Y4_N23
\o_countClk[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(6),
	devoe => ww_devoe,
	o => \o_countClk[6]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\o_countClk[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(7),
	devoe => ww_devoe,
	o => \o_countClk[7]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\o_countClk[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(8),
	devoe => ww_devoe,
	o => \o_countClk[8]~output_o\);

-- Location: IOOBUF_X115_Y9_N23
\o_countClk[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(9),
	devoe => ww_devoe,
	o => \o_countClk[9]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\o_countClk[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(10),
	devoe => ww_devoe,
	o => \o_countClk[10]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\o_countClk[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(11),
	devoe => ww_devoe,
	o => \o_countClk[11]~output_o\);

-- Location: IOOBUF_X115_Y13_N9
\o_countClk[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(12),
	devoe => ww_devoe,
	o => \o_countClk[12]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\o_countClk[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(13),
	devoe => ww_devoe,
	o => \o_countClk[13]~output_o\);

-- Location: IOOBUF_X115_Y4_N16
\o_countClk[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(14),
	devoe => ww_devoe,
	o => \o_countClk[14]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\o_countClk[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(15),
	devoe => ww_devoe,
	o => \o_countClk[15]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\o_countClk[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(16),
	devoe => ww_devoe,
	o => \o_countClk[16]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\o_countClk[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(17),
	devoe => ww_devoe,
	o => \o_countClk[17]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\o_countClk[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(18),
	devoe => ww_devoe,
	o => \o_countClk[18]~output_o\);

-- Location: IOOBUF_X115_Y10_N9
\o_countClk[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(19),
	devoe => ww_devoe,
	o => \o_countClk[19]~output_o\);

-- Location: IOOBUF_X115_Y10_N2
\o_countClk[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(20),
	devoe => ww_devoe,
	o => \o_countClk[20]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\o_countClk[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(21),
	devoe => ww_devoe,
	o => \o_countClk[21]~output_o\);

-- Location: IOOBUF_X115_Y17_N2
\o_countClk[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(22),
	devoe => ww_devoe,
	o => \o_countClk[22]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\o_countClk[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(23),
	devoe => ww_devoe,
	o => \o_countClk[23]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\o_countClk[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(24),
	devoe => ww_devoe,
	o => \o_countClk[24]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\o_countClk[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(25),
	devoe => ww_devoe,
	o => \o_countClk[25]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\o_countClk[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(26),
	devoe => ww_devoe,
	o => \o_countClk[26]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\o_countClk[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(27),
	devoe => ww_devoe,
	o => \o_countClk[27]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\o_countClk[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(28),
	devoe => ww_devoe,
	o => \o_countClk[28]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\o_countClk[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(29),
	devoe => ww_devoe,
	o => \o_countClk[29]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\o_countClk[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(30),
	devoe => ww_devoe,
	o => \o_countClk[30]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\o_countClk[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(31),
	devoe => ww_devoe,
	o => \o_countClk[31]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\o_countClk[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(32),
	devoe => ww_devoe,
	o => \o_countClk[32]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\o_countClk[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(33),
	devoe => ww_devoe,
	o => \o_countClk[33]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\o_countClk[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(34),
	devoe => ww_devoe,
	o => \o_countClk[34]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\o_countClk[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(35),
	devoe => ww_devoe,
	o => \o_countClk[35]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\o_countClk[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(36),
	devoe => ww_devoe,
	o => \o_countClk[36]~output_o\);

-- Location: IOOBUF_X115_Y5_N16
\o_countClk[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(37),
	devoe => ww_devoe,
	o => \o_countClk[37]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\o_countClk[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(38),
	devoe => ww_devoe,
	o => \o_countClk[38]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\o_countClk[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(39),
	devoe => ww_devoe,
	o => \o_countClk[39]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\o_countClk[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(40),
	devoe => ww_devoe,
	o => \o_countClk[40]~output_o\);

-- Location: IOOBUF_X115_Y6_N16
\o_countClk[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(41),
	devoe => ww_devoe,
	o => \o_countClk[41]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\o_countClk[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(42),
	devoe => ww_devoe,
	o => \o_countClk[42]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\o_countClk[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(43),
	devoe => ww_devoe,
	o => \o_countClk[43]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\o_countClk[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(44),
	devoe => ww_devoe,
	o => \o_countClk[44]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\o_countClk[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(45),
	devoe => ww_devoe,
	o => \o_countClk[45]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\o_countClk[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(46),
	devoe => ww_devoe,
	o => \o_countClk[46]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\o_countClk[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(47),
	devoe => ww_devoe,
	o => \o_countClk[47]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\o_countClk[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(48),
	devoe => ww_devoe,
	o => \o_countClk[48]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\o_countClk[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(49),
	devoe => ww_devoe,
	o => \o_countClk[49]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\o_countClk[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(50),
	devoe => ww_devoe,
	o => \o_countClk[50]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\o_countClk[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(51),
	devoe => ww_devoe,
	o => \o_countClk[51]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\o_countClk[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(52),
	devoe => ww_devoe,
	o => \o_countClk[52]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\o_countClk[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(53),
	devoe => ww_devoe,
	o => \o_countClk[53]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\o_countClk[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(54),
	devoe => ww_devoe,
	o => \o_countClk[54]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\o_countClk[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(55),
	devoe => ww_devoe,
	o => \o_countClk[55]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\o_countClk[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(56),
	devoe => ww_devoe,
	o => \o_countClk[56]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\o_countClk[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(57),
	devoe => ww_devoe,
	o => \o_countClk[57]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\o_countClk[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(58),
	devoe => ww_devoe,
	o => \o_countClk[58]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\o_countClk[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(59),
	devoe => ww_devoe,
	o => \o_countClk[59]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\o_countClk[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(60),
	devoe => ww_devoe,
	o => \o_countClk[60]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\o_countClk[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(61),
	devoe => ww_devoe,
	o => \o_countClk[61]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\o_countClk[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(62),
	devoe => ww_devoe,
	o => \o_countClk[62]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\o_countClk[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_countClk(63),
	devoe => ww_devoe,
	o => \o_countClk[63]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\dado[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_Dado(0),
	devoe => ww_devoe,
	o => \dado[0]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\dado[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_Dado(1),
	devoe => ww_devoe,
	o => \dado[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\dado[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_Dado(2),
	devoe => ww_devoe,
	o => \dado[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\dado[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_Dado(3),
	devoe => ww_devoe,
	o => \dado[3]~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\dado[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_Dado(4),
	devoe => ww_devoe,
	o => \dado[4]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\dado[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_Dado(5),
	devoe => ww_devoe,
	o => \dado[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\dado[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_Dado(6),
	devoe => ww_devoe,
	o => \dado[6]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\dado[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_Dado(7),
	devoe => ww_devoe,
	o => \dado[7]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\next_State[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \next_State[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\next_State[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \next_State[1]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\next_State[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \next_State[2]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\next_State[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \next_State[3]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X58_Y0_N1
\countClk[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(0),
	o => \countClk[0]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\en_MemoryInitialize~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_MemoryInitialize,
	o => \en_MemoryInitialize~input_o\);

-- Location: LCCOMB_X86_Y3_N26
\state_fut.RESET~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut.RESET~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \state_fut.RESET~feeder_combout\);

-- Location: FF_X86_Y3_N27
\state_fut.RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \state_fut.RESET~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_fut.RESET~q\);

-- Location: IOIBUF_X0_Y36_N15
\nrst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nrst,
	o => \nrst~input_o\);

-- Location: CLKCTRL_G4
\nrst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \nrst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \nrst~inputclkctrl_outclk\);

-- Location: FF_X86_Y3_N1
\state.RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state_fut.RESET~q\,
	clrn => \nrst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.RESET~q\);

-- Location: LCCOMB_X86_Y3_N10
\Selector73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = ((\state.IDLE~q\ & !\en_MemoryInitialize~input_o\)) # (!\state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => \en_MemoryInitialize~input_o\,
	datad => \state.RESET~q\,
	combout => \Selector73~0_combout\);

-- Location: FF_X86_Y3_N11
\state_fut.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector73~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_fut.IDLE~q\);

-- Location: LCCOMB_X86_Y3_N22
\state.IDLE~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.IDLE~feeder_combout\ = \state_fut.IDLE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_fut.IDLE~q\,
	combout => \state.IDLE~feeder_combout\);

-- Location: FF_X86_Y3_N23
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.IDLE~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: IOIBUF_X49_Y0_N15
\en_Count~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_Count,
	o => \en_Count~input_o\);

-- Location: LCCOMB_X86_Y3_N12
\Selector74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (\state.IDLE~q\ & ((\en_MemoryInitialize~input_o\) # ((\state.COUNT~q\ & !\en_Count~input_o\)))) # (!\state.IDLE~q\ & (((\state.COUNT~q\ & !\en_Count~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => \en_MemoryInitialize~input_o\,
	datac => \state.COUNT~q\,
	datad => \en_Count~input_o\,
	combout => \Selector74~0_combout\);

-- Location: FF_X86_Y3_N13
\state_fut.COUNT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector74~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_fut.COUNT~q\);

-- Location: FF_X86_Y4_N5
\state.COUNT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state_fut.COUNT~q\,
	clrn => \nrst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.COUNT~q\);

-- Location: LCCOMB_X87_Y4_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = s_countClk(0) $ (VCC)
-- \Add0~1\ = CARRY(s_countClk(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X52_Y0_N15
\readDone~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_readDone,
	o => \readDone~input_o\);

-- Location: LCCOMB_X86_Y3_N18
\Selector76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (\state.READDATA~q\) # ((!\readDone~input_o\ & \state.WAITDATA2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.READDATA~q\,
	datac => \readDone~input_o\,
	datad => \state.WAITDATA2~q\,
	combout => \Selector76~0_combout\);

-- Location: FF_X86_Y3_N19
\state_fut.WAITDATA2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_fut.WAITDATA2~q\);

-- Location: LCCOMB_X86_Y3_N28
\state.WAITDATA2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.WAITDATA2~feeder_combout\ = \state_fut.WAITDATA2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_fut.WAITDATA2~q\,
	combout => \state.WAITDATA2~feeder_combout\);

-- Location: FF_X86_Y3_N29
\state.WAITDATA2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.WAITDATA2~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WAITDATA2~q\);

-- Location: LCCOMB_X86_Y3_N30
\Selector75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\readDone~input_o\ & ((\state.WAITDATA2~q\) # ((\state.COUNT~q\ & \en_Count~input_o\)))) # (!\readDone~input_o\ & (((\state.COUNT~q\ & \en_Count~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readDone~input_o\,
	datab => \state.WAITDATA2~q\,
	datac => \state.COUNT~q\,
	datad => \en_Count~input_o\,
	combout => \Selector75~0_combout\);

-- Location: FF_X86_Y3_N31
\state_fut.READDATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_fut.READDATA~q\);

-- Location: LCCOMB_X86_Y3_N20
\state.READDATA~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.READDATA~feeder_combout\ = \state_fut.READDATA~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_fut.READDATA~q\,
	combout => \state.READDATA~feeder_combout\);

-- Location: FF_X86_Y3_N21
\state.READDATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.READDATA~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.READDATA~q\);

-- Location: LCCOMB_X86_Y3_N0
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\state.IDLE~q\) # ((\state.READDATA~q\) # (\state.WAITDATA2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => \state.READDATA~q\,
	datad => \state.WAITDATA2~q\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X86_Y4_N18
\Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (\countClk[0]~input_o\ & ((\WideOr0~0_combout\) # ((\state.COUNT~q\ & \Add0~0_combout\)))) # (!\countClk[0]~input_o\ & (\state.COUNT~q\ & (\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[0]~input_o\,
	datab => \state.COUNT~q\,
	datac => \Add0~0_combout\,
	datad => \WideOr0~0_combout\,
	combout => \Selector63~0_combout\);

-- Location: FF_X87_Y4_N17
\s_countClk[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector63~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(0));

-- Location: LCCOMB_X87_Y4_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (s_countClk(1) & (!\Add0~1\)) # (!s_countClk(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!s_countClk(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: IOIBUF_X115_Y11_N8
\countClk[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(1),
	o => \countClk[1]~input_o\);

-- Location: LCCOMB_X86_Y4_N16
\Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (\Add0~2_combout\ & ((\state.COUNT~q\) # ((\countClk[1]~input_o\ & \WideOr0~0_combout\)))) # (!\Add0~2_combout\ & (((\countClk[1]~input_o\ & \WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[1]~input_o\,
	datad => \WideOr0~0_combout\,
	combout => \Selector62~0_combout\);

-- Location: FF_X87_Y4_N13
\s_countClk[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector62~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(1));

-- Location: LCCOMB_X87_Y4_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (s_countClk(2) & (\Add0~3\ $ (GND))) # (!s_countClk(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((s_countClk(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: IOIBUF_X115_Y12_N1
\countClk[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(2),
	o => \countClk[2]~input_o\);

-- Location: LCCOMB_X86_Y4_N22
\Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\Add0~4_combout\ & ((\state.COUNT~q\) # ((\countClk[2]~input_o\ & \WideOr0~0_combout\)))) # (!\Add0~4_combout\ & (((\countClk[2]~input_o\ & \WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[2]~input_o\,
	datad => \WideOr0~0_combout\,
	combout => \Selector61~0_combout\);

-- Location: FF_X87_Y4_N29
\s_countClk[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector61~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(2));

-- Location: LCCOMB_X87_Y4_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (s_countClk(3) & (!\Add0~5\)) # (!s_countClk(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!s_countClk(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: IOIBUF_X40_Y0_N15
\countClk[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(3),
	o => \countClk[3]~input_o\);

-- Location: LCCOMB_X86_Y4_N28
\Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (\state.COUNT~q\ & ((\Add0~6_combout\) # ((\countClk[3]~input_o\ & \WideOr0~0_combout\)))) # (!\state.COUNT~q\ & (((\countClk[3]~input_o\ & \WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \Add0~6_combout\,
	datac => \countClk[3]~input_o\,
	datad => \WideOr0~0_combout\,
	combout => \Selector60~0_combout\);

-- Location: FF_X87_Y4_N5
\s_countClk[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector60~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(3));

-- Location: IOIBUF_X115_Y16_N8
\countClk[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(4),
	o => \countClk[4]~input_o\);

-- Location: LCCOMB_X87_Y4_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (s_countClk(4) & (\Add0~7\ $ (GND))) # (!s_countClk(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((s_countClk(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X86_Y4_N26
\Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\countClk[4]~input_o\ & ((\WideOr0~0_combout\) # ((\Add0~8_combout\ & \state.COUNT~q\)))) # (!\countClk[4]~input_o\ & (\Add0~8_combout\ & (\state.COUNT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[4]~input_o\,
	datab => \Add0~8_combout\,
	datac => \state.COUNT~q\,
	datad => \WideOr0~0_combout\,
	combout => \Selector59~0_combout\);

-- Location: FF_X87_Y4_N11
\s_countClk[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector59~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(4));

-- Location: IOIBUF_X33_Y0_N8
\countClk[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(5),
	o => \countClk[5]~input_o\);

-- Location: LCCOMB_X87_Y4_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (s_countClk(5) & (!\Add0~9\)) # (!s_countClk(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!s_countClk(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X86_Y4_N0
\Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (\countClk[5]~input_o\ & ((\WideOr0~0_combout\) # ((\state.COUNT~q\ & \Add0~10_combout\)))) # (!\countClk[5]~input_o\ & (\state.COUNT~q\ & (\Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[5]~input_o\,
	datab => \state.COUNT~q\,
	datac => \Add0~10_combout\,
	datad => \WideOr0~0_combout\,
	combout => \Selector58~0_combout\);

-- Location: FF_X87_Y4_N23
\s_countClk[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector58~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(5));

-- Location: IOIBUF_X115_Y30_N1
\countClk[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(6),
	o => \countClk[6]~input_o\);

-- Location: LCCOMB_X87_Y4_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (s_countClk(6) & (\Add0~11\ $ (GND))) # (!s_countClk(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((s_countClk(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X86_Y4_N4
\Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\countClk[6]~input_o\ & ((\WideOr0~0_combout\) # ((\Add0~12_combout\ & \state.COUNT~q\)))) # (!\countClk[6]~input_o\ & (\Add0~12_combout\ & (\state.COUNT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[6]~input_o\,
	datab => \Add0~12_combout\,
	datac => \state.COUNT~q\,
	datad => \WideOr0~0_combout\,
	combout => \Selector57~0_combout\);

-- Location: FF_X87_Y4_N3
\s_countClk[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector57~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(6));

-- Location: LCCOMB_X87_Y4_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (s_countClk(7) & (!\Add0~13\)) # (!s_countClk(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!s_countClk(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: IOIBUF_X115_Y16_N1
\countClk[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(7),
	o => \countClk[7]~input_o\);

-- Location: LCCOMB_X86_Y4_N30
\Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\state.COUNT~q\ & ((\Add0~14_combout\) # ((\WideOr0~0_combout\ & \countClk[7]~input_o\)))) # (!\state.COUNT~q\ & (\WideOr0~0_combout\ & ((\countClk[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \WideOr0~0_combout\,
	datac => \Add0~14_combout\,
	datad => \countClk[7]~input_o\,
	combout => \Selector56~0_combout\);

-- Location: FF_X87_Y4_N9
\s_countClk[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector56~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(7));

-- Location: IOIBUF_X115_Y20_N1
\countClk[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(8),
	o => \countClk[8]~input_o\);

-- Location: LCCOMB_X87_Y4_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (s_countClk(8) & (\Add0~15\ $ (GND))) # (!s_countClk(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((s_countClk(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X86_Y4_N20
\Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\countClk[8]~input_o\ & ((\WideOr0~0_combout\) # ((\Add0~16_combout\ & \state.COUNT~q\)))) # (!\countClk[8]~input_o\ & (\Add0~16_combout\ & (\state.COUNT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[8]~input_o\,
	datab => \Add0~16_combout\,
	datac => \state.COUNT~q\,
	datad => \WideOr0~0_combout\,
	combout => \Selector55~0_combout\);

-- Location: FF_X87_Y4_N1
\s_countClk[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector55~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(8));

-- Location: IOIBUF_X115_Y15_N1
\countClk[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(9),
	o => \countClk[9]~input_o\);

-- Location: LCCOMB_X87_Y4_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (s_countClk(9) & (!\Add0~17\)) # (!s_countClk(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!s_countClk(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X86_Y4_N10
\Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\countClk[9]~input_o\ & ((\WideOr0~0_combout\) # ((\Add0~18_combout\ & \state.COUNT~q\)))) # (!\countClk[9]~input_o\ & (\Add0~18_combout\ & (\state.COUNT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[9]~input_o\,
	datab => \Add0~18_combout\,
	datac => \state.COUNT~q\,
	datad => \WideOr0~0_combout\,
	combout => \Selector54~0_combout\);

-- Location: FF_X87_Y4_N15
\s_countClk[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector54~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(9));

-- Location: IOIBUF_X115_Y24_N8
\countClk[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(10),
	o => \countClk[10]~input_o\);

-- Location: LCCOMB_X87_Y4_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (s_countClk(10) & (\Add0~19\ $ (GND))) # (!s_countClk(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((s_countClk(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X86_Y4_N12
\Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\countClk[10]~input_o\ & ((\WideOr0~0_combout\) # ((\state.COUNT~q\ & \Add0~20_combout\)))) # (!\countClk[10]~input_o\ & (\state.COUNT~q\ & (\Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[10]~input_o\,
	datab => \state.COUNT~q\,
	datac => \Add0~20_combout\,
	datad => \WideOr0~0_combout\,
	combout => \Selector53~0_combout\);

-- Location: FF_X87_Y4_N25
\s_countClk[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector53~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(10));

-- Location: IOIBUF_X115_Y22_N22
\countClk[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(11),
	o => \countClk[11]~input_o\);

-- Location: LCCOMB_X87_Y4_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (s_countClk(11) & (!\Add0~21\)) # (!s_countClk(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!s_countClk(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X86_Y4_N6
\Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\countClk[11]~input_o\ & ((\WideOr0~0_combout\) # ((\Add0~22_combout\ & \state.COUNT~q\)))) # (!\countClk[11]~input_o\ & (\Add0~22_combout\ & (\state.COUNT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[11]~input_o\,
	datab => \Add0~22_combout\,
	datac => \state.COUNT~q\,
	datad => \WideOr0~0_combout\,
	combout => \Selector52~0_combout\);

-- Location: FF_X87_Y4_N27
\s_countClk[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector52~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(11));

-- Location: IOIBUF_X40_Y0_N22
\countClk[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(12),
	o => \countClk[12]~input_o\);

-- Location: LCCOMB_X87_Y4_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (s_countClk(12) & (\Add0~23\ $ (GND))) # (!s_countClk(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((s_countClk(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X86_Y4_N24
\Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\countClk[12]~input_o\ & ((\WideOr0~0_combout\) # ((\Add0~24_combout\ & \state.COUNT~q\)))) # (!\countClk[12]~input_o\ & (\Add0~24_combout\ & (\state.COUNT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[12]~input_o\,
	datab => \Add0~24_combout\,
	datac => \state.COUNT~q\,
	datad => \WideOr0~0_combout\,
	combout => \Selector51~0_combout\);

-- Location: FF_X87_Y4_N19
\s_countClk[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector51~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(12));

-- Location: LCCOMB_X87_Y4_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (s_countClk(13) & (!\Add0~25\)) # (!s_countClk(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!s_countClk(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: IOIBUF_X115_Y20_N8
\countClk[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(13),
	o => \countClk[13]~input_o\);

-- Location: LCCOMB_X86_Y4_N14
\Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\Add0~26_combout\ & ((\state.COUNT~q\) # ((\countClk[13]~input_o\ & \WideOr0~0_combout\)))) # (!\Add0~26_combout\ & (((\countClk[13]~input_o\ & \WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[13]~input_o\,
	datad => \WideOr0~0_combout\,
	combout => \Selector50~0_combout\);

-- Location: FF_X87_Y4_N21
\s_countClk[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector50~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(13));

-- Location: IOIBUF_X115_Y12_N8
\countClk[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(14),
	o => \countClk[14]~input_o\);

-- Location: LCCOMB_X87_Y4_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (s_countClk(14) & (\Add0~27\ $ (GND))) # (!s_countClk(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((s_countClk(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X86_Y4_N8
\Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\countClk[14]~input_o\ & ((\WideOr0~0_combout\) # ((\Add0~28_combout\ & \state.COUNT~q\)))) # (!\countClk[14]~input_o\ & (\Add0~28_combout\ & (\state.COUNT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[14]~input_o\,
	datab => \Add0~28_combout\,
	datac => \state.COUNT~q\,
	datad => \WideOr0~0_combout\,
	combout => \Selector49~0_combout\);

-- Location: FF_X87_Y4_N7
\s_countClk[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector49~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(14));

-- Location: IOIBUF_X35_Y0_N15
\countClk[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(15),
	o => \countClk[15]~input_o\);

-- Location: LCCOMB_X87_Y4_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (s_countClk(15) & (!\Add0~29\)) # (!s_countClk(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!s_countClk(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X86_Y4_N2
\Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\countClk[15]~input_o\ & ((\WideOr0~0_combout\) # ((\state.COUNT~q\ & \Add0~30_combout\)))) # (!\countClk[15]~input_o\ & (\state.COUNT~q\ & (\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[15]~input_o\,
	datab => \state.COUNT~q\,
	datac => \Add0~30_combout\,
	datad => \WideOr0~0_combout\,
	combout => \Selector48~0_combout\);

-- Location: FF_X87_Y4_N31
\s_countClk[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector48~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(15));

-- Location: LCCOMB_X87_Y3_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (s_countClk(16) & (\Add0~31\ $ (GND))) # (!s_countClk(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((s_countClk(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: IOIBUF_X115_Y19_N8
\countClk[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(16),
	o => \countClk[16]~input_o\);

-- Location: LCCOMB_X88_Y3_N10
\Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\Add0~32_combout\ & ((\state.COUNT~q\) # ((\countClk[16]~input_o\ & \WideOr0~0_combout\)))) # (!\Add0~32_combout\ & (\countClk[16]~input_o\ & (\WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \countClk[16]~input_o\,
	datac => \WideOr0~0_combout\,
	datad => \state.COUNT~q\,
	combout => \Selector47~0_combout\);

-- Location: FF_X87_Y3_N23
\s_countClk[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector47~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(16));

-- Location: LCCOMB_X87_Y3_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (s_countClk(17) & (!\Add0~33\)) # (!s_countClk(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!s_countClk(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: IOIBUF_X35_Y0_N22
\countClk[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(17),
	o => \countClk[17]~input_o\);

-- Location: LCCOMB_X86_Y3_N24
\Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\Add0~34_combout\ & ((\state.COUNT~q\) # ((\countClk[17]~input_o\ & \WideOr0~0_combout\)))) # (!\Add0~34_combout\ & (\countClk[17]~input_o\ & ((\WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \countClk[17]~input_o\,
	datac => \state.COUNT~q\,
	datad => \WideOr0~0_combout\,
	combout => \Selector46~0_combout\);

-- Location: FF_X87_Y3_N13
\s_countClk[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector46~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(17));

-- Location: LCCOMB_X87_Y3_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (s_countClk(18) & (\Add0~35\ $ (GND))) # (!s_countClk(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((s_countClk(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: IOIBUF_X49_Y0_N22
\countClk[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(18),
	o => \countClk[18]~input_o\);

-- Location: LCCOMB_X86_Y3_N2
\Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\Add0~36_combout\ & ((\state.COUNT~q\) # ((\countClk[18]~input_o\ & \WideOr0~0_combout\)))) # (!\Add0~36_combout\ & (\countClk[18]~input_o\ & ((\WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \countClk[18]~input_o\,
	datac => \state.COUNT~q\,
	datad => \WideOr0~0_combout\,
	combout => \Selector45~0_combout\);

-- Location: FF_X87_Y3_N1
\s_countClk[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector45~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(18));

-- Location: IOIBUF_X115_Y21_N15
\countClk[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(19),
	o => \countClk[19]~input_o\);

-- Location: LCCOMB_X87_Y3_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (s_countClk(19) & (!\Add0~37\)) # (!s_countClk(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!s_countClk(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X88_Y3_N12
\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\countClk[19]~input_o\ & ((\WideOr0~0_combout\) # ((\Add0~38_combout\ & \state.COUNT~q\)))) # (!\countClk[19]~input_o\ & (\Add0~38_combout\ & ((\state.COUNT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[19]~input_o\,
	datab => \Add0~38_combout\,
	datac => \WideOr0~0_combout\,
	datad => \state.COUNT~q\,
	combout => \Selector44~0_combout\);

-- Location: FF_X87_Y3_N27
\s_countClk[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector44~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(19));

-- Location: LCCOMB_X87_Y3_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (s_countClk(20) & (\Add0~39\ $ (GND))) # (!s_countClk(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((s_countClk(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: IOIBUF_X115_Y11_N1
\countClk[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(20),
	o => \countClk[20]~input_o\);

-- Location: LCCOMB_X86_Y3_N16
\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\WideOr0~0_combout\ & ((\countClk[20]~input_o\) # ((\Add0~40_combout\ & \state.COUNT~q\)))) # (!\WideOr0~0_combout\ & (\Add0~40_combout\ & (\state.COUNT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => \Add0~40_combout\,
	datac => \state.COUNT~q\,
	datad => \countClk[20]~input_o\,
	combout => \Selector43~0_combout\);

-- Location: FF_X87_Y3_N21
\s_countClk[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector43~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(20));

-- Location: LCCOMB_X87_Y3_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (s_countClk(21) & (!\Add0~41\)) # (!s_countClk(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!s_countClk(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: IOIBUF_X105_Y0_N8
\countClk[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(21),
	o => \countClk[21]~input_o\);

-- Location: LCCOMB_X88_Y3_N30
\Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\Add0~42_combout\ & ((\state.COUNT~q\) # ((\countClk[21]~input_o\ & \WideOr0~0_combout\)))) # (!\Add0~42_combout\ & (\countClk[21]~input_o\ & (\WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \countClk[21]~input_o\,
	datac => \WideOr0~0_combout\,
	datad => \state.COUNT~q\,
	combout => \Selector42~0_combout\);

-- Location: FF_X87_Y3_N7
\s_countClk[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector42~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(21));

-- Location: LCCOMB_X87_Y3_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (s_countClk(22) & (\Add0~43\ $ (GND))) # (!s_countClk(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((s_countClk(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: IOIBUF_X115_Y19_N1
\countClk[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(22),
	o => \countClk[22]~input_o\);

-- Location: LCCOMB_X88_Y3_N20
\Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\Add0~44_combout\ & ((\state.COUNT~q\) # ((\countClk[22]~input_o\ & \WideOr0~0_combout\)))) # (!\Add0~44_combout\ & (\countClk[22]~input_o\ & (\WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \countClk[22]~input_o\,
	datac => \WideOr0~0_combout\,
	datad => \state.COUNT~q\,
	combout => \Selector41~0_combout\);

-- Location: FF_X87_Y3_N31
\s_countClk[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector41~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(22));

-- Location: LCCOMB_X87_Y3_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (s_countClk(23) & (!\Add0~45\)) # (!s_countClk(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!s_countClk(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: IOIBUF_X54_Y0_N22
\countClk[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(23),
	o => \countClk[23]~input_o\);

-- Location: LCCOMB_X86_Y3_N6
\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\WideOr0~0_combout\ & ((\countClk[23]~input_o\) # ((\Add0~46_combout\ & \state.COUNT~q\)))) # (!\WideOr0~0_combout\ & (\Add0~46_combout\ & (\state.COUNT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => \Add0~46_combout\,
	datac => \state.COUNT~q\,
	datad => \countClk[23]~input_o\,
	combout => \Selector40~0_combout\);

-- Location: FF_X87_Y3_N5
\s_countClk[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector40~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(23));

-- Location: IOIBUF_X52_Y0_N22
\countClk[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(24),
	o => \countClk[24]~input_o\);

-- Location: LCCOMB_X87_Y3_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (s_countClk(24) & (\Add0~47\ $ (GND))) # (!s_countClk(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((s_countClk(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X86_Y3_N4
\Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\countClk[24]~input_o\ & ((\WideOr0~0_combout\) # ((\Add0~48_combout\ & \state.COUNT~q\)))) # (!\countClk[24]~input_o\ & (\Add0~48_combout\ & (\state.COUNT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[24]~input_o\,
	datab => \Add0~48_combout\,
	datac => \state.COUNT~q\,
	datad => \WideOr0~0_combout\,
	combout => \Selector39~0_combout\);

-- Location: FF_X87_Y3_N15
\s_countClk[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector39~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(24));

-- Location: IOIBUF_X115_Y23_N8
\countClk[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(25),
	o => \countClk[25]~input_o\);

-- Location: LCCOMB_X87_Y3_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (s_countClk(25) & (!\Add0~49\)) # (!s_countClk(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!s_countClk(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X88_Y3_N28
\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\state.COUNT~q\ & ((\Add0~50_combout\) # ((\countClk[25]~input_o\ & \WideOr0~0_combout\)))) # (!\state.COUNT~q\ & (\countClk[25]~input_o\ & (\WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \countClk[25]~input_o\,
	datac => \WideOr0~0_combout\,
	datad => \Add0~50_combout\,
	combout => \Selector38~0_combout\);

-- Location: FF_X88_Y3_N29
\s_countClk[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(25));

-- Location: IOIBUF_X111_Y0_N1
\countClk[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(26),
	o => \countClk[26]~input_o\);

-- Location: LCCOMB_X87_Y3_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (s_countClk(26) & (\Add0~51\ $ (GND))) # (!s_countClk(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((s_countClk(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X88_Y3_N18
\Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\state.COUNT~q\ & ((\Add0~52_combout\) # ((\countClk[26]~input_o\ & \WideOr0~0_combout\)))) # (!\state.COUNT~q\ & (\countClk[26]~input_o\ & (\WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \countClk[26]~input_o\,
	datac => \WideOr0~0_combout\,
	datad => \Add0~52_combout\,
	combout => \Selector37~0_combout\);

-- Location: FF_X88_Y3_N19
\s_countClk[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(26));

-- Location: IOIBUF_X115_Y23_N1
\countClk[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(27),
	o => \countClk[27]~input_o\);

-- Location: LCCOMB_X87_Y3_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (s_countClk(27) & (!\Add0~53\)) # (!s_countClk(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!s_countClk(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X88_Y3_N4
\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\state.COUNT~q\ & ((\Add0~54_combout\) # ((\countClk[27]~input_o\ & \WideOr0~0_combout\)))) # (!\state.COUNT~q\ & (\countClk[27]~input_o\ & (\WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \countClk[27]~input_o\,
	datac => \WideOr0~0_combout\,
	datad => \Add0~54_combout\,
	combout => \Selector36~0_combout\);

-- Location: FF_X88_Y3_N5
\s_countClk[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(27));

-- Location: IOIBUF_X115_Y14_N1
\countClk[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(28),
	o => \countClk[28]~input_o\);

-- Location: LCCOMB_X87_Y3_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (s_countClk(28) & (\Add0~55\ $ (GND))) # (!s_countClk(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((s_countClk(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X88_Y3_N2
\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\state.COUNT~q\ & ((\Add0~56_combout\) # ((\countClk[28]~input_o\ & \WideOr0~0_combout\)))) # (!\state.COUNT~q\ & (\countClk[28]~input_o\ & (\WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \countClk[28]~input_o\,
	datac => \WideOr0~0_combout\,
	datad => \Add0~56_combout\,
	combout => \Selector35~0_combout\);

-- Location: FF_X88_Y3_N3
\s_countClk[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(28));

-- Location: IOIBUF_X115_Y15_N8
\countClk[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(29),
	o => \countClk[29]~input_o\);

-- Location: LCCOMB_X87_Y3_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (s_countClk(29) & (!\Add0~57\)) # (!s_countClk(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!s_countClk(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X88_Y3_N8
\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\countClk[29]~input_o\ & ((\WideOr0~0_combout\) # ((\Add0~58_combout\ & \state.COUNT~q\)))) # (!\countClk[29]~input_o\ & (((\Add0~58_combout\ & \state.COUNT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[29]~input_o\,
	datab => \WideOr0~0_combout\,
	datac => \Add0~58_combout\,
	datad => \state.COUNT~q\,
	combout => \Selector34~0_combout\);

-- Location: FF_X88_Y3_N9
\s_countClk[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(29));

-- Location: IOIBUF_X42_Y0_N15
\countClk[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(30),
	o => \countClk[30]~input_o\);

-- Location: LCCOMB_X87_Y3_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (s_countClk(30) & (\Add0~59\ $ (GND))) # (!s_countClk(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((s_countClk(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X86_Y3_N14
\Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\countClk[30]~input_o\ & ((\WideOr0~0_combout\) # ((\state.COUNT~q\ & \Add0~60_combout\)))) # (!\countClk[30]~input_o\ & (((\state.COUNT~q\ & \Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[30]~input_o\,
	datab => \WideOr0~0_combout\,
	datac => \state.COUNT~q\,
	datad => \Add0~60_combout\,
	combout => \Selector33~0_combout\);

-- Location: FF_X86_Y3_N15
\s_countClk[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(30));

-- Location: IOIBUF_X42_Y0_N22
\countClk[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(31),
	o => \countClk[31]~input_o\);

-- Location: LCCOMB_X87_Y3_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = (s_countClk(31) & (!\Add0~61\)) # (!s_countClk(31) & ((\Add0~61\) # (GND)))
-- \Add0~63\ = CARRY((!\Add0~61\) # (!s_countClk(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(31),
	datad => VCC,
	cin => \Add0~61\,
	combout => \Add0~62_combout\,
	cout => \Add0~63\);

-- Location: LCCOMB_X86_Y3_N8
\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\WideOr0~0_combout\ & ((\countClk[31]~input_o\) # ((\Add0~62_combout\ & \state.COUNT~q\)))) # (!\WideOr0~0_combout\ & (((\Add0~62_combout\ & \state.COUNT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => \countClk[31]~input_o\,
	datac => \Add0~62_combout\,
	datad => \state.COUNT~q\,
	combout => \Selector32~0_combout\);

-- Location: FF_X86_Y3_N9
\s_countClk[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(31));

-- Location: IOIBUF_X65_Y0_N8
\countClk[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(32),
	o => \countClk[32]~input_o\);

-- Location: LCCOMB_X87_Y2_N0
\Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = (s_countClk(32) & (\Add0~63\ $ (GND))) # (!s_countClk(32) & (!\Add0~63\ & VCC))
-- \Add0~65\ = CARRY((s_countClk(32) & !\Add0~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(32),
	datad => VCC,
	cin => \Add0~63\,
	combout => \Add0~64_combout\,
	cout => \Add0~65\);

-- Location: LCCOMB_X88_Y2_N4
\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\countClk[32]~input_o\ & ((\WideOr0~0_combout\) # ((\Add0~64_combout\ & \state.COUNT~q\)))) # (!\countClk[32]~input_o\ & (((\Add0~64_combout\ & \state.COUNT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[32]~input_o\,
	datab => \WideOr0~0_combout\,
	datac => \Add0~64_combout\,
	datad => \state.COUNT~q\,
	combout => \Selector31~0_combout\);

-- Location: FF_X88_Y2_N5
\s_countClk[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(32));

-- Location: IOIBUF_X109_Y0_N8
\countClk[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(33),
	o => \countClk[33]~input_o\);

-- Location: LCCOMB_X87_Y2_N2
\Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (s_countClk(33) & (!\Add0~65\)) # (!s_countClk(33) & ((\Add0~65\) # (GND)))
-- \Add0~67\ = CARRY((!\Add0~65\) # (!s_countClk(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(33),
	datad => VCC,
	cin => \Add0~65\,
	combout => \Add0~66_combout\,
	cout => \Add0~67\);

-- Location: LCCOMB_X88_Y2_N6
\Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\countClk[33]~input_o\ & ((\WideOr0~0_combout\) # ((\state.COUNT~q\ & \Add0~66_combout\)))) # (!\countClk[33]~input_o\ & (\state.COUNT~q\ & ((\Add0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[33]~input_o\,
	datab => \state.COUNT~q\,
	datac => \WideOr0~0_combout\,
	datad => \Add0~66_combout\,
	combout => \Selector30~0_combout\);

-- Location: FF_X88_Y2_N7
\s_countClk[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(33));

-- Location: IOIBUF_X65_Y0_N15
\countClk[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(34),
	o => \countClk[34]~input_o\);

-- Location: LCCOMB_X87_Y2_N4
\Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = (s_countClk(34) & (\Add0~67\ $ (GND))) # (!s_countClk(34) & (!\Add0~67\ & VCC))
-- \Add0~69\ = CARRY((s_countClk(34) & !\Add0~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(34),
	datad => VCC,
	cin => \Add0~67\,
	combout => \Add0~68_combout\,
	cout => \Add0~69\);

-- Location: LCCOMB_X86_Y2_N16
\Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\state.COUNT~q\ & ((\Add0~68_combout\) # ((\WideOr0~0_combout\ & \countClk[34]~input_o\)))) # (!\state.COUNT~q\ & (\WideOr0~0_combout\ & (\countClk[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \WideOr0~0_combout\,
	datac => \countClk[34]~input_o\,
	datad => \Add0~68_combout\,
	combout => \Selector29~0_combout\);

-- Location: FF_X86_Y2_N17
\s_countClk[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(34));

-- Location: IOIBUF_X109_Y0_N1
\countClk[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(35),
	o => \countClk[35]~input_o\);

-- Location: LCCOMB_X87_Y2_N6
\Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~70_combout\ = (s_countClk(35) & (!\Add0~69\)) # (!s_countClk(35) & ((\Add0~69\) # (GND)))
-- \Add0~71\ = CARRY((!\Add0~69\) # (!s_countClk(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(35),
	datad => VCC,
	cin => \Add0~69\,
	combout => \Add0~70_combout\,
	cout => \Add0~71\);

-- Location: LCCOMB_X88_Y2_N20
\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\countClk[35]~input_o\ & ((\WideOr0~0_combout\) # ((\Add0~70_combout\ & \state.COUNT~q\)))) # (!\countClk[35]~input_o\ & (((\Add0~70_combout\ & \state.COUNT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[35]~input_o\,
	datab => \WideOr0~0_combout\,
	datac => \Add0~70_combout\,
	datad => \state.COUNT~q\,
	combout => \Selector28~0_combout\);

-- Location: FF_X88_Y2_N21
\s_countClk[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(35));

-- Location: IOIBUF_X56_Y0_N15
\countClk[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(36),
	o => \countClk[36]~input_o\);

-- Location: LCCOMB_X87_Y2_N8
\Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (s_countClk(36) & (\Add0~71\ $ (GND))) # (!s_countClk(36) & (!\Add0~71\ & VCC))
-- \Add0~73\ = CARRY((s_countClk(36) & !\Add0~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(36),
	datad => VCC,
	cin => \Add0~71\,
	combout => \Add0~72_combout\,
	cout => \Add0~73\);

-- Location: LCCOMB_X86_Y2_N18
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\countClk[36]~input_o\ & ((\WideOr0~0_combout\) # ((\Add0~72_combout\ & \state.COUNT~q\)))) # (!\countClk[36]~input_o\ & (\Add0~72_combout\ & ((\state.COUNT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[36]~input_o\,
	datab => \Add0~72_combout\,
	datac => \WideOr0~0_combout\,
	datad => \state.COUNT~q\,
	combout => \Selector27~0_combout\);

-- Location: FF_X86_Y2_N19
\s_countClk[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(36));

-- Location: IOIBUF_X100_Y0_N22
\countClk[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(37),
	o => \countClk[37]~input_o\);

-- Location: LCCOMB_X87_Y2_N10
\Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = (s_countClk(37) & (!\Add0~73\)) # (!s_countClk(37) & ((\Add0~73\) # (GND)))
-- \Add0~75\ = CARRY((!\Add0~73\) # (!s_countClk(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(37),
	datad => VCC,
	cin => \Add0~73\,
	combout => \Add0~74_combout\,
	cout => \Add0~75\);

-- Location: LCCOMB_X88_Y2_N22
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\countClk[37]~input_o\ & ((\WideOr0~0_combout\) # ((\state.COUNT~q\ & \Add0~74_combout\)))) # (!\countClk[37]~input_o\ & (\state.COUNT~q\ & ((\Add0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[37]~input_o\,
	datab => \state.COUNT~q\,
	datac => \WideOr0~0_combout\,
	datad => \Add0~74_combout\,
	combout => \Selector26~0_combout\);

-- Location: FF_X88_Y2_N23
\s_countClk[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(37));

-- Location: IOIBUF_X105_Y0_N1
\countClk[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(38),
	o => \countClk[38]~input_o\);

-- Location: LCCOMB_X87_Y2_N12
\Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~76_combout\ = (s_countClk(38) & (\Add0~75\ $ (GND))) # (!s_countClk(38) & (!\Add0~75\ & VCC))
-- \Add0~77\ = CARRY((s_countClk(38) & !\Add0~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(38),
	datad => VCC,
	cin => \Add0~75\,
	combout => \Add0~76_combout\,
	cout => \Add0~77\);

-- Location: LCCOMB_X86_Y2_N12
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\countClk[38]~input_o\ & ((\WideOr0~0_combout\) # ((\Add0~76_combout\ & \state.COUNT~q\)))) # (!\countClk[38]~input_o\ & (\Add0~76_combout\ & ((\state.COUNT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[38]~input_o\,
	datab => \Add0~76_combout\,
	datac => \WideOr0~0_combout\,
	datad => \state.COUNT~q\,
	combout => \Selector25~0_combout\);

-- Location: FF_X86_Y2_N13
\s_countClk[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(38));

-- Location: LCCOMB_X87_Y2_N14
\Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (s_countClk(39) & (!\Add0~77\)) # (!s_countClk(39) & ((\Add0~77\) # (GND)))
-- \Add0~79\ = CARRY((!\Add0~77\) # (!s_countClk(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(39),
	datad => VCC,
	cin => \Add0~77\,
	combout => \Add0~78_combout\,
	cout => \Add0~79\);

-- Location: IOIBUF_X107_Y0_N8
\countClk[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(39),
	o => \countClk[39]~input_o\);

-- Location: LCCOMB_X88_Y2_N28
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\Add0~78_combout\ & ((\state.COUNT~q\) # ((\WideOr0~0_combout\ & \countClk[39]~input_o\)))) # (!\Add0~78_combout\ & (\WideOr0~0_combout\ & (\countClk[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~78_combout\,
	datab => \WideOr0~0_combout\,
	datac => \countClk[39]~input_o\,
	datad => \state.COUNT~q\,
	combout => \Selector24~0_combout\);

-- Location: FF_X88_Y2_N29
\s_countClk[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(39));

-- Location: LCCOMB_X87_Y2_N16
\Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = (s_countClk(40) & (\Add0~79\ $ (GND))) # (!s_countClk(40) & (!\Add0~79\ & VCC))
-- \Add0~81\ = CARRY((s_countClk(40) & !\Add0~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(40),
	datad => VCC,
	cin => \Add0~79\,
	combout => \Add0~80_combout\,
	cout => \Add0~81\);

-- Location: IOIBUF_X100_Y0_N1
\countClk[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(40),
	o => \countClk[40]~input_o\);

-- Location: LCCOMB_X88_Y2_N2
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\Add0~80_combout\ & ((\state.COUNT~q\) # ((\WideOr0~0_combout\ & \countClk[40]~input_o\)))) # (!\Add0~80_combout\ & (\WideOr0~0_combout\ & (\countClk[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~80_combout\,
	datab => \WideOr0~0_combout\,
	datac => \countClk[40]~input_o\,
	datad => \state.COUNT~q\,
	combout => \Selector23~0_combout\);

-- Location: FF_X88_Y2_N3
\s_countClk[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(40));

-- Location: IOIBUF_X107_Y0_N1
\countClk[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(41),
	o => \countClk[41]~input_o\);

-- Location: LCCOMB_X87_Y2_N18
\Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~82_combout\ = (s_countClk(41) & (!\Add0~81\)) # (!s_countClk(41) & ((\Add0~81\) # (GND)))
-- \Add0~83\ = CARRY((!\Add0~81\) # (!s_countClk(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(41),
	datad => VCC,
	cin => \Add0~81\,
	combout => \Add0~82_combout\,
	cout => \Add0~83\);

-- Location: LCCOMB_X88_Y2_N0
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\countClk[41]~input_o\ & ((\WideOr0~0_combout\) # ((\state.COUNT~q\ & \Add0~82_combout\)))) # (!\countClk[41]~input_o\ & (((\state.COUNT~q\ & \Add0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[41]~input_o\,
	datab => \WideOr0~0_combout\,
	datac => \state.COUNT~q\,
	datad => \Add0~82_combout\,
	combout => \Selector22~0_combout\);

-- Location: FF_X88_Y2_N1
\s_countClk[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(41));

-- Location: LCCOMB_X87_Y2_N20
\Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = (s_countClk(42) & (\Add0~83\ $ (GND))) # (!s_countClk(42) & (!\Add0~83\ & VCC))
-- \Add0~85\ = CARRY((s_countClk(42) & !\Add0~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(42),
	datad => VCC,
	cin => \Add0~83\,
	combout => \Add0~84_combout\,
	cout => \Add0~85\);

-- Location: IOIBUF_X113_Y0_N8
\countClk[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(42),
	o => \countClk[42]~input_o\);

-- Location: LCCOMB_X86_Y2_N22
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\Add0~84_combout\ & ((\state.COUNT~q\) # ((\countClk[42]~input_o\ & \WideOr0~0_combout\)))) # (!\Add0~84_combout\ & (\countClk[42]~input_o\ & (\WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~84_combout\,
	datab => \countClk[42]~input_o\,
	datac => \WideOr0~0_combout\,
	datad => \state.COUNT~q\,
	combout => \Selector21~0_combout\);

-- Location: FF_X86_Y2_N23
\s_countClk[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(42));

-- Location: IOIBUF_X100_Y0_N15
\countClk[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(43),
	o => \countClk[43]~input_o\);

-- Location: LCCOMB_X87_Y2_N22
\Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = (s_countClk(43) & (!\Add0~85\)) # (!s_countClk(43) & ((\Add0~85\) # (GND)))
-- \Add0~87\ = CARRY((!\Add0~85\) # (!s_countClk(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(43),
	datad => VCC,
	cin => \Add0~85\,
	combout => \Add0~86_combout\,
	cout => \Add0~87\);

-- Location: LCCOMB_X88_Y2_N26
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\countClk[43]~input_o\ & ((\WideOr0~0_combout\) # ((\state.COUNT~q\ & \Add0~86_combout\)))) # (!\countClk[43]~input_o\ & (\state.COUNT~q\ & ((\Add0~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[43]~input_o\,
	datab => \state.COUNT~q\,
	datac => \WideOr0~0_combout\,
	datad => \Add0~86_combout\,
	combout => \Selector20~0_combout\);

-- Location: FF_X88_Y2_N27
\s_countClk[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(43));

-- Location: IOIBUF_X56_Y0_N22
\countClk[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(44),
	o => \countClk[44]~input_o\);

-- Location: LCCOMB_X87_Y2_N24
\Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~88_combout\ = (s_countClk(44) & (\Add0~87\ $ (GND))) # (!s_countClk(44) & (!\Add0~87\ & VCC))
-- \Add0~89\ = CARRY((s_countClk(44) & !\Add0~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(44),
	datad => VCC,
	cin => \Add0~87\,
	combout => \Add0~88_combout\,
	cout => \Add0~89\);

-- Location: LCCOMB_X86_Y2_N28
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\state.COUNT~q\ & ((\Add0~88_combout\) # ((\countClk[44]~input_o\ & \WideOr0~0_combout\)))) # (!\state.COUNT~q\ & (\countClk[44]~input_o\ & (\WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \countClk[44]~input_o\,
	datac => \WideOr0~0_combout\,
	datad => \Add0~88_combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X86_Y2_N29
\s_countClk[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(44));

-- Location: IOIBUF_X60_Y0_N22
\countClk[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(45),
	o => \countClk[45]~input_o\);

-- Location: LCCOMB_X87_Y2_N26
\Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = (s_countClk(45) & (!\Add0~89\)) # (!s_countClk(45) & ((\Add0~89\) # (GND)))
-- \Add0~91\ = CARRY((!\Add0~89\) # (!s_countClk(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(45),
	datad => VCC,
	cin => \Add0~89\,
	combout => \Add0~90_combout\,
	cout => \Add0~91\);

-- Location: LCCOMB_X88_Y2_N12
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\countClk[45]~input_o\ & ((\WideOr0~0_combout\) # ((\Add0~90_combout\ & \state.COUNT~q\)))) # (!\countClk[45]~input_o\ & (((\Add0~90_combout\ & \state.COUNT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[45]~input_o\,
	datab => \WideOr0~0_combout\,
	datac => \Add0~90_combout\,
	datad => \state.COUNT~q\,
	combout => \Selector18~0_combout\);

-- Location: FF_X88_Y2_N13
\s_countClk[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(45));

-- Location: IOIBUF_X65_Y0_N22
\countClk[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(46),
	o => \countClk[46]~input_o\);

-- Location: LCCOMB_X87_Y2_N28
\Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = (s_countClk(46) & (\Add0~91\ $ (GND))) # (!s_countClk(46) & (!\Add0~91\ & VCC))
-- \Add0~93\ = CARRY((s_countClk(46) & !\Add0~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(46),
	datad => VCC,
	cin => \Add0~91\,
	combout => \Add0~92_combout\,
	cout => \Add0~93\);

-- Location: LCCOMB_X86_Y2_N14
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\state.COUNT~q\ & ((\Add0~92_combout\) # ((\WideOr0~0_combout\ & \countClk[46]~input_o\)))) # (!\state.COUNT~q\ & (\WideOr0~0_combout\ & (\countClk[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \WideOr0~0_combout\,
	datac => \countClk[46]~input_o\,
	datad => \Add0~92_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X86_Y2_N15
\s_countClk[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(46));

-- Location: IOIBUF_X113_Y0_N1
\countClk[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(47),
	o => \countClk[47]~input_o\);

-- Location: LCCOMB_X87_Y2_N30
\Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~94_combout\ = (s_countClk(47) & (!\Add0~93\)) # (!s_countClk(47) & ((\Add0~93\) # (GND)))
-- \Add0~95\ = CARRY((!\Add0~93\) # (!s_countClk(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(47),
	datad => VCC,
	cin => \Add0~93\,
	combout => \Add0~94_combout\,
	cout => \Add0~95\);

-- Location: LCCOMB_X88_Y2_N18
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\countClk[47]~input_o\ & ((\WideOr0~0_combout\) # ((\state.COUNT~q\ & \Add0~94_combout\)))) # (!\countClk[47]~input_o\ & (\state.COUNT~q\ & ((\Add0~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[47]~input_o\,
	datab => \state.COUNT~q\,
	datac => \WideOr0~0_combout\,
	datad => \Add0~94_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X88_Y2_N19
\s_countClk[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(47));

-- Location: IOIBUF_X85_Y0_N22
\countClk[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(48),
	o => \countClk[48]~input_o\);

-- Location: LCCOMB_X87_Y1_N0
\Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~96_combout\ = (s_countClk(48) & (\Add0~95\ $ (GND))) # (!s_countClk(48) & (!\Add0~95\ & VCC))
-- \Add0~97\ = CARRY((s_countClk(48) & !\Add0~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(48),
	datad => VCC,
	cin => \Add0~95\,
	combout => \Add0~96_combout\,
	cout => \Add0~97\);

-- Location: LCCOMB_X86_Y1_N4
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\countClk[48]~input_o\ & ((\WideOr0~0_combout\) # ((\state.COUNT~q\ & \Add0~96_combout\)))) # (!\countClk[48]~input_o\ & (\state.COUNT~q\ & (\Add0~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[48]~input_o\,
	datab => \state.COUNT~q\,
	datac => \Add0~96_combout\,
	datad => \WideOr0~0_combout\,
	combout => \Selector15~0_combout\);

-- Location: FF_X86_Y1_N5
\s_countClk[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(48));

-- Location: IOIBUF_X96_Y0_N22
\countClk[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(49),
	o => \countClk[49]~input_o\);

-- Location: LCCOMB_X87_Y1_N2
\Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~98_combout\ = (s_countClk(49) & (!\Add0~97\)) # (!s_countClk(49) & ((\Add0~97\) # (GND)))
-- \Add0~99\ = CARRY((!\Add0~97\) # (!s_countClk(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(49),
	datad => VCC,
	cin => \Add0~97\,
	combout => \Add0~98_combout\,
	cout => \Add0~99\);

-- Location: LCCOMB_X88_Y1_N4
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\countClk[49]~input_o\ & ((\WideOr0~0_combout\) # ((\state.COUNT~q\ & \Add0~98_combout\)))) # (!\countClk[49]~input_o\ & (((\state.COUNT~q\ & \Add0~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[49]~input_o\,
	datab => \WideOr0~0_combout\,
	datac => \state.COUNT~q\,
	datad => \Add0~98_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X88_Y1_N5
\s_countClk[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(49));

-- Location: IOIBUF_X79_Y0_N22
\countClk[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(50),
	o => \countClk[50]~input_o\);

-- Location: LCCOMB_X87_Y1_N4
\Add0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~100_combout\ = (s_countClk(50) & (\Add0~99\ $ (GND))) # (!s_countClk(50) & (!\Add0~99\ & VCC))
-- \Add0~101\ = CARRY((s_countClk(50) & !\Add0~99\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(50),
	datad => VCC,
	cin => \Add0~99\,
	combout => \Add0~100_combout\,
	cout => \Add0~101\);

-- Location: LCCOMB_X86_Y1_N22
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\WideOr0~0_combout\ & ((\countClk[50]~input_o\) # ((\state.COUNT~q\ & \Add0~100_combout\)))) # (!\WideOr0~0_combout\ & (\state.COUNT~q\ & ((\Add0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[50]~input_o\,
	datad => \Add0~100_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X86_Y1_N23
\s_countClk[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(50));

-- Location: IOIBUF_X89_Y0_N22
\countClk[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(51),
	o => \countClk[51]~input_o\);

-- Location: LCCOMB_X87_Y1_N6
\Add0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~102_combout\ = (s_countClk(51) & (!\Add0~101\)) # (!s_countClk(51) & ((\Add0~101\) # (GND)))
-- \Add0~103\ = CARRY((!\Add0~101\) # (!s_countClk(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(51),
	datad => VCC,
	cin => \Add0~101\,
	combout => \Add0~102_combout\,
	cout => \Add0~103\);

-- Location: LCCOMB_X88_Y1_N6
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\countClk[51]~input_o\ & ((\WideOr0~0_combout\) # ((\state.COUNT~q\ & \Add0~102_combout\)))) # (!\countClk[51]~input_o\ & (\state.COUNT~q\ & (\Add0~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[51]~input_o\,
	datab => \state.COUNT~q\,
	datac => \Add0~102_combout\,
	datad => \WideOr0~0_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X88_Y1_N7
\s_countClk[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(51));

-- Location: IOIBUF_X62_Y0_N22
\countClk[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(52),
	o => \countClk[52]~input_o\);

-- Location: LCCOMB_X87_Y1_N8
\Add0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~104_combout\ = (s_countClk(52) & (\Add0~103\ $ (GND))) # (!s_countClk(52) & (!\Add0~103\ & VCC))
-- \Add0~105\ = CARRY((s_countClk(52) & !\Add0~103\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(52),
	datad => VCC,
	cin => \Add0~103\,
	combout => \Add0~104_combout\,
	cout => \Add0~105\);

-- Location: LCCOMB_X86_Y1_N8
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\countClk[52]~input_o\ & ((\WideOr0~0_combout\) # ((\state.COUNT~q\ & \Add0~104_combout\)))) # (!\countClk[52]~input_o\ & (\state.COUNT~q\ & (\Add0~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[52]~input_o\,
	datab => \state.COUNT~q\,
	datac => \Add0~104_combout\,
	datad => \WideOr0~0_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X86_Y1_N9
\s_countClk[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(52));

-- Location: IOIBUF_X60_Y0_N15
\countClk[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(53),
	o => \countClk[53]~input_o\);

-- Location: LCCOMB_X87_Y1_N10
\Add0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~106_combout\ = (s_countClk(53) & (!\Add0~105\)) # (!s_countClk(53) & ((\Add0~105\) # (GND)))
-- \Add0~107\ = CARRY((!\Add0~105\) # (!s_countClk(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(53),
	datad => VCC,
	cin => \Add0~105\,
	combout => \Add0~106_combout\,
	cout => \Add0~107\);

-- Location: LCCOMB_X88_Y1_N20
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\countClk[53]~input_o\ & ((\WideOr0~0_combout\) # ((\state.COUNT~q\ & \Add0~106_combout\)))) # (!\countClk[53]~input_o\ & (((\state.COUNT~q\ & \Add0~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[53]~input_o\,
	datab => \WideOr0~0_combout\,
	datac => \state.COUNT~q\,
	datad => \Add0~106_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X88_Y1_N21
\s_countClk[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(53));

-- Location: IOIBUF_X74_Y0_N15
\countClk[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(54),
	o => \countClk[54]~input_o\);

-- Location: LCCOMB_X87_Y1_N12
\Add0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~108_combout\ = (s_countClk(54) & (\Add0~107\ $ (GND))) # (!s_countClk(54) & (!\Add0~107\ & VCC))
-- \Add0~109\ = CARRY((s_countClk(54) & !\Add0~107\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(54),
	datad => VCC,
	cin => \Add0~107\,
	combout => \Add0~108_combout\,
	cout => \Add0~109\);

-- Location: LCCOMB_X86_Y1_N6
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\countClk[54]~input_o\ & ((\WideOr0~0_combout\) # ((\state.COUNT~q\ & \Add0~108_combout\)))) # (!\countClk[54]~input_o\ & (\state.COUNT~q\ & (\Add0~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[54]~input_o\,
	datab => \state.COUNT~q\,
	datac => \Add0~108_combout\,
	datad => \WideOr0~0_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X86_Y1_N7
\s_countClk[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(54));

-- Location: IOIBUF_X89_Y0_N8
\countClk[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(55),
	o => \countClk[55]~input_o\);

-- Location: LCCOMB_X87_Y1_N14
\Add0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~110_combout\ = (s_countClk(55) & (!\Add0~109\)) # (!s_countClk(55) & ((\Add0~109\) # (GND)))
-- \Add0~111\ = CARRY((!\Add0~109\) # (!s_countClk(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(55),
	datad => VCC,
	cin => \Add0~109\,
	combout => \Add0~110_combout\,
	cout => \Add0~111\);

-- Location: LCCOMB_X88_Y1_N2
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\countClk[55]~input_o\ & ((\WideOr0~0_combout\) # ((\state.COUNT~q\ & \Add0~110_combout\)))) # (!\countClk[55]~input_o\ & (((\state.COUNT~q\ & \Add0~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[55]~input_o\,
	datab => \WideOr0~0_combout\,
	datac => \state.COUNT~q\,
	datad => \Add0~110_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X88_Y1_N3
\s_countClk[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(55));

-- Location: IOIBUF_X85_Y0_N15
\countClk[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(56),
	o => \countClk[56]~input_o\);

-- Location: LCCOMB_X87_Y1_N16
\Add0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~112_combout\ = (s_countClk(56) & (\Add0~111\ $ (GND))) # (!s_countClk(56) & (!\Add0~111\ & VCC))
-- \Add0~113\ = CARRY((s_countClk(56) & !\Add0~111\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(56),
	datad => VCC,
	cin => \Add0~111\,
	combout => \Add0~112_combout\,
	cout => \Add0~113\);

-- Location: LCCOMB_X86_Y1_N24
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\WideOr0~0_combout\ & ((\countClk[56]~input_o\) # ((\state.COUNT~q\ & \Add0~112_combout\)))) # (!\WideOr0~0_combout\ & (\state.COUNT~q\ & ((\Add0~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[56]~input_o\,
	datad => \Add0~112_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X86_Y1_N25
\s_countClk[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(56));

-- Location: IOIBUF_X89_Y0_N1
\countClk[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(57),
	o => \countClk[57]~input_o\);

-- Location: LCCOMB_X87_Y1_N18
\Add0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~114_combout\ = (s_countClk(57) & (!\Add0~113\)) # (!s_countClk(57) & ((\Add0~113\) # (GND)))
-- \Add0~115\ = CARRY((!\Add0~113\) # (!s_countClk(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(57),
	datad => VCC,
	cin => \Add0~113\,
	combout => \Add0~114_combout\,
	cout => \Add0~115\);

-- Location: LCCOMB_X88_Y1_N24
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\countClk[57]~input_o\ & ((\WideOr0~0_combout\) # ((\state.COUNT~q\ & \Add0~114_combout\)))) # (!\countClk[57]~input_o\ & (((\state.COUNT~q\ & \Add0~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[57]~input_o\,
	datab => \WideOr0~0_combout\,
	datac => \state.COUNT~q\,
	datad => \Add0~114_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X88_Y1_N25
\s_countClk[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(57));

-- Location: IOIBUF_X74_Y0_N22
\countClk[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(58),
	o => \countClk[58]~input_o\);

-- Location: LCCOMB_X87_Y1_N20
\Add0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~116_combout\ = (s_countClk(58) & (\Add0~115\ $ (GND))) # (!s_countClk(58) & (!\Add0~115\ & VCC))
-- \Add0~117\ = CARRY((s_countClk(58) & !\Add0~115\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(58),
	datad => VCC,
	cin => \Add0~115\,
	combout => \Add0~116_combout\,
	cout => \Add0~117\);

-- Location: LCCOMB_X86_Y1_N10
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\countClk[58]~input_o\ & ((\WideOr0~0_combout\) # ((\state.COUNT~q\ & \Add0~116_combout\)))) # (!\countClk[58]~input_o\ & (\state.COUNT~q\ & (\Add0~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[58]~input_o\,
	datab => \state.COUNT~q\,
	datac => \Add0~116_combout\,
	datad => \WideOr0~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X86_Y1_N11
\s_countClk[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(58));

-- Location: IOIBUF_X96_Y0_N1
\countClk[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(59),
	o => \countClk[59]~input_o\);

-- Location: LCCOMB_X87_Y1_N22
\Add0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~118_combout\ = (s_countClk(59) & (!\Add0~117\)) # (!s_countClk(59) & ((\Add0~117\) # (GND)))
-- \Add0~119\ = CARRY((!\Add0~117\) # (!s_countClk(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(59),
	datad => VCC,
	cin => \Add0~117\,
	combout => \Add0~118_combout\,
	cout => \Add0~119\);

-- Location: LCCOMB_X88_Y1_N14
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\countClk[59]~input_o\ & ((\WideOr0~0_combout\) # ((\state.COUNT~q\ & \Add0~118_combout\)))) # (!\countClk[59]~input_o\ & (((\state.COUNT~q\ & \Add0~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[59]~input_o\,
	datab => \WideOr0~0_combout\,
	datac => \state.COUNT~q\,
	datad => \Add0~118_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X88_Y1_N15
\s_countClk[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(59));

-- Location: IOIBUF_X81_Y0_N22
\countClk[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(60),
	o => \countClk[60]~input_o\);

-- Location: LCCOMB_X87_Y1_N24
\Add0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~120_combout\ = (s_countClk(60) & (\Add0~119\ $ (GND))) # (!s_countClk(60) & (!\Add0~119\ & VCC))
-- \Add0~121\ = CARRY((s_countClk(60) & !\Add0~119\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(60),
	datad => VCC,
	cin => \Add0~119\,
	combout => \Add0~120_combout\,
	cout => \Add0~121\);

-- Location: LCCOMB_X86_Y1_N16
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\WideOr0~0_combout\ & ((\countClk[60]~input_o\) # ((\state.COUNT~q\ & \Add0~120_combout\)))) # (!\WideOr0~0_combout\ & (\state.COUNT~q\ & ((\Add0~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[60]~input_o\,
	datad => \Add0~120_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X86_Y1_N17
\s_countClk[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(60));

-- Location: IOIBUF_X96_Y0_N8
\countClk[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(61),
	o => \countClk[61]~input_o\);

-- Location: LCCOMB_X87_Y1_N26
\Add0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~122_combout\ = (s_countClk(61) & (!\Add0~121\)) # (!s_countClk(61) & ((\Add0~121\) # (GND)))
-- \Add0~123\ = CARRY((!\Add0~121\) # (!s_countClk(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(61),
	datad => VCC,
	cin => \Add0~121\,
	combout => \Add0~122_combout\,
	cout => \Add0~123\);

-- Location: LCCOMB_X88_Y1_N28
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\countClk[61]~input_o\ & ((\WideOr0~0_combout\) # ((\state.COUNT~q\ & \Add0~122_combout\)))) # (!\countClk[61]~input_o\ & (\state.COUNT~q\ & (\Add0~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[61]~input_o\,
	datab => \state.COUNT~q\,
	datac => \Add0~122_combout\,
	datad => \WideOr0~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X88_Y1_N29
\s_countClk[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(61));

-- Location: IOIBUF_X79_Y0_N15
\countClk[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(62),
	o => \countClk[62]~input_o\);

-- Location: LCCOMB_X87_Y1_N28
\Add0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~124_combout\ = (s_countClk(62) & (\Add0~123\ $ (GND))) # (!s_countClk(62) & (!\Add0~123\ & VCC))
-- \Add0~125\ = CARRY((s_countClk(62) & !\Add0~123\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(62),
	datad => VCC,
	cin => \Add0~123\,
	combout => \Add0~124_combout\,
	cout => \Add0~125\);

-- Location: LCCOMB_X86_Y1_N2
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\WideOr0~0_combout\ & ((\countClk[62]~input_o\) # ((\state.COUNT~q\ & \Add0~124_combout\)))) # (!\WideOr0~0_combout\ & (\state.COUNT~q\ & ((\Add0~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[62]~input_o\,
	datad => \Add0~124_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X86_Y1_N3
\s_countClk[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(62));

-- Location: IOIBUF_X81_Y0_N15
\countClk[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(63),
	o => \countClk[63]~input_o\);

-- Location: LCCOMB_X87_Y1_N30
\Add0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~126_combout\ = s_countClk(63) $ (\Add0~125\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(63),
	cin => \Add0~125\,
	combout => \Add0~126_combout\);

-- Location: LCCOMB_X86_Y1_N0
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\countClk[63]~input_o\ & ((\WideOr0~0_combout\) # ((\state.COUNT~q\ & \Add0~126_combout\)))) # (!\countClk[63]~input_o\ & (\state.COUNT~q\ & (\Add0~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[63]~input_o\,
	datab => \state.COUNT~q\,
	datac => \Add0~126_combout\,
	datad => \WideOr0~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X86_Y1_N1
\s_countClk[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(63));

-- Location: LCCOMB_X88_Y1_N22
\s_countDado[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_countDado[0]~1_combout\ = s_countDado(0) $ (\state.READDATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_countDado(0),
	datad => \state.READDATA~q\,
	combout => \s_countDado[0]~1_combout\);

-- Location: FF_X88_Y1_N23
\s_countDado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s_countDado[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countDado(0));

-- Location: LCCOMB_X88_Y3_N22
\s_countDado[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_countDado[1]~0_combout\ = s_countDado(1) $ (((s_countDado(0) & \state.READDATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_countDado(0),
	datac => s_countDado(1),
	datad => \state.READDATA~q\,
	combout => \s_countDado[1]~0_combout\);

-- Location: FF_X88_Y3_N23
\s_countDado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s_countDado[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countDado(1));

-- Location: LCCOMB_X88_Y1_N8
\s_countDado[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_countDado[2]~2_combout\ = s_countDado(2) $ (((s_countDado(0) & (s_countDado(1) & \state.READDATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(0),
	datab => s_countDado(1),
	datac => s_countDado(2),
	datad => \state.READDATA~q\,
	combout => \s_countDado[2]~2_combout\);

-- Location: FF_X88_Y1_N9
\s_countDado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \s_countDado[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countDado(2));

-- Location: LCCOMB_X88_Y2_N8
\Selector71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (s_countDado(1) & (((s_countDado(0))))) # (!s_countDado(1) & ((s_countDado(0) & ((s_countClk(40)))) # (!s_countDado(0) & (s_countClk(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(1),
	datab => s_countClk(32),
	datac => s_countDado(0),
	datad => s_countClk(40),
	combout => \Selector71~0_combout\);

-- Location: LCCOMB_X86_Y2_N4
\Selector71~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~1_combout\ = (\Selector71~0_combout\ & (((s_countClk(56))) # (!s_countDado(1)))) # (!\Selector71~0_combout\ & (s_countDado(1) & ((s_countClk(48)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector71~0_combout\,
	datab => s_countDado(1),
	datac => s_countClk(56),
	datad => s_countClk(48),
	combout => \Selector71~1_combout\);

-- Location: LCCOMB_X86_Y2_N26
\Selector71~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~2_combout\ = (s_countDado(0) & ((s_countClk(8)) # ((s_countDado(1))))) # (!s_countDado(0) & (((s_countClk(0) & !s_countDado(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(8),
	datab => s_countDado(0),
	datac => s_countClk(0),
	datad => s_countDado(1),
	combout => \Selector71~2_combout\);

-- Location: LCCOMB_X86_Y2_N20
\Selector71~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~3_combout\ = (\Selector71~2_combout\ & (((s_countClk(24)) # (!s_countDado(1))))) # (!\Selector71~2_combout\ & (s_countClk(16) & ((s_countDado(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(16),
	datab => s_countClk(24),
	datac => \Selector71~2_combout\,
	datad => s_countDado(1),
	combout => \Selector71~3_combout\);

-- Location: LCCOMB_X86_Y2_N0
\Selector71~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~4_combout\ = (\state.READDATA~q\ & ((s_countDado(2) & (!\Selector71~1_combout\)) # (!s_countDado(2) & ((!\Selector71~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(2),
	datab => \Selector71~1_combout\,
	datac => \state.READDATA~q\,
	datad => \Selector71~3_combout\,
	combout => \Selector71~4_combout\);

-- Location: FF_X86_Y2_N1
\s_Dado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector71~4_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_Dado(0));

-- Location: LCCOMB_X88_Y2_N30
\Selector70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = (s_countDado(1) & (((s_countDado(0))))) # (!s_countDado(1) & ((s_countDado(0) & (s_countClk(41))) # (!s_countDado(0) & ((s_countClk(33))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(1),
	datab => s_countClk(41),
	datac => s_countDado(0),
	datad => s_countClk(33),
	combout => \Selector70~0_combout\);

-- Location: LCCOMB_X88_Y1_N10
\Selector70~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~1_combout\ = (\Selector70~0_combout\ & ((s_countClk(57)) # ((!s_countDado(1))))) # (!\Selector70~0_combout\ & (((s_countClk(49) & s_countDado(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector70~0_combout\,
	datab => s_countClk(57),
	datac => s_countClk(49),
	datad => s_countDado(1),
	combout => \Selector70~1_combout\);

-- Location: LCCOMB_X88_Y3_N24
\Selector70~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~2_combout\ = (s_countDado(1) & ((s_countDado(0)) # ((s_countClk(17))))) # (!s_countDado(1) & (!s_countDado(0) & (s_countClk(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(1),
	datab => s_countDado(0),
	datac => s_countClk(1),
	datad => s_countClk(17),
	combout => \Selector70~2_combout\);

-- Location: LCCOMB_X88_Y3_N14
\Selector70~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~3_combout\ = (\Selector70~2_combout\ & (((s_countClk(25)) # (!s_countDado(0))))) # (!\Selector70~2_combout\ & (s_countClk(9) & (s_countDado(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(9),
	datab => \Selector70~2_combout\,
	datac => s_countDado(0),
	datad => s_countClk(25),
	combout => \Selector70~3_combout\);

-- Location: LCCOMB_X88_Y3_N26
\Selector70~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~4_combout\ = (\state.READDATA~q\ & ((s_countDado(2) & (!\Selector70~1_combout\)) # (!s_countDado(2) & ((!\Selector70~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector70~1_combout\,
	datab => s_countDado(2),
	datac => \Selector70~3_combout\,
	datad => \state.READDATA~q\,
	combout => \Selector70~4_combout\);

-- Location: FF_X88_Y3_N27
\s_Dado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector70~4_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_Dado(1));

-- Location: LCCOMB_X86_Y2_N24
\Selector69~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~2_combout\ = (s_countDado(0) & (((s_countDado(1))))) # (!s_countDado(0) & ((s_countDado(1) & ((s_countClk(18)))) # (!s_countDado(1) & (s_countClk(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(2),
	datab => s_countDado(0),
	datac => s_countClk(18),
	datad => s_countDado(1),
	combout => \Selector69~2_combout\);

-- Location: LCCOMB_X86_Y1_N28
\Selector69~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~3_combout\ = (s_countDado(0) & ((\Selector69~2_combout\ & (s_countClk(26))) # (!\Selector69~2_combout\ & ((s_countClk(10)))))) # (!s_countDado(0) & (\Selector69~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(0),
	datab => \Selector69~2_combout\,
	datac => s_countClk(26),
	datad => s_countClk(10),
	combout => \Selector69~3_combout\);

-- Location: LCCOMB_X86_Y2_N10
\Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (s_countDado(0) & (((s_countClk(42)) # (s_countDado(1))))) # (!s_countDado(0) & (s_countClk(34) & ((!s_countDado(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(34),
	datab => s_countDado(0),
	datac => s_countClk(42),
	datad => s_countDado(1),
	combout => \Selector69~0_combout\);

-- Location: LCCOMB_X86_Y1_N18
\Selector69~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~1_combout\ = (s_countDado(1) & ((\Selector69~0_combout\ & (s_countClk(58))) # (!\Selector69~0_combout\ & ((s_countClk(50)))))) # (!s_countDado(1) & (((\Selector69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(58),
	datab => s_countDado(1),
	datac => s_countClk(50),
	datad => \Selector69~0_combout\,
	combout => \Selector69~1_combout\);

-- Location: LCCOMB_X86_Y1_N14
\Selector69~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~4_combout\ = (\state.READDATA~q\ & ((s_countDado(2) & ((!\Selector69~1_combout\))) # (!s_countDado(2) & (!\Selector69~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(2),
	datab => \Selector69~3_combout\,
	datac => \state.READDATA~q\,
	datad => \Selector69~1_combout\,
	combout => \Selector69~4_combout\);

-- Location: FF_X86_Y1_N15
\s_Dado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector69~4_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_Dado(2));

-- Location: LCCOMB_X88_Y2_N24
\Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (s_countDado(0) & ((s_countClk(43)) # ((s_countDado(1))))) # (!s_countDado(0) & (((!s_countDado(1) & s_countClk(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(43),
	datab => s_countDado(0),
	datac => s_countDado(1),
	datad => s_countClk(35),
	combout => \Selector68~0_combout\);

-- Location: LCCOMB_X88_Y1_N12
\Selector68~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~1_combout\ = (\Selector68~0_combout\ & (((s_countClk(59)) # (!s_countDado(1))))) # (!\Selector68~0_combout\ & (s_countClk(51) & ((s_countDado(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(51),
	datab => \Selector68~0_combout\,
	datac => s_countClk(59),
	datad => s_countDado(1),
	combout => \Selector68~1_combout\);

-- Location: LCCOMB_X88_Y4_N28
\Selector68~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~2_combout\ = (s_countDado(1) & ((s_countClk(19)) # ((s_countDado(0))))) # (!s_countDado(1) & (((s_countClk(3) & !s_countDado(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(19),
	datab => s_countClk(3),
	datac => s_countDado(1),
	datad => s_countDado(0),
	combout => \Selector68~2_combout\);

-- Location: LCCOMB_X88_Y4_N26
\Selector68~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~3_combout\ = (s_countDado(0) & ((\Selector68~2_combout\ & (s_countClk(27))) # (!\Selector68~2_combout\ & ((s_countClk(11)))))) # (!s_countDado(0) & (((\Selector68~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(0),
	datab => s_countClk(27),
	datac => s_countClk(11),
	datad => \Selector68~2_combout\,
	combout => \Selector68~3_combout\);

-- Location: LCCOMB_X88_Y1_N18
\Selector68~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~4_combout\ = (\state.READDATA~q\ & ((s_countDado(2) & (!\Selector68~1_combout\)) # (!s_countDado(2) & ((!\Selector68~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector68~1_combout\,
	datab => s_countDado(2),
	datac => \Selector68~3_combout\,
	datad => \state.READDATA~q\,
	combout => \Selector68~4_combout\);

-- Location: FF_X88_Y1_N19
\s_Dado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector68~4_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_Dado(3));

-- Location: LCCOMB_X88_Y3_N16
\Selector67~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~2_combout\ = (s_countDado(1) & ((s_countClk(20)) # ((s_countDado(0))))) # (!s_countDado(1) & (((!s_countDado(0) & s_countClk(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(1),
	datab => s_countClk(20),
	datac => s_countDado(0),
	datad => s_countClk(4),
	combout => \Selector67~2_combout\);

-- Location: LCCOMB_X88_Y3_N6
\Selector67~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~3_combout\ = (\Selector67~2_combout\ & (((s_countClk(28)) # (!s_countDado(0))))) # (!\Selector67~2_combout\ & (s_countClk(12) & (s_countDado(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(12),
	datab => \Selector67~2_combout\,
	datac => s_countDado(0),
	datad => s_countClk(28),
	combout => \Selector67~3_combout\);

-- Location: LCCOMB_X86_Y1_N30
\Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (s_countDado(0) & (((s_countClk(44)) # (s_countDado(1))))) # (!s_countDado(0) & (s_countClk(36) & ((!s_countDado(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(36),
	datab => s_countDado(0),
	datac => s_countClk(44),
	datad => s_countDado(1),
	combout => \Selector67~0_combout\);

-- Location: LCCOMB_X86_Y1_N20
\Selector67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~1_combout\ = (\Selector67~0_combout\ & ((s_countClk(60)) # ((!s_countDado(1))))) # (!\Selector67~0_combout\ & (((s_countClk(52) & s_countDado(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector67~0_combout\,
	datab => s_countClk(60),
	datac => s_countClk(52),
	datad => s_countDado(1),
	combout => \Selector67~1_combout\);

-- Location: LCCOMB_X88_Y3_N0
\Selector67~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~4_combout\ = (\state.READDATA~q\ & ((s_countDado(2) & ((!\Selector67~1_combout\))) # (!s_countDado(2) & (!\Selector67~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector67~3_combout\,
	datab => \state.READDATA~q\,
	datac => s_countDado(2),
	datad => \Selector67~1_combout\,
	combout => \Selector67~4_combout\);

-- Location: FF_X88_Y3_N1
\s_Dado[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector67~4_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_Dado(4));

-- Location: LCCOMB_X88_Y2_N14
\Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (s_countDado(0) & (((s_countDado(1)) # (s_countClk(45))))) # (!s_countDado(0) & (s_countClk(37) & (!s_countDado(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(37),
	datab => s_countDado(0),
	datac => s_countDado(1),
	datad => s_countClk(45),
	combout => \Selector66~0_combout\);

-- Location: LCCOMB_X88_Y1_N26
\Selector66~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~1_combout\ = (\Selector66~0_combout\ & ((s_countClk(61)) # ((!s_countDado(1))))) # (!\Selector66~0_combout\ & (((s_countClk(53) & s_countDado(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(61),
	datab => s_countClk(53),
	datac => \Selector66~0_combout\,
	datad => s_countDado(1),
	combout => \Selector66~1_combout\);

-- Location: LCCOMB_X88_Y1_N0
\Selector66~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~2_combout\ = (s_countDado(0) & (s_countDado(1))) # (!s_countDado(0) & ((s_countDado(1) & (s_countClk(21))) # (!s_countDado(1) & ((s_countClk(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(0),
	datab => s_countDado(1),
	datac => s_countClk(21),
	datad => s_countClk(5),
	combout => \Selector66~2_combout\);

-- Location: LCCOMB_X88_Y1_N30
\Selector66~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~3_combout\ = (s_countDado(0) & ((\Selector66~2_combout\ & ((s_countClk(29)))) # (!\Selector66~2_combout\ & (s_countClk(13))))) # (!s_countDado(0) & (\Selector66~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(0),
	datab => \Selector66~2_combout\,
	datac => s_countClk(13),
	datad => s_countClk(29),
	combout => \Selector66~3_combout\);

-- Location: LCCOMB_X88_Y1_N16
\Selector66~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~4_combout\ = (\state.READDATA~q\ & ((s_countDado(2) & (!\Selector66~1_combout\)) # (!s_countDado(2) & ((!\Selector66~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector66~1_combout\,
	datab => s_countDado(2),
	datac => \Selector66~3_combout\,
	datad => \state.READDATA~q\,
	combout => \Selector66~4_combout\);

-- Location: FF_X88_Y1_N17
\s_Dado[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector66~4_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_Dado(5));

-- Location: LCCOMB_X86_Y2_N30
\Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (s_countDado(1) & (((s_countDado(0))))) # (!s_countDado(1) & ((s_countDado(0) & ((s_countClk(46)))) # (!s_countDado(0) & (s_countClk(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(38),
	datab => s_countDado(1),
	datac => s_countClk(46),
	datad => s_countDado(0),
	combout => \Selector65~0_combout\);

-- Location: LCCOMB_X86_Y1_N26
\Selector65~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~1_combout\ = (\Selector65~0_combout\ & (((s_countClk(62)) # (!s_countDado(1))))) # (!\Selector65~0_combout\ & (s_countClk(54) & ((s_countDado(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(54),
	datab => s_countClk(62),
	datac => \Selector65~0_combout\,
	datad => s_countDado(1),
	combout => \Selector65~1_combout\);

-- Location: LCCOMB_X88_Y4_N12
\Selector65~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~2_combout\ = (s_countDado(1) & (((s_countClk(22)) # (s_countDado(0))))) # (!s_countDado(1) & (s_countClk(6) & ((!s_countDado(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(6),
	datab => s_countClk(22),
	datac => s_countDado(1),
	datad => s_countDado(0),
	combout => \Selector65~2_combout\);

-- Location: LCCOMB_X88_Y4_N22
\Selector65~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~3_combout\ = (s_countDado(0) & ((\Selector65~2_combout\ & (s_countClk(30))) # (!\Selector65~2_combout\ & ((s_countClk(14)))))) # (!s_countDado(0) & (((\Selector65~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(0),
	datab => s_countClk(30),
	datac => s_countClk(14),
	datad => \Selector65~2_combout\,
	combout => \Selector65~3_combout\);

-- Location: LCCOMB_X86_Y1_N12
\Selector65~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~4_combout\ = (\state.READDATA~q\ & ((s_countDado(2) & (!\Selector65~1_combout\)) # (!s_countDado(2) & ((!\Selector65~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector65~1_combout\,
	datab => \Selector65~3_combout\,
	datac => \state.READDATA~q\,
	datad => s_countDado(2),
	combout => \Selector65~4_combout\);

-- Location: FF_X86_Y1_N13
\s_Dado[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector65~4_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_Dado(6));

-- Location: LCCOMB_X86_Y2_N8
\Selector64~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~2_combout\ = (s_countDado(0) & (((s_countDado(1))))) # (!s_countDado(0) & ((s_countDado(1) & ((s_countClk(23)))) # (!s_countDado(1) & (s_countClk(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(7),
	datab => s_countDado(0),
	datac => s_countClk(23),
	datad => s_countDado(1),
	combout => \Selector64~2_combout\);

-- Location: LCCOMB_X86_Y2_N6
\Selector64~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~3_combout\ = (\Selector64~2_combout\ & (((s_countClk(31)) # (!s_countDado(0))))) # (!\Selector64~2_combout\ & (s_countClk(15) & ((s_countDado(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(15),
	datab => s_countClk(31),
	datac => \Selector64~2_combout\,
	datad => s_countDado(0),
	combout => \Selector64~3_combout\);

-- Location: LCCOMB_X88_Y2_N16
\Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (s_countDado(1) & (((s_countDado(0))))) # (!s_countDado(1) & ((s_countDado(0) & (s_countClk(47))) # (!s_countDado(0) & ((s_countClk(39))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(1),
	datab => s_countClk(47),
	datac => s_countDado(0),
	datad => s_countClk(39),
	combout => \Selector64~0_combout\);

-- Location: LCCOMB_X88_Y2_N10
\Selector64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~1_combout\ = (s_countDado(1) & ((\Selector64~0_combout\ & (s_countClk(63))) # (!\Selector64~0_combout\ & ((s_countClk(55)))))) # (!s_countDado(1) & (((\Selector64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(63),
	datab => s_countClk(55),
	datac => s_countDado(1),
	datad => \Selector64~0_combout\,
	combout => \Selector64~1_combout\);

-- Location: LCCOMB_X86_Y2_N2
\Selector64~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~4_combout\ = (\state.READDATA~q\ & ((s_countDado(2) & ((!\Selector64~1_combout\))) # (!s_countDado(2) & (!\Selector64~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector64~3_combout\,
	datab => \state.READDATA~q\,
	datac => s_countDado(2),
	datad => \Selector64~1_combout\,
	combout => \Selector64~4_combout\);

-- Location: FF_X86_Y2_N3
\s_Dado[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector64~4_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_Dado(7));

-- Location: IOIBUF_X58_Y0_N8
\continue~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_continue,
	o => \continue~input_o\);

ww_o_countClk(0) <= \o_countClk[0]~output_o\;

ww_o_countClk(1) <= \o_countClk[1]~output_o\;

ww_o_countClk(2) <= \o_countClk[2]~output_o\;

ww_o_countClk(3) <= \o_countClk[3]~output_o\;

ww_o_countClk(4) <= \o_countClk[4]~output_o\;

ww_o_countClk(5) <= \o_countClk[5]~output_o\;

ww_o_countClk(6) <= \o_countClk[6]~output_o\;

ww_o_countClk(7) <= \o_countClk[7]~output_o\;

ww_o_countClk(8) <= \o_countClk[8]~output_o\;

ww_o_countClk(9) <= \o_countClk[9]~output_o\;

ww_o_countClk(10) <= \o_countClk[10]~output_o\;

ww_o_countClk(11) <= \o_countClk[11]~output_o\;

ww_o_countClk(12) <= \o_countClk[12]~output_o\;

ww_o_countClk(13) <= \o_countClk[13]~output_o\;

ww_o_countClk(14) <= \o_countClk[14]~output_o\;

ww_o_countClk(15) <= \o_countClk[15]~output_o\;

ww_o_countClk(16) <= \o_countClk[16]~output_o\;

ww_o_countClk(17) <= \o_countClk[17]~output_o\;

ww_o_countClk(18) <= \o_countClk[18]~output_o\;

ww_o_countClk(19) <= \o_countClk[19]~output_o\;

ww_o_countClk(20) <= \o_countClk[20]~output_o\;

ww_o_countClk(21) <= \o_countClk[21]~output_o\;

ww_o_countClk(22) <= \o_countClk[22]~output_o\;

ww_o_countClk(23) <= \o_countClk[23]~output_o\;

ww_o_countClk(24) <= \o_countClk[24]~output_o\;

ww_o_countClk(25) <= \o_countClk[25]~output_o\;

ww_o_countClk(26) <= \o_countClk[26]~output_o\;

ww_o_countClk(27) <= \o_countClk[27]~output_o\;

ww_o_countClk(28) <= \o_countClk[28]~output_o\;

ww_o_countClk(29) <= \o_countClk[29]~output_o\;

ww_o_countClk(30) <= \o_countClk[30]~output_o\;

ww_o_countClk(31) <= \o_countClk[31]~output_o\;

ww_o_countClk(32) <= \o_countClk[32]~output_o\;

ww_o_countClk(33) <= \o_countClk[33]~output_o\;

ww_o_countClk(34) <= \o_countClk[34]~output_o\;

ww_o_countClk(35) <= \o_countClk[35]~output_o\;

ww_o_countClk(36) <= \o_countClk[36]~output_o\;

ww_o_countClk(37) <= \o_countClk[37]~output_o\;

ww_o_countClk(38) <= \o_countClk[38]~output_o\;

ww_o_countClk(39) <= \o_countClk[39]~output_o\;

ww_o_countClk(40) <= \o_countClk[40]~output_o\;

ww_o_countClk(41) <= \o_countClk[41]~output_o\;

ww_o_countClk(42) <= \o_countClk[42]~output_o\;

ww_o_countClk(43) <= \o_countClk[43]~output_o\;

ww_o_countClk(44) <= \o_countClk[44]~output_o\;

ww_o_countClk(45) <= \o_countClk[45]~output_o\;

ww_o_countClk(46) <= \o_countClk[46]~output_o\;

ww_o_countClk(47) <= \o_countClk[47]~output_o\;

ww_o_countClk(48) <= \o_countClk[48]~output_o\;

ww_o_countClk(49) <= \o_countClk[49]~output_o\;

ww_o_countClk(50) <= \o_countClk[50]~output_o\;

ww_o_countClk(51) <= \o_countClk[51]~output_o\;

ww_o_countClk(52) <= \o_countClk[52]~output_o\;

ww_o_countClk(53) <= \o_countClk[53]~output_o\;

ww_o_countClk(54) <= \o_countClk[54]~output_o\;

ww_o_countClk(55) <= \o_countClk[55]~output_o\;

ww_o_countClk(56) <= \o_countClk[56]~output_o\;

ww_o_countClk(57) <= \o_countClk[57]~output_o\;

ww_o_countClk(58) <= \o_countClk[58]~output_o\;

ww_o_countClk(59) <= \o_countClk[59]~output_o\;

ww_o_countClk(60) <= \o_countClk[60]~output_o\;

ww_o_countClk(61) <= \o_countClk[61]~output_o\;

ww_o_countClk(62) <= \o_countClk[62]~output_o\;

ww_o_countClk(63) <= \o_countClk[63]~output_o\;

ww_dado(0) <= \dado[0]~output_o\;

ww_dado(1) <= \dado[1]~output_o\;

ww_dado(2) <= \dado[2]~output_o\;

ww_dado(3) <= \dado[3]~output_o\;

ww_dado(4) <= \dado[4]~output_o\;

ww_dado(5) <= \dado[5]~output_o\;

ww_dado(6) <= \dado[6]~output_o\;

ww_dado(7) <= \dado[7]~output_o\;

ww_next_State(0) <= \next_State[0]~output_o\;

ww_next_State(1) <= \next_State[1]~output_o\;

ww_next_State(2) <= \next_State[2]~output_o\;

ww_next_State(3) <= \next_State[3]~output_o\;
END structure;


