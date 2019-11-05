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

-- DATE "04/18/2017 13:05:26"

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

ENTITY 	Kmeans_MuxCentroidData IS
    PORT (
	centroidInit : IN std_logic_vector(63 DOWNTO 0);
	centroidCalc : IN std_logic_vector(63 DOWNTO 0);
	centroidCalcFP : IN std_logic_vector(63 DOWNTO 0);
	op : IN std_logic_vector(1 DOWNTO 0);
	centroidData_A : OUT std_logic_vector(63 DOWNTO 0);
	centroidData_B : OUT std_logic_vector(63 DOWNTO 0)
	);
END Kmeans_MuxCentroidData;

-- Design Ports Information
-- centroidData_A[0]	=>  Location: PIN_AJ13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[1]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[2]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[3]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[4]	=>  Location: PIN_AK20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[5]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[6]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[7]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[8]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[9]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[10]	=>  Location: PIN_AG24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[11]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[12]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[13]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[14]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[15]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[16]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[17]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[18]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[19]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[20]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[21]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[22]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[23]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[24]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[25]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[26]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[27]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[28]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[29]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[30]	=>  Location: PIN_AE30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[31]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[32]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[33]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[34]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[35]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[36]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[37]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[38]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[39]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[40]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[41]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[42]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[43]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[44]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[45]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[46]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[47]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[48]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[49]	=>  Location: PIN_D30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[50]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[51]	=>  Location: PIN_C29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[52]	=>  Location: PIN_G29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[53]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[54]	=>  Location: PIN_M30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[55]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[56]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[57]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[58]	=>  Location: PIN_H27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[59]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[60]	=>  Location: PIN_N28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[61]	=>  Location: PIN_E30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[62]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_A[63]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[0]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[1]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[2]	=>  Location: PIN_B27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[3]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[4]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[5]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[6]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[7]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[8]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[9]	=>  Location: PIN_C28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[10]	=>  Location: PIN_A27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[11]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[12]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[13]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[14]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[15]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[16]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[17]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[18]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[19]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[20]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[21]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[22]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[23]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[24]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[25]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[26]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[27]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[28]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[29]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[30]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[31]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[32]	=>  Location: PIN_AA29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[33]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[34]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[35]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[36]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[37]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[38]	=>  Location: PIN_R29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[39]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[40]	=>  Location: PIN_T27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[41]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[42]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[43]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[44]	=>  Location: PIN_U30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[45]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[46]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[47]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[48]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[49]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[50]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[51]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[52]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[53]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[54]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[55]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[56]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[57]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[58]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[59]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[60]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[61]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[62]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidData_B[63]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[0]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[0]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[0]	=>  Location: PIN_Y30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[1]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[1]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[2]	=>  Location: PIN_AK25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[2]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[3]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[3]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[4]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[4]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[5]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[5]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[6]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[6]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[7]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[7]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[8]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[8]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[9]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[9]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[10]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[10]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[11]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[11]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[12]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[12]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[13]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[13]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[14]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[14]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[15]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[15]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[16]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[16]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[17]	=>  Location: PIN_AJ30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[17]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[18]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[18]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[19]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[19]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[20]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[20]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[21]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[21]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[22]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[22]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[23]	=>  Location: PIN_AG29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[23]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[24]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[24]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[25]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[25]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[26]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[26]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[27]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[27]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[28]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[28]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[29]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[29]	=>  Location: PIN_AA27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[30]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[30]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[31]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[31]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[32]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[32]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[33]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[33]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[34]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[34]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[35]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[35]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[36]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[36]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[37]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[37]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[38]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[38]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[39]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[39]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[40]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[40]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[41]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[41]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[42]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[42]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[43]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[43]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[44]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[44]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[45]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[45]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[46]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[46]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[47]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[47]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[48]	=>  Location: PIN_M29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[48]	=>  Location: PIN_K30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[49]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[49]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[50]	=>  Location: PIN_G30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[50]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[51]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[51]	=>  Location: PIN_J29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[52]	=>  Location: PIN_J30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[52]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[53]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[53]	=>  Location: PIN_N29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[54]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[54]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[55]	=>  Location: PIN_F30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[55]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[56]	=>  Location: PIN_L30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[56]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[57]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[57]	=>  Location: PIN_K24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[58]	=>  Location: PIN_H28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[58]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[59]	=>  Location: PIN_K29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[59]	=>  Location: PIN_N24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[60]	=>  Location: PIN_N30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[60]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[61]	=>  Location: PIN_H30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[61]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[62]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[62]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcFP[63]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalc[63]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[0]	=>  Location: PIN_A29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[1]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[2]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[3]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[4]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[5]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[6]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[7]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[8]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[9]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[10]	=>  Location: PIN_B30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[11]	=>  Location: PIN_F23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[12]	=>  Location: PIN_A28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[13]	=>  Location: PIN_B28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[14]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[15]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[16]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[17]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[18]	=>  Location: PIN_AC16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[19]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[20]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[21]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[22]	=>  Location: PIN_AK10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[23]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[24]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[25]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[26]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[27]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[28]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[29]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[30]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[31]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[32]	=>  Location: PIN_Y28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[33]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[34]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[35]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[36]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[37]	=>  Location: PIN_W30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[38]	=>  Location: PIN_T28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[39]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[40]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[41]	=>  Location: PIN_W29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[42]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[43]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[44]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[45]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[46]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[47]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[48]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[49]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[50]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[51]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[52]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[53]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[54]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[55]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[56]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[57]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[58]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[59]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[60]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[61]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[62]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[63]	=>  Location: PIN_C30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Kmeans_MuxCentroidData IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_centroidInit : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_centroidCalc : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_centroidCalcFP : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_op : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_centroidData_A : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_centroidData_B : std_logic_vector(63 DOWNTO 0);
SIGNAL \centroidData_A[0]~output_o\ : std_logic;
SIGNAL \centroidData_A[1]~output_o\ : std_logic;
SIGNAL \centroidData_A[2]~output_o\ : std_logic;
SIGNAL \centroidData_A[3]~output_o\ : std_logic;
SIGNAL \centroidData_A[4]~output_o\ : std_logic;
SIGNAL \centroidData_A[5]~output_o\ : std_logic;
SIGNAL \centroidData_A[6]~output_o\ : std_logic;
SIGNAL \centroidData_A[7]~output_o\ : std_logic;
SIGNAL \centroidData_A[8]~output_o\ : std_logic;
SIGNAL \centroidData_A[9]~output_o\ : std_logic;
SIGNAL \centroidData_A[10]~output_o\ : std_logic;
SIGNAL \centroidData_A[11]~output_o\ : std_logic;
SIGNAL \centroidData_A[12]~output_o\ : std_logic;
SIGNAL \centroidData_A[13]~output_o\ : std_logic;
SIGNAL \centroidData_A[14]~output_o\ : std_logic;
SIGNAL \centroidData_A[15]~output_o\ : std_logic;
SIGNAL \centroidData_A[16]~output_o\ : std_logic;
SIGNAL \centroidData_A[17]~output_o\ : std_logic;
SIGNAL \centroidData_A[18]~output_o\ : std_logic;
SIGNAL \centroidData_A[19]~output_o\ : std_logic;
SIGNAL \centroidData_A[20]~output_o\ : std_logic;
SIGNAL \centroidData_A[21]~output_o\ : std_logic;
SIGNAL \centroidData_A[22]~output_o\ : std_logic;
SIGNAL \centroidData_A[23]~output_o\ : std_logic;
SIGNAL \centroidData_A[24]~output_o\ : std_logic;
SIGNAL \centroidData_A[25]~output_o\ : std_logic;
SIGNAL \centroidData_A[26]~output_o\ : std_logic;
SIGNAL \centroidData_A[27]~output_o\ : std_logic;
SIGNAL \centroidData_A[28]~output_o\ : std_logic;
SIGNAL \centroidData_A[29]~output_o\ : std_logic;
SIGNAL \centroidData_A[30]~output_o\ : std_logic;
SIGNAL \centroidData_A[31]~output_o\ : std_logic;
SIGNAL \centroidData_A[32]~output_o\ : std_logic;
SIGNAL \centroidData_A[33]~output_o\ : std_logic;
SIGNAL \centroidData_A[34]~output_o\ : std_logic;
SIGNAL \centroidData_A[35]~output_o\ : std_logic;
SIGNAL \centroidData_A[36]~output_o\ : std_logic;
SIGNAL \centroidData_A[37]~output_o\ : std_logic;
SIGNAL \centroidData_A[38]~output_o\ : std_logic;
SIGNAL \centroidData_A[39]~output_o\ : std_logic;
SIGNAL \centroidData_A[40]~output_o\ : std_logic;
SIGNAL \centroidData_A[41]~output_o\ : std_logic;
SIGNAL \centroidData_A[42]~output_o\ : std_logic;
SIGNAL \centroidData_A[43]~output_o\ : std_logic;
SIGNAL \centroidData_A[44]~output_o\ : std_logic;
SIGNAL \centroidData_A[45]~output_o\ : std_logic;
SIGNAL \centroidData_A[46]~output_o\ : std_logic;
SIGNAL \centroidData_A[47]~output_o\ : std_logic;
SIGNAL \centroidData_A[48]~output_o\ : std_logic;
SIGNAL \centroidData_A[49]~output_o\ : std_logic;
SIGNAL \centroidData_A[50]~output_o\ : std_logic;
SIGNAL \centroidData_A[51]~output_o\ : std_logic;
SIGNAL \centroidData_A[52]~output_o\ : std_logic;
SIGNAL \centroidData_A[53]~output_o\ : std_logic;
SIGNAL \centroidData_A[54]~output_o\ : std_logic;
SIGNAL \centroidData_A[55]~output_o\ : std_logic;
SIGNAL \centroidData_A[56]~output_o\ : std_logic;
SIGNAL \centroidData_A[57]~output_o\ : std_logic;
SIGNAL \centroidData_A[58]~output_o\ : std_logic;
SIGNAL \centroidData_A[59]~output_o\ : std_logic;
SIGNAL \centroidData_A[60]~output_o\ : std_logic;
SIGNAL \centroidData_A[61]~output_o\ : std_logic;
SIGNAL \centroidData_A[62]~output_o\ : std_logic;
SIGNAL \centroidData_A[63]~output_o\ : std_logic;
SIGNAL \centroidData_B[0]~output_o\ : std_logic;
SIGNAL \centroidData_B[1]~output_o\ : std_logic;
SIGNAL \centroidData_B[2]~output_o\ : std_logic;
SIGNAL \centroidData_B[3]~output_o\ : std_logic;
SIGNAL \centroidData_B[4]~output_o\ : std_logic;
SIGNAL \centroidData_B[5]~output_o\ : std_logic;
SIGNAL \centroidData_B[6]~output_o\ : std_logic;
SIGNAL \centroidData_B[7]~output_o\ : std_logic;
SIGNAL \centroidData_B[8]~output_o\ : std_logic;
SIGNAL \centroidData_B[9]~output_o\ : std_logic;
SIGNAL \centroidData_B[10]~output_o\ : std_logic;
SIGNAL \centroidData_B[11]~output_o\ : std_logic;
SIGNAL \centroidData_B[12]~output_o\ : std_logic;
SIGNAL \centroidData_B[13]~output_o\ : std_logic;
SIGNAL \centroidData_B[14]~output_o\ : std_logic;
SIGNAL \centroidData_B[15]~output_o\ : std_logic;
SIGNAL \centroidData_B[16]~output_o\ : std_logic;
SIGNAL \centroidData_B[17]~output_o\ : std_logic;
SIGNAL \centroidData_B[18]~output_o\ : std_logic;
SIGNAL \centroidData_B[19]~output_o\ : std_logic;
SIGNAL \centroidData_B[20]~output_o\ : std_logic;
SIGNAL \centroidData_B[21]~output_o\ : std_logic;
SIGNAL \centroidData_B[22]~output_o\ : std_logic;
SIGNAL \centroidData_B[23]~output_o\ : std_logic;
SIGNAL \centroidData_B[24]~output_o\ : std_logic;
SIGNAL \centroidData_B[25]~output_o\ : std_logic;
SIGNAL \centroidData_B[26]~output_o\ : std_logic;
SIGNAL \centroidData_B[27]~output_o\ : std_logic;
SIGNAL \centroidData_B[28]~output_o\ : std_logic;
SIGNAL \centroidData_B[29]~output_o\ : std_logic;
SIGNAL \centroidData_B[30]~output_o\ : std_logic;
SIGNAL \centroidData_B[31]~output_o\ : std_logic;
SIGNAL \centroidData_B[32]~output_o\ : std_logic;
SIGNAL \centroidData_B[33]~output_o\ : std_logic;
SIGNAL \centroidData_B[34]~output_o\ : std_logic;
SIGNAL \centroidData_B[35]~output_o\ : std_logic;
SIGNAL \centroidData_B[36]~output_o\ : std_logic;
SIGNAL \centroidData_B[37]~output_o\ : std_logic;
SIGNAL \centroidData_B[38]~output_o\ : std_logic;
SIGNAL \centroidData_B[39]~output_o\ : std_logic;
SIGNAL \centroidData_B[40]~output_o\ : std_logic;
SIGNAL \centroidData_B[41]~output_o\ : std_logic;
SIGNAL \centroidData_B[42]~output_o\ : std_logic;
SIGNAL \centroidData_B[43]~output_o\ : std_logic;
SIGNAL \centroidData_B[44]~output_o\ : std_logic;
SIGNAL \centroidData_B[45]~output_o\ : std_logic;
SIGNAL \centroidData_B[46]~output_o\ : std_logic;
SIGNAL \centroidData_B[47]~output_o\ : std_logic;
SIGNAL \centroidData_B[48]~output_o\ : std_logic;
SIGNAL \centroidData_B[49]~output_o\ : std_logic;
SIGNAL \centroidData_B[50]~output_o\ : std_logic;
SIGNAL \centroidData_B[51]~output_o\ : std_logic;
SIGNAL \centroidData_B[52]~output_o\ : std_logic;
SIGNAL \centroidData_B[53]~output_o\ : std_logic;
SIGNAL \centroidData_B[54]~output_o\ : std_logic;
SIGNAL \centroidData_B[55]~output_o\ : std_logic;
SIGNAL \centroidData_B[56]~output_o\ : std_logic;
SIGNAL \centroidData_B[57]~output_o\ : std_logic;
SIGNAL \centroidData_B[58]~output_o\ : std_logic;
SIGNAL \centroidData_B[59]~output_o\ : std_logic;
SIGNAL \centroidData_B[60]~output_o\ : std_logic;
SIGNAL \centroidData_B[61]~output_o\ : std_logic;
SIGNAL \centroidData_B[62]~output_o\ : std_logic;
SIGNAL \centroidData_B[63]~output_o\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[0]~input_o\ : std_logic;
SIGNAL \centroidCalc[0]~input_o\ : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[1]~input_o\ : std_logic;
SIGNAL \centroidCalc[1]~input_o\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \centroidCalc[2]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[2]~input_o\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[3]~input_o\ : std_logic;
SIGNAL \centroidCalc[3]~input_o\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[4]~input_o\ : std_logic;
SIGNAL \centroidCalc[4]~input_o\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[5]~input_o\ : std_logic;
SIGNAL \centroidCalc[5]~input_o\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[6]~input_o\ : std_logic;
SIGNAL \centroidCalc[6]~input_o\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[7]~input_o\ : std_logic;
SIGNAL \centroidCalc[7]~input_o\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \centroidCalc[8]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[8]~input_o\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \centroidCalc[9]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[9]~input_o\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \centroidCalc[10]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[10]~input_o\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[11]~input_o\ : std_logic;
SIGNAL \centroidCalc[11]~input_o\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[12]~input_o\ : std_logic;
SIGNAL \centroidCalc[12]~input_o\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[13]~input_o\ : std_logic;
SIGNAL \centroidCalc[13]~input_o\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[14]~input_o\ : std_logic;
SIGNAL \centroidCalc[14]~input_o\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \centroidCalc[15]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[15]~input_o\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[16]~input_o\ : std_logic;
SIGNAL \centroidCalc[16]~input_o\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \centroidCalc[17]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[17]~input_o\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[18]~input_o\ : std_logic;
SIGNAL \centroidCalc[18]~input_o\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \centroidCalc[19]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[19]~input_o\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \centroidCalc[20]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[20]~input_o\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[21]~input_o\ : std_logic;
SIGNAL \centroidCalc[21]~input_o\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \centroidCalc[22]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[22]~input_o\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[23]~input_o\ : std_logic;
SIGNAL \centroidCalc[23]~input_o\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \centroidCalc[24]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[24]~input_o\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \centroidCalc[25]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[25]~input_o\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[26]~input_o\ : std_logic;
SIGNAL \centroidCalc[26]~input_o\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[27]~input_o\ : std_logic;
SIGNAL \centroidCalc[27]~input_o\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \centroidCalc[28]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[28]~input_o\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \centroidCalc[29]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[29]~input_o\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \centroidCalc[30]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[30]~input_o\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \centroidCalc[31]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[31]~input_o\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \centroidCalc[32]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[32]~input_o\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[33]~input_o\ : std_logic;
SIGNAL \centroidCalc[33]~input_o\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \centroidCalc[34]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[34]~input_o\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \centroidCalc[35]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[35]~input_o\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[36]~input_o\ : std_logic;
SIGNAL \centroidCalc[36]~input_o\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \centroidCalc[37]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[37]~input_o\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \centroidCalc[38]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[38]~input_o\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \centroidCalc[39]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[39]~input_o\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \centroidCalc[40]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[40]~input_o\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \centroidCalc[41]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[41]~input_o\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \centroidCalc[42]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[42]~input_o\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \centroidCalc[43]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[43]~input_o\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \centroidCalc[44]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[44]~input_o\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \centroidCalc[45]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[45]~input_o\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \centroidCalc[46]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[46]~input_o\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[47]~input_o\ : std_logic;
SIGNAL \centroidCalc[47]~input_o\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[48]~input_o\ : std_logic;
SIGNAL \centroidCalc[48]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \centroidCalc[49]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[49]~input_o\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \centroidCalc[50]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[50]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[51]~input_o\ : std_logic;
SIGNAL \centroidCalc[51]~input_o\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[52]~input_o\ : std_logic;
SIGNAL \centroidCalc[52]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[53]~input_o\ : std_logic;
SIGNAL \centroidCalc[53]~input_o\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \centroidCalc[54]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[54]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[55]~input_o\ : std_logic;
SIGNAL \centroidCalc[55]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[56]~input_o\ : std_logic;
SIGNAL \centroidCalc[56]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[57]~input_o\ : std_logic;
SIGNAL \centroidCalc[57]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[58]~input_o\ : std_logic;
SIGNAL \centroidCalc[58]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \centroidCalc[59]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[59]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \centroidCalc[60]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[60]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \centroidCalc[61]~input_o\ : std_logic;
SIGNAL \centroidCalcFP[61]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[62]~input_o\ : std_logic;
SIGNAL \centroidCalc[62]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \centroidCalcFP[63]~input_o\ : std_logic;
SIGNAL \centroidCalc[63]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \centroidInit[0]~input_o\ : std_logic;
SIGNAL \Mux127~0_combout\ : std_logic;
SIGNAL \centroidInit[1]~input_o\ : std_logic;
SIGNAL \Mux126~0_combout\ : std_logic;
SIGNAL \centroidInit[2]~input_o\ : std_logic;
SIGNAL \Mux125~0_combout\ : std_logic;
SIGNAL \centroidInit[3]~input_o\ : std_logic;
SIGNAL \Mux124~0_combout\ : std_logic;
SIGNAL \centroidInit[4]~input_o\ : std_logic;
SIGNAL \Mux123~0_combout\ : std_logic;
SIGNAL \centroidInit[5]~input_o\ : std_logic;
SIGNAL \Mux122~0_combout\ : std_logic;
SIGNAL \centroidInit[6]~input_o\ : std_logic;
SIGNAL \Mux121~0_combout\ : std_logic;
SIGNAL \centroidInit[7]~input_o\ : std_logic;
SIGNAL \Mux120~0_combout\ : std_logic;
SIGNAL \centroidInit[8]~input_o\ : std_logic;
SIGNAL \Mux119~0_combout\ : std_logic;
SIGNAL \centroidInit[9]~input_o\ : std_logic;
SIGNAL \Mux118~0_combout\ : std_logic;
SIGNAL \centroidInit[10]~input_o\ : std_logic;
SIGNAL \Mux117~0_combout\ : std_logic;
SIGNAL \centroidInit[11]~input_o\ : std_logic;
SIGNAL \Mux116~0_combout\ : std_logic;
SIGNAL \centroidInit[12]~input_o\ : std_logic;
SIGNAL \Mux115~0_combout\ : std_logic;
SIGNAL \centroidInit[13]~input_o\ : std_logic;
SIGNAL \Mux114~0_combout\ : std_logic;
SIGNAL \centroidInit[14]~input_o\ : std_logic;
SIGNAL \Mux113~0_combout\ : std_logic;
SIGNAL \centroidInit[15]~input_o\ : std_logic;
SIGNAL \Mux112~0_combout\ : std_logic;
SIGNAL \centroidInit[16]~input_o\ : std_logic;
SIGNAL \Mux111~0_combout\ : std_logic;
SIGNAL \centroidInit[17]~input_o\ : std_logic;
SIGNAL \Mux110~0_combout\ : std_logic;
SIGNAL \centroidInit[18]~input_o\ : std_logic;
SIGNAL \Mux109~0_combout\ : std_logic;
SIGNAL \centroidInit[19]~input_o\ : std_logic;
SIGNAL \Mux108~0_combout\ : std_logic;
SIGNAL \centroidInit[20]~input_o\ : std_logic;
SIGNAL \Mux107~0_combout\ : std_logic;
SIGNAL \centroidInit[21]~input_o\ : std_logic;
SIGNAL \Mux106~0_combout\ : std_logic;
SIGNAL \centroidInit[22]~input_o\ : std_logic;
SIGNAL \Mux105~0_combout\ : std_logic;
SIGNAL \centroidInit[23]~input_o\ : std_logic;
SIGNAL \Mux104~0_combout\ : std_logic;
SIGNAL \centroidInit[24]~input_o\ : std_logic;
SIGNAL \Mux103~0_combout\ : std_logic;
SIGNAL \centroidInit[25]~input_o\ : std_logic;
SIGNAL \Mux102~0_combout\ : std_logic;
SIGNAL \centroidInit[26]~input_o\ : std_logic;
SIGNAL \Mux101~0_combout\ : std_logic;
SIGNAL \centroidInit[27]~input_o\ : std_logic;
SIGNAL \Mux100~0_combout\ : std_logic;
SIGNAL \centroidInit[28]~input_o\ : std_logic;
SIGNAL \Mux99~0_combout\ : std_logic;
SIGNAL \centroidInit[29]~input_o\ : std_logic;
SIGNAL \Mux98~0_combout\ : std_logic;
SIGNAL \centroidInit[30]~input_o\ : std_logic;
SIGNAL \Mux97~0_combout\ : std_logic;
SIGNAL \centroidInit[31]~input_o\ : std_logic;
SIGNAL \Mux96~0_combout\ : std_logic;
SIGNAL \centroidInit[32]~input_o\ : std_logic;
SIGNAL \Mux95~0_combout\ : std_logic;
SIGNAL \centroidInit[33]~input_o\ : std_logic;
SIGNAL \Mux94~0_combout\ : std_logic;
SIGNAL \centroidInit[34]~input_o\ : std_logic;
SIGNAL \Mux93~0_combout\ : std_logic;
SIGNAL \centroidInit[35]~input_o\ : std_logic;
SIGNAL \Mux92~0_combout\ : std_logic;
SIGNAL \centroidInit[36]~input_o\ : std_logic;
SIGNAL \Mux91~0_combout\ : std_logic;
SIGNAL \centroidInit[37]~input_o\ : std_logic;
SIGNAL \Mux90~0_combout\ : std_logic;
SIGNAL \centroidInit[38]~input_o\ : std_logic;
SIGNAL \Mux89~0_combout\ : std_logic;
SIGNAL \centroidInit[39]~input_o\ : std_logic;
SIGNAL \Mux88~0_combout\ : std_logic;
SIGNAL \centroidInit[40]~input_o\ : std_logic;
SIGNAL \Mux87~0_combout\ : std_logic;
SIGNAL \centroidInit[41]~input_o\ : std_logic;
SIGNAL \Mux86~0_combout\ : std_logic;
SIGNAL \centroidInit[42]~input_o\ : std_logic;
SIGNAL \Mux85~0_combout\ : std_logic;
SIGNAL \centroidInit[43]~input_o\ : std_logic;
SIGNAL \Mux84~0_combout\ : std_logic;
SIGNAL \centroidInit[44]~input_o\ : std_logic;
SIGNAL \Mux83~0_combout\ : std_logic;
SIGNAL \centroidInit[45]~input_o\ : std_logic;
SIGNAL \Mux82~0_combout\ : std_logic;
SIGNAL \centroidInit[46]~input_o\ : std_logic;
SIGNAL \Mux81~0_combout\ : std_logic;
SIGNAL \centroidInit[47]~input_o\ : std_logic;
SIGNAL \Mux80~0_combout\ : std_logic;
SIGNAL \centroidInit[48]~input_o\ : std_logic;
SIGNAL \Mux79~0_combout\ : std_logic;
SIGNAL \centroidInit[49]~input_o\ : std_logic;
SIGNAL \Mux78~0_combout\ : std_logic;
SIGNAL \centroidInit[50]~input_o\ : std_logic;
SIGNAL \Mux77~0_combout\ : std_logic;
SIGNAL \centroidInit[51]~input_o\ : std_logic;
SIGNAL \Mux76~0_combout\ : std_logic;
SIGNAL \centroidInit[52]~input_o\ : std_logic;
SIGNAL \Mux75~0_combout\ : std_logic;
SIGNAL \centroidInit[53]~input_o\ : std_logic;
SIGNAL \Mux74~0_combout\ : std_logic;
SIGNAL \centroidInit[54]~input_o\ : std_logic;
SIGNAL \Mux73~0_combout\ : std_logic;
SIGNAL \centroidInit[55]~input_o\ : std_logic;
SIGNAL \Mux72~0_combout\ : std_logic;
SIGNAL \centroidInit[56]~input_o\ : std_logic;
SIGNAL \Mux71~0_combout\ : std_logic;
SIGNAL \centroidInit[57]~input_o\ : std_logic;
SIGNAL \Mux70~0_combout\ : std_logic;
SIGNAL \centroidInit[58]~input_o\ : std_logic;
SIGNAL \Mux69~0_combout\ : std_logic;
SIGNAL \centroidInit[59]~input_o\ : std_logic;
SIGNAL \Mux68~0_combout\ : std_logic;
SIGNAL \centroidInit[60]~input_o\ : std_logic;
SIGNAL \Mux67~0_combout\ : std_logic;
SIGNAL \centroidInit[61]~input_o\ : std_logic;
SIGNAL \Mux66~0_combout\ : std_logic;
SIGNAL \centroidInit[62]~input_o\ : std_logic;
SIGNAL \Mux65~0_combout\ : std_logic;
SIGNAL \centroidInit[63]~input_o\ : std_logic;
SIGNAL \Mux64~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_centroidInit <= centroidInit;
ww_centroidCalc <= centroidCalc;
ww_centroidCalcFP <= centroidCalcFP;
ww_op <= op;
centroidData_A <= ww_centroidData_A;
centroidData_B <= ww_centroidData_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y0_N9
\centroidData_A[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux63~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[0]~output_o\);

