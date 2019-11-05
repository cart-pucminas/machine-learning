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

-- DATE "02/16/2017 23:12:32"

-- 
-- Device: Altera EP4CGX150DF31I7 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Kmeans_Result IS
    PORT (
	en_Saida : IN std_logic;
	ent : IN std_logic_vector(63 DOWNTO 0);
	saida : OUT std_logic_vector(63 DOWNTO 0)
	);
END Kmeans_Result;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_G29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[7]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[8]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[9]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[10]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[11]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[12]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[13]	=>  Location: PIN_AB29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[14]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[15]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[16]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[17]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[18]	=>  Location: PIN_AA29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[19]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[20]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[21]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[22]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[23]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[24]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[25]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[26]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[27]	=>  Location: PIN_E30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[28]	=>  Location: PIN_N30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[29]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[30]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[31]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[32]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[33]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[34]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[35]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[36]	=>  Location: PIN_Y28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[37]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[38]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[39]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[40]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[41]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[42]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[43]	=>  Location: PIN_G30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[44]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[45]	=>  Location: PIN_M30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[46]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[47]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[48]	=>  Location: PIN_D29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[49]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[50]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[51]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[52]	=>  Location: PIN_N28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[53]	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[54]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[55]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[56]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[57]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[58]	=>  Location: PIN_N24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[59]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[60]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[61]	=>  Location: PIN_M29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[62]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[63]	=>  Location: PIN_N29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_Saida	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[0]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[1]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[2]	=>  Location: PIN_C30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[3]	=>  Location: PIN_F30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[4]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[5]	=>  Location: PIN_L30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[6]	=>  Location: PIN_H28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[7]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[8]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[9]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[10]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[11]	=>  Location: PIN_D30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[12]	=>  Location: PIN_F29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[13]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[14]	=>  Location: PIN_K24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[15]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[16]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[17]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[18]	=>  Location: PIN_Y30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[19]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[20]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[21]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[22]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[23]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[24]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[25]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[26]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[27]	=>  Location: PIN_C29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[28]	=>  Location: PIN_P30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[29]	=>  Location: PIN_AE30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[30]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[31]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[32]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[33]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[34]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[35]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[36]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[37]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[38]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[39]	=>  Location: PIN_R29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[40]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[41]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[42]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[43]	=>  Location: PIN_H30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[44]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[45]	=>  Location: PIN_T28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[46]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[47]	=>  Location: PIN_K30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[48]	=>  Location: PIN_H27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[49]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[50]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[51]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[52]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[53]	=>  Location: PIN_J30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[54]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[55]	=>  Location: PIN_K29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[56]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[57]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[58]	=>  Location: PIN_J29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[59]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[60]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[61]	=>  Location: PIN_R30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[62]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[63]	=>  Location: PIN_N27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Kmeans_Result IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_en_Saida : std_logic;
SIGNAL ww_ent : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(63 DOWNTO 0);
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \saida[7]~output_o\ : std_logic;
SIGNAL \saida[8]~output_o\ : std_logic;
SIGNAL \saida[9]~output_o\ : std_logic;
SIGNAL \saida[10]~output_o\ : std_logic;
SIGNAL \saida[11]~output_o\ : std_logic;
SIGNAL \saida[12]~output_o\ : std_logic;
SIGNAL \saida[13]~output_o\ : std_logic;
SIGNAL \saida[14]~output_o\ : std_logic;
SIGNAL \saida[15]~output_o\ : std_logic;
SIGNAL \saida[16]~output_o\ : std_logic;
SIGNAL \saida[17]~output_o\ : std_logic;
SIGNAL \saida[18]~output_o\ : std_logic;
SIGNAL \saida[19]~output_o\ : std_logic;
SIGNAL \saida[20]~output_o\ : std_logic;
SIGNAL \saida[21]~output_o\ : std_logic;
SIGNAL \saida[22]~output_o\ : std_logic;
SIGNAL \saida[23]~output_o\ : std_logic;
SIGNAL \saida[24]~output_o\ : std_logic;
SIGNAL \saida[25]~output_o\ : std_logic;
SIGNAL \saida[26]~output_o\ : std_logic;
SIGNAL \saida[27]~output_o\ : std_logic;
SIGNAL \saida[28]~output_o\ : std_logic;
SIGNAL \saida[29]~output_o\ : std_logic;
SIGNAL \saida[30]~output_o\ : std_logic;
SIGNAL \saida[31]~output_o\ : std_logic;
SIGNAL \saida[32]~output_o\ : std_logic;
SIGNAL \saida[33]~output_o\ : std_logic;
SIGNAL \saida[34]~output_o\ : std_logic;
SIGNAL \saida[35]~output_o\ : std_logic;
SIGNAL \saida[36]~output_o\ : std_logic;
SIGNAL \saida[37]~output_o\ : std_logic;
SIGNAL \saida[38]~output_o\ : std_logic;
SIGNAL \saida[39]~output_o\ : std_logic;
SIGNAL \saida[40]~output_o\ : std_logic;
SIGNAL \saida[41]~output_o\ : std_logic;
SIGNAL \saida[42]~output_o\ : std_logic;
SIGNAL \saida[43]~output_o\ : std_logic;
SIGNAL \saida[44]~output_o\ : std_logic;
SIGNAL \saida[45]~output_o\ : std_logic;
SIGNAL \saida[46]~output_o\ : std_logic;
SIGNAL \saida[47]~output_o\ : std_logic;
SIGNAL \saida[48]~output_o\ : std_logic;
SIGNAL \saida[49]~output_o\ : std_logic;
SIGNAL \saida[50]~output_o\ : std_logic;
SIGNAL \saida[51]~output_o\ : std_logic;
SIGNAL \saida[52]~output_o\ : std_logic;
SIGNAL \saida[53]~output_o\ : std_logic;
SIGNAL \saida[54]~output_o\ : std_logic;
SIGNAL \saida[55]~output_o\ : std_logic;
SIGNAL \saida[56]~output_o\ : std_logic;
SIGNAL \saida[57]~output_o\ : std_logic;
SIGNAL \saida[58]~output_o\ : std_logic;
SIGNAL \saida[59]~output_o\ : std_logic;
SIGNAL \saida[60]~output_o\ : std_logic;
SIGNAL \saida[61]~output_o\ : std_logic;
SIGNAL \saida[62]~output_o\ : std_logic;
SIGNAL \saida[63]~output_o\ : std_logic;
SIGNAL \ent[0]~input_o\ : std_logic;
SIGNAL \en_Saida~input_o\ : std_logic;
SIGNAL \saida~0_combout\ : std_logic;
SIGNAL \ent[1]~input_o\ : std_logic;
SIGNAL \saida~1_combout\ : std_logic;
SIGNAL \ent[2]~input_o\ : std_logic;
SIGNAL \saida~2_combout\ : std_logic;
SIGNAL \ent[3]~input_o\ : std_logic;
SIGNAL \saida~3_combout\ : std_logic;
SIGNAL \ent[4]~input_o\ : std_logic;
SIGNAL \saida~4_combout\ : std_logic;
SIGNAL \ent[5]~input_o\ : std_logic;
SIGNAL \saida~5_combout\ : std_logic;
SIGNAL \ent[6]~input_o\ : std_logic;
SIGNAL \saida~6_combout\ : std_logic;
SIGNAL \ent[7]~input_o\ : std_logic;
SIGNAL \saida~7_combout\ : std_logic;
SIGNAL \ent[8]~input_o\ : std_logic;
SIGNAL \saida~8_combout\ : std_logic;
SIGNAL \ent[9]~input_o\ : std_logic;
SIGNAL \saida~9_combout\ : std_logic;
SIGNAL \ent[10]~input_o\ : std_logic;
SIGNAL \saida~10_combout\ : std_logic;
SIGNAL \ent[11]~input_o\ : std_logic;
SIGNAL \saida~11_combout\ : std_logic;
SIGNAL \ent[12]~input_o\ : std_logic;
SIGNAL \saida~12_combout\ : std_logic;
SIGNAL \ent[13]~input_o\ : std_logic;
SIGNAL \saida~13_combout\ : std_logic;
SIGNAL \ent[14]~input_o\ : std_logic;
SIGNAL \saida~14_combout\ : std_logic;
SIGNAL \ent[15]~input_o\ : std_logic;
SIGNAL \saida~15_combout\ : std_logic;
SIGNAL \ent[16]~input_o\ : std_logic;
SIGNAL \saida~16_combout\ : std_logic;
SIGNAL \ent[17]~input_o\ : std_logic;
SIGNAL \saida~17_combout\ : std_logic;
SIGNAL \ent[18]~input_o\ : std_logic;
SIGNAL \saida~18_combout\ : std_logic;
SIGNAL \ent[19]~input_o\ : std_logic;
SIGNAL \saida~19_combout\ : std_logic;
SIGNAL \ent[20]~input_o\ : std_logic;
SIGNAL \saida~20_combout\ : std_logic;
SIGNAL \ent[21]~input_o\ : std_logic;
SIGNAL \saida~21_combout\ : std_logic;
SIGNAL \ent[22]~input_o\ : std_logic;
SIGNAL \saida~22_combout\ : std_logic;
SIGNAL \ent[23]~input_o\ : std_logic;
SIGNAL \saida~23_combout\ : std_logic;
SIGNAL \ent[24]~input_o\ : std_logic;
SIGNAL \saida~24_combout\ : std_logic;
SIGNAL \ent[25]~input_o\ : std_logic;
SIGNAL \saida~25_combout\ : std_logic;
SIGNAL \ent[26]~input_o\ : std_logic;
SIGNAL \saida~26_combout\ : std_logic;
SIGNAL \ent[27]~input_o\ : std_logic;
SIGNAL \saida~27_combout\ : std_logic;
SIGNAL \ent[28]~input_o\ : std_logic;
SIGNAL \saida~28_combout\ : std_logic;
SIGNAL \ent[29]~input_o\ : std_logic;
SIGNAL \saida~29_combout\ : std_logic;
SIGNAL \ent[30]~input_o\ : std_logic;
SIGNAL \saida~30_combout\ : std_logic;
SIGNAL \ent[31]~input_o\ : std_logic;
SIGNAL \saida~31_combout\ : std_logic;
SIGNAL \ent[32]~input_o\ : std_logic;
SIGNAL \saida~32_combout\ : std_logic;
SIGNAL \ent[33]~input_o\ : std_logic;
SIGNAL \saida~33_combout\ : std_logic;
SIGNAL \ent[34]~input_o\ : std_logic;
SIGNAL \saida~34_combout\ : std_logic;
SIGNAL \ent[35]~input_o\ : std_logic;
SIGNAL \saida~35_combout\ : std_logic;
SIGNAL \ent[36]~input_o\ : std_logic;
SIGNAL \saida~36_combout\ : std_logic;
SIGNAL \ent[37]~input_o\ : std_logic;
SIGNAL \saida~37_combout\ : std_logic;
SIGNAL \ent[38]~input_o\ : std_logic;
SIGNAL \saida~38_combout\ : std_logic;
SIGNAL \ent[39]~input_o\ : std_logic;
SIGNAL \saida~39_combout\ : std_logic;
SIGNAL \ent[40]~input_o\ : std_logic;
SIGNAL \saida~40_combout\ : std_logic;
SIGNAL \ent[41]~input_o\ : std_logic;
SIGNAL \saida~41_combout\ : std_logic;
SIGNAL \ent[42]~input_o\ : std_logic;
SIGNAL \saida~42_combout\ : std_logic;
SIGNAL \ent[43]~input_o\ : std_logic;
SIGNAL \saida~43_combout\ : std_logic;
SIGNAL \ent[44]~input_o\ : std_logic;
SIGNAL \saida~44_combout\ : std_logic;
SIGNAL \ent[45]~input_o\ : std_logic;
SIGNAL \saida~45_combout\ : std_logic;
SIGNAL \ent[46]~input_o\ : std_logic;
SIGNAL \saida~46_combout\ : std_logic;
SIGNAL \ent[47]~input_o\ : std_logic;
SIGNAL \saida~47_combout\ : std_logic;
SIGNAL \ent[48]~input_o\ : std_logic;
SIGNAL \saida~48_combout\ : std_logic;
SIGNAL \ent[49]~input_o\ : std_logic;
SIGNAL \saida~49_combout\ : std_logic;
SIGNAL \ent[50]~input_o\ : std_logic;
SIGNAL \saida~50_combout\ : std_logic;
SIGNAL \ent[51]~input_o\ : std_logic;
SIGNAL \saida~51_combout\ : std_logic;
SIGNAL \ent[52]~input_o\ : std_logic;
SIGNAL \saida~52_combout\ : std_logic;
SIGNAL \ent[53]~input_o\ : std_logic;
SIGNAL \saida~53_combout\ : std_logic;
SIGNAL \ent[54]~input_o\ : std_logic;
SIGNAL \saida~54_combout\ : std_logic;
SIGNAL \ent[55]~input_o\ : std_logic;
SIGNAL \saida~55_combout\ : std_logic;
SIGNAL \ent[56]~input_o\ : std_logic;
SIGNAL \saida~56_combout\ : std_logic;
SIGNAL \ent[57]~input_o\ : std_logic;
SIGNAL \saida~57_combout\ : std_logic;
SIGNAL \ent[58]~input_o\ : std_logic;
SIGNAL \saida~58_combout\ : std_logic;
SIGNAL \ent[59]~input_o\ : std_logic;
SIGNAL \saida~59_combout\ : std_logic;
SIGNAL \ent[60]~input_o\ : std_logic;
SIGNAL \saida~60_combout\ : std_logic;
SIGNAL \ent[61]~input_o\ : std_logic;
SIGNAL \saida~61_combout\ : std_logic;
SIGNAL \ent[62]~input_o\ : std_logic;
SIGNAL \saida~62_combout\ : std_logic;
SIGNAL \ent[63]~input_o\ : std_logic;
SIGNAL \saida~63_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_en_Saida <= en_Saida;
ww_ent <= ent;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X117_Y33_N9
\saida[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~0_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

-- Location: IOOBUF_X117_Y70_N9
\saida[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~1_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

-- Location: IOOBUF_X117_Y66_N9
\saida[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~2_combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

-- Location: IOOBUF_X117_Y83_N2
\saida[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~3_combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

-- Location: IOOBUF_X117_Y33_N2
\saida[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~4_combout\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

-- Location: IOOBUF_X117_Y54_N2
\saida[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~5_combout\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

-- Location: IOOBUF_X117_Y68_N2
\saida[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~6_combout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

-- Location: IOOBUF_X117_Y76_N2
\saida[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~7_combout\,
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

-- Location: IOOBUF_X117_Y65_N9
\saida[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~8_combout\,
	devoe => ww_devoe,
	o => \saida[8]~output_o\);

-- Location: IOOBUF_X117_Y65_N2
\saida[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~9_combout\,
	devoe => ww_devoe,
	o => \saida[9]~output_o\);

-- Location: IOOBUF_X117_Y32_N9
\saida[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~10_combout\,
	devoe => ww_devoe,
	o => \saida[10]~output_o\);

-- Location: IOOBUF_X117_Y67_N9
\saida[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~11_combout\,
	devoe => ww_devoe,
	o => \saida[11]~output_o\);

-- Location: IOOBUF_X117_Y73_N9
\saida[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~12_combout\,
	devoe => ww_devoe,
	o => \saida[12]~output_o\);

-- Location: IOOBUF_X117_Y31_N9
\saida[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~13_combout\,
	devoe => ww_devoe,
	o => \saida[13]~output_o\);

-- Location: IOOBUF_X117_Y83_N9
\saida[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~14_combout\,
	devoe => ww_devoe,
	o => \saida[14]~output_o\);

-- Location: IOOBUF_X66_Y91_N2
\saida[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~15_combout\,
	devoe => ww_devoe,
	o => \saida[15]~output_o\);

-- Location: IOOBUF_X68_Y91_N9
\saida[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~16_combout\,
	devoe => ww_devoe,
	o => \saida[16]~output_o\);

-- Location: IOOBUF_X117_Y67_N2
\saida[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~17_combout\,
	devoe => ww_devoe,
	o => \saida[17]~output_o\);

-- Location: IOOBUF_X117_Y29_N2
\saida[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~18_combout\,
	devoe => ww_devoe,
	o => \saida[18]~output_o\);

-- Location: IOOBUF_X84_Y91_N9
\saida[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~19_combout\,
	devoe => ww_devoe,
	o => \saida[19]~output_o\);

-- Location: IOOBUF_X117_Y72_N2
\saida[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~20_combout\,
	devoe => ww_devoe,
	o => \saida[20]~output_o\);

-- Location: IOOBUF_X117_Y21_N9
\saida[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~21_combout\,
	devoe => ww_devoe,
	o => \saida[21]~output_o\);

-- Location: IOOBUF_X117_Y24_N9
\saida[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~22_combout\,
	devoe => ww_devoe,
	o => \saida[22]~output_o\);

-- Location: IOOBUF_X77_Y91_N23
\saida[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~23_combout\,
	devoe => ww_devoe,
	o => \saida[23]~output_o\);

-- Location: IOOBUF_X117_Y50_N2
\saida[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~24_combout\,
	devoe => ww_devoe,
	o => \saida[24]~output_o\);

-- Location: IOOBUF_X117_Y22_N9
\saida[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~25_combout\,
	devoe => ww_devoe,
	o => \saida[25]~output_o\);

-- Location: IOOBUF_X117_Y34_N2
\saida[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~26_combout\,
	devoe => ww_devoe,
	o => \saida[26]~output_o\);

-- Location: IOOBUF_X117_Y69_N9
\saida[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~27_combout\,
	devoe => ww_devoe,
	o => \saida[27]~output_o\);

-- Location: IOOBUF_X117_Y53_N2
\saida[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~28_combout\,
	devoe => ww_devoe,
	o => \saida[28]~output_o\);

-- Location: IOOBUF_X117_Y24_N2
\saida[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~29_combout\,
	devoe => ww_devoe,
	o => \saida[29]~output_o\);

-- Location: IOOBUF_X117_Y22_N2
\saida[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~30_combout\,
	devoe => ww_devoe,
	o => \saida[30]~output_o\);

-- Location: IOOBUF_X117_Y23_N9
\saida[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~31_combout\,
	devoe => ww_devoe,
	o => \saida[31]~output_o\);

-- Location: IOOBUF_X70_Y91_N2
\saida[32]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~32_combout\,
	devoe => ww_devoe,
	o => \saida[32]~output_o\);

-- Location: IOOBUF_X117_Y59_N2
\saida[33]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~33_combout\,
	devoe => ww_devoe,
	o => \saida[33]~output_o\);

-- Location: IOOBUF_X66_Y91_N9
\saida[34]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~34_combout\,
	devoe => ww_devoe,
	o => \saida[34]~output_o\);

-- Location: IOOBUF_X117_Y34_N9
\saida[35]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~35_combout\,
	devoe => ww_devoe,
	o => \saida[35]~output_o\);

-- Location: IOOBUF_X117_Y28_N2
\saida[36]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~36_combout\,
	devoe => ww_devoe,
	o => \saida[36]~output_o\);

-- Location: IOOBUF_X70_Y91_N9
\saida[37]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~37_combout\,
	devoe => ww_devoe,
	o => \saida[37]~output_o\);

-- Location: IOOBUF_X117_Y23_N2
\saida[38]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~38_combout\,
	devoe => ww_devoe,
	o => \saida[38]~output_o\);

-- Location: IOOBUF_X117_Y50_N9
\saida[39]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~39_combout\,
	devoe => ww_devoe,
	o => \saida[39]~output_o\);

