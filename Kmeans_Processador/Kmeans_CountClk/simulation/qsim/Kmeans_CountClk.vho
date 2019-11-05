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

-- DATE "06/29/2017 14:16:17"

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
	dado : OUT std_logic_vector(7 DOWNTO 0);
	o_countClk : OUT std_logic_vector(63 DOWNTO 0);
	next_State : OUT std_logic_vector(3 DOWNTO 0)
	);
END Kmeans_CountClk;

-- Design Ports Information
-- continue	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[0]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[1]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[3]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[4]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[6]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[7]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[3]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[4]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[5]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[6]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[7]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[8]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[9]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[10]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[11]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[12]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[13]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[14]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[15]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[16]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[17]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[18]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[19]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[20]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[21]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[22]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[23]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[24]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[25]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[26]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[27]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[28]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[29]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[30]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[31]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[32]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[33]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[34]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[35]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[36]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[37]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[38]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[39]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[40]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[41]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[42]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[43]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[44]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[45]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[46]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[47]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[48]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[49]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[50]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[51]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[52]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[53]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[54]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[55]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[56]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[57]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[58]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[59]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[60]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[61]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[62]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_countClk[63]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_State[0]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_State[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_State[2]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_State[3]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[2]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[4]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[5]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[6]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[7]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[8]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[9]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[10]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[11]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[12]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[13]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[14]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[15]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[16]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[17]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[18]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[19]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[20]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[21]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[22]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[23]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[24]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[25]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[26]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[27]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[28]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[29]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[30]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[31]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[32]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[33]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[34]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[35]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[36]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[37]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[38]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[39]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[40]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[41]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[42]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[43]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[44]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[45]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[46]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[47]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[48]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[49]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[50]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[51]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[52]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[53]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[54]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[55]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[56]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[57]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[58]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[59]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[60]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[61]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[62]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- countClk[63]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nrst	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_Count	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readDone	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_MemoryInitialize	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_dado : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_countClk : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_next_State : std_logic_vector(3 DOWNTO 0);
SIGNAL \state.IDLE~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \continue~input_o\ : std_logic;
SIGNAL \dado[0]~output_o\ : std_logic;
SIGNAL \dado[1]~output_o\ : std_logic;
SIGNAL \dado[2]~output_o\ : std_logic;
SIGNAL \dado[3]~output_o\ : std_logic;
SIGNAL \dado[4]~output_o\ : std_logic;
SIGNAL \dado[5]~output_o\ : std_logic;
SIGNAL \dado[6]~output_o\ : std_logic;
SIGNAL \dado[7]~output_o\ : std_logic;
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
SIGNAL \next_State[0]~output_o\ : std_logic;
SIGNAL \next_State[1]~output_o\ : std_logic;
SIGNAL \next_State[2]~output_o\ : std_logic;
SIGNAL \next_State[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \en_Count~input_o\ : std_logic;
SIGNAL \nrst~input_o\ : std_logic;
SIGNAL \state.RESET~4_combout\ : std_logic;
SIGNAL \state.READDATA~1_combout\ : std_logic;
SIGNAL \readDone~input_o\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \state_fut.WAITDATA2~q\ : std_logic;
SIGNAL \state.IDLE~0_combout\ : std_logic;
SIGNAL \state.IDLE~0clkctrl_outclk\ : std_logic;
SIGNAL \state.WAITDATA2~q\ : std_logic;
SIGNAL \state_fut~8_combout\ : std_logic;
SIGNAL \state_fut.READDATA~q\ : std_logic;
SIGNAL \state.READDATA~3_combout\ : std_logic;
SIGNAL \state.READDATA~0_combout\ : std_logic;
SIGNAL \state.READDATA~_emulated_q\ : std_logic;
SIGNAL \state.READDATA~2_combout\ : std_logic;
SIGNAL \en_MemoryInitialize~input_o\ : std_logic;
SIGNAL \state.RESET~1_combout\ : std_logic;
SIGNAL \state_fut.RESET~feeder_combout\ : std_logic;
SIGNAL \state_fut.RESET~q\ : std_logic;
SIGNAL \state.RESET~3_combout\ : std_logic;
SIGNAL \state.RESET~0_combout\ : std_logic;
SIGNAL \state.RESET~_emulated_q\ : std_logic;
SIGNAL \state.RESET~2_combout\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \state_fut.IDLE~q\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \state_fut.COUNT~q\ : std_logic;
SIGNAL \state.COUNT~feeder_combout\ : std_logic;
SIGNAL \state.COUNT~q\ : std_logic;
SIGNAL \countClk[14]~input_o\ : std_logic;
SIGNAL \countClk[12]~input_o\ : std_logic;
SIGNAL \countClk[11]~input_o\ : std_logic;
SIGNAL \countClk[10]~input_o\ : std_logic;
SIGNAL \countClk[9]~input_o\ : std_logic;
SIGNAL \countClk[8]~input_o\ : std_logic;
SIGNAL \countClk[3]~input_o\ : std_logic;
SIGNAL \countClk[2]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \countClk[0]~input_o\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \Selector63~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \countClk[1]~input_o\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \countClk[4]~input_o\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \countClk[5]~input_o\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \countClk[6]~input_o\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \countClk[7]~input_o\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \countClk[13]~input_o\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \countClk[15]~input_o\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \countClk[16]~input_o\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \s_countDado[0]~1_combout\ : std_logic;
SIGNAL \s_countDado[1]~0_combout\ : std_logic;
SIGNAL \countClk[24]~input_o\ : std_logic;
SIGNAL \countClk[22]~input_o\ : std_logic;
SIGNAL \countClk[21]~input_o\ : std_logic;
SIGNAL \countClk[18]~input_o\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \countClk[17]~input_o\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \countClk[19]~input_o\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \countClk[20]~input_o\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \countClk[23]~input_o\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Selector71~2_combout\ : std_logic;
SIGNAL \Selector71~3_combout\ : std_logic;
SIGNAL \countClk[56]~input_o\ : std_logic;
SIGNAL \countClk[55]~input_o\ : std_logic;
SIGNAL \countClk[54]~input_o\ : std_logic;
SIGNAL \countClk[53]~input_o\ : std_logic;
SIGNAL \countClk[52]~input_o\ : std_logic;
SIGNAL \countClk[51]~input_o\ : std_logic;
SIGNAL \countClk[50]~input_o\ : std_logic;
SIGNAL \countClk[49]~input_o\ : std_logic;
SIGNAL \countClk[48]~input_o\ : std_logic;
SIGNAL \countClk[47]~input_o\ : std_logic;
SIGNAL \countClk[46]~input_o\ : std_logic;
SIGNAL \countClk[45]~input_o\ : std_logic;
SIGNAL \countClk[44]~input_o\ : std_logic;
SIGNAL \countClk[43]~input_o\ : std_logic;
SIGNAL \countClk[42]~input_o\ : std_logic;
SIGNAL \countClk[41]~input_o\ : std_logic;
SIGNAL \countClk[40]~input_o\ : std_logic;
SIGNAL \countClk[39]~input_o\ : std_logic;
SIGNAL \countClk[38]~input_o\ : std_logic;
SIGNAL \countClk[37]~input_o\ : std_logic;
SIGNAL \countClk[36]~input_o\ : std_logic;
SIGNAL \countClk[34]~input_o\ : std_logic;
SIGNAL \countClk[33]~input_o\ : std_logic;
SIGNAL \countClk[32]~input_o\ : std_logic;
SIGNAL \countClk[31]~input_o\ : std_logic;
SIGNAL \countClk[27]~input_o\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \countClk[25]~input_o\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \countClk[26]~input_o\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \countClk[28]~input_o\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \countClk[29]~input_o\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \countClk[30]~input_o\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Add0~63\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Add0~65\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Add0~69\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \countClk[35]~input_o\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Add0~71\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Add0~73\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Add0~75\ : std_logic;
SIGNAL \Add0~76_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Add0~79\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Add0~81\ : std_logic;
SIGNAL \Add0~82_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Add0~83\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Add0~85\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~88_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Add0~89\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Add0~91\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Add0~93\ : std_logic;
SIGNAL \Add0~94_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Add0~95\ : std_logic;
SIGNAL \Add0~96_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~98_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Add0~99\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Add0~101\ : std_logic;
SIGNAL \Add0~102_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add0~103\ : std_logic;
SIGNAL \Add0~104_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add0~105\ : std_logic;
SIGNAL \Add0~106_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~108_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add0~109\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add0~111\ : std_logic;
SIGNAL \Add0~112_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \Selector71~1_combout\ : std_logic;
SIGNAL \s_countDado[2]~2_combout\ : std_logic;
SIGNAL \Selector71~4_combout\ : std_logic;
SIGNAL \Selector70~2_combout\ : std_logic;
SIGNAL \Selector70~3_combout\ : std_logic;
SIGNAL \countClk[57]~input_o\ : std_logic;
SIGNAL \Add0~113\ : std_logic;
SIGNAL \Add0~114_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \Selector70~1_combout\ : std_logic;
SIGNAL \Selector70~4_combout\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \countClk[58]~input_o\ : std_logic;
SIGNAL \Add0~115\ : std_logic;
SIGNAL \Add0~116_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector69~1_combout\ : std_logic;
SIGNAL \Selector69~2_combout\ : std_logic;
SIGNAL \Selector69~3_combout\ : std_logic;
SIGNAL \Selector69~4_combout\ : std_logic;
SIGNAL \countClk[59]~input_o\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~118_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \Selector68~1_combout\ : std_logic;
SIGNAL \Selector68~2_combout\ : std_logic;
SIGNAL \Selector68~3_combout\ : std_logic;
SIGNAL \Selector68~4_combout\ : std_logic;
SIGNAL \Selector67~2_combout\ : std_logic;
SIGNAL \Selector67~3_combout\ : std_logic;
SIGNAL \countClk[60]~input_o\ : std_logic;
SIGNAL \Add0~119\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \Selector67~1_combout\ : std_logic;
SIGNAL \Selector67~4_combout\ : std_logic;
SIGNAL \Selector66~2_combout\ : std_logic;
SIGNAL \Selector66~3_combout\ : std_logic;
SIGNAL \countClk[61]~input_o\ : std_logic;
SIGNAL \Add0~121\ : std_logic;
SIGNAL \Add0~122_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \Selector66~1_combout\ : std_logic;
SIGNAL \Selector66~4_combout\ : std_logic;
SIGNAL \Selector65~2_combout\ : std_logic;
SIGNAL \Selector65~3_combout\ : std_logic;
SIGNAL \countClk[62]~input_o\ : std_logic;
SIGNAL \Add0~123\ : std_logic;
SIGNAL \Add0~124_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \Selector65~1_combout\ : std_logic;
SIGNAL \Selector65~4_combout\ : std_logic;
SIGNAL \countClk[63]~input_o\ : std_logic;
SIGNAL \Add0~125\ : std_logic;
SIGNAL \Add0~126_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \Selector64~1_combout\ : std_logic;
SIGNAL \Selector64~2_combout\ : std_logic;
SIGNAL \Selector64~3_combout\ : std_logic;
SIGNAL \Selector64~4_combout\ : std_logic;
SIGNAL s_countDado : std_logic_vector(2 DOWNTO 0);
SIGNAL s_countClk : std_logic_vector(63 DOWNTO 0);
SIGNAL s_Dado : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_state.IDLE~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_state.RESET~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.READDATA~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.WAITDATA2~q\ : std_logic;

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
dado <= ww_dado;
o_countClk <= ww_o_countClk;
next_State <= ww_next_State;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\state.IDLE~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \state.IDLE~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\ALT_INV_state.IDLE~0clkctrl_outclk\ <= NOT \state.IDLE~0clkctrl_outclk\;
\ALT_INV_state.RESET~0_combout\ <= NOT \state.RESET~0_combout\;
\ALT_INV_state.READDATA~0_combout\ <= NOT \state.READDATA~0_combout\;
\ALT_INV_state.WAITDATA2~q\ <= NOT \state.WAITDATA2~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y66_N23
\dado[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_Dado(0),
	devoe => ww_devoe,
	o => \dado[0]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\dado[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_Dado(1),
	devoe => ww_devoe,
	o => \dado[1]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\dado[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_Dado(2),
	devoe => ww_devoe,
	o => \dado[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\dado[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_Dado(3),
	devoe => ww_devoe,
	o => \dado[3]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\dado[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_Dado(4),
	devoe => ww_devoe,
	o => \dado[4]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\dado[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_Dado(5),
	devoe => ww_devoe,
	o => \dado[5]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\dado[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_Dado(6),
	devoe => ww_devoe,
	o => \dado[6]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\dado[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_Dado(7),
	devoe => ww_devoe,
	o => \dado[7]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
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

-- Location: IOOBUF_X7_Y73_N16
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

-- Location: IOOBUF_X0_Y35_N16
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

-- Location: IOOBUF_X0_Y62_N23
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

-- Location: IOOBUF_X0_Y64_N2
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

-- Location: IOOBUF_X0_Y68_N9
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

-- Location: IOOBUF_X0_Y63_N16
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

-- Location: IOOBUF_X0_Y29_N16
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

-- Location: IOOBUF_X0_Y67_N16
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

-- Location: IOOBUF_X0_Y67_N23
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

-- Location: IOOBUF_X3_Y73_N23
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

-- Location: IOOBUF_X0_Y58_N16
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

-- Location: IOOBUF_X11_Y73_N23
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

-- Location: IOOBUF_X0_Y62_N16
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

-- Location: IOOBUF_X1_Y73_N2
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

-- Location: IOOBUF_X9_Y73_N9
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

-- Location: IOOBUF_X0_Y63_N23
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

-- Location: IOOBUF_X31_Y73_N9
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

-- Location: IOOBUF_X25_Y73_N16
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

-- Location: IOOBUF_X0_Y59_N16
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

-- Location: IOOBUF_X18_Y73_N16
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

-- Location: IOOBUF_X0_Y68_N16
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

-- Location: IOOBUF_X0_Y57_N16
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

-- Location: IOOBUF_X0_Y34_N23
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

-- Location: IOOBUF_X0_Y59_N23
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

-- Location: IOOBUF_X18_Y73_N23
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

-- Location: IOOBUF_X0_Y61_N23
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

-- Location: IOOBUF_X27_Y73_N16
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

-- Location: IOOBUF_X13_Y73_N23
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

-- Location: IOOBUF_X0_Y60_N16
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

-- Location: IOOBUF_X0_Y57_N23
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

-- Location: IOOBUF_X0_Y53_N9
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

-- Location: IOOBUF_X0_Y27_N23
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

-- Location: IOOBUF_X0_Y46_N23
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

-- Location: IOOBUF_X0_Y26_N16
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

-- Location: IOOBUF_X13_Y73_N16
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

-- Location: IOOBUF_X31_Y73_N2
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

-- Location: IOOBUF_X0_Y44_N9
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

-- Location: IOOBUF_X0_Y28_N16
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

-- Location: IOOBUF_X0_Y50_N16
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

-- Location: IOOBUF_X27_Y73_N23
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

-- Location: IOOBUF_X0_Y34_N2
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

-- Location: IOOBUF_X0_Y33_N16
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

-- Location: IOOBUF_X0_Y33_N23
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

-- Location: IOOBUF_X0_Y49_N9
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

-- Location: IOOBUF_X0_Y53_N2
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

-- Location: IOOBUF_X0_Y34_N9
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

-- Location: IOOBUF_X20_Y73_N23
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

-- Location: IOOBUF_X0_Y54_N9
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

-- Location: IOOBUF_X0_Y52_N16
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

-- Location: IOOBUF_X0_Y55_N16
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

-- Location: IOOBUF_X0_Y30_N9
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

-- Location: IOOBUF_X0_Y27_N16
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

-- Location: IOOBUF_X0_Y55_N23
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

-- Location: IOOBUF_X0_Y48_N9
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

-- Location: IOOBUF_X0_Y49_N2
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

-- Location: IOOBUF_X0_Y45_N16
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

-- Location: IOOBUF_X0_Y45_N23
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

-- Location: IOOBUF_X0_Y32_N23
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

-- Location: IOOBUF_X0_Y31_N16
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

-- Location: IOOBUF_X0_Y30_N2
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

-- Location: IOOBUF_X0_Y55_N9
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

-- Location: IOOBUF_X0_Y52_N23
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

-- Location: IOOBUF_X0_Y46_N16
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

-- Location: IOOBUF_X115_Y65_N16
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

-- Location: IOOBUF_X58_Y73_N23
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

-- Location: IOOBUF_X67_Y0_N9
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

-- Location: IOOBUF_X115_Y30_N9
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

-- Location: IOIBUF_X0_Y28_N22
\en_Count~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_Count,
	o => \en_Count~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\nrst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nrst,
	o => \nrst~input_o\);

-- Location: LCCOMB_X1_Y36_N18
\state.RESET~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.RESET~4_combout\ = (\en_Count~input_o\ & \nrst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en_Count~input_o\,
	datad => \nrst~input_o\,
	combout => \state.RESET~4_combout\);

-- Location: LCCOMB_X5_Y55_N28
\state.READDATA~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.READDATA~1_combout\ = (\nrst~input_o\ & ((\state.RESET~4_combout\) # (\state.READDATA~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.RESET~4_combout\,
	datac => \nrst~input_o\,
	datad => \state.READDATA~1_combout\,
	combout => \state.READDATA~1_combout\);

-- Location: IOIBUF_X56_Y73_N1
\readDone~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_readDone,
	o => \readDone~input_o\);

-- Location: LCCOMB_X6_Y55_N8
\Selector75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\state.READDATA~2_combout\) # ((!\readDone~input_o\ & \state.WAITDATA2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.READDATA~2_combout\,
	datac => \readDone~input_o\,
	datad => \state.WAITDATA2~q\,
	combout => \Selector75~0_combout\);

-- Location: FF_X6_Y55_N9
\state_fut.WAITDATA2\ : dffeas
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
	q => \state_fut.WAITDATA2~q\);

-- Location: LCCOMB_X1_Y36_N16
\state.IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.IDLE~0_combout\ = (\en_Count~input_o\) # (!\nrst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en_Count~input_o\,
	datad => \nrst~input_o\,
	combout => \state.IDLE~0_combout\);

-- Location: CLKCTRL_G0
\state.IDLE~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \state.IDLE~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \state.IDLE~0clkctrl_outclk\);

-- Location: FF_X3_Y55_N9
\state.WAITDATA2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state_fut.WAITDATA2~q\,
	clrn => \ALT_INV_state.IDLE~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WAITDATA2~q\);

-- Location: LCCOMB_X6_Y55_N26
\state_fut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~8_combout\ = (\readDone~input_o\ & \state.WAITDATA2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \readDone~input_o\,
	datad => \state.WAITDATA2~q\,
	combout => \state_fut~8_combout\);

-- Location: FF_X6_Y55_N27
\state_fut.READDATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \state_fut~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_fut.READDATA~q\);

-- Location: LCCOMB_X5_Y55_N0
\state.READDATA~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.READDATA~3_combout\ = \state.READDATA~1_combout\ $ (\state_fut.READDATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.READDATA~1_combout\,
	datad => \state_fut.READDATA~q\,
	combout => \state.READDATA~3_combout\);

-- Location: LCCOMB_X5_Y55_N12
\state.READDATA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.READDATA~0_combout\ = (\state.RESET~4_combout\) # (!\nrst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.RESET~4_combout\,
	datac => \nrst~input_o\,
	combout => \state.READDATA~0_combout\);

-- Location: FF_X5_Y55_N1
\state.READDATA~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.READDATA~3_combout\,
	clrn => \ALT_INV_state.READDATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.READDATA~_emulated_q\);

-- Location: LCCOMB_X5_Y55_N6
\state.READDATA~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.READDATA~2_combout\ = (\nrst~input_o\ & ((\state.RESET~4_combout\) # (\state.READDATA~1_combout\ $ (\state.READDATA~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.RESET~4_combout\,
	datab => \state.READDATA~1_combout\,
	datac => \nrst~input_o\,
	datad => \state.READDATA~_emulated_q\,
	combout => \state.READDATA~2_combout\);

-- Location: IOIBUF_X56_Y73_N8
\en_MemoryInitialize~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_MemoryInitialize,
	o => \en_MemoryInitialize~input_o\);

-- Location: LCCOMB_X5_Y55_N10
\state.RESET~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.RESET~1_combout\ = (!\state.RESET~4_combout\ & ((\state.RESET~1_combout\) # (!\nrst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.RESET~4_combout\,
	datac => \nrst~input_o\,
	datad => \state.RESET~1_combout\,
	combout => \state.RESET~1_combout\);

-- Location: LCCOMB_X5_Y56_N16
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

-- Location: FF_X5_Y56_N17
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

-- Location: LCCOMB_X5_Y55_N18
\state.RESET~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.RESET~3_combout\ = \state.RESET~1_combout\ $ (!\state_fut.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.RESET~1_combout\,
	datad => \state_fut.RESET~q\,
	combout => \state.RESET~3_combout\);

-- Location: LCCOMB_X5_Y55_N14
\state.RESET~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.RESET~0_combout\ = (\state.RESET~4_combout\) # (!\nrst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.RESET~4_combout\,
	datac => \nrst~input_o\,
	combout => \state.RESET~0_combout\);

-- Location: FF_X5_Y55_N19
\state.RESET~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.RESET~3_combout\,
	clrn => \ALT_INV_state.RESET~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.RESET~_emulated_q\);