-- Location: IOOBUF_X84_Y0_N2
\centroidData_A[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux62~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[1]~output_o\);

-- Location: IOOBUF_X84_Y0_N9
\centroidData_A[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux61~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[2]~output_o\);

-- Location: IOOBUF_X75_Y0_N2
\centroidData_A[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux60~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[3]~output_o\);

-- Location: IOOBUF_X77_Y0_N2
\centroidData_A[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux59~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[4]~output_o\);

-- Location: IOOBUF_X68_Y0_N2
\centroidData_A[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux58~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[5]~output_o\);

-- Location: IOOBUF_X88_Y0_N16
\centroidData_A[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux57~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[6]~output_o\);

-- Location: IOOBUF_X75_Y0_N9
\centroidData_A[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux56~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[7]~output_o\);

-- Location: IOOBUF_X92_Y0_N23
\centroidData_A[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux55~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[8]~output_o\);

-- Location: IOOBUF_X95_Y0_N16
\centroidData_A[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux54~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[9]~output_o\);

-- Location: IOOBUF_X104_Y0_N23
\centroidData_A[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux53~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[10]~output_o\);

-- Location: IOOBUF_X92_Y0_N16
\centroidData_A[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux52~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[11]~output_o\);

-- Location: IOOBUF_X77_Y0_N9
\centroidData_A[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux51~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[12]~output_o\);