-- Location: IOOBUF_X63_Y91_N9
\saida[40]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~40_combout\,
	devoe => ww_devoe,
	o => \saida[40]~output_o\);

-- Location: IOOBUF_X77_Y91_N2
\saida[41]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~41_combout\,
	devoe => ww_devoe,
	o => \saida[41]~output_o\);

-- Location: IOOBUF_X79_Y91_N16
\saida[42]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~42_combout\,
	devoe => ww_devoe,
	o => \saida[42]~output_o\);

-- Location: IOOBUF_X117_Y61_N9
\saida[43]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~43_combout\,
	devoe => ww_devoe,
	o => \saida[43]~output_o\);

-- Location: IOOBUF_X68_Y91_N2
\saida[44]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~44_combout\,
	devoe => ww_devoe,
	o => \saida[44]~output_o\);

-- Location: IOOBUF_X117_Y57_N2
\saida[45]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~45_combout\,
	devoe => ww_devoe,
	o => \saida[45]~output_o\);

-- Location: IOOBUF_X61_Y91_N9
\saida[46]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~46_combout\,
	devoe => ww_devoe,
	o => \saida[46]~output_o\);

-- Location: IOOBUF_X117_Y58_N2
\saida[47]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~47_combout\,
	devoe => ww_devoe,
	o => \saida[47]~output_o\);