-- Location: LCCOMB_X5_Y55_N20
\state.RESET~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.RESET~2_combout\ = (!\state.RESET~4_combout\ & ((\state.RESET~1_combout\ $ (\state.RESET~_emulated_q\)) # (!\nrst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.RESET~1_combout\,
	datab => \nrst~input_o\,
	datac => \state.RESET~4_combout\,
	datad => \state.RESET~_emulated_q\,
	combout => \state.RESET~2_combout\);

-- Location: LCCOMB_X7_Y55_N2
\Selector73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (\state.RESET~2_combout\) # ((!\en_MemoryInitialize~input_o\ & \state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_MemoryInitialize~input_o\,
	datac => \state.IDLE~q\,
	datad => \state.RESET~2_combout\,
	combout => \Selector73~0_combout\);

-- Location: FF_X7_Y55_N3
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

-- Location: FF_X4_Y55_N7
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state_fut.IDLE~q\,
	clrn => \ALT_INV_state.IDLE~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: LCCOMB_X7_Y55_N8
\Selector74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (\state.COUNT~q\) # ((\en_MemoryInitialize~input_o\ & \state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_MemoryInitialize~input_o\,
	datac => \state.IDLE~q\,
	datad => \state.COUNT~q\,
	combout => \Selector74~0_combout\);

-- Location: FF_X7_Y55_N9
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