-- Location: IOOBUF_X68_Y0_N23
\centroidData_A[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux50~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[13]~output_o\);

-- Location: IOOBUF_X88_Y0_N23
\centroidData_A[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux49~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[14]~output_o\);

-- Location: IOOBUF_X95_Y0_N9
\centroidData_A[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux48~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[15]~output_o\);

-- Location: IOOBUF_X113_Y0_N23
\centroidData_A[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux47~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[16]~output_o\);

-- Location: IOOBUF_X117_Y8_N9
\centroidData_A[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux46~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[17]~output_o\);

-- Location: IOOBUF_X117_Y6_N2
\centroidData_A[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux45~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[18]~output_o\);

-- Location: IOOBUF_X117_Y8_N2
\centroidData_A[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux44~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[19]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\centroidData_A[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux43~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[20]~output_o\);

-- Location: IOOBUF_X117_Y7_N9
\centroidData_A[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[21]~output_o\);

-- Location: IOOBUF_X117_Y22_N9
\centroidData_A[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux41~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[22]~output_o\);

-- Location: IOOBUF_X117_Y7_N2
\centroidData_A[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[23]~output_o\);

-- Location: IOOBUF_X117_Y5_N9
\centroidData_A[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux39~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[24]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\centroidData_A[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux38~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[25]~output_o\);

-- Location: IOOBUF_X117_Y22_N2
\centroidData_A[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux37~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[26]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\centroidData_A[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux36~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[27]~output_o\);

-- Location: IOOBUF_X79_Y91_N23
\centroidData_A[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux35~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[28]~output_o\);

-- Location: IOOBUF_X117_Y6_N9
\centroidData_A[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux34~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[29]~output_o\);

-- Location: IOOBUF_X117_Y19_N9
\centroidData_A[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[30]~output_o\);

-- Location: IOOBUF_X117_Y5_N2
\centroidData_A[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[31]~output_o\);

-- Location: IOOBUF_X24_Y91_N2
\centroidData_A[32]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[32]~output_o\);

-- Location: IOOBUF_X19_Y91_N2
\centroidData_A[33]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[33]~output_o\);

-- Location: IOOBUF_X41_Y91_N23
\centroidData_A[34]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[34]~output_o\);

-- Location: IOOBUF_X26_Y91_N2
\centroidData_A[35]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[35]~output_o\);

-- Location: IOOBUF_X19_Y91_N9
\centroidData_A[36]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[36]~output_o\);

-- Location: IOOBUF_X32_Y91_N9
\centroidData_A[37]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[37]~output_o\);

-- Location: IOOBUF_X32_Y91_N2
\centroidData_A[38]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[38]~output_o\);

-- Location: IOOBUF_X28_Y91_N2
\centroidData_A[39]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[39]~output_o\);

-- Location: IOOBUF_X24_Y91_N9
\centroidData_A[40]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[40]~output_o\);

-- Location: IOOBUF_X46_Y91_N16
\centroidData_A[41]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[41]~output_o\);

-- Location: IOOBUF_X28_Y91_N9
\centroidData_A[42]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[42]~output_o\);

-- Location: IOOBUF_X44_Y91_N16
\centroidData_A[43]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[43]~output_o\);

-- Location: IOOBUF_X21_Y91_N2
\centroidData_A[44]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[44]~output_o\);

-- Location: IOOBUF_X21_Y91_N9
\centroidData_A[45]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[45]~output_o\);

-- Location: IOOBUF_X44_Y91_N23
\centroidData_A[46]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[46]~output_o\);

-- Location: IOOBUF_X117_Y67_N9
\centroidData_A[47]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[47]~output_o\);

-- Location: IOOBUF_X117_Y73_N2
\centroidData_A[48]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[48]~output_o\);

-- Location: IOOBUF_X117_Y74_N9
\centroidData_A[49]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[49]~output_o\);

-- Location: IOOBUF_X117_Y72_N9
\centroidData_A[50]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[50]~output_o\);

-- Location: IOOBUF_X117_Y77_N2
\centroidData_A[51]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[51]~output_o\);

-- Location: IOOBUF_X117_Y70_N9
\centroidData_A[52]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[52]~output_o\);

-- Location: IOOBUF_X117_Y55_N9
\centroidData_A[53]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[53]~output_o\);

-- Location: IOOBUF_X117_Y57_N2
\centroidData_A[54]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[54]~output_o\);

-- Location: IOOBUF_X117_Y73_N9
\centroidData_A[55]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[55]~output_o\);

-- Location: IOOBUF_X117_Y72_N2
\centroidData_A[56]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[56]~output_o\);

-- Location: IOOBUF_X117_Y80_N2
\centroidData_A[57]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[57]~output_o\);

-- Location: IOOBUF_X117_Y80_N9
\centroidData_A[58]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[58]~output_o\);

-- Location: IOOBUF_X117_Y70_N2
\centroidData_A[59]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[59]~output_o\);

-- Location: IOOBUF_X117_Y55_N2
\centroidData_A[60]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[60]~output_o\);

-- Location: IOOBUF_X117_Y69_N9
\centroidData_A[61]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[61]~output_o\);

-- Location: IOOBUF_X95_Y91_N2
\centroidData_A[62]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[62]~output_o\);

-- Location: IOOBUF_X41_Y91_N16
\centroidData_A[63]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_A[63]~output_o\);

-- Location: IOOBUF_X115_Y91_N16
\centroidData_B[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux127~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[0]~output_o\);

-- Location: IOOBUF_X97_Y91_N9
\centroidData_B[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux126~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[1]~output_o\);

-- Location: IOOBUF_X101_Y91_N9
\centroidData_B[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux125~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[2]~output_o\);

-- Location: IOOBUF_X97_Y91_N2
\centroidData_B[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux124~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[3]~output_o\);

-- Location: IOOBUF_X111_Y91_N23
\centroidData_B[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux123~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[4]~output_o\);

-- Location: IOOBUF_X113_Y91_N23
\centroidData_B[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux122~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[5]~output_o\);

-- Location: IOOBUF_X106_Y91_N9
\centroidData_B[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux121~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[6]~output_o\);

-- Location: IOOBUF_X115_Y91_N23
\centroidData_B[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux120~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[7]~output_o\);

-- Location: IOOBUF_X95_Y91_N9
\centroidData_B[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux119~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[8]~output_o\);

-- Location: IOOBUF_X113_Y91_N16
\centroidData_B[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux118~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[9]~output_o\);

-- Location: IOOBUF_X101_Y91_N2
\centroidData_B[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux117~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[10]~output_o\);

-- Location: IOOBUF_X99_Y91_N2
\centroidData_B[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux116~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[11]~output_o\);

-- Location: IOOBUF_X111_Y91_N16
\centroidData_B[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux115~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[12]~output_o\);

-- Location: IOOBUF_X106_Y91_N2
\centroidData_B[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux114~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[13]~output_o\);

-- Location: IOOBUF_X99_Y91_N9
\centroidData_B[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux113~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[14]~output_o\);

-- Location: IOOBUF_X48_Y0_N16
\centroidData_B[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux112~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[15]~output_o\);

-- Location: IOOBUF_X46_Y0_N16
\centroidData_B[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux111~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[16]~output_o\);

-- Location: IOOBUF_X39_Y0_N23
\centroidData_B[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux110~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[17]~output_o\);

-- Location: IOOBUF_X50_Y0_N16
\centroidData_B[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux109~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[18]~output_o\);

-- Location: IOOBUF_X41_Y0_N9
\centroidData_B[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux108~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[19]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\centroidData_B[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux107~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[20]~output_o\);

-- Location: IOOBUF_X41_Y0_N2
\centroidData_B[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux106~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[21]~output_o\);

-- Location: IOOBUF_X39_Y0_N16
\centroidData_B[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux105~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[22]~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\centroidData_B[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux104~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[23]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\centroidData_B[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux103~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[24]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\centroidData_B[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux102~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[25]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\centroidData_B[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux101~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[26]~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\centroidData_B[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux100~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[27]~output_o\);

-- Location: IOOBUF_X48_Y0_N23
\centroidData_B[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux99~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[28]~output_o\);

-- Location: IOOBUF_X37_Y0_N9
\centroidData_B[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux98~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[29]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\centroidData_B[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[30]~output_o\);

-- Location: IOOBUF_X117_Y50_N2
\centroidData_B[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux96~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[31]~output_o\);

-- Location: IOOBUF_X117_Y29_N2
\centroidData_B[32]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux95~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[32]~output_o\);

-- Location: IOOBUF_X117_Y29_N9
\centroidData_B[33]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux94~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[33]~output_o\);

-- Location: IOOBUF_X117_Y49_N2
\centroidData_B[34]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux93~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[34]~output_o\);

-- Location: IOOBUF_X117_Y43_N9
\centroidData_B[35]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux92~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[35]~output_o\);

-- Location: IOOBUF_X117_Y50_N9
\centroidData_B[36]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux91~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[36]~output_o\);

-- Location: IOOBUF_X117_Y41_N2
\centroidData_B[37]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux90~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[37]~output_o\);

-- Location: IOOBUF_X117_Y48_N9
\centroidData_B[38]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux89~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[38]~output_o\);

-- Location: IOOBUF_X117_Y42_N9
\centroidData_B[39]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux88~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[39]~output_o\);

-- Location: IOOBUF_X117_Y44_N9
\centroidData_B[40]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux87~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[40]~output_o\);

-- Location: IOOBUF_X117_Y44_N2
\centroidData_B[41]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux86~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[41]~output_o\);

-- Location: IOOBUF_X117_Y43_N2
\centroidData_B[42]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux85~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[42]~output_o\);

-- Location: IOOBUF_X117_Y38_N9
\centroidData_B[43]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux84~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[43]~output_o\);

-- Location: IOOBUF_X117_Y42_N2
\centroidData_B[44]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux83~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[44]~output_o\);

-- Location: IOOBUF_X117_Y39_N2
\centroidData_B[45]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux82~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[45]~output_o\);

-- Location: IOOBUF_X117_Y41_N9
\centroidData_B[46]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux81~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[46]~output_o\);

-- Location: IOOBUF_X63_Y91_N16
\centroidData_B[47]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux80~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[47]~output_o\);

-- Location: IOOBUF_X61_Y91_N16
\centroidData_B[48]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux79~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[48]~output_o\);

-- Location: IOOBUF_X61_Y91_N9
\centroidData_B[49]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux78~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[49]~output_o\);

-- Location: IOOBUF_X48_Y91_N9
\centroidData_B[50]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux77~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[50]~output_o\);

-- Location: IOOBUF_X66_Y91_N16
\centroidData_B[51]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux76~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[51]~output_o\);

-- Location: IOOBUF_X68_Y91_N16
\centroidData_B[52]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux75~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[52]~output_o\);

-- Location: IOOBUF_X61_Y91_N2
\centroidData_B[53]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux74~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[53]~output_o\);