-- Location: IOOBUF_X117_Y74_N2
\saida[48]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~48_combout\,
	devoe => ww_devoe,
	o => \saida[48]~output_o\);

-- Location: IOOBUF_X61_Y91_N2
\saida[49]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~49_combout\,
	devoe => ww_devoe,
	o => \saida[49]~output_o\);

-- Location: IOOBUF_X117_Y73_N2
\saida[50]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~50_combout\,
	devoe => ww_devoe,
	o => \saida[50]~output_o\);

-- Location: IOOBUF_X63_Y91_N16
\saida[51]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~51_combout\,
	devoe => ww_devoe,
	o => \saida[51]~output_o\);

-- Location: IOOBUF_X117_Y55_N2
\saida[52]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~52_combout\,
	devoe => ww_devoe,
	o => \saida[52]~output_o\);

-- Location: IOOBUF_X117_Y52_N9
\saida[53]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~53_combout\,
	devoe => ww_devoe,
	o => \saida[53]~output_o\);

-- Location: IOOBUF_X117_Y57_N9
\saida[54]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~54_combout\,
	devoe => ww_devoe,
	o => \saida[54]~output_o\);

-- Location: IOOBUF_X117_Y55_N9
\saida[55]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~55_combout\,
	devoe => ww_devoe,
	o => \saida[55]~output_o\);