-- Location: LCCOMB_X4_Y55_N16
\state.COUNT~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.COUNT~feeder_combout\ = \state_fut.COUNT~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_fut.COUNT~q\,
	combout => \state.COUNT~feeder_combout\);

-- Location: FF_X4_Y55_N17
\state.COUNT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.COUNT~feeder_combout\,
	clrn => \ALT_INV_state.IDLE~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.COUNT~q\);

-- Location: IOIBUF_X0_Y50_N22
\countClk[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(14),
	o => \countClk[14]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\countClk[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(12),
	o => \countClk[12]~input_o\);

-- Location: IOIBUF_X0_Y19_N1
\countClk[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(11),
	o => \countClk[11]~input_o\);

-- Location: IOIBUF_X13_Y73_N8
\countClk[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(10),
	o => \countClk[10]~input_o\);

-- Location: IOIBUF_X9_Y73_N1
\countClk[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(9),
	o => \countClk[9]~input_o\);

-- Location: IOIBUF_X0_Y42_N8
\countClk[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(8),
	o => \countClk[8]~input_o\);

-- Location: IOIBUF_X25_Y73_N22
\countClk[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(3),
	o => \countClk[3]~input_o\);

-- Location: IOIBUF_X11_Y73_N15
\countClk[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(2),
	o => \countClk[2]~input_o\);

-- Location: LCCOMB_X3_Y58_N0
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

-- Location: IOIBUF_X5_Y73_N8
\countClk[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(0),
	o => \countClk[0]~input_o\);

-- Location: LCCOMB_X4_Y55_N6
\Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (\state.COUNT~q\) # ((!\state.IDLE~q\ & !\state.READDATA~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.COUNT~q\,
	datac => \state.IDLE~q\,
	datad => \state.READDATA~2_combout\,
	combout => \Selector63~0_combout\);

-- Location: LCCOMB_X4_Y58_N20
\Selector63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector63~1_combout\ = (\Add0~0_combout\ & ((\state.COUNT~q\) # ((\countClk[0]~input_o\ & !\Selector63~0_combout\)))) # (!\Add0~0_combout\ & (((\countClk[0]~input_o\ & !\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[0]~input_o\,
	datad => \Selector63~0_combout\,
	combout => \Selector63~1_combout\);

-- Location: FF_X3_Y58_N25
\s_countClk[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Selector63~1_combout\,
	sload => VCC,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(0));

-- Location: LCCOMB_X3_Y58_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (s_countClk(1) & (!\Add0~1\)) # (!s_countClk(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!s_countClk(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: IOIBUF_X7_Y73_N22
\countClk[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(1),
	o => \countClk[1]~input_o\);

-- Location: LCCOMB_X4_Y58_N30
\Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (\Add0~2_combout\ & ((\state.COUNT~q\) # ((\countClk[1]~input_o\ & !\Selector63~0_combout\)))) # (!\Add0~2_combout\ & (((\countClk[1]~input_o\ & !\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[1]~input_o\,
	datad => \Selector63~0_combout\,
	combout => \Selector62~0_combout\);

-- Location: FF_X3_Y58_N21
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
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(1));

-- Location: LCCOMB_X3_Y58_N4
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

-- Location: LCCOMB_X4_Y58_N16
\Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\countClk[2]~input_o\ & (((\state.COUNT~q\ & \Add0~4_combout\)) # (!\Selector63~0_combout\))) # (!\countClk[2]~input_o\ & (\state.COUNT~q\ & (\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[2]~input_o\,
	datab => \state.COUNT~q\,
	datac => \Add0~4_combout\,
	datad => \Selector63~0_combout\,
	combout => \Selector61~0_combout\);

-- Location: FF_X3_Y58_N17
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
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(2));

-- Location: LCCOMB_X3_Y58_N6
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

-- Location: LCCOMB_X4_Y58_N22
\Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (\state.COUNT~q\ & ((\Add0~6_combout\) # ((\countClk[3]~input_o\ & !\Selector63~0_combout\)))) # (!\state.COUNT~q\ & (\countClk[3]~input_o\ & ((!\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \countClk[3]~input_o\,
	datac => \Add0~6_combout\,
	datad => \Selector63~0_combout\,
	combout => \Selector60~0_combout\);

-- Location: FF_X3_Y58_N9
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
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(3));

-- Location: LCCOMB_X3_Y58_N8
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

-- Location: IOIBUF_X0_Y66_N15
\countClk[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(4),
	o => \countClk[4]~input_o\);

-- Location: LCCOMB_X4_Y58_N4
\Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\Add0~8_combout\ & ((\state.COUNT~q\) # ((\countClk[4]~input_o\ & !\Selector63~0_combout\)))) # (!\Add0~8_combout\ & (((\countClk[4]~input_o\ & !\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[4]~input_o\,
	datad => \Selector63~0_combout\,
	combout => \Selector59~0_combout\);

-- Location: FF_X3_Y58_N31
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
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(4));

-- Location: LCCOMB_X3_Y58_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (s_countClk(5) & (!\Add0~9\)) # (!s_countClk(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!s_countClk(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: IOIBUF_X0_Y18_N22
\countClk[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(5),
	o => \countClk[5]~input_o\);

-- Location: LCCOMB_X4_Y58_N14
\Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (\Add0~10_combout\ & ((\state.COUNT~q\) # ((\countClk[5]~input_o\ & !\Selector63~0_combout\)))) # (!\Add0~10_combout\ & (((\countClk[5]~input_o\ & !\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[5]~input_o\,
	datad => \Selector63~0_combout\,
	combout => \Selector58~0_combout\);

-- Location: FF_X3_Y58_N15
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
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(5));

-- Location: LCCOMB_X3_Y58_N12
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

-- Location: IOIBUF_X5_Y73_N1
\countClk[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(6),
	o => \countClk[6]~input_o\);

-- Location: LCCOMB_X4_Y58_N12
\Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\Add0~12_combout\ & ((\state.COUNT~q\) # ((\countClk[6]~input_o\ & !\Selector63~0_combout\)))) # (!\Add0~12_combout\ & (((\countClk[6]~input_o\ & !\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[6]~input_o\,
	datad => \Selector63~0_combout\,
	combout => \Selector57~0_combout\);

-- Location: FF_X3_Y58_N5
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
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(6));

-- Location: LCCOMB_X3_Y58_N14
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

-- Location: IOIBUF_X11_Y73_N8
\countClk[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(7),
	o => \countClk[7]~input_o\);

-- Location: LCCOMB_X4_Y58_N2
\Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\Add0~14_combout\ & ((\state.COUNT~q\) # ((\countClk[7]~input_o\ & !\Selector63~0_combout\)))) # (!\Add0~14_combout\ & (((\countClk[7]~input_o\ & !\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[7]~input_o\,
	datad => \Selector63~0_combout\,
	combout => \Selector56~0_combout\);

-- Location: FF_X3_Y58_N3
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
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(7));

-- Location: LCCOMB_X3_Y58_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (s_countClk(8) & (\Add0~15\ $ (GND))) # (!s_countClk(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((s_countClk(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X4_Y58_N28
\Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\state.COUNT~q\ & ((\Add0~16_combout\) # ((\countClk[8]~input_o\ & !\Selector63~0_combout\)))) # (!\state.COUNT~q\ & (\countClk[8]~input_o\ & ((!\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \countClk[8]~input_o\,
	datac => \Add0~16_combout\,
	datad => \Selector63~0_combout\,
	combout => \Selector55~0_combout\);

-- Location: FF_X3_Y58_N27
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
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(8));

-- Location: LCCOMB_X3_Y58_N18
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

-- Location: LCCOMB_X4_Y58_N6
\Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\countClk[9]~input_o\ & (((\Add0~18_combout\ & \state.COUNT~q\)) # (!\Selector63~0_combout\))) # (!\countClk[9]~input_o\ & (\Add0~18_combout\ & (\state.COUNT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[9]~input_o\,
	datab => \Add0~18_combout\,
	datac => \state.COUNT~q\,
	datad => \Selector63~0_combout\,
	combout => \Selector54~0_combout\);

-- Location: FF_X3_Y58_N29
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
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(9));

-- Location: LCCOMB_X3_Y58_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (s_countClk(10) & (\Add0~19\ $ (GND))) # (!s_countClk(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((s_countClk(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X4_Y58_N24
\Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\countClk[10]~input_o\ & (((\Add0~20_combout\ & \state.COUNT~q\)) # (!\Selector63~0_combout\))) # (!\countClk[10]~input_o\ & (\Add0~20_combout\ & (\state.COUNT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[10]~input_o\,
	datab => \Add0~20_combout\,
	datac => \state.COUNT~q\,
	datad => \Selector63~0_combout\,
	combout => \Selector53~0_combout\);

-- Location: FF_X3_Y58_N13
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
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(10));

-- Location: LCCOMB_X3_Y58_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (s_countClk(11) & (!\Add0~21\)) # (!s_countClk(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!s_countClk(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X4_Y58_N10
\Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\countClk[11]~input_o\ & (((\Add0~22_combout\ & \state.COUNT~q\)) # (!\Selector63~0_combout\))) # (!\countClk[11]~input_o\ & (\Add0~22_combout\ & (\state.COUNT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[11]~input_o\,
	datab => \Add0~22_combout\,
	datac => \state.COUNT~q\,
	datad => \Selector63~0_combout\,
	combout => \Selector52~0_combout\);

-- Location: FF_X3_Y58_N19
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
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(11));

-- Location: LCCOMB_X3_Y58_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (s_countClk(12) & (\Add0~23\ $ (GND))) # (!s_countClk(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((s_countClk(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X4_Y58_N0
\Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\countClk[12]~input_o\ & (((\Add0~24_combout\ & \state.COUNT~q\)) # (!\Selector63~0_combout\))) # (!\countClk[12]~input_o\ & (\Add0~24_combout\ & (\state.COUNT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[12]~input_o\,
	datab => \Add0~24_combout\,
	datac => \state.COUNT~q\,
	datad => \Selector63~0_combout\,
	combout => \Selector51~0_combout\);

-- Location: FF_X3_Y58_N7
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
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(12));

-- Location: LCCOMB_X3_Y58_N26
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

-- Location: IOIBUF_X11_Y73_N1
\countClk[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(13),
	o => \countClk[13]~input_o\);

-- Location: LCCOMB_X4_Y58_N18
\Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\Add0~26_combout\ & ((\state.COUNT~q\) # ((\countClk[13]~input_o\ & !\Selector63~0_combout\)))) # (!\Add0~26_combout\ & (\countClk[13]~input_o\ & ((!\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \countClk[13]~input_o\,
	datac => \state.COUNT~q\,
	datad => \Selector63~0_combout\,
	combout => \Selector50~0_combout\);

-- Location: FF_X3_Y58_N1
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
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(13));

-- Location: LCCOMB_X3_Y58_N28
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

-- Location: LCCOMB_X4_Y58_N8
\Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\countClk[14]~input_o\ & (((\Add0~28_combout\ & \state.COUNT~q\)) # (!\Selector63~0_combout\))) # (!\countClk[14]~input_o\ & (\Add0~28_combout\ & (\state.COUNT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[14]~input_o\,
	datab => \Add0~28_combout\,
	datac => \state.COUNT~q\,
	datad => \Selector63~0_combout\,
	combout => \Selector49~0_combout\);

-- Location: FF_X3_Y58_N23
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
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(14));

-- Location: LCCOMB_X3_Y58_N30
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

-- Location: IOIBUF_X5_Y73_N22
\countClk[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(15),
	o => \countClk[15]~input_o\);