-- Location: IOOBUF_X77_Y91_N23
\centroidData_B[54]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux73~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[54]~output_o\);

-- Location: IOOBUF_X66_Y91_N23
\centroidData_B[55]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux72~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[55]~output_o\);

-- Location: IOOBUF_X68_Y91_N2
\centroidData_B[56]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux71~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[56]~output_o\);

-- Location: IOOBUF_X53_Y91_N2
\centroidData_B[57]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux70~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[57]~output_o\);

-- Location: IOOBUF_X53_Y91_N9
\centroidData_B[58]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux69~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[58]~output_o\);

-- Location: IOOBUF_X48_Y91_N2
\centroidData_B[59]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux68~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[59]~output_o\);

-- Location: IOOBUF_X63_Y91_N23
\centroidData_B[60]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux67~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[60]~output_o\);

-- Location: IOOBUF_X46_Y91_N2
\centroidData_B[61]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux66~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[61]~output_o\);

-- Location: IOOBUF_X50_Y91_N9
\centroidData_B[62]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux65~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[62]~output_o\);

-- Location: IOOBUF_X117_Y79_N9
\centroidData_B[63]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \centroidData_B[63]~output_o\);

-- Location: IOIBUF_X117_Y31_N1
\op[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

-- Location: IOIBUF_X57_Y0_N8
\centroidCalcFP[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(0),
	o => \centroidCalcFP[0]~input_o\);

-- Location: IOIBUF_X57_Y0_N1
\centroidCalc[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(0),
	o => \centroidCalc[0]~input_o\);

-- Location: IOIBUF_X117_Y52_N1
\op[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

-- Location: LCCOMB_X57_Y1_N0
\Mux63~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[0]~input_o\)))) # (!\op[1]~input_o\ & (\op[0]~input_o\ & ((\centroidCalc[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \centroidCalcFP[0]~input_o\,
	datac => \centroidCalc[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux63~0_combout\);

-- Location: IOIBUF_X86_Y0_N22
\centroidCalcFP[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(1),
	o => \centroidCalcFP[1]~input_o\);

-- Location: IOIBUF_X90_Y0_N1
\centroidCalc[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(1),
	o => \centroidCalc[1]~input_o\);

-- Location: LCCOMB_X85_Y1_N28
\Mux62~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (\op[1]~input_o\ & (\centroidCalcFP[1]~input_o\)) # (!\op[1]~input_o\ & (((\op[0]~input_o\ & \centroidCalc[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcFP[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalc[1]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux62~0_combout\);

-- Location: IOIBUF_X88_Y0_N1
\centroidCalc[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(2),
	o => \centroidCalc[2]~input_o\);

-- Location: IOIBUF_X92_Y0_N1
\centroidCalcFP[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(2),
	o => \centroidCalcFP[2]~input_o\);

-- Location: LCCOMB_X85_Y1_N2
\Mux61~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[2]~input_o\)))) # (!\op[1]~input_o\ & (\centroidCalc[2]~input_o\ & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalc[2]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalcFP[2]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux61~0_combout\);

-- Location: IOIBUF_X95_Y0_N1
\centroidCalcFP[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(3),
	o => \centroidCalcFP[3]~input_o\);

-- Location: IOIBUF_X77_Y0_N15
\centroidCalc[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(3),
	o => \centroidCalc[3]~input_o\);

-- Location: LCCOMB_X85_Y1_N8
\Mux60~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = (\op[1]~input_o\ & (\centroidCalcFP[3]~input_o\)) # (!\op[1]~input_o\ & (((\centroidCalc[3]~input_o\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \centroidCalcFP[3]~input_o\,
	datac => \centroidCalc[3]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux60~0_combout\);

-- Location: IOIBUF_X86_Y0_N8
\centroidCalcFP[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(4),
	o => \centroidCalcFP[4]~input_o\);

-- Location: IOIBUF_X90_Y0_N8
\centroidCalc[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(4),
	o => \centroidCalc[4]~input_o\);

-- Location: LCCOMB_X85_Y1_N22
\Mux59~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = (\op[1]~input_o\ & (\centroidCalcFP[4]~input_o\)) # (!\op[1]~input_o\ & (((\op[0]~input_o\ & \centroidCalc[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcFP[4]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalc[4]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux59~0_combout\);

-- Location: IOIBUF_X70_Y0_N22
\centroidCalcFP[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(5),
	o => \centroidCalcFP[5]~input_o\);

-- Location: IOIBUF_X70_Y0_N15
\centroidCalc[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(5),
	o => \centroidCalc[5]~input_o\);

-- Location: LCCOMB_X70_Y1_N24
\Mux58~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\op[1]~input_o\ & (\centroidCalcFP[5]~input_o\)) # (!\op[1]~input_o\ & (((\centroidCalc[5]~input_o\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcFP[5]~input_o\,
	datab => \op[1]~input_o\,
	datac => \centroidCalc[5]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux58~0_combout\);

-- Location: IOIBUF_X84_Y0_N22
\centroidCalcFP[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(6),
	o => \centroidCalcFP[6]~input_o\);

-- Location: IOIBUF_X82_Y0_N8
\centroidCalc[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(6),
	o => \centroidCalc[6]~input_o\);

-- Location: LCCOMB_X85_Y1_N12
\Mux57~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\op[1]~input_o\ & (\centroidCalcFP[6]~input_o\)) # (!\op[1]~input_o\ & (((\op[0]~input_o\ & \centroidCalc[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcFP[6]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalc[6]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux57~0_combout\);

-- Location: IOIBUF_X84_Y0_N15
\centroidCalcFP[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(7),
	o => \centroidCalcFP[7]~input_o\);

-- Location: IOIBUF_X82_Y0_N22
\centroidCalc[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(7),
	o => \centroidCalc[7]~input_o\);

-- Location: LCCOMB_X85_Y1_N26
\Mux56~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\op[1]~input_o\ & (\centroidCalcFP[7]~input_o\)) # (!\op[1]~input_o\ & (((\centroidCalc[7]~input_o\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \centroidCalcFP[7]~input_o\,
	datac => \centroidCalc[7]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux56~0_combout\);

-- Location: IOIBUF_X92_Y0_N8
\centroidCalc[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(8),
	o => \centroidCalc[8]~input_o\);

-- Location: IOIBUF_X82_Y0_N15
\centroidCalcFP[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(8),
	o => \centroidCalcFP[8]~input_o\);

-- Location: LCCOMB_X85_Y1_N4
\Mux55~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[8]~input_o\)))) # (!\op[1]~input_o\ & (\centroidCalc[8]~input_o\ & ((\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \centroidCalc[8]~input_o\,
	datac => \centroidCalcFP[8]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux55~0_combout\);

-- Location: IOIBUF_X99_Y0_N8
\centroidCalc[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(9),
	o => \centroidCalc[9]~input_o\);

-- Location: IOIBUF_X99_Y0_N15
\centroidCalcFP[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(9),
	o => \centroidCalcFP[9]~input_o\);

-- Location: LCCOMB_X97_Y1_N24
\Mux54~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[9]~input_o\)))) # (!\op[1]~input_o\ & (\centroidCalc[9]~input_o\ & ((\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalc[9]~input_o\,
	datab => \centroidCalcFP[9]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux54~0_combout\);

-- Location: IOIBUF_X99_Y0_N1
\centroidCalc[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(10),
	o => \centroidCalc[10]~input_o\);

-- Location: IOIBUF_X97_Y0_N8
\centroidCalcFP[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(10),
	o => \centroidCalcFP[10]~input_o\);

-- Location: LCCOMB_X97_Y1_N26
\Mux53~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[10]~input_o\)))) # (!\op[1]~input_o\ & (\centroidCalc[10]~input_o\ & ((\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalc[10]~input_o\,
	datab => \centroidCalcFP[10]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux53~0_combout\);

-- Location: IOIBUF_X88_Y0_N8
\centroidCalcFP[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(11),
	o => \centroidCalcFP[11]~input_o\);

-- Location: IOIBUF_X86_Y0_N1
\centroidCalc[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(11),
	o => \centroidCalc[11]~input_o\);

-- Location: LCCOMB_X85_Y1_N6
\Mux52~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (\op[1]~input_o\ & (\centroidCalcFP[11]~input_o\)) # (!\op[1]~input_o\ & (((\centroidCalc[11]~input_o\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \centroidCalcFP[11]~input_o\,
	datac => \centroidCalc[11]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux52~0_combout\);

-- Location: IOIBUF_X77_Y0_N22
\centroidCalcFP[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(12),
	o => \centroidCalcFP[12]~input_o\);

-- Location: IOIBUF_X75_Y0_N22
\centroidCalc[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(12),
	o => \centroidCalc[12]~input_o\);

-- Location: LCCOMB_X85_Y1_N24
\Mux51~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (\op[1]~input_o\ & (\centroidCalcFP[12]~input_o\)) # (!\op[1]~input_o\ & (((\op[0]~input_o\ & \centroidCalc[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcFP[12]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalc[12]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux51~0_combout\);

-- Location: IOIBUF_X70_Y0_N8
\centroidCalcFP[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(13),
	o => \centroidCalcFP[13]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\centroidCalc[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(13),
	o => \centroidCalc[13]~input_o\);

-- Location: LCCOMB_X70_Y1_N26
\Mux50~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[13]~input_o\)))) # (!\op[1]~input_o\ & (\op[0]~input_o\ & ((\centroidCalc[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \centroidCalcFP[13]~input_o\,
	datac => \centroidCalc[13]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux50~0_combout\);

-- Location: IOIBUF_X86_Y0_N15
\centroidCalcFP[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(14),
	o => \centroidCalcFP[14]~input_o\);

-- Location: IOIBUF_X82_Y0_N1
\centroidCalc[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(14),
	o => \centroidCalc[14]~input_o\);

-- Location: LCCOMB_X85_Y1_N30
\Mux49~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (\op[1]~input_o\ & (\centroidCalcFP[14]~input_o\)) # (!\op[1]~input_o\ & (((\op[0]~input_o\ & \centroidCalc[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcFP[14]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalc[14]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux49~0_combout\);

-- Location: IOIBUF_X97_Y0_N1
\centroidCalc[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(15),
	o => \centroidCalc[15]~input_o\);

-- Location: IOIBUF_X104_Y0_N8
\centroidCalcFP[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(15),
	o => \centroidCalcFP[15]~input_o\);

-- Location: LCCOMB_X97_Y1_N20
\Mux48~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[15]~input_o\)))) # (!\op[1]~input_o\ & (\centroidCalc[15]~input_o\ & ((\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalc[15]~input_o\,
	datab => \centroidCalcFP[15]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux48~0_combout\);

-- Location: IOIBUF_X117_Y18_N1
\centroidCalcFP[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(16),
	o => \centroidCalcFP[16]~input_o\);

-- Location: IOIBUF_X117_Y17_N8
\centroidCalc[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(16),
	o => \centroidCalc[16]~input_o\);

-- Location: LCCOMB_X116_Y11_N24
\Mux47~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[16]~input_o\)))) # (!\op[1]~input_o\ & (\op[0]~input_o\ & ((\centroidCalc[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \centroidCalcFP[16]~input_o\,
	datac => \centroidCalc[16]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux47~0_combout\);

-- Location: IOIBUF_X117_Y15_N8
\centroidCalc[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(17),
	o => \centroidCalc[17]~input_o\);

-- Location: IOIBUF_X117_Y11_N8
\centroidCalcFP[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(17),
	o => \centroidCalcFP[17]~input_o\);

-- Location: LCCOMB_X116_Y11_N10
\Mux46~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[17]~input_o\)))) # (!\op[1]~input_o\ & (\op[0]~input_o\ & (\centroidCalc[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \centroidCalc[17]~input_o\,
	datac => \centroidCalcFP[17]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux46~0_combout\);

-- Location: IOIBUF_X117_Y19_N1
\centroidCalcFP[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(18),
	o => \centroidCalcFP[18]~input_o\);

-- Location: IOIBUF_X117_Y13_N1
\centroidCalc[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(18),
	o => \centroidCalc[18]~input_o\);

-- Location: LCCOMB_X116_Y11_N8
\Mux45~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[18]~input_o\)))) # (!\op[1]~input_o\ & (\op[0]~input_o\ & ((\centroidCalc[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \centroidCalcFP[18]~input_o\,
	datac => \centroidCalc[18]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux45~0_combout\);

-- Location: IOIBUF_X117_Y15_N1
\centroidCalc[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(19),
	o => \centroidCalc[19]~input_o\);

-- Location: IOIBUF_X113_Y0_N15
\centroidCalcFP[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(19),
	o => \centroidCalcFP[19]~input_o\);

-- Location: LCCOMB_X116_Y11_N14
\Mux44~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[19]~input_o\)))) # (!\op[1]~input_o\ & (\op[0]~input_o\ & (\centroidCalc[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \centroidCalc[19]~input_o\,
	datac => \centroidCalcFP[19]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux44~0_combout\);

-- Location: IOIBUF_X111_Y0_N1
\centroidCalc[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(20),
	o => \centroidCalc[20]~input_o\);

-- Location: IOIBUF_X111_Y0_N15
\centroidCalcFP[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(20),
	o => \centroidCalcFP[20]~input_o\);

-- Location: LCCOMB_X111_Y1_N4
\Mux43~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[20]~input_o\)))) # (!\op[1]~input_o\ & (\centroidCalc[20]~input_o\ & ((\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalc[20]~input_o\,
	datab => \centroidCalcFP[20]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux43~0_combout\);