-- Location: IOOBUF_X77_Y91_N9
\saida[56]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~56_combout\,
	devoe => ww_devoe,
	o => \saida[56]~output_o\);

-- Location: IOOBUF_X117_Y70_N2
\saida[57]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~57_combout\,
	devoe => ww_devoe,
	o => \saida[57]~output_o\);

-- Location: IOOBUF_X117_Y59_N9
\saida[58]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~58_combout\,
	devoe => ww_devoe,
	o => \saida[58]~output_o\);

-- Location: IOOBUF_X117_Y19_N2
\saida[59]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~59_combout\,
	devoe => ww_devoe,
	o => \saida[59]~output_o\);

-- Location: IOOBUF_X117_Y53_N9
\saida[60]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~60_combout\,
	devoe => ww_devoe,
	o => \saida[60]~output_o\);

-- Location: IOOBUF_X117_Y58_N9
\saida[61]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~61_combout\,
	devoe => ww_devoe,
	o => \saida[61]~output_o\);

-- Location: IOOBUF_X63_Y91_N2
\saida[62]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~62_combout\,
	devoe => ww_devoe,
	o => \saida[62]~output_o\);

-- Location: IOOBUF_X117_Y54_N9
\saida[63]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~63_combout\,
	devoe => ww_devoe,
	o => \saida[63]~output_o\);