-- Location: LCCOMB_X4_Y58_N26
\Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\state.COUNT~q\ & ((\Add0~30_combout\) # ((\countClk[15]~input_o\ & !\Selector63~0_combout\)))) # (!\state.COUNT~q\ & (((\countClk[15]~input_o\ & !\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \Add0~30_combout\,
	datac => \countClk[15]~input_o\,
	datad => \Selector63~0_combout\,
	combout => \Selector48~0_combout\);

-- Location: FF_X3_Y58_N11
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
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(15));

-- Location: LCCOMB_X3_Y57_N0
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

-- Location: IOIBUF_X20_Y73_N8
\countClk[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(16),
	o => \countClk[16]~input_o\);

-- Location: LCCOMB_X4_Y57_N8
\Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\Add0~32_combout\ & ((\state.COUNT~q\) # ((\countClk[16]~input_o\ & !\Selector63~0_combout\)))) # (!\Add0~32_combout\ & (((\countClk[16]~input_o\ & !\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[16]~input_o\,
	datad => \Selector63~0_combout\,
	combout => \Selector47~0_combout\);

-- Location: FF_X3_Y57_N31
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
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(16));

-- Location: LCCOMB_X2_Y55_N2
\s_countDado[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_countDado[0]~1_combout\ = s_countDado(0) $ (\state.READDATA~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_countDado(0),
	datad => \state.READDATA~2_combout\,
	combout => \s_countDado[0]~1_combout\);

-- Location: FF_X2_Y55_N3
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

-- Location: LCCOMB_X2_Y55_N24
\s_countDado[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_countDado[1]~0_combout\ = s_countDado(1) $ (((s_countDado(0) & \state.READDATA~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_countDado(0),
	datac => s_countDado(1),
	datad => \state.READDATA~2_combout\,
	combout => \s_countDado[1]~0_combout\);

-- Location: FF_X2_Y55_N25
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

-- Location: IOIBUF_X1_Y73_N15
\countClk[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(24),
	o => \countClk[24]~input_o\);

-- Location: IOIBUF_X3_Y73_N8
\countClk[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(22),
	o => \countClk[22]~input_o\);

-- Location: IOIBUF_X3_Y73_N1
\countClk[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(21),
	o => \countClk[21]~input_o\);

-- Location: IOIBUF_X20_Y73_N1
\countClk[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(18),
	o => \countClk[18]~input_o\);

-- Location: LCCOMB_X3_Y57_N2
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

-- Location: IOIBUF_X0_Y25_N22
\countClk[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(17),
	o => \countClk[17]~input_o\);

-- Location: LCCOMB_X4_Y57_N14
\Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\Add0~34_combout\ & ((\state.COUNT~q\) # ((\countClk[17]~input_o\ & !\Selector63~0_combout\)))) # (!\Add0~34_combout\ & (\countClk[17]~input_o\ & ((!\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \countClk[17]~input_o\,
	datac => \state.COUNT~q\,
	datad => \Selector63~0_combout\,
	combout => \Selector46~0_combout\);

-- Location: FF_X3_Y57_N11
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
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(17));

-- Location: LCCOMB_X3_Y57_N4
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

-- Location: LCCOMB_X4_Y57_N0
\Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\countClk[18]~input_o\ & (((\state.COUNT~q\ & \Add0~36_combout\)) # (!\Selector63~0_combout\))) # (!\countClk[18]~input_o\ & (\state.COUNT~q\ & (\Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[18]~input_o\,
	datab => \state.COUNT~q\,
	datac => \Add0~36_combout\,
	datad => \Selector63~0_combout\,
	combout => \Selector45~0_combout\);

-- Location: FF_X3_Y57_N21
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
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(18));

-- Location: LCCOMB_X3_Y57_N6
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

-- Location: IOIBUF_X1_Y73_N8
\countClk[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(19),
	o => \countClk[19]~input_o\);

-- Location: LCCOMB_X2_Y57_N12
\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\Add0~38_combout\ & ((\state.COUNT~q\) # ((\countClk[19]~input_o\ & !\Selector63~0_combout\)))) # (!\Add0~38_combout\ & (\countClk[19]~input_o\ & ((!\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \countClk[19]~input_o\,
	datac => \state.COUNT~q\,
	datad => \Selector63~0_combout\,
	combout => \Selector44~0_combout\);

-- Location: FF_X2_Y57_N13
\s_countClk[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector44~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(19));

-- Location: LCCOMB_X3_Y57_N8
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

-- Location: IOIBUF_X20_Y73_N15
\countClk[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(20),
	o => \countClk[20]~input_o\);

-- Location: LCCOMB_X4_Y57_N10
\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\Add0~40_combout\ & ((\state.COUNT~q\) # ((\countClk[20]~input_o\ & !\Selector63~0_combout\)))) # (!\Add0~40_combout\ & (((\countClk[20]~input_o\ & !\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[20]~input_o\,
	datad => \Selector63~0_combout\,
	combout => \Selector43~0_combout\);

-- Location: FF_X3_Y57_N5
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
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(20));

-- Location: LCCOMB_X3_Y57_N10
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

-- Location: LCCOMB_X2_Y57_N14
\Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\countClk[21]~input_o\ & (((\Add0~42_combout\ & \state.COUNT~q\)) # (!\Selector63~0_combout\))) # (!\countClk[21]~input_o\ & (\Add0~42_combout\ & (\state.COUNT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[21]~input_o\,
	datab => \Add0~42_combout\,
	datac => \state.COUNT~q\,
	datad => \Selector63~0_combout\,
	combout => \Selector42~0_combout\);

-- Location: FF_X2_Y57_N15
\s_countClk[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector42~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(21));

-- Location: LCCOMB_X3_Y57_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (s_countClk(22) & (\Add0~43\ $ (GND))) # (!s_countClk(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((s_countClk(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X2_Y57_N24
\Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\state.COUNT~q\ & ((\Add0~44_combout\) # ((\countClk[22]~input_o\ & !\Selector63~0_combout\)))) # (!\state.COUNT~q\ & (\countClk[22]~input_o\ & ((!\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \countClk[22]~input_o\,
	datac => \Add0~44_combout\,
	datad => \Selector63~0_combout\,
	combout => \Selector41~0_combout\);

-- Location: FF_X2_Y57_N25
\s_countClk[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector41~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(22));

-- Location: LCCOMB_X3_Y57_N14
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

-- Location: IOIBUF_X16_Y73_N1
\countClk[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(23),
	o => \countClk[23]~input_o\);

-- Location: LCCOMB_X4_Y57_N28
\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\Add0~46_combout\ & ((\state.COUNT~q\) # ((\countClk[23]~input_o\ & !\Selector63~0_combout\)))) # (!\Add0~46_combout\ & (((\countClk[23]~input_o\ & !\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[23]~input_o\,
	datad => \Selector63~0_combout\,
	combout => \Selector40~0_combout\);

-- Location: FF_X4_Y57_N29
\s_countClk[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector40~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(23));

-- Location: LCCOMB_X3_Y57_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (s_countClk(24) & (\Add0~47\ $ (GND))) # (!s_countClk(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((s_countClk(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X2_Y57_N26
\Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\countClk[24]~input_o\ & (((\Add0~48_combout\ & \state.COUNT~q\)) # (!\Selector63~0_combout\))) # (!\countClk[24]~input_o\ & (\Add0~48_combout\ & (\state.COUNT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[24]~input_o\,
	datab => \Add0~48_combout\,
	datac => \state.COUNT~q\,
	datad => \Selector63~0_combout\,
	combout => \Selector39~0_combout\);

-- Location: FF_X2_Y57_N27
\s_countClk[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector39~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(24));

-- Location: LCCOMB_X2_Y58_N28
\Selector71~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~2_combout\ = (s_countDado(0) & (((s_countClk(8)) # (s_countDado(1))))) # (!s_countDado(0) & (s_countClk(0) & ((!s_countDado(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(0),
	datab => s_countClk(8),
	datac => s_countDado(0),
	datad => s_countDado(1),
	combout => \Selector71~2_combout\);

-- Location: LCCOMB_X2_Y58_N18
\Selector71~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~3_combout\ = (s_countDado(1) & ((\Selector71~2_combout\ & ((s_countClk(24)))) # (!\Selector71~2_combout\ & (s_countClk(16))))) # (!s_countDado(1) & (((\Selector71~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(16),
	datab => s_countDado(1),
	datac => s_countClk(24),
	datad => \Selector71~2_combout\,
	combout => \Selector71~3_combout\);

-- Location: IOIBUF_X0_Y32_N15
\countClk[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(56),
	o => \countClk[56]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\countClk[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(55),
	o => \countClk[55]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\countClk[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(54),
	o => \countClk[54]~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\countClk[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(53),
	o => \countClk[53]~input_o\);

-- Location: IOIBUF_X23_Y73_N1
\countClk[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(52),
	o => \countClk[52]~input_o\);

-- Location: IOIBUF_X0_Y44_N22
\countClk[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(51),
	o => \countClk[51]~input_o\);

-- Location: IOIBUF_X0_Y48_N1
\countClk[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(50),
	o => \countClk[50]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\countClk[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(49),
	o => \countClk[49]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\countClk[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(48),
	o => \countClk[48]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\countClk[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(47),
	o => \countClk[47]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\countClk[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(46),
	o => \countClk[46]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\countClk[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(45),
	o => \countClk[45]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\countClk[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(44),
	o => \countClk[44]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\countClk[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(43),
	o => \countClk[43]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\countClk[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(42),
	o => \countClk[42]~input_o\);

-- Location: IOIBUF_X0_Y19_N8
\countClk[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(41),
	o => \countClk[41]~input_o\);

-- Location: IOIBUF_X29_Y73_N1
\countClk[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(40),
	o => \countClk[40]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\countClk[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(39),
	o => \countClk[39]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\countClk[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(38),
	o => \countClk[38]~input_o\);

-- Location: IOIBUF_X0_Y24_N8
\countClk[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(37),
	o => \countClk[37]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\countClk[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(36),
	o => \countClk[36]~input_o\);

-- Location: IOIBUF_X0_Y52_N1
\countClk[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(34),
	o => \countClk[34]~input_o\);

-- Location: IOIBUF_X0_Y20_N15
\countClk[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(33),
	o => \countClk[33]~input_o\);

-- Location: IOIBUF_X29_Y73_N8
\countClk[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(32),
	o => \countClk[32]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\countClk[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(31),
	o => \countClk[31]~input_o\);

-- Location: IOIBUF_X16_Y73_N8
\countClk[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(27),
	o => \countClk[27]~input_o\);

-- Location: LCCOMB_X3_Y57_N18
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

-- Location: IOIBUF_X23_Y73_N8
\countClk[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(25),
	o => \countClk[25]~input_o\);

-- Location: LCCOMB_X4_Y57_N22
\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\Add0~50_combout\ & ((\state.COUNT~q\) # ((\countClk[25]~input_o\ & !\Selector63~0_combout\)))) # (!\Add0~50_combout\ & (((\countClk[25]~input_o\ & !\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[25]~input_o\,
	datad => \Selector63~0_combout\,
	combout => \Selector38~0_combout\);

-- Location: FF_X4_Y57_N23
\s_countClk[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector38~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(25));

-- Location: LCCOMB_X3_Y57_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (s_countClk(26) & (\Add0~51\ $ (GND))) # (!s_countClk(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((s_countClk(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: IOIBUF_X0_Y65_N15
\countClk[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(26),
	o => \countClk[26]~input_o\);

-- Location: LCCOMB_X2_Y57_N16
\Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\Add0~52_combout\ & ((\state.COUNT~q\) # ((\countClk[26]~input_o\ & !\Selector63~0_combout\)))) # (!\Add0~52_combout\ & (\countClk[26]~input_o\ & ((!\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \countClk[26]~input_o\,
	datac => \state.COUNT~q\,
	datad => \Selector63~0_combout\,
	combout => \Selector37~0_combout\);

-- Location: FF_X2_Y57_N17
\s_countClk[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector37~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(26));

-- Location: LCCOMB_X3_Y57_N22
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

-- Location: LCCOMB_X4_Y57_N20
\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\countClk[27]~input_o\ & (((\Add0~54_combout\ & \state.COUNT~q\)) # (!\Selector63~0_combout\))) # (!\countClk[27]~input_o\ & (\Add0~54_combout\ & (\state.COUNT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[27]~input_o\,
	datab => \Add0~54_combout\,
	datac => \state.COUNT~q\,
	datad => \Selector63~0_combout\,
	combout => \Selector36~0_combout\);

-- Location: FF_X4_Y57_N21
\s_countClk[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector36~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(27));

-- Location: LCCOMB_X3_Y57_N24
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

-- Location: IOIBUF_X13_Y73_N1
\countClk[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(28),
	o => \countClk[28]~input_o\);

-- Location: LCCOMB_X4_Y57_N2
\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\state.COUNT~q\ & ((\Add0~56_combout\) # ((\countClk[28]~input_o\ & !\Selector63~0_combout\)))) # (!\state.COUNT~q\ & (((\countClk[28]~input_o\ & !\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \Add0~56_combout\,
	datac => \countClk[28]~input_o\,
	datad => \Selector63~0_combout\,
	combout => \Selector35~0_combout\);

-- Location: FF_X4_Y57_N3
\s_countClk[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector35~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(28));

-- Location: LCCOMB_X3_Y57_N26
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

-- Location: IOIBUF_X1_Y73_N22
\countClk[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(29),
	o => \countClk[29]~input_o\);

-- Location: LCCOMB_X2_Y57_N6
\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\state.COUNT~q\ & ((\Add0~58_combout\) # ((\countClk[29]~input_o\ & !\Selector63~0_combout\)))) # (!\state.COUNT~q\ & (((\countClk[29]~input_o\ & !\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \Add0~58_combout\,
	datac => \countClk[29]~input_o\,
	datad => \Selector63~0_combout\,
	combout => \Selector34~0_combout\);

-- Location: FF_X2_Y57_N7
\s_countClk[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector34~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(29));

-- Location: LCCOMB_X3_Y57_N28
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

-- Location: IOIBUF_X0_Y25_N15
\countClk[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(30),
	o => \countClk[30]~input_o\);

-- Location: LCCOMB_X2_Y57_N8
\Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\state.COUNT~q\ & ((\Add0~60_combout\) # ((\countClk[30]~input_o\ & !\Selector63~0_combout\)))) # (!\state.COUNT~q\ & (((\countClk[30]~input_o\ & !\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \Add0~60_combout\,
	datac => \countClk[30]~input_o\,
	datad => \Selector63~0_combout\,
	combout => \Selector33~0_combout\);

-- Location: FF_X2_Y57_N9
\s_countClk[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector33~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(30));

-- Location: LCCOMB_X3_Y57_N30
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

-- Location: LCCOMB_X4_Y55_N10
\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\countClk[31]~input_o\ & (((\state.COUNT~q\ & \Add0~62_combout\)) # (!\Selector63~0_combout\))) # (!\countClk[31]~input_o\ & (\state.COUNT~q\ & (\Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[31]~input_o\,
	datab => \state.COUNT~q\,
	datac => \Add0~62_combout\,
	datad => \Selector63~0_combout\,
	combout => \Selector32~0_combout\);

-- Location: FF_X4_Y55_N11
\s_countClk[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector32~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(31));

-- Location: LCCOMB_X3_Y56_N0
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

-- Location: LCCOMB_X2_Y56_N16
\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\countClk[32]~input_o\ & (((\state.COUNT~q\ & \Add0~64_combout\)) # (!\Selector63~0_combout\))) # (!\countClk[32]~input_o\ & (\state.COUNT~q\ & (\Add0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[32]~input_o\,
	datab => \state.COUNT~q\,
	datac => \Add0~64_combout\,
	datad => \Selector63~0_combout\,
	combout => \Selector31~0_combout\);

-- Location: FF_X2_Y56_N17
\s_countClk[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector31~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(32));

-- Location: LCCOMB_X3_Y56_N2
\Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (s_countClk(33) & (!\Add0~65\)) # (!s_countClk(33) & ((\Add0~65\) # (GND)))
-- \Add0~67\ = CARRY((!\Add0~65\) # (!s_countClk(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(33),
	datad => VCC,
	cin => \Add0~65\,
	combout => \Add0~66_combout\,
	cout => \Add0~67\);

-- Location: LCCOMB_X4_Y55_N0
\Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\Selector63~0_combout\ & (((\Add0~66_combout\ & \state.COUNT~q\)))) # (!\Selector63~0_combout\ & ((\countClk[33]~input_o\) # ((\Add0~66_combout\ & \state.COUNT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datab => \countClk[33]~input_o\,
	datac => \Add0~66_combout\,
	datad => \state.COUNT~q\,
	combout => \Selector30~0_combout\);

-- Location: FF_X4_Y55_N1
\s_countClk[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector30~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(33));

-- Location: LCCOMB_X3_Y56_N4
\Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = (s_countClk(34) & (\Add0~67\ $ (GND))) # (!s_countClk(34) & (!\Add0~67\ & VCC))
-- \Add0~69\ = CARRY((s_countClk(34) & !\Add0~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(34),
	datad => VCC,
	cin => \Add0~67\,
	combout => \Add0~68_combout\,
	cout => \Add0~69\);

-- Location: LCCOMB_X2_Y56_N6
\Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\countClk[34]~input_o\ & (((\state.COUNT~q\ & \Add0~68_combout\)) # (!\Selector63~0_combout\))) # (!\countClk[34]~input_o\ & (\state.COUNT~q\ & (\Add0~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[34]~input_o\,
	datab => \state.COUNT~q\,
	datac => \Add0~68_combout\,
	datad => \Selector63~0_combout\,
	combout => \Selector29~0_combout\);

-- Location: FF_X2_Y56_N7
\s_countClk[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector29~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(34));

-- Location: LCCOMB_X3_Y56_N6
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

-- Location: IOIBUF_X0_Y24_N1
\countClk[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(35),
	o => \countClk[35]~input_o\);

-- Location: LCCOMB_X2_Y56_N12
\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\Add0~70_combout\ & ((\state.COUNT~q\) # ((\countClk[35]~input_o\ & !\Selector63~0_combout\)))) # (!\Add0~70_combout\ & (((\countClk[35]~input_o\ & !\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~70_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[35]~input_o\,
	datad => \Selector63~0_combout\,
	combout => \Selector28~0_combout\);

-- Location: FF_X2_Y56_N13
\s_countClk[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector28~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(35));

-- Location: LCCOMB_X3_Y56_N8
\Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (s_countClk(36) & (\Add0~71\ $ (GND))) # (!s_countClk(36) & (!\Add0~71\ & VCC))
-- \Add0~73\ = CARRY((s_countClk(36) & !\Add0~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(36),
	datad => VCC,
	cin => \Add0~71\,
	combout => \Add0~72_combout\,
	cout => \Add0~73\);

-- Location: LCCOMB_X4_Y56_N2
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\countClk[36]~input_o\ & (((\state.COUNT~q\ & \Add0~72_combout\)) # (!\Selector63~0_combout\))) # (!\countClk[36]~input_o\ & (((\state.COUNT~q\ & \Add0~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[36]~input_o\,
	datab => \Selector63~0_combout\,
	datac => \state.COUNT~q\,
	datad => \Add0~72_combout\,
	combout => \Selector27~0_combout\);

-- Location: FF_X4_Y56_N3
\s_countClk[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector27~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(36));

-- Location: LCCOMB_X3_Y56_N10
\Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = (s_countClk(37) & (!\Add0~73\)) # (!s_countClk(37) & ((\Add0~73\) # (GND)))
-- \Add0~75\ = CARRY((!\Add0~73\) # (!s_countClk(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(37),
	datad => VCC,
	cin => \Add0~73\,
	combout => \Add0~74_combout\,
	cout => \Add0~75\);

-- Location: LCCOMB_X4_Y56_N4
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\state.COUNT~q\ & ((\Add0~74_combout\) # ((\countClk[37]~input_o\ & !\Selector63~0_combout\)))) # (!\state.COUNT~q\ & (\countClk[37]~input_o\ & (!\Selector63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \countClk[37]~input_o\,
	datac => \Selector63~0_combout\,
	datad => \Add0~74_combout\,
	combout => \Selector26~0_combout\);

-- Location: FF_X4_Y56_N5
\s_countClk[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector26~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(37));

-- Location: LCCOMB_X3_Y56_N12
\Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~76_combout\ = (s_countClk(38) & (\Add0~75\ $ (GND))) # (!s_countClk(38) & (!\Add0~75\ & VCC))
-- \Add0~77\ = CARRY((s_countClk(38) & !\Add0~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(38),
	datad => VCC,
	cin => \Add0~75\,
	combout => \Add0~76_combout\,
	cout => \Add0~77\);

-- Location: LCCOMB_X4_Y56_N22
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\state.COUNT~q\ & ((\Add0~76_combout\) # ((\countClk[38]~input_o\ & !\Selector63~0_combout\)))) # (!\state.COUNT~q\ & (\countClk[38]~input_o\ & (!\Selector63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \countClk[38]~input_o\,
	datac => \Selector63~0_combout\,
	datad => \Add0~76_combout\,
	combout => \Selector25~0_combout\);

-- Location: FF_X4_Y56_N23
\s_countClk[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector25~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(38));

-- Location: LCCOMB_X3_Y56_N14
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

-- Location: LCCOMB_X4_Y55_N26
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\Selector63~0_combout\ & (((\Add0~78_combout\ & \state.COUNT~q\)))) # (!\Selector63~0_combout\ & ((\countClk[39]~input_o\) # ((\Add0~78_combout\ & \state.COUNT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datab => \countClk[39]~input_o\,
	datac => \Add0~78_combout\,
	datad => \state.COUNT~q\,
	combout => \Selector24~0_combout\);

-- Location: FF_X4_Y55_N27
\s_countClk[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector24~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(39));

-- Location: LCCOMB_X3_Y56_N16
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

-- Location: LCCOMB_X2_Y56_N14
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\Selector63~0_combout\ & (\state.COUNT~q\ & ((\Add0~80_combout\)))) # (!\Selector63~0_combout\ & ((\countClk[40]~input_o\) # ((\state.COUNT~q\ & \Add0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[40]~input_o\,
	datad => \Add0~80_combout\,
	combout => \Selector23~0_combout\);

-- Location: FF_X2_Y56_N15
\s_countClk[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector23~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(40));

-- Location: LCCOMB_X3_Y56_N18
\Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~82_combout\ = (s_countClk(41) & (!\Add0~81\)) # (!s_countClk(41) & ((\Add0~81\) # (GND)))
-- \Add0~83\ = CARRY((!\Add0~81\) # (!s_countClk(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(41),
	datad => VCC,
	cin => \Add0~81\,
	combout => \Add0~82_combout\,
	cout => \Add0~83\);

-- Location: LCCOMB_X4_Y56_N20
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\state.COUNT~q\ & ((\Add0~82_combout\) # ((\countClk[41]~input_o\ & !\Selector63~0_combout\)))) # (!\state.COUNT~q\ & (\countClk[41]~input_o\ & (!\Selector63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \countClk[41]~input_o\,
	datac => \Selector63~0_combout\,
	datad => \Add0~82_combout\,
	combout => \Selector22~0_combout\);

-- Location: FF_X4_Y56_N21
\s_countClk[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector22~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(41));

-- Location: LCCOMB_X3_Y56_N20
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

-- Location: LCCOMB_X2_Y56_N28
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\countClk[42]~input_o\ & (((\state.COUNT~q\ & \Add0~84_combout\)) # (!\Selector63~0_combout\))) # (!\countClk[42]~input_o\ & (\state.COUNT~q\ & (\Add0~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[42]~input_o\,
	datab => \state.COUNT~q\,
	datac => \Add0~84_combout\,
	datad => \Selector63~0_combout\,
	combout => \Selector21~0_combout\);

-- Location: FF_X2_Y56_N29
\s_countClk[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector21~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(42));

-- Location: LCCOMB_X3_Y56_N22
\Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = (s_countClk(43) & (!\Add0~85\)) # (!s_countClk(43) & ((\Add0~85\) # (GND)))
-- \Add0~87\ = CARRY((!\Add0~85\) # (!s_countClk(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(43),
	datad => VCC,
	cin => \Add0~85\,
	combout => \Add0~86_combout\,
	cout => \Add0~87\);

-- Location: LCCOMB_X2_Y56_N10
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\countClk[43]~input_o\ & (((\state.COUNT~q\ & \Add0~86_combout\)) # (!\Selector63~0_combout\))) # (!\countClk[43]~input_o\ & (\state.COUNT~q\ & (\Add0~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[43]~input_o\,
	datab => \state.COUNT~q\,
	datac => \Add0~86_combout\,
	datad => \Selector63~0_combout\,
	combout => \Selector20~0_combout\);

-- Location: FF_X2_Y56_N11
\s_countClk[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(43));

-- Location: LCCOMB_X3_Y56_N24
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

-- Location: LCCOMB_X4_Y55_N20
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\Selector63~0_combout\ & (\state.COUNT~q\ & ((\Add0~88_combout\)))) # (!\Selector63~0_combout\ & ((\countClk[44]~input_o\) # ((\state.COUNT~q\ & \Add0~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[44]~input_o\,
	datad => \Add0~88_combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X4_Y55_N21
\s_countClk[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(44));

-- Location: LCCOMB_X3_Y56_N26
\Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = (s_countClk(45) & (!\Add0~89\)) # (!s_countClk(45) & ((\Add0~89\) # (GND)))
-- \Add0~91\ = CARRY((!\Add0~89\) # (!s_countClk(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(45),
	datad => VCC,
	cin => \Add0~89\,
	combout => \Add0~90_combout\,
	cout => \Add0~91\);

-- Location: LCCOMB_X2_Y56_N0
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\Selector63~0_combout\ & (\state.COUNT~q\ & ((\Add0~90_combout\)))) # (!\Selector63~0_combout\ & ((\countClk[45]~input_o\) # ((\state.COUNT~q\ & \Add0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[45]~input_o\,
	datad => \Add0~90_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X2_Y56_N1
\s_countClk[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(45));

-- Location: LCCOMB_X3_Y56_N28
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

-- Location: LCCOMB_X4_Y56_N6
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\state.COUNT~q\ & ((\Add0~92_combout\) # ((\countClk[46]~input_o\ & !\Selector63~0_combout\)))) # (!\state.COUNT~q\ & (\countClk[46]~input_o\ & (!\Selector63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \countClk[46]~input_o\,
	datac => \Selector63~0_combout\,
	datad => \Add0~92_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X4_Y56_N7
\s_countClk[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(46));

-- Location: LCCOMB_X3_Y56_N30
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

-- Location: LCCOMB_X4_Y56_N28
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\state.COUNT~q\ & ((\Add0~94_combout\) # ((\countClk[47]~input_o\ & !\Selector63~0_combout\)))) # (!\state.COUNT~q\ & (\countClk[47]~input_o\ & (!\Selector63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \countClk[47]~input_o\,
	datac => \Selector63~0_combout\,
	datad => \Add0~94_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X4_Y56_N29
\s_countClk[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(47));

-- Location: LCCOMB_X3_Y55_N0
\Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~96_combout\ = (s_countClk(48) & (\Add0~95\ $ (GND))) # (!s_countClk(48) & (!\Add0~95\ & VCC))
-- \Add0~97\ = CARRY((s_countClk(48) & !\Add0~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(48),
	datad => VCC,
	cin => \Add0~95\,
	combout => \Add0~96_combout\,
	cout => \Add0~97\);

-- Location: LCCOMB_X2_Y55_N12
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\state.COUNT~q\ & ((\Add0~96_combout\) # ((\countClk[48]~input_o\ & !\Selector63~0_combout\)))) # (!\state.COUNT~q\ & (\countClk[48]~input_o\ & ((!\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \countClk[48]~input_o\,
	datac => \Add0~96_combout\,
	datad => \Selector63~0_combout\,
	combout => \Selector15~0_combout\);

-- Location: FF_X2_Y55_N13
\s_countClk[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(48));

-- Location: LCCOMB_X3_Y55_N2
\Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~98_combout\ = (s_countClk(49) & (!\Add0~97\)) # (!s_countClk(49) & ((\Add0~97\) # (GND)))
-- \Add0~99\ = CARRY((!\Add0~97\) # (!s_countClk(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(49),
	datad => VCC,
	cin => \Add0~97\,
	combout => \Add0~98_combout\,
	cout => \Add0~99\);

-- Location: LCCOMB_X2_Y55_N22
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\Selector63~0_combout\ & (((\state.COUNT~q\ & \Add0~98_combout\)))) # (!\Selector63~0_combout\ & ((\countClk[49]~input_o\) # ((\state.COUNT~q\ & \Add0~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datab => \countClk[49]~input_o\,
	datac => \state.COUNT~q\,
	datad => \Add0~98_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X2_Y55_N23
\s_countClk[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(49));

-- Location: LCCOMB_X3_Y55_N4
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

-- Location: LCCOMB_X2_Y55_N28
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\Selector63~0_combout\ & (((\state.COUNT~q\ & \Add0~100_combout\)))) # (!\Selector63~0_combout\ & ((\countClk[50]~input_o\) # ((\state.COUNT~q\ & \Add0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datab => \countClk[50]~input_o\,
	datac => \state.COUNT~q\,
	datad => \Add0~100_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X2_Y55_N29
\s_countClk[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(50));

-- Location: LCCOMB_X3_Y55_N6
\Add0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~102_combout\ = (s_countClk(51) & (!\Add0~101\)) # (!s_countClk(51) & ((\Add0~101\) # (GND)))
-- \Add0~103\ = CARRY((!\Add0~101\) # (!s_countClk(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(51),
	datad => VCC,
	cin => \Add0~101\,
	combout => \Add0~102_combout\,
	cout => \Add0~103\);

-- Location: LCCOMB_X2_Y55_N6
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\Selector63~0_combout\ & (((\state.COUNT~q\ & \Add0~102_combout\)))) # (!\Selector63~0_combout\ & ((\countClk[51]~input_o\) # ((\state.COUNT~q\ & \Add0~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datab => \countClk[51]~input_o\,
	datac => \state.COUNT~q\,
	datad => \Add0~102_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X2_Y55_N7
\s_countClk[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(51));

-- Location: LCCOMB_X3_Y55_N8
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

-- Location: LCCOMB_X4_Y55_N2
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\Selector63~0_combout\ & (\state.COUNT~q\ & ((\Add0~104_combout\)))) # (!\Selector63~0_combout\ & ((\countClk[52]~input_o\) # ((\state.COUNT~q\ & \Add0~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[52]~input_o\,
	datad => \Add0~104_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X4_Y55_N3
\s_countClk[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(52));

-- Location: LCCOMB_X3_Y55_N10
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

-- Location: LCCOMB_X2_Y55_N16
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state.COUNT~q\ & ((\Add0~106_combout\) # ((\countClk[53]~input_o\ & !\Selector63~0_combout\)))) # (!\state.COUNT~q\ & (\countClk[53]~input_o\ & ((!\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \countClk[53]~input_o\,
	datac => \Add0~106_combout\,
	datad => \Selector63~0_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X2_Y55_N17
\s_countClk[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(53));

-- Location: LCCOMB_X3_Y55_N12
\Add0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~108_combout\ = (s_countClk(54) & (\Add0~107\ $ (GND))) # (!s_countClk(54) & (!\Add0~107\ & VCC))
-- \Add0~109\ = CARRY((s_countClk(54) & !\Add0~107\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(54),
	datad => VCC,
	cin => \Add0~107\,
	combout => \Add0~108_combout\,
	cout => \Add0~109\);

-- Location: LCCOMB_X4_Y55_N4
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\Selector63~0_combout\ & (\state.COUNT~q\ & ((\Add0~108_combout\)))) # (!\Selector63~0_combout\ & ((\countClk[54]~input_o\) # ((\state.COUNT~q\ & \Add0~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[54]~input_o\,
	datad => \Add0~108_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X4_Y55_N5
\s_countClk[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(54));

-- Location: LCCOMB_X3_Y55_N14
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

-- Location: LCCOMB_X4_Y55_N30
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Selector63~0_combout\ & (\state.COUNT~q\ & ((\Add0~110_combout\)))) # (!\Selector63~0_combout\ & ((\countClk[55]~input_o\) # ((\state.COUNT~q\ & \Add0~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[55]~input_o\,
	datad => \Add0~110_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X4_Y55_N31
\s_countClk[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(55));

-- Location: LCCOMB_X3_Y55_N16
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

-- Location: LCCOMB_X4_Y55_N8
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\countClk[56]~input_o\ & (((\state.COUNT~q\ & \Add0~112_combout\)) # (!\Selector63~0_combout\))) # (!\countClk[56]~input_o\ & (\state.COUNT~q\ & (\Add0~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countClk[56]~input_o\,
	datab => \state.COUNT~q\,
	datac => \Add0~112_combout\,
	datad => \Selector63~0_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X4_Y55_N9
\s_countClk[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(56));

-- Location: LCCOMB_X2_Y56_N18
\Selector71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (s_countDado(1) & (((s_countDado(0))))) # (!s_countDado(1) & ((s_countDado(0) & (s_countClk(40))) # (!s_countDado(0) & ((s_countClk(32))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(1),
	datab => s_countClk(40),
	datac => s_countDado(0),
	datad => s_countClk(32),
	combout => \Selector71~0_combout\);

-- Location: LCCOMB_X2_Y56_N4
\Selector71~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~1_combout\ = (\Selector71~0_combout\ & ((s_countClk(56)) # ((!s_countDado(1))))) # (!\Selector71~0_combout\ & (((s_countClk(48) & s_countDado(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(56),
	datab => \Selector71~0_combout\,
	datac => s_countClk(48),
	datad => s_countDado(1),
	combout => \Selector71~1_combout\);

-- Location: LCCOMB_X2_Y58_N16
\s_countDado[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_countDado[2]~2_combout\ = s_countDado(2) $ (((\state.READDATA~2_combout\ & (s_countDado(0) & s_countDado(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READDATA~2_combout\,
	datab => s_countDado(0),
	datac => s_countDado(2),
	datad => s_countDado(1),
	combout => \s_countDado[2]~2_combout\);

-- Location: FF_X2_Y58_N17
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

-- Location: LCCOMB_X2_Y58_N4
\Selector71~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~4_combout\ = ((s_countDado(2) & ((\Selector71~1_combout\))) # (!s_countDado(2) & (\Selector71~3_combout\))) # (!\state.READDATA~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READDATA~2_combout\,
	datab => \Selector71~3_combout\,
	datac => \Selector71~1_combout\,
	datad => s_countDado(2),
	combout => \Selector71~4_combout\);

-- Location: FF_X2_Y58_N5
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

-- Location: LCCOMB_X4_Y57_N4
\Selector70~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~2_combout\ = (s_countDado(0) & (((s_countDado(1))))) # (!s_countDado(0) & ((s_countDado(1) & (s_countClk(17))) # (!s_countDado(1) & ((s_countClk(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(17),
	datab => s_countClk(1),
	datac => s_countDado(0),
	datad => s_countDado(1),
	combout => \Selector70~2_combout\);

-- Location: LCCOMB_X4_Y57_N18
\Selector70~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~3_combout\ = (\Selector70~2_combout\ & ((s_countClk(25)) # ((!s_countDado(0))))) # (!\Selector70~2_combout\ & (((s_countDado(0) & s_countClk(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(25),
	datab => \Selector70~2_combout\,
	datac => s_countDado(0),
	datad => s_countClk(9),
	combout => \Selector70~3_combout\);

-- Location: IOIBUF_X0_Y23_N15
\countClk[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(57),
	o => \countClk[57]~input_o\);

-- Location: LCCOMB_X3_Y55_N18
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

-- Location: LCCOMB_X4_Y55_N18
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Selector63~0_combout\ & (\state.COUNT~q\ & ((\Add0~114_combout\)))) # (!\Selector63~0_combout\ & ((\countClk[57]~input_o\) # ((\state.COUNT~q\ & \Add0~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[57]~input_o\,
	datad => \Add0~114_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X4_Y55_N19
\s_countClk[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(57));

-- Location: LCCOMB_X4_Y56_N10
\Selector70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = (s_countDado(0) & (((s_countDado(1)) # (s_countClk(41))))) # (!s_countDado(0) & (s_countClk(33) & (!s_countDado(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(0),
	datab => s_countClk(33),
	datac => s_countDado(1),
	datad => s_countClk(41),
	combout => \Selector70~0_combout\);

-- Location: LCCOMB_X4_Y56_N0
\Selector70~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~1_combout\ = (s_countDado(1) & ((\Selector70~0_combout\ & ((s_countClk(57)))) # (!\Selector70~0_combout\ & (s_countClk(49))))) # (!s_countDado(1) & (((\Selector70~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(1),
	datab => s_countClk(49),
	datac => s_countClk(57),
	datad => \Selector70~0_combout\,
	combout => \Selector70~1_combout\);

-- Location: LCCOMB_X4_Y57_N12
\Selector70~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~4_combout\ = ((s_countDado(2) & ((\Selector70~1_combout\))) # (!s_countDado(2) & (\Selector70~3_combout\))) # (!\state.READDATA~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(2),
	datab => \Selector70~3_combout\,
	datac => \state.READDATA~2_combout\,
	datad => \Selector70~1_combout\,
	combout => \Selector70~4_combout\);

-- Location: FF_X4_Y57_N13
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

-- Location: LCCOMB_X2_Y56_N2
\Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (s_countDado(0) & (((s_countClk(42)) # (s_countDado(1))))) # (!s_countDado(0) & (s_countClk(34) & ((!s_countDado(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(34),
	datab => s_countClk(42),
	datac => s_countDado(0),
	datad => s_countDado(1),
	combout => \Selector69~0_combout\);

-- Location: IOIBUF_X0_Y51_N15
\countClk[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(58),
	o => \countClk[58]~input_o\);

-- Location: LCCOMB_X3_Y55_N20
\Add0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~116_combout\ = (s_countClk(58) & (\Add0~115\ $ (GND))) # (!s_countClk(58) & (!\Add0~115\ & VCC))
-- \Add0~117\ = CARRY((s_countClk(58) & !\Add0~115\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(58),
	datad => VCC,
	cin => \Add0~115\,
	combout => \Add0~116_combout\,
	cout => \Add0~117\);

-- Location: LCCOMB_X2_Y55_N30
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.COUNT~q\ & ((\Add0~116_combout\) # ((\countClk[58]~input_o\ & !\Selector63~0_combout\)))) # (!\state.COUNT~q\ & (\countClk[58]~input_o\ & ((!\Selector63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COUNT~q\,
	datab => \countClk[58]~input_o\,
	datac => \Add0~116_combout\,
	datad => \Selector63~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X2_Y55_N31
\s_countClk[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(58));

-- Location: LCCOMB_X2_Y55_N20
\Selector69~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~1_combout\ = (\Selector69~0_combout\ & (((s_countClk(58))) # (!s_countDado(1)))) # (!\Selector69~0_combout\ & (s_countDado(1) & ((s_countClk(50)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector69~0_combout\,
	datab => s_countDado(1),
	datac => s_countClk(58),
	datad => s_countClk(50),
	combout => \Selector69~1_combout\);

-- Location: LCCOMB_X2_Y57_N18
\Selector69~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~2_combout\ = (s_countDado(0) & (((s_countDado(1))))) # (!s_countDado(0) & ((s_countDado(1) & ((s_countClk(18)))) # (!s_countDado(1) & (s_countClk(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(2),
	datab => s_countClk(18),
	datac => s_countDado(0),
	datad => s_countDado(1),
	combout => \Selector69~2_combout\);

-- Location: LCCOMB_X2_Y57_N28
\Selector69~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~3_combout\ = (\Selector69~2_combout\ & (((s_countClk(26)) # (!s_countDado(0))))) # (!\Selector69~2_combout\ & (s_countClk(10) & (s_countDado(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(10),
	datab => \Selector69~2_combout\,
	datac => s_countDado(0),
	datad => s_countClk(26),
	combout => \Selector69~3_combout\);

-- Location: LCCOMB_X2_Y55_N4
\Selector69~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~4_combout\ = ((s_countDado(2) & (\Selector69~1_combout\)) # (!s_countDado(2) & ((\Selector69~3_combout\)))) # (!\state.READDATA~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READDATA~2_combout\,
	datab => \Selector69~1_combout\,
	datac => \Selector69~3_combout\,
	datad => s_countDado(2),
	combout => \Selector69~4_combout\);

-- Location: FF_X2_Y55_N5
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

-- Location: IOIBUF_X0_Y44_N15
\countClk[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(59),
	o => \countClk[59]~input_o\);

-- Location: LCCOMB_X3_Y55_N22
\Add0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~118_combout\ = (s_countClk(59) & (!\Add0~117\)) # (!s_countClk(59) & ((\Add0~117\) # (GND)))
-- \Add0~119\ = CARRY((!\Add0~117\) # (!s_countClk(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(59),
	datad => VCC,
	cin => \Add0~117\,
	combout => \Add0~118_combout\,
	cout => \Add0~119\);

-- Location: LCCOMB_X2_Y55_N0
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Selector63~0_combout\ & (((\state.COUNT~q\ & \Add0~118_combout\)))) # (!\Selector63~0_combout\ & ((\countClk[59]~input_o\) # ((\state.COUNT~q\ & \Add0~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datab => \countClk[59]~input_o\,
	datac => \state.COUNT~q\,
	datad => \Add0~118_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X2_Y55_N1
\s_countClk[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(59));

-- Location: LCCOMB_X2_Y56_N8
\Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (s_countDado(1) & (((s_countDado(0))))) # (!s_countDado(1) & ((s_countDado(0) & (s_countClk(43))) # (!s_countDado(0) & ((s_countClk(35))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(1),
	datab => s_countClk(43),
	datac => s_countDado(0),
	datad => s_countClk(35),
	combout => \Selector68~0_combout\);

-- Location: LCCOMB_X2_Y55_N14
\Selector68~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~1_combout\ = (\Selector68~0_combout\ & (((s_countClk(59)) # (!s_countDado(1))))) # (!\Selector68~0_combout\ & (s_countClk(51) & ((s_countDado(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(51),
	datab => s_countClk(59),
	datac => \Selector68~0_combout\,
	datad => s_countDado(1),
	combout => \Selector68~1_combout\);

-- Location: LCCOMB_X2_Y58_N22
\Selector68~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~2_combout\ = (s_countDado(0) & (((s_countDado(1))))) # (!s_countDado(0) & ((s_countDado(1) & (s_countClk(19))) # (!s_countDado(1) & ((s_countClk(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(19),
	datab => s_countClk(3),
	datac => s_countDado(0),
	datad => s_countDado(1),
	combout => \Selector68~2_combout\);

-- Location: LCCOMB_X2_Y58_N12
\Selector68~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~3_combout\ = (s_countDado(0) & ((\Selector68~2_combout\ & (s_countClk(27))) # (!\Selector68~2_combout\ & ((s_countClk(11)))))) # (!s_countDado(0) & (((\Selector68~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(27),
	datab => s_countDado(0),
	datac => \Selector68~2_combout\,
	datad => s_countClk(11),
	combout => \Selector68~3_combout\);

-- Location: LCCOMB_X2_Y55_N18
\Selector68~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~4_combout\ = ((s_countDado(2) & (\Selector68~1_combout\)) # (!s_countDado(2) & ((\Selector68~3_combout\)))) # (!\state.READDATA~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READDATA~2_combout\,
	datab => s_countDado(2),
	datac => \Selector68~1_combout\,
	datad => \Selector68~3_combout\,
	combout => \Selector68~4_combout\);

-- Location: FF_X2_Y55_N19
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

-- Location: LCCOMB_X4_Y57_N24
\Selector67~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~2_combout\ = (s_countDado(0) & (((s_countDado(1))))) # (!s_countDado(0) & ((s_countDado(1) & ((s_countClk(20)))) # (!s_countDado(1) & (s_countClk(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(4),
	datab => s_countClk(20),
	datac => s_countDado(0),
	datad => s_countDado(1),
	combout => \Selector67~2_combout\);

-- Location: LCCOMB_X4_Y57_N6
\Selector67~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~3_combout\ = (s_countDado(0) & ((\Selector67~2_combout\ & ((s_countClk(28)))) # (!\Selector67~2_combout\ & (s_countClk(12))))) # (!s_countDado(0) & (((\Selector67~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(12),
	datab => s_countClk(28),
	datac => s_countDado(0),
	datad => \Selector67~2_combout\,
	combout => \Selector67~3_combout\);

-- Location: IOIBUF_X0_Y21_N22
\countClk[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(60),
	o => \countClk[60]~input_o\);

-- Location: LCCOMB_X3_Y55_N24
\Add0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~120_combout\ = (s_countClk(60) & (\Add0~119\ $ (GND))) # (!s_countClk(60) & (!\Add0~119\ & VCC))
-- \Add0~121\ = CARRY((s_countClk(60) & !\Add0~119\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(60),
	datad => VCC,
	cin => \Add0~119\,
	combout => \Add0~120_combout\,
	cout => \Add0~121\);

-- Location: LCCOMB_X4_Y55_N12
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Selector63~0_combout\ & (\state.COUNT~q\ & ((\Add0~120_combout\)))) # (!\Selector63~0_combout\ & ((\countClk[60]~input_o\) # ((\state.COUNT~q\ & \Add0~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[60]~input_o\,
	datad => \Add0~120_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X4_Y55_N13
\s_countClk[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(60));

-- Location: LCCOMB_X4_Y56_N26
\Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (s_countDado(0) & (((s_countDado(1)) # (s_countClk(44))))) # (!s_countDado(0) & (s_countClk(36) & (!s_countDado(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(0),
	datab => s_countClk(36),
	datac => s_countDado(1),
	datad => s_countClk(44),
	combout => \Selector67~0_combout\);

-- Location: LCCOMB_X4_Y55_N14
\Selector67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~1_combout\ = (s_countDado(1) & ((\Selector67~0_combout\ & (s_countClk(60))) # (!\Selector67~0_combout\ & ((s_countClk(52)))))) # (!s_countDado(1) & (((\Selector67~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(60),
	datab => s_countClk(52),
	datac => s_countDado(1),
	datad => \Selector67~0_combout\,
	combout => \Selector67~1_combout\);

-- Location: LCCOMB_X4_Y55_N28
\Selector67~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~4_combout\ = ((s_countDado(2) & ((\Selector67~1_combout\))) # (!s_countDado(2) & (\Selector67~3_combout\))) # (!\state.READDATA~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(2),
	datab => \Selector67~3_combout\,
	datac => \Selector67~1_combout\,
	datad => \state.READDATA~2_combout\,
	combout => \Selector67~4_combout\);

-- Location: FF_X4_Y55_N29
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

-- Location: LCCOMB_X2_Y58_N10
\Selector66~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~2_combout\ = (s_countDado(0) & (((s_countDado(1))))) # (!s_countDado(0) & ((s_countDado(1) & ((s_countClk(21)))) # (!s_countDado(1) & (s_countClk(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(5),
	datab => s_countDado(0),
	datac => s_countClk(21),
	datad => s_countDado(1),
	combout => \Selector66~2_combout\);

-- Location: LCCOMB_X2_Y58_N24
\Selector66~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~3_combout\ = (\Selector66~2_combout\ & (((s_countClk(29))) # (!s_countDado(0)))) # (!\Selector66~2_combout\ & (s_countDado(0) & (s_countClk(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector66~2_combout\,
	datab => s_countDado(0),
	datac => s_countClk(13),
	datad => s_countClk(29),
	combout => \Selector66~3_combout\);

-- Location: IOIBUF_X0_Y47_N22
\countClk[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(61),
	o => \countClk[61]~input_o\);

-- Location: LCCOMB_X3_Y55_N26
\Add0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~122_combout\ = (s_countClk(61) & (!\Add0~121\)) # (!s_countClk(61) & ((\Add0~121\) # (GND)))
-- \Add0~123\ = CARRY((!\Add0~121\) # (!s_countClk(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(61),
	datad => VCC,
	cin => \Add0~121\,
	combout => \Add0~122_combout\,
	cout => \Add0~123\);

-- Location: LCCOMB_X2_Y55_N26
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Selector63~0_combout\ & (((\state.COUNT~q\ & \Add0~122_combout\)))) # (!\Selector63~0_combout\ & ((\countClk[61]~input_o\) # ((\state.COUNT~q\ & \Add0~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datab => \countClk[61]~input_o\,
	datac => \state.COUNT~q\,
	datad => \Add0~122_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X2_Y55_N27
\s_countClk[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(61));

-- Location: LCCOMB_X2_Y55_N8
\Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (s_countDado(1) & (((s_countDado(0))))) # (!s_countDado(1) & ((s_countDado(0) & ((s_countClk(45)))) # (!s_countDado(0) & (s_countClk(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(37),
	datab => s_countDado(1),
	datac => s_countClk(45),
	datad => s_countDado(0),
	combout => \Selector66~0_combout\);

-- Location: LCCOMB_X2_Y55_N10
\Selector66~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~1_combout\ = (s_countDado(1) & ((\Selector66~0_combout\ & (s_countClk(61))) # (!\Selector66~0_combout\ & ((s_countClk(53)))))) # (!s_countDado(1) & (((\Selector66~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(61),
	datab => s_countDado(1),
	datac => \Selector66~0_combout\,
	datad => s_countClk(53),
	combout => \Selector66~1_combout\);

-- Location: LCCOMB_X2_Y58_N6
\Selector66~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~4_combout\ = ((s_countDado(2) & ((\Selector66~1_combout\))) # (!s_countDado(2) & (\Selector66~3_combout\))) # (!\state.READDATA~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READDATA~2_combout\,
	datab => \Selector66~3_combout\,
	datac => \Selector66~1_combout\,
	datad => s_countDado(2),
	combout => \Selector66~4_combout\);

-- Location: FF_X2_Y58_N7
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

-- Location: LCCOMB_X2_Y57_N10
\Selector65~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~2_combout\ = (s_countDado(1) & (((s_countDado(0)) # (s_countClk(22))))) # (!s_countDado(1) & (s_countClk(6) & (!s_countDado(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(1),
	datab => s_countClk(6),
	datac => s_countDado(0),
	datad => s_countClk(22),
	combout => \Selector65~2_combout\);

-- Location: LCCOMB_X2_Y57_N20
\Selector65~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~3_combout\ = (s_countDado(0) & ((\Selector65~2_combout\ & ((s_countClk(30)))) # (!\Selector65~2_combout\ & (s_countClk(14))))) # (!s_countDado(0) & (((\Selector65~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(14),
	datab => s_countClk(30),
	datac => s_countDado(0),
	datad => \Selector65~2_combout\,
	combout => \Selector65~3_combout\);

-- Location: IOIBUF_X33_Y73_N1
\countClk[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(62),
	o => \countClk[62]~input_o\);

-- Location: LCCOMB_X3_Y55_N28
\Add0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~124_combout\ = (s_countClk(62) & (\Add0~123\ $ (GND))) # (!s_countClk(62) & (!\Add0~123\ & VCC))
-- \Add0~125\ = CARRY((s_countClk(62) & !\Add0~123\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countClk(62),
	datad => VCC,
	cin => \Add0~123\,
	combout => \Add0~124_combout\,
	cout => \Add0~125\);

-- Location: LCCOMB_X4_Y55_N22
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Selector63~0_combout\ & (\state.COUNT~q\ & ((\Add0~124_combout\)))) # (!\Selector63~0_combout\ & ((\countClk[62]~input_o\) # ((\state.COUNT~q\ & \Add0~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[62]~input_o\,
	datad => \Add0~124_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X4_Y55_N23
\s_countClk[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(62));

-- Location: LCCOMB_X4_Y56_N16
\Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (s_countDado(1) & (((s_countDado(0))))) # (!s_countDado(1) & ((s_countDado(0) & (s_countClk(46))) # (!s_countDado(0) & ((s_countClk(38))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(1),
	datab => s_countClk(46),
	datac => s_countClk(38),
	datad => s_countDado(0),
	combout => \Selector65~0_combout\);

-- Location: LCCOMB_X4_Y56_N30
\Selector65~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~1_combout\ = (s_countDado(1) & ((\Selector65~0_combout\ & ((s_countClk(62)))) # (!\Selector65~0_combout\ & (s_countClk(54))))) # (!s_countDado(1) & (((\Selector65~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(54),
	datab => s_countClk(62),
	datac => s_countDado(1),
	datad => \Selector65~0_combout\,
	combout => \Selector65~1_combout\);

-- Location: LCCOMB_X4_Y57_N26
\Selector65~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~4_combout\ = ((s_countDado(2) & ((\Selector65~1_combout\))) # (!s_countDado(2) & (\Selector65~3_combout\))) # (!\state.READDATA~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(2),
	datab => \Selector65~3_combout\,
	datac => \state.READDATA~2_combout\,
	datad => \Selector65~1_combout\,
	combout => \Selector65~4_combout\);

-- Location: FF_X4_Y57_N27
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

-- Location: IOIBUF_X0_Y43_N15
\countClk[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_countClk(63),
	o => \countClk[63]~input_o\);

-- Location: LCCOMB_X3_Y55_N30
\Add0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~126_combout\ = \Add0~125\ $ (s_countClk(63))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => s_countClk(63),
	cin => \Add0~125\,
	combout => \Add0~126_combout\);

-- Location: LCCOMB_X4_Y55_N24
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Selector63~0_combout\ & (\state.COUNT~q\ & ((\Add0~126_combout\)))) # (!\Selector63~0_combout\ & ((\countClk[63]~input_o\) # ((\state.COUNT~q\ & \Add0~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector63~0_combout\,
	datab => \state.COUNT~q\,
	datac => \countClk[63]~input_o\,
	datad => \Add0~126_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X4_Y55_N25
\s_countClk[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	ena => \ALT_INV_state.WAITDATA2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countClk(63));

-- Location: LCCOMB_X4_Y56_N12
\Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (s_countDado(0) & ((s_countClk(47)) # ((s_countDado(1))))) # (!s_countDado(0) & (((!s_countDado(1) & s_countClk(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(0),
	datab => s_countClk(47),
	datac => s_countDado(1),
	datad => s_countClk(39),
	combout => \Selector64~0_combout\);

-- Location: LCCOMB_X4_Y56_N18
\Selector64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~1_combout\ = (s_countDado(1) & ((\Selector64~0_combout\ & (s_countClk(63))) # (!\Selector64~0_combout\ & ((s_countClk(55)))))) # (!s_countDado(1) & (((\Selector64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countDado(1),
	datab => s_countClk(63),
	datac => s_countClk(55),
	datad => \Selector64~0_combout\,
	combout => \Selector64~1_combout\);

-- Location: LCCOMB_X4_Y57_N16
\Selector64~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~2_combout\ = (s_countDado(1) & (((s_countDado(0)) # (s_countClk(23))))) # (!s_countDado(1) & (s_countClk(7) & (!s_countDado(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(7),
	datab => s_countDado(1),
	datac => s_countDado(0),
	datad => s_countClk(23),
	combout => \Selector64~2_combout\);

-- Location: LCCOMB_X4_Y57_N30
\Selector64~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~3_combout\ = (s_countDado(0) & ((\Selector64~2_combout\ & ((s_countClk(31)))) # (!\Selector64~2_combout\ & (s_countClk(15))))) # (!s_countDado(0) & (((\Selector64~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_countClk(15),
	datab => s_countDado(0),
	datac => s_countClk(31),
	datad => \Selector64~2_combout\,
	combout => \Selector64~3_combout\);

-- Location: LCCOMB_X4_Y56_N24
\Selector64~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~4_combout\ = ((s_countDado(2) & (\Selector64~1_combout\)) # (!s_countDado(2) & ((\Selector64~3_combout\)))) # (!\state.READDATA~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READDATA~2_combout\,
	datab => \Selector64~1_combout\,
	datac => \Selector64~3_combout\,
	datad => s_countDado(2),
	combout => \Selector64~4_combout\);

-- Location: FF_X4_Y56_N25
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

-- Location: IOIBUF_X79_Y73_N1
\continue~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_continue,
	o => \continue~input_o\);

ww_dado(0) <= \dado[0]~output_o\;

ww_dado(1) <= \dado[1]~output_o\;

ww_dado(2) <= \dado[2]~output_o\;

ww_dado(3) <= \dado[3]~output_o\;

ww_dado(4) <= \dado[4]~output_o\;

ww_dado(5) <= \dado[5]~output_o\;

ww_dado(6) <= \dado[6]~output_o\;

ww_dado(7) <= \dado[7]~output_o\;

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

ww_next_State(0) <= \next_State[0]~output_o\;

ww_next_State(1) <= \next_State[1]~output_o\;

ww_next_State(2) <= \next_State[2]~output_o\;

ww_next_State(3) <= \next_State[3]~output_o\;
END structure;