-- Location: IOIBUF_X117_Y17_N1
\centroidCalcFP[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(21),
	o => \centroidCalcFP[21]~input_o\);

-- Location: IOIBUF_X117_Y10_N1
\centroidCalc[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(21),
	o => \centroidCalc[21]~input_o\);

-- Location: LCCOMB_X116_Y11_N12
\Mux42~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[21]~input_o\)))) # (!\op[1]~input_o\ & (\op[0]~input_o\ & ((\centroidCalc[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \centroidCalcFP[21]~input_o\,
	datac => \centroidCalc[21]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux42~0_combout\);

-- Location: IOIBUF_X117_Y24_N8
\centroidCalc[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(22),
	o => \centroidCalc[22]~input_o\);

-- Location: IOIBUF_X117_Y23_N8
\centroidCalcFP[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(22),
	o => \centroidCalcFP[22]~input_o\);

-- Location: LCCOMB_X116_Y22_N20
\Mux41~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[22]~input_o\)))) # (!\op[1]~input_o\ & (\centroidCalc[22]~input_o\ & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalc[22]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalcFP[22]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux41~0_combout\);

-- Location: IOIBUF_X117_Y11_N1
\centroidCalcFP[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(23),
	o => \centroidCalcFP[23]~input_o\);

-- Location: IOIBUF_X117_Y10_N8
\centroidCalc[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(23),
	o => \centroidCalc[23]~input_o\);

-- Location: LCCOMB_X116_Y11_N22
\Mux40~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[23]~input_o\)))) # (!\op[1]~input_o\ & (\op[0]~input_o\ & ((\centroidCalc[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \centroidCalcFP[23]~input_o\,
	datac => \centroidCalc[23]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux40~0_combout\);

-- Location: IOIBUF_X117_Y21_N8
\centroidCalc[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(24),
	o => \centroidCalc[24]~input_o\);

-- Location: IOIBUF_X117_Y14_N1
\centroidCalcFP[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(24),
	o => \centroidCalcFP[24]~input_o\);

-- Location: LCCOMB_X116_Y11_N4
\Mux39~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[24]~input_o\)))) # (!\op[1]~input_o\ & (\op[0]~input_o\ & (\centroidCalc[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \centroidCalc[24]~input_o\,
	datac => \centroidCalcFP[24]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux39~0_combout\);

-- Location: IOIBUF_X115_Y0_N22
\centroidCalc[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(25),
	o => \centroidCalc[25]~input_o\);

-- Location: IOIBUF_X115_Y0_N8
\centroidCalcFP[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(25),
	o => \centroidCalcFP[25]~input_o\);

-- Location: LCCOMB_X115_Y1_N20
\Mux38~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[25]~input_o\)))) # (!\op[1]~input_o\ & (\centroidCalc[25]~input_o\ & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalc[25]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalcFP[25]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux38~0_combout\);

-- Location: IOIBUF_X117_Y26_N8
\centroidCalcFP[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(26),
	o => \centroidCalcFP[26]~input_o\);

-- Location: IOIBUF_X117_Y23_N1
\centroidCalc[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(26),
	o => \centroidCalc[26]~input_o\);

-- Location: LCCOMB_X116_Y22_N18
\Mux37~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\op[1]~input_o\ & (\centroidCalcFP[26]~input_o\)) # (!\op[1]~input_o\ & (((\op[0]~input_o\ & \centroidCalc[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcFP[26]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalc[26]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux37~0_combout\);

-- Location: IOIBUF_X115_Y0_N15
\centroidCalcFP[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(27),
	o => \centroidCalcFP[27]~input_o\);

-- Location: IOIBUF_X115_Y0_N1
\centroidCalc[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(27),
	o => \centroidCalc[27]~input_o\);

-- Location: LCCOMB_X115_Y1_N18
\Mux36~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\op[1]~input_o\ & (\centroidCalcFP[27]~input_o\)) # (!\op[1]~input_o\ & (((\op[0]~input_o\ & \centroidCalc[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcFP[27]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalc[27]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux36~0_combout\);

-- Location: IOIBUF_X79_Y91_N15
\centroidCalc[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(28),
	o => \centroidCalc[28]~input_o\);

-- Location: IOIBUF_X79_Y91_N8
\centroidCalcFP[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(28),
	o => \centroidCalcFP[28]~input_o\);

-- Location: LCCOMB_X79_Y90_N0
\Mux35~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[28]~input_o\)))) # (!\op[1]~input_o\ & (\centroidCalc[28]~input_o\ & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalc[28]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalcFP[28]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux35~0_combout\);

-- Location: IOIBUF_X117_Y14_N8
\centroidCalc[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(29),
	o => \centroidCalc[29]~input_o\);

-- Location: IOIBUF_X117_Y13_N8
\centroidCalcFP[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(29),
	o => \centroidCalcFP[29]~input_o\);

-- Location: LCCOMB_X116_Y11_N30
\Mux34~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[29]~input_o\)))) # (!\op[1]~input_o\ & (\op[0]~input_o\ & (\centroidCalc[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \centroidCalc[29]~input_o\,
	datac => \centroidCalcFP[29]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux34~0_combout\);

-- Location: IOIBUF_X117_Y24_N1
\centroidCalc[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(30),
	o => \centroidCalc[30]~input_o\);

-- Location: IOIBUF_X117_Y26_N1
\centroidCalcFP[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(30),
	o => \centroidCalcFP[30]~input_o\);

-- Location: LCCOMB_X116_Y22_N24
\Mux33~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[30]~input_o\)))) # (!\op[1]~input_o\ & (\centroidCalc[30]~input_o\ & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalc[30]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalcFP[30]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux33~0_combout\);

-- Location: IOIBUF_X117_Y18_N8
\centroidCalc[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(31),
	o => \centroidCalc[31]~input_o\);

-- Location: IOIBUF_X117_Y21_N1
\centroidCalcFP[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(31),
	o => \centroidCalcFP[31]~input_o\);

-- Location: LCCOMB_X116_Y11_N20
\Mux32~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[31]~input_o\)))) # (!\op[1]~input_o\ & (\op[0]~input_o\ & (\centroidCalc[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \centroidCalc[31]~input_o\,
	datac => \centroidCalcFP[31]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux32~0_combout\);

-- Location: IOIBUF_X28_Y91_N22
\centroidCalc[32]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(32),
	o => \centroidCalc[32]~input_o\);

-- Location: IOIBUF_X30_Y91_N1
\centroidCalcFP[32]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(32),
	o => \centroidCalcFP[32]~input_o\);

-- Location: LCCOMB_X33_Y90_N0
\Mux31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[32]~input_o\)))) # (!\op[1]~input_o\ & (\centroidCalc[32]~input_o\ & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalc[32]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalcFP[32]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: IOIBUF_X21_Y91_N22
\centroidCalcFP[33]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(33),
	o => \centroidCalcFP[33]~input_o\);

-- Location: IOIBUF_X44_Y91_N1
\centroidCalc[33]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(33),
	o => \centroidCalc[33]~input_o\);

-- Location: LCCOMB_X33_Y90_N14
\Mux30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\op[1]~input_o\ & (\centroidCalcFP[33]~input_o\)) # (!\op[1]~input_o\ & (((\op[0]~input_o\ & \centroidCalc[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcFP[33]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalc[33]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: IOIBUF_X39_Y91_N1
\centroidCalc[34]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(34),
	o => \centroidCalc[34]~input_o\);

-- Location: IOIBUF_X37_Y91_N8
\centroidCalcFP[34]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(34),
	o => \centroidCalcFP[34]~input_o\);

-- Location: LCCOMB_X33_Y90_N28
\Mux29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[34]~input_o\)))) # (!\op[1]~input_o\ & (\centroidCalc[34]~input_o\ & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalc[34]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalcFP[34]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: IOIBUF_X37_Y91_N1
\centroidCalc[35]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(35),
	o => \centroidCalc[35]~input_o\);

-- Location: IOIBUF_X32_Y91_N22
\centroidCalcFP[35]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(35),
	o => \centroidCalcFP[35]~input_o\);

-- Location: LCCOMB_X33_Y90_N26
\Mux28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[35]~input_o\)))) # (!\op[1]~input_o\ & (\op[0]~input_o\ & (\centroidCalc[35]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \centroidCalc[35]~input_o\,
	datac => \centroidCalcFP[35]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: IOIBUF_X39_Y91_N15
\centroidCalcFP[36]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(36),
	o => \centroidCalcFP[36]~input_o\);

-- Location: IOIBUF_X30_Y91_N8
\centroidCalc[36]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(36),
	o => \centroidCalc[36]~input_o\);

-- Location: LCCOMB_X33_Y90_N12
\Mux27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[36]~input_o\)))) # (!\op[1]~input_o\ & (\op[0]~input_o\ & ((\centroidCalc[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \centroidCalcFP[36]~input_o\,
	datac => \centroidCalc[36]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: IOIBUF_X19_Y91_N22
\centroidCalc[37]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(37),
	o => \centroidCalc[37]~input_o\);

-- Location: IOIBUF_X17_Y91_N15
\centroidCalcFP[37]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(37),
	o => \centroidCalcFP[37]~input_o\);

-- Location: LCCOMB_X33_Y90_N6
\Mux26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[37]~input_o\)))) # (!\op[1]~input_o\ & (\op[0]~input_o\ & (\centroidCalc[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \centroidCalc[37]~input_o\,
	datac => \centroidCalcFP[37]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: IOIBUF_X19_Y91_N15
\centroidCalc[38]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(38),
	o => \centroidCalc[38]~input_o\);

-- Location: IOIBUF_X30_Y91_N22
\centroidCalcFP[38]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(38),
	o => \centroidCalcFP[38]~input_o\);

-- Location: LCCOMB_X33_Y90_N20
\Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[38]~input_o\)))) # (!\op[1]~input_o\ & (\centroidCalc[38]~input_o\ & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalc[38]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalcFP[38]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: IOIBUF_X37_Y91_N15
\centroidCalc[39]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(39),
	o => \centroidCalc[39]~input_o\);

-- Location: IOIBUF_X39_Y91_N8
\centroidCalcFP[39]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(39),
	o => \centroidCalcFP[39]~input_o\);

-- Location: LCCOMB_X33_Y90_N30
\Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[39]~input_o\)))) # (!\op[1]~input_o\ & (\op[0]~input_o\ & (\centroidCalc[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \centroidCalc[39]~input_o\,
	datac => \centroidCalcFP[39]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: IOIBUF_X39_Y91_N22
\centroidCalc[40]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(40),
	o => \centroidCalc[40]~input_o\);

-- Location: IOIBUF_X41_Y91_N1
\centroidCalcFP[40]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(40),
	o => \centroidCalcFP[40]~input_o\);

-- Location: LCCOMB_X33_Y90_N8
\Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[40]~input_o\)))) # (!\op[1]~input_o\ & (\op[0]~input_o\ & (\centroidCalc[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \centroidCalc[40]~input_o\,
	datac => \centroidCalcFP[40]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: IOIBUF_X46_Y91_N22
\centroidCalc[41]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(41),
	o => \centroidCalc[41]~input_o\);

-- Location: IOIBUF_X46_Y91_N8
\centroidCalcFP[41]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(41),
	o => \centroidCalcFP[41]~input_o\);

-- Location: LCCOMB_X46_Y90_N24
\Mux22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[41]~input_o\)))) # (!\op[1]~input_o\ & (\centroidCalc[41]~input_o\ & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalc[41]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalcFP[41]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: IOIBUF_X34_Y91_N1
\centroidCalc[42]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(42),
	o => \centroidCalc[42]~input_o\);

-- Location: IOIBUF_X41_Y91_N8
\centroidCalcFP[42]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(42),
	o => \centroidCalcFP[42]~input_o\);

-- Location: LCCOMB_X33_Y90_N22
\Mux21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[42]~input_o\)))) # (!\op[1]~input_o\ & (\op[0]~input_o\ & (\centroidCalc[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \centroidCalc[42]~input_o\,
	datac => \centroidCalcFP[42]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: IOIBUF_X26_Y91_N8
\centroidCalc[43]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(43),
	o => \centroidCalc[43]~input_o\);

-- Location: IOIBUF_X34_Y91_N15
\centroidCalcFP[43]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(43),
	o => \centroidCalcFP[43]~input_o\);

-- Location: LCCOMB_X33_Y90_N4
\Mux20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[43]~input_o\)))) # (!\op[1]~input_o\ & (\op[0]~input_o\ & (\centroidCalc[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \centroidCalc[43]~input_o\,
	datac => \centroidCalcFP[43]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: IOIBUF_X30_Y91_N15
\centroidCalc[44]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(44),
	o => \centroidCalc[44]~input_o\);

-- Location: IOIBUF_X21_Y91_N15
\centroidCalcFP[44]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(44),
	o => \centroidCalcFP[44]~input_o\);

-- Location: LCCOMB_X33_Y90_N10
\Mux19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[44]~input_o\)))) # (!\op[1]~input_o\ & (\centroidCalc[44]~input_o\ & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalc[44]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalcFP[44]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: IOIBUF_X37_Y91_N22
\centroidCalc[45]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(45),
	o => \centroidCalc[45]~input_o\);

-- Location: IOIBUF_X26_Y91_N15
\centroidCalcFP[45]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(45),
	o => \centroidCalcFP[45]~input_o\);