-- Location: IOIBUF_X117_Y26_N8
\ent[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(0),
	o => \ent[0]~input_o\);

-- Location: IOIBUF_X117_Y35_N1
\en_Saida~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_Saida,
	o => \en_Saida~input_o\);

-- Location: LCCOMB_X116_Y26_N8
\saida~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~0_combout\ = (\ent[0]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent[0]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~0_combout\);

-- Location: IOIBUF_X117_Y80_N1
\ent[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(1),
	o => \ent[1]~input_o\);

-- Location: LCCOMB_X116_Y73_N8
\saida~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~1_combout\ = (\ent[1]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent[1]~input_o\,
	datac => \en_Saida~input_o\,
	combout => \saida~1_combout\);

-- Location: IOIBUF_X117_Y77_N8
\ent[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(2),
	o => \ent[2]~input_o\);

-- Location: LCCOMB_X116_Y73_N18
\saida~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~2_combout\ = (\ent[2]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent[2]~input_o\,
	datac => \en_Saida~input_o\,
	combout => \saida~2_combout\);

-- Location: IOIBUF_X117_Y69_N1
\ent[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(3),
	o => \ent[3]~input_o\);

-- Location: LCCOMB_X116_Y73_N4
\saida~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~3_combout\ = (\ent[3]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent[3]~input_o\,
	datac => \en_Saida~input_o\,
	combout => \saida~3_combout\);

-- Location: IOIBUF_X117_Y15_N1
\ent[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(4),
	o => \ent[4]~input_o\);

-- Location: LCCOMB_X116_Y26_N2
\saida~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~4_combout\ = (\ent[4]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent[4]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~4_combout\);

-- Location: IOIBUF_X117_Y60_N1
\ent[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(5),
	o => \ent[5]~input_o\);