-- Location: LCCOMB_X33_Y90_N24
\Mux18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[45]~input_o\)))) # (!\op[1]~input_o\ & (\centroidCalc[45]~input_o\ & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalc[45]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalcFP[45]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: IOIBUF_X34_Y91_N8
\centroidCalc[46]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(46),
	o => \centroidCalc[46]~input_o\);

-- Location: IOIBUF_X28_Y91_N15
\centroidCalcFP[46]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(46),
	o => \centroidCalcFP[46]~input_o\);

-- Location: LCCOMB_X33_Y90_N18
\Mux17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[46]~input_o\)))) # (!\op[1]~input_o\ & (\centroidCalc[46]~input_o\ & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalc[46]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalcFP[46]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: IOIBUF_X117_Y60_N15
\centroidCalcFP[47]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(47),
	o => \centroidCalcFP[47]~input_o\);

-- Location: IOIBUF_X117_Y65_N8
\centroidCalc[47]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(47),
	o => \centroidCalc[47]~input_o\);

-- Location: LCCOMB_X116_Y66_N0
\Mux16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\op[1]~input_o\ & (\centroidCalcFP[47]~input_o\)) # (!\op[1]~input_o\ & (((\centroidCalc[47]~input_o\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcFP[47]~input_o\,
	datab => \op[1]~input_o\,
	datac => \centroidCalc[47]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: IOIBUF_X117_Y58_N8
\centroidCalcFP[48]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(48),
	o => \centroidCalcFP[48]~input_o\);

-- Location: IOIBUF_X117_Y60_N8
\centroidCalc[48]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(48),
	o => \centroidCalc[48]~input_o\);

-- Location: LCCOMB_X116_Y66_N2
\Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\op[1]~input_o\ & (\centroidCalcFP[48]~input_o\)) # (!\op[1]~input_o\ & (((\centroidCalc[48]~input_o\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcFP[48]~input_o\,
	datab => \op[1]~input_o\,
	datac => \centroidCalc[48]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: IOIBUF_X117_Y68_N1
\centroidCalc[49]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(49),
	o => \centroidCalc[49]~input_o\);

-- Location: IOIBUF_X117_Y65_N1
\centroidCalcFP[49]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(49),
	o => \centroidCalcFP[49]~input_o\);

-- Location: LCCOMB_X116_Y66_N16
\Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[49]~input_o\)))) # (!\op[1]~input_o\ & (\centroidCalc[49]~input_o\ & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalc[49]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[1]~input_o\,
	datad => \centroidCalcFP[49]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: IOIBUF_X117_Y64_N1
\centroidCalc[50]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(50),
	o => \centroidCalc[50]~input_o\);

-- Location: IOIBUF_X117_Y61_N8
\centroidCalcFP[50]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(50),
	o => \centroidCalcFP[50]~input_o\);

-- Location: LCCOMB_X116_Y66_N18
\Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[50]~input_o\)))) # (!\op[1]~input_o\ & (\centroidCalc[50]~input_o\ & ((\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalc[50]~input_o\,
	datab => \op[1]~input_o\,
	datac => \centroidCalcFP[50]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: IOIBUF_X117_Y58_N1
\centroidCalcFP[51]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(51),
	o => \centroidCalcFP[51]~input_o\);

-- Location: IOIBUF_X117_Y62_N1
\centroidCalc[51]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(51),
	o => \centroidCalc[51]~input_o\);

-- Location: LCCOMB_X116_Y66_N28
\Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\op[1]~input_o\ & (\centroidCalcFP[51]~input_o\)) # (!\op[1]~input_o\ & (((\centroidCalc[51]~input_o\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcFP[51]~input_o\,
	datab => \op[1]~input_o\,
	datac => \centroidCalc[51]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: IOIBUF_X117_Y62_N8
\centroidCalcFP[52]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(52),
	o => \centroidCalcFP[52]~input_o\);

-- Location: IOIBUF_X117_Y59_N1
\centroidCalc[52]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(52),
	o => \centroidCalc[52]~input_o\);

-- Location: LCCOMB_X116_Y66_N14
\Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\op[1]~input_o\ & (\centroidCalcFP[52]~input_o\)) # (!\op[1]~input_o\ & (((\centroidCalc[52]~input_o\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcFP[52]~input_o\,
	datab => \op[1]~input_o\,
	datac => \centroidCalc[52]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: IOIBUF_X117_Y54_N1
\centroidCalcFP[53]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(53),
	o => \centroidCalcFP[53]~input_o\);

-- Location: IOIBUF_X117_Y54_N8
\centroidCalc[53]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(53),
	o => \centroidCalc[53]~input_o\);

-- Location: LCCOMB_X116_Y54_N0
\Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\op[1]~input_o\ & (\centroidCalcFP[53]~input_o\)) # (!\op[1]~input_o\ & (((\op[0]~input_o\ & \centroidCalc[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \centroidCalcFP[53]~input_o\,
	datac => \op[0]~input_o\,
	datad => \centroidCalc[53]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: IOIBUF_X117_Y56_N1
\centroidCalc[54]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(54),
	o => \centroidCalc[54]~input_o\);

-- Location: IOIBUF_X117_Y57_N8
\centroidCalcFP[54]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(54),
	o => \centroidCalcFP[54]~input_o\);

-- Location: LCCOMB_X116_Y57_N20
\Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[54]~input_o\)))) # (!\op[1]~input_o\ & (\op[0]~input_o\ & (\centroidCalc[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalc[54]~input_o\,
	datad => \centroidCalcFP[54]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: IOIBUF_X117_Y69_N1
\centroidCalcFP[55]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(55),
	o => \centroidCalcFP[55]~input_o\);

-- Location: IOIBUF_X117_Y66_N1
\centroidCalc[55]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(55),
	o => \centroidCalc[55]~input_o\);

-- Location: LCCOMB_X116_Y66_N12
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\op[1]~input_o\ & (\centroidCalcFP[55]~input_o\)) # (!\op[1]~input_o\ & (((\centroidCalc[55]~input_o\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcFP[55]~input_o\,
	datab => \centroidCalc[55]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: IOIBUF_X117_Y60_N1
\centroidCalcFP[56]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(56),
	o => \centroidCalcFP[56]~input_o\);

-- Location: IOIBUF_X117_Y67_N1
\centroidCalc[56]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(56),
	o => \centroidCalc[56]~input_o\);

-- Location: LCCOMB_X116_Y66_N10
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\op[1]~input_o\ & (\centroidCalcFP[56]~input_o\)) # (!\op[1]~input_o\ & (((\op[0]~input_o\ & \centroidCalc[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcFP[56]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[1]~input_o\,
	datad => \centroidCalc[56]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X117_Y76_N1
\centroidCalcFP[57]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(57),
	o => \centroidCalcFP[57]~input_o\);

-- Location: IOIBUF_X117_Y78_N1
\centroidCalc[57]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(57),
	o => \centroidCalc[57]~input_o\);

-- Location: LCCOMB_X116_Y76_N16
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\op[1]~input_o\ & (\centroidCalcFP[57]~input_o\)) # (!\op[1]~input_o\ & (((\op[0]~input_o\ & \centroidCalc[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \centroidCalcFP[57]~input_o\,
	datac => \op[0]~input_o\,
	datad => \centroidCalc[57]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X117_Y76_N8
\centroidCalcFP[58]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(58),
	o => \centroidCalcFP[58]~input_o\);

-- Location: IOIBUF_X117_Y79_N1
\centroidCalc[58]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(58),
	o => \centroidCalc[58]~input_o\);

-- Location: LCCOMB_X116_Y76_N14
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\op[1]~input_o\ & (\centroidCalcFP[58]~input_o\)) # (!\op[1]~input_o\ & (((\op[0]~input_o\ & \centroidCalc[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \centroidCalcFP[58]~input_o\,
	datac => \op[0]~input_o\,
	datad => \centroidCalc[58]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: IOIBUF_X117_Y59_N8
\centroidCalc[59]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(59),
	o => \centroidCalc[59]~input_o\);

-- Location: IOIBUF_X117_Y64_N8
\centroidCalcFP[59]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(59),
	o => \centroidCalcFP[59]~input_o\);

-- Location: LCCOMB_X116_Y66_N24
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[59]~input_o\)))) # (!\op[1]~input_o\ & (\centroidCalc[59]~input_o\ & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalc[59]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[1]~input_o\,
	datad => \centroidCalcFP[59]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: IOIBUF_X117_Y53_N8
\centroidCalc[60]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(60),
	o => \centroidCalc[60]~input_o\);

-- Location: IOIBUF_X117_Y53_N1
\centroidCalcFP[60]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(60),
	o => \centroidCalcFP[60]~input_o\);

-- Location: LCCOMB_X116_Y54_N2
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[60]~input_o\)))) # (!\op[1]~input_o\ & (\op[0]~input_o\ & (\centroidCalc[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalc[60]~input_o\,
	datad => \centroidCalcFP[60]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X117_Y66_N8
\centroidCalc[61]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(61),
	o => \centroidCalc[61]~input_o\);

-- Location: IOIBUF_X117_Y61_N1
\centroidCalcFP[61]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(61),
	o => \centroidCalcFP[61]~input_o\);

-- Location: LCCOMB_X116_Y66_N22
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[61]~input_o\)))) # (!\op[1]~input_o\ & (\centroidCalc[61]~input_o\ & ((\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalc[61]~input_o\,
	datab => \op[1]~input_o\,
	datac => \centroidCalcFP[61]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X111_Y91_N1
\centroidCalcFP[62]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(62),
	o => \centroidCalcFP[62]~input_o\);

-- Location: IOIBUF_X117_Y86_N1
\centroidCalc[62]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(62),
	o => \centroidCalc[62]~input_o\);

-- Location: LCCOMB_X107_Y90_N28
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcFP[62]~input_o\)))) # (!\op[1]~input_o\ & (\op[0]~input_o\ & ((\centroidCalc[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalcFP[62]~input_o\,
	datad => \centroidCalc[62]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X34_Y91_N22
\centroidCalcFP[63]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcFP(63),
	o => \centroidCalcFP[63]~input_o\);

-- Location: IOIBUF_X32_Y91_N15
\centroidCalc[63]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalc(63),
	o => \centroidCalc[63]~input_o\);

-- Location: LCCOMB_X33_Y90_N16
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\op[1]~input_o\ & (\centroidCalcFP[63]~input_o\)) # (!\op[1]~input_o\ & (((\op[0]~input_o\ & \centroidCalc[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcFP[63]~input_o\,
	datab => \op[0]~input_o\,
	datac => \centroidCalc[63]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X108_Y91_N15
\centroidInit[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(0),
	o => \centroidInit[0]~input_o\);

-- Location: LCCOMB_X107_Y90_N2
\Mux127~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux127~0_combout\ = (!\op[1]~input_o\ & (\centroidInit[0]~input_o\ & !\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => \centroidInit[0]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux127~0_combout\);

-- Location: IOIBUF_X108_Y91_N8
\centroidInit[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(1),
	o => \centroidInit[1]~input_o\);

-- Location: LCCOMB_X107_Y90_N12
\Mux126~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux126~0_combout\ = (\centroidInit[1]~input_o\ & (!\op[1]~input_o\ & !\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centroidInit[1]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux126~0_combout\);

-- Location: IOIBUF_X106_Y91_N15
\centroidInit[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(2),
	o => \centroidInit[2]~input_o\);

-- Location: LCCOMB_X107_Y90_N26
\Mux125~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux125~0_combout\ = (!\op[1]~input_o\ & (\centroidInit[2]~input_o\ & !\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => \centroidInit[2]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux125~0_combout\);

-- Location: IOIBUF_X115_Y91_N1
\centroidInit[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(3),
	o => \centroidInit[3]~input_o\);

-- Location: LCCOMB_X107_Y90_N24
\Mux124~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux124~0_combout\ = (!\op[1]~input_o\ & (\centroidInit[3]~input_o\ & !\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => \centroidInit[3]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux124~0_combout\);

-- Location: IOIBUF_X99_Y91_N15
\centroidInit[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(4),
	o => \centroidInit[4]~input_o\);

-- Location: LCCOMB_X107_Y90_N30
\Mux123~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux123~0_combout\ = (!\op[1]~input_o\ & (\centroidInit[4]~input_o\ & !\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => \centroidInit[4]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux123~0_combout\);

-- Location: IOIBUF_X99_Y91_N22
\centroidInit[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(5),
	o => \centroidInit[5]~input_o\);

-- Location: LCCOMB_X107_Y90_N20
\Mux122~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux122~0_combout\ = (!\op[1]~input_o\ & (\centroidInit[5]~input_o\ & !\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => \centroidInit[5]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux122~0_combout\);

-- Location: IOIBUF_X113_Y91_N1
\centroidInit[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(6),
	o => \centroidInit[6]~input_o\);

-- Location: LCCOMB_X107_Y90_N22
\Mux121~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux121~0_combout\ = (!\op[1]~input_o\ & (\centroidInit[6]~input_o\ & !\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => \centroidInit[6]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux121~0_combout\);

-- Location: IOIBUF_X111_Y91_N8
\centroidInit[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(7),
	o => \centroidInit[7]~input_o\);

-- Location: LCCOMB_X107_Y90_N0
\Mux120~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux120~0_combout\ = (!\op[1]~input_o\ & (\centroidInit[7]~input_o\ & !\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => \centroidInit[7]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux120~0_combout\);

-- Location: IOIBUF_X95_Y91_N22
\centroidInit[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(8),
	o => \centroidInit[8]~input_o\);

-- Location: LCCOMB_X107_Y90_N18
\Mux119~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux119~0_combout\ = (!\op[1]~input_o\ & (\centroidInit[8]~input_o\ & !\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => \centroidInit[8]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux119~0_combout\);

-- Location: IOIBUF_X113_Y91_N8
\centroidInit[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(9),
	o => \centroidInit[9]~input_o\);

-- Location: LCCOMB_X107_Y90_N8
\Mux118~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux118~0_combout\ = (!\op[1]~input_o\ & (\centroidInit[9]~input_o\ & !\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => \centroidInit[9]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux118~0_combout\);

-- Location: IOIBUF_X108_Y91_N22
\centroidInit[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(10),
	o => \centroidInit[10]~input_o\);

-- Location: LCCOMB_X107_Y90_N10
\Mux117~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux117~0_combout\ = (\centroidInit[10]~input_o\ & (!\op[1]~input_o\ & !\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centroidInit[10]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux117~0_combout\);

-- Location: IOIBUF_X108_Y91_N1
\centroidInit[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(11),
	o => \centroidInit[11]~input_o\);

-- Location: LCCOMB_X107_Y90_N4
\Mux116~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux116~0_combout\ = (!\op[1]~input_o\ & (\centroidInit[11]~input_o\ & !\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => \centroidInit[11]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux116~0_combout\);

-- Location: IOIBUF_X104_Y91_N1
\centroidInit[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(12),
	o => \centroidInit[12]~input_o\);

-- Location: LCCOMB_X107_Y90_N14
\Mux115~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux115~0_combout\ = (!\op[1]~input_o\ & (\centroidInit[12]~input_o\ & !\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => \centroidInit[12]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux115~0_combout\);

-- Location: IOIBUF_X104_Y91_N8
\centroidInit[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(13),
	o => \centroidInit[13]~input_o\);

-- Location: LCCOMB_X107_Y90_N16
\Mux114~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux114~0_combout\ = (!\op[1]~input_o\ & (\centroidInit[13]~input_o\ & !\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => \centroidInit[13]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux114~0_combout\);

-- Location: IOIBUF_X115_Y91_N8
\centroidInit[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(14),
	o => \centroidInit[14]~input_o\);

-- Location: LCCOMB_X107_Y90_N6
\Mux113~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux113~0_combout\ = (!\op[1]~input_o\ & (\centroidInit[14]~input_o\ & !\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => \centroidInit[14]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux113~0_combout\);

-- Location: IOIBUF_X46_Y0_N22
\centroidInit[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(15),
	o => \centroidInit[15]~input_o\);

-- Location: LCCOMB_X42_Y1_N0
\Mux112~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux112~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[15]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[15]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux112~0_combout\);

-- Location: IOIBUF_X50_Y0_N8
\centroidInit[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(16),
	o => \centroidInit[16]~input_o\);

-- Location: LCCOMB_X42_Y1_N14
\Mux111~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux111~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[16]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[16]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux111~0_combout\);

-- Location: IOIBUF_X46_Y0_N1
\centroidInit[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(17),
	o => \centroidInit[17]~input_o\);

-- Location: LCCOMB_X42_Y1_N8
\Mux110~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux110~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[17]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[17]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux110~0_combout\);

-- Location: IOIBUF_X48_Y0_N8
\centroidInit[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(18),
	o => \centroidInit[18]~input_o\);

-- Location: LCCOMB_X42_Y1_N22
\Mux109~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux109~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[18]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[18]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux109~0_combout\);

-- Location: IOIBUF_X41_Y0_N22
\centroidInit[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(19),
	o => \centroidInit[19]~input_o\);

-- Location: LCCOMB_X42_Y1_N20
\Mux108~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux108~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[19]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[19]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux108~0_combout\);

-- Location: IOIBUF_X50_Y0_N1
\centroidInit[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(20),
	o => \centroidInit[20]~input_o\);

-- Location: LCCOMB_X42_Y1_N18
\Mux107~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux107~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[20]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \centroidInit[20]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux107~0_combout\);

-- Location: IOIBUF_X48_Y0_N1
\centroidInit[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(21),
	o => \centroidInit[21]~input_o\);

-- Location: LCCOMB_X42_Y1_N16
\Mux106~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux106~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[21]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[21]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux106~0_combout\);

-- Location: IOIBUF_X44_Y0_N1
\centroidInit[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(22),
	o => \centroidInit[22]~input_o\);

-- Location: LCCOMB_X42_Y1_N26
\Mux105~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux105~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[22]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[22]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux105~0_combout\);

-- Location: IOIBUF_X39_Y0_N8
\centroidInit[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(23),
	o => \centroidInit[23]~input_o\);

-- Location: LCCOMB_X42_Y1_N28
\Mux104~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux104~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[23]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[23]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux104~0_combout\);

-- Location: IOIBUF_X44_Y0_N15
\centroidInit[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(24),
	o => \centroidInit[24]~input_o\);

-- Location: LCCOMB_X42_Y1_N6
\Mux103~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux103~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[24]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[24]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux103~0_combout\);

-- Location: IOIBUF_X46_Y0_N8
\centroidInit[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(25),
	o => \centroidInit[25]~input_o\);

-- Location: LCCOMB_X42_Y1_N12
\Mux102~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux102~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[25]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[25]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux102~0_combout\);

-- Location: IOIBUF_X39_Y0_N1
\centroidInit[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(26),
	o => \centroidInit[26]~input_o\);

-- Location: LCCOMB_X42_Y1_N30
\Mux101~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux101~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[26]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[26]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux101~0_combout\);

-- Location: IOIBUF_X44_Y0_N22
\centroidInit[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(27),
	o => \centroidInit[27]~input_o\);

-- Location: LCCOMB_X42_Y1_N4
\Mux100~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux100~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[27]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[27]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux100~0_combout\);

-- Location: IOIBUF_X34_Y0_N15
\centroidInit[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(28),
	o => \centroidInit[28]~input_o\);

-- Location: LCCOMB_X42_Y1_N10
\Mux99~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux99~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[28]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[28]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux99~0_combout\);

-- Location: IOIBUF_X41_Y0_N15
\centroidInit[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(29),
	o => \centroidInit[29]~input_o\);

-- Location: LCCOMB_X42_Y1_N24
\Mux98~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux98~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[29]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[29]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux98~0_combout\);

-- Location: IOIBUF_X44_Y0_N8
\centroidInit[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(30),
	o => \centroidInit[30]~input_o\);

-- Location: LCCOMB_X42_Y1_N2
\Mux97~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux97~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[30]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[30]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux97~0_combout\);

-- Location: IOIBUF_X117_Y35_N1
\centroidInit[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(31),
	o => \centroidInit[31]~input_o\);

-- Location: LCCOMB_X116_Y39_N16
\Mux96~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux96~0_combout\ = (\centroidInit[31]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidInit[31]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux96~0_combout\);

-- Location: IOIBUF_X117_Y28_N1
\centroidInit[32]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(32),
	o => \centroidInit[32]~input_o\);

-- Location: LCCOMB_X116_Y29_N20
\Mux95~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux95~0_combout\ = (\centroidInit[32]~input_o\ & (!\op[1]~input_o\ & !\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centroidInit[32]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux95~0_combout\);

-- Location: IOIBUF_X117_Y28_N8
\centroidInit[33]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(33),
	o => \centroidInit[33]~input_o\);

-- Location: LCCOMB_X116_Y29_N18
\Mux94~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux94~0_combout\ = (\centroidInit[33]~input_o\ & (!\op[1]~input_o\ & !\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centroidInit[33]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux94~0_combout\);

-- Location: IOIBUF_X117_Y49_N8
\centroidInit[34]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(34),
	o => \centroidInit[34]~input_o\);

-- Location: LCCOMB_X116_Y49_N20
\Mux93~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux93~0_combout\ = (\centroidInit[34]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidInit[34]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux93~0_combout\);

-- Location: IOIBUF_X117_Y35_N8
\centroidInit[35]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(35),
	o => \centroidInit[35]~input_o\);

-- Location: LCCOMB_X116_Y39_N10
\Mux92~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux92~0_combout\ = (\centroidInit[35]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidInit[35]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux92~0_combout\);

-- Location: IOIBUF_X117_Y36_N1
\centroidInit[36]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(36),
	o => \centroidInit[36]~input_o\);

-- Location: LCCOMB_X116_Y39_N12
\Mux91~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux91~0_combout\ = (\centroidInit[36]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centroidInit[36]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux91~0_combout\);

-- Location: IOIBUF_X117_Y38_N1
\centroidInit[37]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(37),
	o => \centroidInit[37]~input_o\);

-- Location: LCCOMB_X116_Y39_N6
\Mux90~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux90~0_combout\ = (\centroidInit[37]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centroidInit[37]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux90~0_combout\);

-- Location: IOIBUF_X117_Y48_N1
\centroidInit[38]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(38),
	o => \centroidInit[38]~input_o\);

-- Location: LCCOMB_X116_Y48_N20
\Mux89~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux89~0_combout\ = (\centroidInit[38]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centroidInit[38]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux89~0_combout\);

-- Location: IOIBUF_X117_Y32_N1
\centroidInit[39]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(39),
	o => \centroidInit[39]~input_o\);

-- Location: LCCOMB_X116_Y39_N24
\Mux88~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux88~0_combout\ = (\centroidInit[39]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centroidInit[39]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux88~0_combout\);

-- Location: IOIBUF_X117_Y32_N8
\centroidInit[40]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(40),
	o => \centroidInit[40]~input_o\);

-- Location: LCCOMB_X116_Y39_N22
\Mux87~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux87~0_combout\ = (\centroidInit[40]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centroidInit[40]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux87~0_combout\);

-- Location: IOIBUF_X117_Y39_N8
\centroidInit[41]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(41),
	o => \centroidInit[41]~input_o\);

-- Location: LCCOMB_X116_Y39_N0
\Mux86~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux86~0_combout\ = (\centroidInit[41]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centroidInit[41]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux86~0_combout\);

-- Location: IOIBUF_X117_Y33_N8
\centroidInit[42]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(42),
	o => \centroidInit[42]~input_o\);

-- Location: LCCOMB_X116_Y39_N26
\Mux85~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux85~0_combout\ = (\centroidInit[42]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centroidInit[42]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux85~0_combout\);

-- Location: IOIBUF_X117_Y33_N1
\centroidInit[43]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(43),
	o => \centroidInit[43]~input_o\);

-- Location: LCCOMB_X116_Y39_N8
\Mux84~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux84~0_combout\ = (\centroidInit[43]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centroidInit[43]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux84~0_combout\);

-- Location: IOIBUF_X117_Y34_N1
\centroidInit[44]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(44),
	o => \centroidInit[44]~input_o\);

-- Location: LCCOMB_X116_Y39_N18
\Mux83~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux83~0_combout\ = (\centroidInit[44]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centroidInit[44]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux83~0_combout\);

-- Location: IOIBUF_X117_Y36_N8
\centroidInit[45]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(45),
	o => \centroidInit[45]~input_o\);

-- Location: LCCOMB_X116_Y39_N28
\Mux82~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux82~0_combout\ = (\centroidInit[45]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidInit[45]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux82~0_combout\);

-- Location: IOIBUF_X117_Y34_N8
\centroidInit[46]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(46),
	o => \centroidInit[46]~input_o\);

-- Location: LCCOMB_X116_Y39_N2
\Mux81~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux81~0_combout\ = (\centroidInit[46]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centroidInit[46]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux81~0_combout\);

-- Location: IOIBUF_X66_Y91_N1
\centroidInit[47]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(47),
	o => \centroidInit[47]~input_o\);

-- Location: LCCOMB_X62_Y90_N28
\Mux80~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux80~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[47]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[47]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux80~0_combout\);

-- Location: IOIBUF_X53_Y91_N22
\centroidInit[48]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(48),
	o => \centroidInit[48]~input_o\);

-- Location: LCCOMB_X62_Y90_N22
\Mux79~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux79~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[48]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[48]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux79~0_combout\);

-- Location: IOIBUF_X75_Y91_N8
\centroidInit[49]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(49),
	o => \centroidInit[49]~input_o\);

-- Location: LCCOMB_X62_Y90_N0
\Mux78~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux78~0_combout\ = (\centroidInit[49]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidInit[49]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux78~0_combout\);

-- Location: IOIBUF_X50_Y91_N15
\centroidInit[50]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(50),
	o => \centroidInit[50]~input_o\);

-- Location: LCCOMB_X50_Y90_N0
\Mux77~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux77~0_combout\ = (!\op[1]~input_o\ & (\centroidInit[50]~input_o\ & !\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[1]~input_o\,
	datac => \centroidInit[50]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux77~0_combout\);

-- Location: IOIBUF_X53_Y91_N15
\centroidInit[51]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(51),
	o => \centroidInit[51]~input_o\);

-- Location: LCCOMB_X62_Y90_N26
\Mux76~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux76~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[51]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[51]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux76~0_combout\);