-- Location: LCCOMB_X116_Y56_N8
\saida~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~5_combout\ = (\en_Saida~input_o\ & \ent[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datad => \ent[5]~input_o\,
	combout => \saida~5_combout\);

-- Location: IOIBUF_X117_Y76_N8
\ent[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(6),
	o => \ent[6]~input_o\);

-- Location: LCCOMB_X116_Y73_N30
\saida~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~6_combout\ = (\en_Saida~input_o\ & \ent[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en_Saida~input_o\,
	datad => \ent[6]~input_o\,
	combout => \saida~6_combout\);

-- Location: IOIBUF_X117_Y79_N8
\ent[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(7),
	o => \ent[7]~input_o\);

-- Location: LCCOMB_X116_Y73_N16
\saida~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~7_combout\ = (\en_Saida~input_o\ & \ent[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en_Saida~input_o\,
	datad => \ent[7]~input_o\,
	combout => \saida~7_combout\);

-- Location: IOIBUF_X117_Y64_N1
\ent[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(8),
	o => \ent[8]~input_o\);

-- Location: LCCOMB_X116_Y64_N0
\saida~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~8_combout\ = (\en_Saida~input_o\ & \ent[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en_Saida~input_o\,
	datad => \ent[8]~input_o\,
	combout => \saida~8_combout\);

-- Location: IOIBUF_X117_Y79_N1
\ent[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(9),
	o => \ent[9]~input_o\);

-- Location: LCCOMB_X116_Y73_N2
\saida~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~9_combout\ = (\ent[9]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent[9]~input_o\,
	datac => \en_Saida~input_o\,
	combout => \saida~9_combout\);

-- Location: IOIBUF_X117_Y27_N1
\ent[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(10),
	o => \ent[10]~input_o\);

-- Location: LCCOMB_X116_Y26_N4
\saida~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~10_combout\ = (\ent[10]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent[10]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~10_combout\);

-- Location: IOIBUF_X117_Y74_N8
\ent[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(11),
	o => \ent[11]~input_o\);

-- Location: LCCOMB_X116_Y73_N20
\saida~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~11_combout\ = (\en_Saida~input_o\ & \ent[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en_Saida~input_o\,
	datad => \ent[11]~input_o\,
	combout => \saida~11_combout\);

-- Location: IOIBUF_X117_Y81_N8
\ent[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(12),
	o => \ent[12]~input_o\);

-- Location: LCCOMB_X116_Y73_N14
\saida~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~12_combout\ = (\en_Saida~input_o\ & \ent[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en_Saida~input_o\,
	datad => \ent[12]~input_o\,
	combout => \saida~12_combout\);

-- Location: IOIBUF_X117_Y29_N8
\ent[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(13),
	o => \ent[13]~input_o\);

-- Location: LCCOMB_X116_Y26_N22
\saida~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~13_combout\ = (\ent[13]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent[13]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~13_combout\);

-- Location: IOIBUF_X117_Y78_N1
\ent[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(14),
	o => \ent[14]~input_o\);

-- Location: LCCOMB_X116_Y78_N0
\saida~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~14_combout\ = (\en_Saida~input_o\ & \ent[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en_Saida~input_o\,
	datad => \ent[14]~input_o\,
	combout => \saida~14_combout\);

-- Location: IOIBUF_X75_Y91_N1
\ent[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(15),
	o => \ent[15]~input_o\);

-- Location: LCCOMB_X71_Y90_N8
\saida~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~15_combout\ = (\ent[15]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent[15]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~15_combout\);

-- Location: IOIBUF_X63_Y91_N22
\ent[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(16),
	o => \ent[16]~input_o\);

-- Location: LCCOMB_X71_Y90_N10
\saida~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~16_combout\ = (\ent[16]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent[16]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~16_combout\);

-- Location: IOIBUF_X117_Y72_N8
\ent[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(17),
	o => \ent[17]~input_o\);

-- Location: LCCOMB_X116_Y73_N0
\saida~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~17_combout\ = (\en_Saida~input_o\ & \ent[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_Saida~input_o\,
	datac => \ent[17]~input_o\,
	combout => \saida~17_combout\);

-- Location: IOIBUF_X117_Y31_N1
\ent[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(18),
	o => \ent[18]~input_o\);

-- Location: LCCOMB_X116_Y26_N16
\saida~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~18_combout\ = (\ent[18]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent[18]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~18_combout\);

-- Location: IOIBUF_X86_Y91_N1
\ent[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(19),
	o => \ent[19]~input_o\);

-- Location: LCCOMB_X86_Y90_N0
\saida~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~19_combout\ = (\ent[19]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent[19]~input_o\,
	datac => \en_Saida~input_o\,
	combout => \saida~19_combout\);

-- Location: IOIBUF_X117_Y84_N8
\ent[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(20),
	o => \ent[20]~input_o\);

-- Location: LCCOMB_X116_Y73_N26
\saida~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~20_combout\ = (\en_Saida~input_o\ & \ent[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_Saida~input_o\,
	datac => \ent[20]~input_o\,
	combout => \saida~20_combout\);

-- Location: IOIBUF_X117_Y26_N1
\ent[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(21),
	o => \ent[21]~input_o\);

-- Location: LCCOMB_X116_Y26_N18
\saida~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~21_combout\ = (\ent[21]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent[21]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~21_combout\);

-- Location: IOIBUF_X117_Y18_N1
\ent[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(22),
	o => \ent[22]~input_o\);

-- Location: LCCOMB_X116_Y26_N12
\saida~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~22_combout\ = (\ent[22]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent[22]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~22_combout\);

-- Location: IOIBUF_X79_Y91_N22
\ent[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(23),
	o => \ent[23]~input_o\);

-- Location: LCCOMB_X71_Y90_N20
\saida~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~23_combout\ = (\ent[23]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent[23]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~23_combout\);

-- Location: IOIBUF_X117_Y56_N1
\ent[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(24),
	o => \ent[24]~input_o\);

-- Location: LCCOMB_X116_Y56_N10
\saida~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~24_combout\ = (\en_Saida~input_o\ & \ent[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datad => \ent[24]~input_o\,
	combout => \saida~24_combout\);

-- Location: IOIBUF_X117_Y18_N8
\ent[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(25),
	o => \ent[25]~input_o\);

-- Location: LCCOMB_X116_Y26_N30
\saida~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~25_combout\ = (\ent[25]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent[25]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~25_combout\);

-- Location: IOIBUF_X117_Y15_N8
\ent[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(26),
	o => \ent[26]~input_o\);

-- Location: LCCOMB_X116_Y26_N24
\saida~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~26_combout\ = (\ent[26]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent[26]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~26_combout\);

-- Location: IOIBUF_X117_Y77_N1
\ent[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(27),
	o => \ent[27]~input_o\);

-- Location: LCCOMB_X116_Y73_N28
\saida~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~27_combout\ = (\en_Saida~input_o\ & \ent[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en_Saida~input_o\,
	datad => \ent[27]~input_o\,
	combout => \saida~27_combout\);

-- Location: IOIBUF_X117_Y51_N8
\ent[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(28),
	o => \ent[28]~input_o\);

-- Location: LCCOMB_X116_Y56_N20
\saida~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~28_combout\ = (\en_Saida~input_o\ & \ent[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datac => \ent[28]~input_o\,
	combout => \saida~28_combout\);

-- Location: IOIBUF_X117_Y19_N8
\ent[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(29),
	o => \ent[29]~input_o\);

-- Location: LCCOMB_X116_Y26_N26
\saida~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~29_combout\ = (\ent[29]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent[29]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~29_combout\);

-- Location: IOIBUF_X117_Y17_N8
\ent[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(30),
	o => \ent[30]~input_o\);

-- Location: LCCOMB_X116_Y26_N28
\saida~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~30_combout\ = (\ent[30]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent[30]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~30_combout\);

-- Location: IOIBUF_X117_Y27_N8
\ent[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(31),
	o => \ent[31]~input_o\);

-- Location: LCCOMB_X116_Y26_N14
\saida~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~31_combout\ = (\ent[31]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent[31]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~31_combout\);

-- Location: IOIBUF_X79_Y91_N8
\ent[32]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(32),
	o => \ent[32]~input_o\);

-- Location: LCCOMB_X71_Y90_N14
\saida~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~32_combout\ = (\ent[32]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent[32]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~32_combout\);

-- Location: IOIBUF_X117_Y60_N15
\ent[33]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(33),
	o => \ent[33]~input_o\);

-- Location: LCCOMB_X116_Y56_N22
\saida~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~33_combout\ = (\en_Saida~input_o\ & \ent[33]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datad => \ent[33]~input_o\,
	combout => \saida~33_combout\);

-- Location: IOIBUF_X75_Y91_N8
\ent[34]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(34),
	o => \ent[34]~input_o\);

-- Location: LCCOMB_X71_Y90_N24
\saida~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~34_combout\ = (\ent[34]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent[34]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~34_combout\);

-- Location: IOIBUF_X117_Y32_N1
\ent[35]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(35),
	o => \ent[35]~input_o\);

-- Location: LCCOMB_X116_Y26_N0
\saida~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~35_combout\ = (\ent[35]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent[35]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~35_combout\);

-- Location: IOIBUF_X117_Y28_N8
\ent[36]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(36),
	o => \ent[36]~input_o\);

-- Location: LCCOMB_X116_Y26_N10
\saida~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~36_combout\ = (\ent[36]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent[36]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~36_combout\);

-- Location: IOIBUF_X66_Y91_N22
\ent[37]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(37),
	o => \ent[37]~input_o\);

-- Location: LCCOMB_X71_Y90_N18
\saida~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~37_combout\ = (\ent[37]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent[37]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~37_combout\);

-- Location: IOIBUF_X117_Y17_N1
\ent[38]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(38),
	o => \ent[38]~input_o\);

-- Location: LCCOMB_X116_Y26_N20
\saida~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~38_combout\ = (\ent[38]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent[38]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~38_combout\);

-- Location: IOIBUF_X117_Y48_N8
\ent[39]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(39),
	o => \ent[39]~input_o\);

-- Location: LCCOMB_X116_Y48_N24
\saida~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~39_combout\ = (\en_Saida~input_o\ & \ent[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en_Saida~input_o\,
	datad => \ent[39]~input_o\,
	combout => \saida~39_combout\);

-- Location: IOIBUF_X61_Y91_N15
\ent[40]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(40),
	o => \ent[40]~input_o\);

-- Location: LCCOMB_X71_Y90_N4
\saida~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~40_combout\ = (\ent[40]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent[40]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~40_combout\);

-- Location: IOIBUF_X66_Y91_N15
\ent[41]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(41),
	o => \ent[41]~input_o\);

-- Location: LCCOMB_X71_Y90_N30
\saida~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~41_combout\ = (\ent[41]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent[41]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~41_combout\);

-- Location: IOIBUF_X77_Y91_N15
\ent[42]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(42),
	o => \ent[42]~input_o\);

-- Location: LCCOMB_X71_Y90_N0
\saida~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~42_combout\ = (\ent[42]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent[42]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~42_combout\);

-- Location: IOIBUF_X117_Y61_N1
\ent[43]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(43),
	o => \ent[43]~input_o\);

-- Location: LCCOMB_X116_Y61_N24
\saida~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~43_combout\ = (\en_Saida~input_o\ & \ent[43]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datad => \ent[43]~input_o\,
	combout => \saida~43_combout\);

-- Location: IOIBUF_X79_Y91_N1
\ent[44]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(44),
	o => \ent[44]~input_o\);