-- Location: IOIBUF_X72_Y91_N1
\centroidInit[52]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(52),
	o => \centroidInit[52]~input_o\);

-- Location: LCCOMB_X62_Y90_N24
\Mux75~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux75~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[52]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[52]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux75~0_combout\);

-- Location: IOIBUF_X63_Y91_N1
\centroidInit[53]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(53),
	o => \centroidInit[53]~input_o\);

-- Location: LCCOMB_X62_Y90_N18
\Mux74~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux74~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[53]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[53]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux74~0_combout\);

-- Location: IOIBUF_X66_Y91_N8
\centroidInit[54]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(54),
	o => \centroidInit[54]~input_o\);

-- Location: LCCOMB_X62_Y90_N12
\Mux73~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux73~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[54]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[54]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux73~0_combout\);

-- Location: IOIBUF_X75_Y91_N1
\centroidInit[55]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(55),
	o => \centroidInit[55]~input_o\);

-- Location: LCCOMB_X62_Y90_N30
\Mux72~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux72~0_combout\ = (\centroidInit[55]~input_o\ & (!\op[0]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidInit[55]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux72~0_combout\);

-- Location: IOIBUF_X72_Y91_N8
\centroidInit[56]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(56),
	o => \centroidInit[56]~input_o\);

-- Location: LCCOMB_X62_Y90_N20
\Mux71~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux71~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[56]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[56]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux71~0_combout\);

-- Location: IOIBUF_X63_Y91_N8
\centroidInit[57]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(57),
	o => \centroidInit[57]~input_o\);

-- Location: LCCOMB_X62_Y90_N10
\Mux70~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux70~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[57]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[57]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux70~0_combout\);

-- Location: IOIBUF_X70_Y91_N8
\centroidInit[58]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(58),
	o => \centroidInit[58]~input_o\);

-- Location: LCCOMB_X62_Y90_N8
\Mux69~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux69~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[58]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[58]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux69~0_combout\);

-- Location: IOIBUF_X50_Y91_N22
\centroidInit[59]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(59),
	o => \centroidInit[59]~input_o\);

-- Location: LCCOMB_X50_Y90_N26
\Mux68~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux68~0_combout\ = (!\op[1]~input_o\ & (\centroidInit[59]~input_o\ & !\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[1]~input_o\,
	datac => \centroidInit[59]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux68~0_combout\);

-- Location: IOIBUF_X68_Y91_N8
\centroidInit[60]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(60),
	o => \centroidInit[60]~input_o\);

-- Location: LCCOMB_X62_Y90_N6
\Mux67~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux67~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[60]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[60]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux67~0_combout\);

-- Location: IOIBUF_X48_Y91_N15
\centroidInit[61]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(61),
	o => \centroidInit[61]~input_o\);

-- Location: LCCOMB_X48_Y90_N16
\Mux66~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux66~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[61]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[0]~input_o\,
	datac => \centroidInit[61]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux66~0_combout\);

-- Location: IOIBUF_X70_Y91_N1
\centroidInit[62]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(62),
	o => \centroidInit[62]~input_o\);

-- Location: LCCOMB_X62_Y90_N16
\Mux65~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux65~0_combout\ = (!\op[0]~input_o\ & (\centroidInit[62]~input_o\ & !\op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \centroidInit[62]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux65~0_combout\);

-- Location: IOIBUF_X117_Y77_N8
\centroidInit[63]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(63),
	o => \centroidInit[63]~input_o\);

-- Location: LCCOMB_X116_Y76_N4
\Mux64~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux64~0_combout\ = (!\op[1]~input_o\ & (!\op[0]~input_o\ & \centroidInit[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \centroidInit[63]~input_o\,
	combout => \Mux64~0_combout\);

ww_centroidData_A(0) <= \centroidData_A[0]~output_o\;

ww_centroidData_A(1) <= \centroidData_A[1]~output_o\;

ww_centroidData_A(2) <= \centroidData_A[2]~output_o\;

ww_centroidData_A(3) <= \centroidData_A[3]~output_o\;

ww_centroidData_A(4) <= \centroidData_A[4]~output_o\;

ww_centroidData_A(5) <= \centroidData_A[5]~output_o\;

ww_centroidData_A(6) <= \centroidData_A[6]~output_o\;

ww_centroidData_A(7) <= \centroidData_A[7]~output_o\;

ww_centroidData_A(8) <= \centroidData_A[8]~output_o\;

ww_centroidData_A(9) <= \centroidData_A[9]~output_o\;

ww_centroidData_A(10) <= \centroidData_A[10]~output_o\;

ww_centroidData_A(11) <= \centroidData_A[11]~output_o\;

ww_centroidData_A(12) <= \centroidData_A[12]~output_o\;

ww_centroidData_A(13) <= \centroidData_A[13]~output_o\;

ww_centroidData_A(14) <= \centroidData_A[14]~output_o\;

ww_centroidData_A(15) <= \centroidData_A[15]~output_o\;

ww_centroidData_A(16) <= \centroidData_A[16]~output_o\;

ww_centroidData_A(17) <= \centroidData_A[17]~output_o\;

ww_centroidData_A(18) <= \centroidData_A[18]~output_o\;

ww_centroidData_A(19) <= \centroidData_A[19]~output_o\;

ww_centroidData_A(20) <= \centroidData_A[20]~output_o\;

ww_centroidData_A(21) <= \centroidData_A[21]~output_o\;

ww_centroidData_A(22) <= \centroidData_A[22]~output_o\;

ww_centroidData_A(23) <= \centroidData_A[23]~output_o\;

ww_centroidData_A(24) <= \centroidData_A[24]~output_o\;

ww_centroidData_A(25) <= \centroidData_A[25]~output_o\;

ww_centroidData_A(26) <= \centroidData_A[26]~output_o\;

ww_centroidData_A(27) <= \centroidData_A[27]~output_o\;

ww_centroidData_A(28) <= \centroidData_A[28]~output_o\;

ww_centroidData_A(29) <= \centroidData_A[29]~output_o\;

ww_centroidData_A(30) <= \centroidData_A[30]~output_o\;

ww_centroidData_A(31) <= \centroidData_A[31]~output_o\;

ww_centroidData_A(32) <= \centroidData_A[32]~output_o\;

ww_centroidData_A(33) <= \centroidData_A[33]~output_o\;

ww_centroidData_A(34) <= \centroidData_A[34]~output_o\;

ww_centroidData_A(35) <= \centroidData_A[35]~output_o\;

ww_centroidData_A(36) <= \centroidData_A[36]~output_o\;

ww_centroidData_A(37) <= \centroidData_A[37]~output_o\;

ww_centroidData_A(38) <= \centroidData_A[38]~output_o\;

ww_centroidData_A(39) <= \centroidData_A[39]~output_o\;

ww_centroidData_A(40) <= \centroidData_A[40]~output_o\;

ww_centroidData_A(41) <= \centroidData_A[41]~output_o\;

ww_centroidData_A(42) <= \centroidData_A[42]~output_o\;

ww_centroidData_A(43) <= \centroidData_A[43]~output_o\;

ww_centroidData_A(44) <= \centroidData_A[44]~output_o\;

ww_centroidData_A(45) <= \centroidData_A[45]~output_o\;

ww_centroidData_A(46) <= \centroidData_A[46]~output_o\;

ww_centroidData_A(47) <= \centroidData_A[47]~output_o\;

ww_centroidData_A(48) <= \centroidData_A[48]~output_o\;

ww_centroidData_A(49) <= \centroidData_A[49]~output_o\;

ww_centroidData_A(50) <= \centroidData_A[50]~output_o\;

ww_centroidData_A(51) <= \centroidData_A[51]~output_o\;

ww_centroidData_A(52) <= \centroidData_A[52]~output_o\;

ww_centroidData_A(53) <= \centroidData_A[53]~output_o\;

ww_centroidData_A(54) <= \centroidData_A[54]~output_o\;

ww_centroidData_A(55) <= \centroidData_A[55]~output_o\;

ww_centroidData_A(56) <= \centroidData_A[56]~output_o\;

ww_centroidData_A(57) <= \centroidData_A[57]~output_o\;

ww_centroidData_A(58) <= \centroidData_A[58]~output_o\;

ww_centroidData_A(59) <= \centroidData_A[59]~output_o\;

ww_centroidData_A(60) <= \centroidData_A[60]~output_o\;

ww_centroidData_A(61) <= \centroidData_A[61]~output_o\;

ww_centroidData_A(62) <= \centroidData_A[62]~output_o\;

ww_centroidData_A(63) <= \centroidData_A[63]~output_o\;

ww_centroidData_B(0) <= \centroidData_B[0]~output_o\;

ww_centroidData_B(1) <= \centroidData_B[1]~output_o\;

ww_centroidData_B(2) <= \centroidData_B[2]~output_o\;

ww_centroidData_B(3) <= \centroidData_B[3]~output_o\;

ww_centroidData_B(4) <= \centroidData_B[4]~output_o\;

ww_centroidData_B(5) <= \centroidData_B[5]~output_o\;

ww_centroidData_B(6) <= \centroidData_B[6]~output_o\;

ww_centroidData_B(7) <= \centroidData_B[7]~output_o\;

ww_centroidData_B(8) <= \centroidData_B[8]~output_o\;

ww_centroidData_B(9) <= \centroidData_B[9]~output_o\;

ww_centroidData_B(10) <= \centroidData_B[10]~output_o\;

ww_centroidData_B(11) <= \centroidData_B[11]~output_o\;

ww_centroidData_B(12) <= \centroidData_B[12]~output_o\;

ww_centroidData_B(13) <= \centroidData_B[13]~output_o\;

ww_centroidData_B(14) <= \centroidData_B[14]~output_o\;

ww_centroidData_B(15) <= \centroidData_B[15]~output_o\;

ww_centroidData_B(16) <= \centroidData_B[16]~output_o\;

ww_centroidData_B(17) <= \centroidData_B[17]~output_o\;

ww_centroidData_B(18) <= \centroidData_B[18]~output_o\;

ww_centroidData_B(19) <= \centroidData_B[19]~output_o\;

ww_centroidData_B(20) <= \centroidData_B[20]~output_o\;

ww_centroidData_B(21) <= \centroidData_B[21]~output_o\;

ww_centroidData_B(22) <= \centroidData_B[22]~output_o\;

ww_centroidData_B(23) <= \centroidData_B[23]~output_o\;

ww_centroidData_B(24) <= \centroidData_B[24]~output_o\;

ww_centroidData_B(25) <= \centroidData_B[25]~output_o\;

ww_centroidData_B(26) <= \centroidData_B[26]~output_o\;

ww_centroidData_B(27) <= \centroidData_B[27]~output_o\;

ww_centroidData_B(28) <= \centroidData_B[28]~output_o\;

ww_centroidData_B(29) <= \centroidData_B[29]~output_o\;

ww_centroidData_B(30) <= \centroidData_B[30]~output_o\;

ww_centroidData_B(31) <= \centroidData_B[31]~output_o\;

ww_centroidData_B(32) <= \centroidData_B[32]~output_o\;

ww_centroidData_B(33) <= \centroidData_B[33]~output_o\;

ww_centroidData_B(34) <= \centroidData_B[34]~output_o\;

ww_centroidData_B(35) <= \centroidData_B[35]~output_o\;

ww_centroidData_B(36) <= \centroidData_B[36]~output_o\;

ww_centroidData_B(37) <= \centroidData_B[37]~output_o\;

ww_centroidData_B(38) <= \centroidData_B[38]~output_o\;

ww_centroidData_B(39) <= \centroidData_B[39]~output_o\;

ww_centroidData_B(40) <= \centroidData_B[40]~output_o\;

ww_centroidData_B(41) <= \centroidData_B[41]~output_o\;

ww_centroidData_B(42) <= \centroidData_B[42]~output_o\;

ww_centroidData_B(43) <= \centroidData_B[43]~output_o\;

ww_centroidData_B(44) <= \centroidData_B[44]~output_o\;

ww_centroidData_B(45) <= \centroidData_B[45]~output_o\;

ww_centroidData_B(46) <= \centroidData_B[46]~output_o\;

ww_centroidData_B(47) <= \centroidData_B[47]~output_o\;

ww_centroidData_B(48) <= \centroidData_B[48]~output_o\;

ww_centroidData_B(49) <= \centroidData_B[49]~output_o\;

ww_centroidData_B(50) <= \centroidData_B[50]~output_o\;

ww_centroidData_B(51) <= \centroidData_B[51]~output_o\;

ww_centroidData_B(52) <= \centroidData_B[52]~output_o\;

ww_centroidData_B(53) <= \centroidData_B[53]~output_o\;

ww_centroidData_B(54) <= \centroidData_B[54]~output_o\;

ww_centroidData_B(55) <= \centroidData_B[55]~output_o\;

ww_centroidData_B(56) <= \centroidData_B[56]~output_o\;

ww_centroidData_B(57) <= \centroidData_B[57]~output_o\;

ww_centroidData_B(58) <= \centroidData_B[58]~output_o\;

ww_centroidData_B(59) <= \centroidData_B[59]~output_o\;

ww_centroidData_B(60) <= \centroidData_B[60]~output_o\;

ww_centroidData_B(61) <= \centroidData_B[61]~output_o\;

ww_centroidData_B(62) <= \centroidData_B[62]~output_o\;

ww_centroidData_B(63) <= \centroidData_B[63]~output_o\;
END structure;