-- Location: LCCOMB_X71_Y90_N2
\saida~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~44_combout\ = (\ent[44]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent[44]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~44_combout\);

-- Location: IOIBUF_X117_Y48_N1
\ent[45]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(45),
	o => \ent[45]~input_o\);

-- Location: LCCOMB_X116_Y56_N0
\saida~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~45_combout\ = (\en_Saida~input_o\ & \ent[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datac => \ent[45]~input_o\,
	combout => \saida~45_combout\);

-- Location: IOIBUF_X72_Y91_N8
\ent[46]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(46),
	o => \ent[46]~input_o\);

-- Location: LCCOMB_X71_Y90_N12
\saida~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~46_combout\ = (\ent[46]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent[46]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~46_combout\);

-- Location: IOIBUF_X117_Y60_N8
\ent[47]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(47),
	o => \ent[47]~input_o\);

-- Location: LCCOMB_X116_Y56_N2
\saida~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~47_combout\ = (\en_Saida~input_o\ & \ent[47]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datac => \ent[47]~input_o\,
	combout => \saida~47_combout\);

-- Location: IOIBUF_X117_Y80_N8
\ent[48]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(48),
	o => \ent[48]~input_o\);

-- Location: LCCOMB_X116_Y73_N22
\saida~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~48_combout\ = (\en_Saida~input_o\ & \ent[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en_Saida~input_o\,
	datad => \ent[48]~input_o\,
	combout => \saida~48_combout\);

-- Location: IOIBUF_X82_Y91_N1
\ent[49]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(49),
	o => \ent[49]~input_o\);

-- Location: LCCOMB_X71_Y90_N6
\saida~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~49_combout\ = (\ent[49]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent[49]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~49_combout\);

-- Location: IOIBUF_X117_Y81_N1
\ent[50]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(50),
	o => \ent[50]~input_o\);

-- Location: LCCOMB_X116_Y73_N24
\saida~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~50_combout\ = (\en_Saida~input_o\ & \ent[50]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en_Saida~input_o\,
	datad => \ent[50]~input_o\,
	combout => \saida~50_combout\);

-- Location: IOIBUF_X84_Y91_N1
\ent[51]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(51),
	o => \ent[51]~input_o\);

-- Location: LCCOMB_X71_Y90_N16
\saida~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~51_combout\ = (\ent[51]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent[51]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~51_combout\);

-- Location: IOIBUF_X117_Y49_N1
\ent[52]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(52),
	o => \ent[52]~input_o\);

-- Location: LCCOMB_X116_Y56_N4
\saida~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~52_combout\ = (\en_Saida~input_o\ & \ent[52]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datac => \ent[52]~input_o\,
	combout => \saida~52_combout\);

-- Location: IOIBUF_X117_Y62_N8
\ent[53]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(53),
	o => \ent[53]~input_o\);

-- Location: LCCOMB_X116_Y56_N6
\saida~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~53_combout\ = (\en_Saida~input_o\ & \ent[53]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datac => \ent[53]~input_o\,
	combout => \saida~53_combout\);

-- Location: IOIBUF_X117_Y52_N1
\ent[54]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(54),
	o => \ent[54]~input_o\);

-- Location: LCCOMB_X116_Y56_N24
\saida~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~54_combout\ = (\en_Saida~input_o\ & \ent[54]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datad => \ent[54]~input_o\,
	combout => \saida~54_combout\);

-- Location: IOIBUF_X117_Y64_N8
\ent[55]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(55),
	o => \ent[55]~input_o\);

-- Location: LCCOMB_X116_Y56_N26
\saida~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~55_combout\ = (\en_Saida~input_o\ & \ent[55]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datad => \ent[55]~input_o\,
	combout => \saida~55_combout\);

-- Location: IOIBUF_X68_Y91_N15
\ent[56]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(56),
	o => \ent[56]~input_o\);

-- Location: LCCOMB_X71_Y90_N26
\saida~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~56_combout\ = (\ent[56]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ent[56]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~56_combout\);

-- Location: IOIBUF_X115_Y91_N1
\ent[57]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(57),
	o => \ent[57]~input_o\);

-- Location: LCCOMB_X116_Y73_N10
\saida~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~57_combout\ = (\en_Saida~input_o\ & \ent[57]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_Saida~input_o\,
	datac => \ent[57]~input_o\,
	combout => \saida~57_combout\);

-- Location: IOIBUF_X117_Y62_N1
\ent[58]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(58),
	o => \ent[58]~input_o\);

-- Location: LCCOMB_X116_Y56_N28
\saida~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~58_combout\ = (\en_Saida~input_o\ & \ent[58]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datad => \ent[58]~input_o\,
	combout => \saida~58_combout\);

-- Location: IOIBUF_X117_Y21_N1
\ent[59]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(59),
	o => \ent[59]~input_o\);

-- Location: LCCOMB_X116_Y26_N6
\saida~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~59_combout\ = (\ent[59]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent[59]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~59_combout\);

-- Location: IOIBUF_X117_Y49_N8
\ent[60]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(60),
	o => \ent[60]~input_o\);

-- Location: LCCOMB_X116_Y56_N30
\saida~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~60_combout\ = (\en_Saida~input_o\ & \ent[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datac => \ent[60]~input_o\,
	combout => \saida~60_combout\);

-- Location: IOIBUF_X117_Y51_N1
\ent[61]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(61),
	o => \ent[61]~input_o\);

-- Location: LCCOMB_X116_Y56_N16
\saida~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~61_combout\ = (\en_Saida~input_o\ & \ent[61]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datac => \ent[61]~input_o\,
	combout => \saida~61_combout\);

-- Location: IOIBUF_X72_Y91_N1
\ent[62]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(62),
	o => \ent[62]~input_o\);

-- Location: LCCOMB_X71_Y90_N28
\saida~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~62_combout\ = (\ent[62]~input_o\ & \en_Saida~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ent[62]~input_o\,
	datad => \en_Saida~input_o\,
	combout => \saida~62_combout\);

-- Location: IOIBUF_X117_Y56_N8
\ent[63]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(63),
	o => \ent[63]~input_o\);

-- Location: LCCOMB_X116_Y56_N18
\saida~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~63_combout\ = (\en_Saida~input_o\ & \ent[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datac => \ent[63]~input_o\,
	combout => \saida~63_combout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;

ww_saida(7) <= \saida[7]~output_o\;

ww_saida(8) <= \saida[8]~output_o\;

ww_saida(9) <= \saida[9]~output_o\;

ww_saida(10) <= \saida[10]~output_o\;

ww_saida(11) <= \saida[11]~output_o\;

ww_saida(12) <= \saida[12]~output_o\;

ww_saida(13) <= \saida[13]~output_o\;

ww_saida(14) <= \saida[14]~output_o\;

ww_saida(15) <= \saida[15]~output_o\;

ww_saida(16) <= \saida[16]~output_o\;

ww_saida(17) <= \saida[17]~output_o\;

ww_saida(18) <= \saida[18]~output_o\;

ww_saida(19) <= \saida[19]~output_o\;

ww_saida(20) <= \saida[20]~output_o\;

ww_saida(21) <= \saida[21]~output_o\;

ww_saida(22) <= \saida[22]~output_o\;

ww_saida(23) <= \saida[23]~output_o\;

ww_saida(24) <= \saida[24]~output_o\;

ww_saida(25) <= \saida[25]~output_o\;

ww_saida(26) <= \saida[26]~output_o\;

ww_saida(27) <= \saida[27]~output_o\;

ww_saida(28) <= \saida[28]~output_o\;

ww_saida(29) <= \saida[29]~output_o\;

ww_saida(30) <= \saida[30]~output_o\;

ww_saida(31) <= \saida[31]~output_o\;

ww_saida(32) <= \saida[32]~output_o\;

ww_saida(33) <= \saida[33]~output_o\;

ww_saida(34) <= \saida[34]~output_o\;

ww_saida(35) <= \saida[35]~output_o\;

ww_saida(36) <= \saida[36]~output_o\;

ww_saida(37) <= \saida[37]~output_o\;

ww_saida(38) <= \saida[38]~output_o\;

ww_saida(39) <= \saida[39]~output_o\;

ww_saida(40) <= \saida[40]~output_o\;

ww_saida(41) <= \saida[41]~output_o\;

ww_saida(42) <= \saida[42]~output_o\;

ww_saida(43) <= \saida[43]~output_o\;

ww_saida(44) <= \saida[44]~output_o\;

ww_saida(45) <= \saida[45]~output_o\;

ww_saida(46) <= \saida[46]~output_o\;

ww_saida(47) <= \saida[47]~output_o\;

ww_saida(48) <= \saida[48]~output_o\;

ww_saida(49) <= \saida[49]~output_o\;

ww_saida(50) <= \saida[50]~output_o\;

ww_saida(51) <= \saida[51]~output_o\;

ww_saida(52) <= \saida[52]~output_o\;

ww_saida(53) <= \saida[53]~output_o\;

ww_saida(54) <= \saida[54]~output_o\;

ww_saida(55) <= \saida[55]~output_o\;

ww_saida(56) <= \saida[56]~output_o\;

ww_saida(57) <= \saida[57]~output_o\;

ww_saida(58) <= \saida[58]~output_o\;

ww_saida(59) <= \saida[59]~output_o\;

ww_saida(60) <= \saida[60]~output_o\;

ww_saida(61) <= \saida[61]~output_o\;

ww_saida(62) <= \saida[62]~output_o\;

ww_saida(63) <= \saida[63]~output_o\;
END structure;


