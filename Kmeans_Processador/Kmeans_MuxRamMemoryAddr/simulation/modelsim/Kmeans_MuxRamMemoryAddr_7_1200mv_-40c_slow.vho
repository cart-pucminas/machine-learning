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

-- DATE "06/04/2018 10:42:57"

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

ENTITY 	Kmeans_MuxRamMemoryAddr IS
    PORT (
	memInitAddr : IN std_logic_vector(13 DOWNTO 0);
	centroidControlInit : IN std_logic_vector(13 DOWNTO 0);
	centroidInit : IN std_logic_vector(13 DOWNTO 0);
	centroidCalcModule_A : IN std_logic_vector(13 DOWNTO 0);
	centroidCalcModuleFP_A : IN std_logic_vector(13 DOWNTO 0);
	centroidCalcModuleKmodes_A : IN std_logic_vector(13 DOWNTO 0);
	mapCalcModule_A : IN std_logic_vector(13 DOWNTO 0);
	mapCalcModule_B : IN std_logic_vector(13 DOWNTO 0);
	mapCalcModuleFP_A : IN std_logic_vector(13 DOWNTO 0);
	mapCalcModuleFP_B : IN std_logic_vector(13 DOWNTO 0);
	mapCalcModuleKmodes_A : IN std_logic_vector(13 DOWNTO 0);
	mapCalcModuleKmodes_B : IN std_logic_vector(13 DOWNTO 0);
	op : IN std_logic_vector(2 DOWNTO 0);
	ramAddr_A : OUT std_logic_vector(13 DOWNTO 0);
	ramAddr_B : OUT std_logic_vector(13 DOWNTO 0)
	);
END Kmeans_MuxRamMemoryAddr;

-- Design Ports Information
-- mapCalcModuleKmodes_B[0]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_B[1]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_B[2]	=>  Location: PIN_AD16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_B[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_B[4]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_B[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_B[6]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_B[7]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_B[8]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_B[9]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_B[10]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_B[11]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_B[12]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_B[13]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_A[0]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_A[1]	=>  Location: PIN_H27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_A[2]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_A[3]	=>  Location: PIN_U30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_A[4]	=>  Location: PIN_AE30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_A[5]	=>  Location: PIN_A24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_A[6]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_A[7]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_A[8]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_A[9]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_A[10]	=>  Location: PIN_N24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_A[11]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_A[12]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_A[13]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_B[0]	=>  Location: PIN_N27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_B[1]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_B[2]	=>  Location: PIN_R29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_B[3]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_B[4]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_B[5]	=>  Location: PIN_AA27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_B[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_B[7]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_B[8]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_B[9]	=>  Location: PIN_AJ30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_B[10]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_B[11]	=>  Location: PIN_T27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_B[12]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramAddr_B[13]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleKmodes_A[0]	=>  Location: PIN_F23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[1]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_A[0]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[0]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_A[0]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_A[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModule_A[0]	=>  Location: PIN_C28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidControlInit[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memInitAddr[0]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleFP_A[0]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[2]	=>  Location: PIN_D29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleKmodes_A[1]	=>  Location: PIN_A29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_A[1]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_A[1]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_A[1]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModule_A[1]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidControlInit[1]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memInitAddr[1]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleFP_A[1]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleKmodes_A[2]	=>  Location: PIN_V30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_A[2]	=>  Location: PIN_V29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_A[2]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_A[2]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModule_A[2]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidControlInit[2]	=>  Location: PIN_W30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memInitAddr[2]	=>  Location: PIN_W29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleFP_A[2]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleKmodes_A[3]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_A[3]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_A[3]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_A[3]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModule_A[3]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidControlInit[3]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memInitAddr[3]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleFP_A[3]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleKmodes_A[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_A[4]	=>  Location: PIN_Y30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_A[4]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_A[4]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModule_A[4]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidControlInit[4]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memInitAddr[4]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleFP_A[4]	=>  Location: PIN_AB29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleKmodes_A[5]	=>  Location: PIN_A27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_A[5]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_A[5]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_A[5]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModule_A[5]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidControlInit[5]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memInitAddr[5]	=>  Location: PIN_B27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleFP_A[5]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleKmodes_A[6]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_A[6]	=>  Location: PIN_B24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_A[6]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_A[6]	=>  Location: PIN_H28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModule_A[6]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidControlInit[6]	=>  Location: PIN_B28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memInitAddr[6]	=>  Location: PIN_A28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleFP_A[6]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_A[7]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleKmodes_A[7]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_A[7]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_A[7]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModule_A[7]	=>  Location: PIN_B30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidControlInit[7]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memInitAddr[7]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleFP_A[7]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_A[8]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleKmodes_A[8]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_A[8]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_A[8]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModule_A[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidControlInit[8]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memInitAddr[8]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleFP_A[8]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_A[9]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleKmodes_A[9]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_A[9]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_A[9]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModule_A[9]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidControlInit[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memInitAddr[9]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleFP_A[9]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_A[10]	=>  Location: PIN_J29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleKmodes_A[10]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_A[10]	=>  Location: PIN_M30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_A[10]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModule_A[10]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidControlInit[10]	=>  Location: PIN_M29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memInitAddr[10]	=>  Location: PIN_L30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleFP_A[10]	=>  Location: PIN_G30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_A[11]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleKmodes_A[11]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_A[11]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_A[11]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModule_A[11]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidControlInit[11]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memInitAddr[11]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleFP_A[11]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_A[12]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleKmodes_A[12]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_A[12]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_A[12]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModule_A[12]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidControlInit[12]	=>  Location: PIN_T30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memInitAddr[12]	=>  Location: PIN_T29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleFP_A[12]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_A[13]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleKmodes_A[13]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_A[13]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleKmodes_A[13]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModule_A[13]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidControlInit[13]	=>  Location: PIN_F29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memInitAddr[13]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidCalcModuleFP_A[13]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_B[0]	=>  Location: PIN_R30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_B[0]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[0]	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_B[1]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_B[1]	=>  Location: PIN_N30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[1]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_B[2]	=>  Location: PIN_N28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_B[2]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[2]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_B[3]	=>  Location: PIN_K30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_B[3]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[3]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_B[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_B[4]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[4]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_B[5]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_B[5]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[5]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_B[6]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_B[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[6]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_B[7]	=>  Location: PIN_N29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_B[7]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[7]	=>  Location: PIN_P30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_B[8]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_B[8]	=>  Location: PIN_AA29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[8]	=>  Location: PIN_Y28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_B[9]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_B[9]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[9]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_B[10]	=>  Location: PIN_K29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_B[10]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[10]	=>  Location: PIN_J30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_B[11]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_B[11]	=>  Location: PIN_T28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[11]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_B[12]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_B[12]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[12]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModuleFP_B[13]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mapCalcModule_B[13]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroidInit[13]	=>  Location: PIN_H30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Kmeans_MuxRamMemoryAddr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_memInitAddr : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_centroidControlInit : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_centroidInit : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_centroidCalcModule_A : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_centroidCalcModuleFP_A : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_centroidCalcModuleKmodes_A : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_mapCalcModule_A : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_mapCalcModule_B : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_mapCalcModuleFP_A : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_mapCalcModuleFP_B : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_mapCalcModuleKmodes_A : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_mapCalcModuleKmodes_B : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ramAddr_A : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_ramAddr_B : std_logic_vector(13 DOWNTO 0);
SIGNAL \mapCalcModuleKmodes_B[0]~input_o\ : std_logic;
SIGNAL \mapCalcModuleKmodes_B[1]~input_o\ : std_logic;
SIGNAL \mapCalcModuleKmodes_B[2]~input_o\ : std_logic;
SIGNAL \mapCalcModuleKmodes_B[3]~input_o\ : std_logic;
SIGNAL \mapCalcModuleKmodes_B[4]~input_o\ : std_logic;
SIGNAL \mapCalcModuleKmodes_B[5]~input_o\ : std_logic;
SIGNAL \mapCalcModuleKmodes_B[6]~input_o\ : std_logic;
SIGNAL \mapCalcModuleKmodes_B[7]~input_o\ : std_logic;
SIGNAL \mapCalcModuleKmodes_B[8]~input_o\ : std_logic;
SIGNAL \mapCalcModuleKmodes_B[9]~input_o\ : std_logic;
SIGNAL \mapCalcModuleKmodes_B[10]~input_o\ : std_logic;
SIGNAL \mapCalcModuleKmodes_B[11]~input_o\ : std_logic;
SIGNAL \mapCalcModuleKmodes_B[12]~input_o\ : std_logic;
SIGNAL \mapCalcModuleKmodes_B[13]~input_o\ : std_logic;
SIGNAL \ramAddr_A[0]~output_o\ : std_logic;
SIGNAL \ramAddr_A[1]~output_o\ : std_logic;
SIGNAL \ramAddr_A[2]~output_o\ : std_logic;
SIGNAL \ramAddr_A[3]~output_o\ : std_logic;
SIGNAL \ramAddr_A[4]~output_o\ : std_logic;
SIGNAL \ramAddr_A[5]~output_o\ : std_logic;
SIGNAL \ramAddr_A[6]~output_o\ : std_logic;
SIGNAL \ramAddr_A[7]~output_o\ : std_logic;
SIGNAL \ramAddr_A[8]~output_o\ : std_logic;
SIGNAL \ramAddr_A[9]~output_o\ : std_logic;
SIGNAL \ramAddr_A[10]~output_o\ : std_logic;
SIGNAL \ramAddr_A[11]~output_o\ : std_logic;
SIGNAL \ramAddr_A[12]~output_o\ : std_logic;
SIGNAL \ramAddr_A[13]~output_o\ : std_logic;
SIGNAL \ramAddr_B[0]~output_o\ : std_logic;
SIGNAL \ramAddr_B[1]~output_o\ : std_logic;
SIGNAL \ramAddr_B[2]~output_o\ : std_logic;
SIGNAL \ramAddr_B[3]~output_o\ : std_logic;
SIGNAL \ramAddr_B[4]~output_o\ : std_logic;
SIGNAL \ramAddr_B[5]~output_o\ : std_logic;
SIGNAL \ramAddr_B[6]~output_o\ : std_logic;
SIGNAL \ramAddr_B[7]~output_o\ : std_logic;
SIGNAL \ramAddr_B[8]~output_o\ : std_logic;
SIGNAL \ramAddr_B[9]~output_o\ : std_logic;
SIGNAL \ramAddr_B[10]~output_o\ : std_logic;
SIGNAL \ramAddr_B[11]~output_o\ : std_logic;
SIGNAL \ramAddr_B[12]~output_o\ : std_logic;
SIGNAL \ramAddr_B[13]~output_o\ : std_logic;
SIGNAL \memInitAddr[0]~input_o\ : std_logic;
SIGNAL \centroidControlInit[0]~input_o\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \centroidCalcModuleFP_A[0]~input_o\ : std_logic;
SIGNAL \centroidCalcModule_A[0]~input_o\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \op[2]~input_o\ : std_logic;
SIGNAL \centroidCalcModuleKmodes_A[0]~input_o\ : std_logic;
SIGNAL \mapCalcModuleKmodes_A[0]~input_o\ : std_logic;
SIGNAL \mapCalcModule_A[0]~input_o\ : std_logic;
SIGNAL \mapCalcModuleFP_A[0]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \centroidCalcModule_A[1]~input_o\ : std_logic;
SIGNAL \centroidControlInit[1]~input_o\ : std_logic;
SIGNAL \memInitAddr[1]~input_o\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \centroidCalcModuleFP_A[1]~input_o\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \mapCalcModule_A[1]~input_o\ : std_logic;
SIGNAL \mapCalcModuleFP_A[1]~input_o\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \mapCalcModuleKmodes_A[1]~input_o\ : std_logic;
SIGNAL \centroidCalcModuleKmodes_A[1]~input_o\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \mapCalcModule_A[2]~input_o\ : std_logic;
SIGNAL \mapCalcModuleFP_A[2]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \centroidCalcModuleKmodes_A[2]~input_o\ : std_logic;
SIGNAL \mapCalcModuleKmodes_A[2]~input_o\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \memInitAddr[2]~input_o\ : std_logic;
SIGNAL \centroidControlInit[2]~input_o\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \centroidCalcModule_A[2]~input_o\ : std_logic;
SIGNAL \centroidCalcModuleFP_A[2]~input_o\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \mapCalcModule_A[3]~input_o\ : std_logic;
SIGNAL \mapCalcModuleFP_A[3]~input_o\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \mapCalcModuleKmodes_A[3]~input_o\ : std_logic;
SIGNAL \centroidCalcModuleKmodes_A[3]~input_o\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \centroidControlInit[3]~input_o\ : std_logic;
SIGNAL \memInitAddr[3]~input_o\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \centroidCalcModule_A[3]~input_o\ : std_logic;
SIGNAL \centroidCalcModuleFP_A[3]~input_o\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \memInitAddr[4]~input_o\ : std_logic;
SIGNAL \centroidControlInit[4]~input_o\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \centroidCalcModuleFP_A[4]~input_o\ : std_logic;
SIGNAL \centroidCalcModule_A[4]~input_o\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \mapCalcModuleFP_A[4]~input_o\ : std_logic;
SIGNAL \mapCalcModule_A[4]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \centroidCalcModuleKmodes_A[4]~input_o\ : std_logic;
SIGNAL \mapCalcModuleKmodes_A[4]~input_o\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \centroidControlInit[5]~input_o\ : std_logic;
SIGNAL \memInitAddr[5]~input_o\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \centroidCalcModule_A[5]~input_o\ : std_logic;
SIGNAL \centroidCalcModuleFP_A[5]~input_o\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \mapCalcModuleKmodes_A[5]~input_o\ : std_logic;
SIGNAL \centroidCalcModuleKmodes_A[5]~input_o\ : std_logic;
SIGNAL \mapCalcModule_A[5]~input_o\ : std_logic;
SIGNAL \mapCalcModuleFP_A[5]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \centroidCalcModuleFP_A[6]~input_o\ : std_logic;
SIGNAL \centroidCalcModule_A[6]~input_o\ : std_logic;
SIGNAL \memInitAddr[6]~input_o\ : std_logic;
SIGNAL \centroidControlInit[6]~input_o\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \centroidCalcModuleKmodes_A[6]~input_o\ : std_logic;
SIGNAL \mapCalcModule_A[6]~input_o\ : std_logic;
SIGNAL \mapCalcModuleFP_A[6]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \mapCalcModuleKmodes_A[6]~input_o\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \centroidControlInit[7]~input_o\ : std_logic;
SIGNAL \memInitAddr[7]~input_o\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \centroidCalcModule_A[7]~input_o\ : std_logic;
SIGNAL \centroidCalcModuleFP_A[7]~input_o\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \mapCalcModuleFP_A[7]~input_o\ : std_logic;
SIGNAL \mapCalcModuleKmodes_A[7]~input_o\ : std_logic;
SIGNAL \mapCalcModule_A[7]~input_o\ : std_logic;
SIGNAL \centroidCalcModuleKmodes_A[7]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \centroidCalcModuleFP_A[8]~input_o\ : std_logic;
SIGNAL \centroidCalcModule_A[8]~input_o\ : std_logic;
SIGNAL \centroidControlInit[8]~input_o\ : std_logic;
SIGNAL \memInitAddr[8]~input_o\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \mapCalcModuleFP_A[8]~input_o\ : std_logic;
SIGNAL \mapCalcModule_A[8]~input_o\ : std_logic;
SIGNAL \centroidCalcModuleKmodes_A[8]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \mapCalcModuleKmodes_A[8]~input_o\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \centroidCalcModule_A[9]~input_o\ : std_logic;
SIGNAL \centroidCalcModuleFP_A[9]~input_o\ : std_logic;
SIGNAL \memInitAddr[9]~input_o\ : std_logic;
SIGNAL \centroidControlInit[9]~input_o\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \mapCalcModuleFP_A[9]~input_o\ : std_logic;
SIGNAL \centroidCalcModuleKmodes_A[9]~input_o\ : std_logic;
SIGNAL \mapCalcModule_A[9]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \mapCalcModuleKmodes_A[9]~input_o\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \mapCalcModuleFP_A[10]~input_o\ : std_logic;
SIGNAL \mapCalcModuleKmodes_A[10]~input_o\ : std_logic;
SIGNAL \centroidCalcModuleKmodes_A[10]~input_o\ : std_logic;
SIGNAL \mapCalcModule_A[10]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \centroidCalcModuleFP_A[10]~input_o\ : std_logic;
SIGNAL \centroidControlInit[10]~input_o\ : std_logic;
SIGNAL \memInitAddr[10]~input_o\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \centroidCalcModule_A[10]~input_o\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \centroidControlInit[11]~input_o\ : std_logic;
SIGNAL \memInitAddr[11]~input_o\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \centroidCalcModule_A[11]~input_o\ : std_logic;
SIGNAL \centroidCalcModuleFP_A[11]~input_o\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \mapCalcModuleKmodes_A[11]~input_o\ : std_logic;
SIGNAL \centroidCalcModuleKmodes_A[11]~input_o\ : std_logic;
SIGNAL \mapCalcModule_A[11]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \mapCalcModuleFP_A[11]~input_o\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \centroidCalcModuleFP_A[12]~input_o\ : std_logic;
SIGNAL \centroidCalcModule_A[12]~input_o\ : std_logic;
SIGNAL \centroidControlInit[12]~input_o\ : std_logic;
SIGNAL \memInitAddr[12]~input_o\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \mapCalcModuleKmodes_A[12]~input_o\ : std_logic;
SIGNAL \mapCalcModule_A[12]~input_o\ : std_logic;
SIGNAL \centroidCalcModuleKmodes_A[12]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \mapCalcModuleFP_A[12]~input_o\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \mapCalcModuleKmodes_A[13]~input_o\ : std_logic;
SIGNAL \centroidCalcModuleKmodes_A[13]~input_o\ : std_logic;
SIGNAL \mapCalcModule_A[13]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \mapCalcModuleFP_A[13]~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \centroidCalcModule_A[13]~input_o\ : std_logic;
SIGNAL \centroidCalcModuleFP_A[13]~input_o\ : std_logic;
SIGNAL \centroidControlInit[13]~input_o\ : std_logic;
SIGNAL \memInitAddr[13]~input_o\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \centroidInit[0]~input_o\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \mapCalcModuleFP_B[0]~input_o\ : std_logic;
SIGNAL \mapCalcModule_B[0]~input_o\ : std_logic;
SIGNAL \Mux27~combout\ : std_logic;
SIGNAL \mapCalcModule_B[1]~input_o\ : std_logic;
SIGNAL \mapCalcModuleFP_B[1]~input_o\ : std_logic;
SIGNAL \centroidInit[1]~input_o\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~combout\ : std_logic;
SIGNAL \centroidInit[2]~input_o\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \mapCalcModule_B[2]~input_o\ : std_logic;
SIGNAL \mapCalcModuleFP_B[2]~input_o\ : std_logic;
SIGNAL \Mux25~combout\ : std_logic;
SIGNAL \mapCalcModule_B[3]~input_o\ : std_logic;
SIGNAL \centroidInit[3]~input_o\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \mapCalcModuleFP_B[3]~input_o\ : std_logic;
SIGNAL \Mux24~combout\ : std_logic;
SIGNAL \mapCalcModuleFP_B[4]~input_o\ : std_logic;
SIGNAL \centroidInit[4]~input_o\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \mapCalcModule_B[4]~input_o\ : std_logic;
SIGNAL \Mux23~combout\ : std_logic;
SIGNAL \centroidInit[5]~input_o\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \mapCalcModuleFP_B[5]~input_o\ : std_logic;
SIGNAL \mapCalcModule_B[5]~input_o\ : std_logic;
SIGNAL \Mux22~combout\ : std_logic;
SIGNAL \centroidInit[6]~input_o\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \mapCalcModuleFP_B[6]~input_o\ : std_logic;
SIGNAL \mapCalcModule_B[6]~input_o\ : std_logic;
SIGNAL \Mux21~combout\ : std_logic;
SIGNAL \centroidInit[7]~input_o\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \mapCalcModule_B[7]~input_o\ : std_logic;
SIGNAL \mapCalcModuleFP_B[7]~input_o\ : std_logic;
SIGNAL \Mux20~combout\ : std_logic;
SIGNAL \centroidInit[8]~input_o\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \mapCalcModuleFP_B[8]~input_o\ : std_logic;
SIGNAL \mapCalcModule_B[8]~input_o\ : std_logic;
SIGNAL \Mux19~combout\ : std_logic;
SIGNAL \mapCalcModule_B[9]~input_o\ : std_logic;
SIGNAL \centroidInit[9]~input_o\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \mapCalcModuleFP_B[9]~input_o\ : std_logic;
SIGNAL \Mux18~combout\ : std_logic;
SIGNAL \centroidInit[10]~input_o\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \mapCalcModule_B[10]~input_o\ : std_logic;
SIGNAL \mapCalcModuleFP_B[10]~input_o\ : std_logic;
SIGNAL \Mux17~combout\ : std_logic;
SIGNAL \centroidInit[11]~input_o\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \mapCalcModule_B[11]~input_o\ : std_logic;
SIGNAL \mapCalcModuleFP_B[11]~input_o\ : std_logic;
SIGNAL \Mux16~combout\ : std_logic;
SIGNAL \mapCalcModuleFP_B[12]~input_o\ : std_logic;
SIGNAL \mapCalcModule_B[12]~input_o\ : std_logic;
SIGNAL \centroidInit[12]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~combout\ : std_logic;
SIGNAL \centroidInit[13]~input_o\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \mapCalcModule_B[13]~input_o\ : std_logic;
SIGNAL \mapCalcModuleFP_B[13]~input_o\ : std_logic;
SIGNAL \Mux14~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_memInitAddr <= memInitAddr;
ww_centroidControlInit <= centroidControlInit;
ww_centroidInit <= centroidInit;
ww_centroidCalcModule_A <= centroidCalcModule_A;
ww_centroidCalcModuleFP_A <= centroidCalcModuleFP_A;
ww_centroidCalcModuleKmodes_A <= centroidCalcModuleKmodes_A;
ww_mapCalcModule_A <= mapCalcModule_A;
ww_mapCalcModule_B <= mapCalcModule_B;
ww_mapCalcModuleFP_A <= mapCalcModuleFP_A;
ww_mapCalcModuleFP_B <= mapCalcModuleFP_B;
ww_mapCalcModuleKmodes_A <= mapCalcModuleKmodes_A;
ww_mapCalcModuleKmodes_B <= mapCalcModuleKmodes_B;
ww_op <= op;
ramAddr_A <= ww_ramAddr_A;
ramAddr_B <= ww_ramAddr_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X117_Y81_N2
\ramAddr_A[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~4_combout\,
	devoe => ww_devoe,
	o => \ramAddr_A[0]~output_o\);

-- Location: IOOBUF_X117_Y80_N9
\ramAddr_A[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~4_combout\,
	devoe => ww_devoe,
	o => \ramAddr_A[1]~output_o\);

-- Location: IOOBUF_X117_Y17_N2
\ramAddr_A[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~4_combout\,
	devoe => ww_devoe,
	o => \ramAddr_A[2]~output_o\);

-- Location: IOOBUF_X117_Y42_N2
\ramAddr_A[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~4_combout\,
	devoe => ww_devoe,
	o => \ramAddr_A[3]~output_o\);

-- Location: IOOBUF_X117_Y19_N9
\ramAddr_A[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~4_combout\,
	devoe => ww_devoe,
	o => \ramAddr_A[4]~output_o\);

-- Location: IOOBUF_X90_Y91_N2
\ramAddr_A[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~4_combout\,
	devoe => ww_devoe,
	o => \ramAddr_A[5]~output_o\);

-- Location: IOOBUF_X92_Y91_N16
\ramAddr_A[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~4_combout\,
	devoe => ww_devoe,
	o => \ramAddr_A[6]~output_o\);

-- Location: IOOBUF_X92_Y91_N9
\ramAddr_A[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~4_combout\,
	devoe => ww_devoe,
	o => \ramAddr_A[7]~output_o\);

-- Location: IOOBUF_X66_Y91_N2
\ramAddr_A[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~4_combout\,
	devoe => ww_devoe,
	o => \ramAddr_A[8]~output_o\);

-- Location: IOOBUF_X66_Y91_N9
\ramAddr_A[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~4_combout\,
	devoe => ww_devoe,
	o => \ramAddr_A[9]~output_o\);

-- Location: IOOBUF_X117_Y59_N9
\ramAddr_A[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~4_combout\,
	devoe => ww_devoe,
	o => \ramAddr_A[10]~output_o\);

-- Location: IOOBUF_X86_Y91_N2
\ramAddr_A[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~4_combout\,
	devoe => ww_devoe,
	o => \ramAddr_A[11]~output_o\);

-- Location: IOOBUF_X72_Y91_N2
\ramAddr_A[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~4_combout\,
	devoe => ww_devoe,
	o => \ramAddr_A[12]~output_o\);

-- Location: IOOBUF_X115_Y91_N2
\ramAddr_A[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~4_combout\,
	devoe => ww_devoe,
	o => \ramAddr_A[13]~output_o\);

-- Location: IOOBUF_X117_Y56_N9
\ramAddr_B[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~combout\,
	devoe => ww_devoe,
	o => \ramAddr_B[0]~output_o\);

-- Location: IOOBUF_X117_Y55_N9
\ramAddr_B[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~combout\,
	devoe => ww_devoe,
	o => \ramAddr_B[1]~output_o\);

-- Location: IOOBUF_X117_Y48_N9
\ramAddr_B[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~combout\,
	devoe => ww_devoe,
	o => \ramAddr_B[2]~output_o\);

-- Location: IOOBUF_X117_Y66_N9
\ramAddr_B[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~combout\,
	devoe => ww_devoe,
	o => \ramAddr_B[3]~output_o\);

-- Location: IOOBUF_X117_Y21_N2
\ramAddr_B[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~combout\,
	devoe => ww_devoe,
	o => \ramAddr_B[4]~output_o\);

-- Location: IOOBUF_X117_Y14_N9
\ramAddr_B[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~combout\,
	devoe => ww_devoe,
	o => \ramAddr_B[5]~output_o\);

-- Location: IOOBUF_X117_Y22_N2
\ramAddr_B[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~combout\,
	devoe => ww_devoe,
	o => \ramAddr_B[6]~output_o\);

-- Location: IOOBUF_X117_Y53_N9
\ramAddr_B[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~combout\,
	devoe => ww_devoe,
	o => \ramAddr_B[7]~output_o\);

-- Location: IOOBUF_X117_Y14_N2
\ramAddr_B[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~combout\,
	devoe => ww_devoe,
	o => \ramAddr_B[8]~output_o\);

-- Location: IOOBUF_X117_Y11_N9
\ramAddr_B[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~combout\,
	devoe => ww_devoe,
	o => \ramAddr_B[9]~output_o\);

-- Location: IOOBUF_X117_Y68_N2
\ramAddr_B[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~combout\,
	devoe => ww_devoe,
	o => \ramAddr_B[10]~output_o\);

-- Location: IOOBUF_X117_Y44_N9
\ramAddr_B[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~combout\,
	devoe => ww_devoe,
	o => \ramAddr_B[11]~output_o\);

-- Location: IOOBUF_X68_Y91_N9
\ramAddr_B[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~combout\,
	devoe => ww_devoe,
	o => \ramAddr_B[12]~output_o\);

-- Location: IOOBUF_X117_Y59_N2
\ramAddr_B[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~combout\,
	devoe => ww_devoe,
	o => \ramAddr_B[13]~output_o\);

-- Location: IOIBUF_X115_Y91_N15
\memInitAddr[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memInitAddr(0),
	o => \memInitAddr[0]~input_o\);

-- Location: IOIBUF_X111_Y91_N15
\centroidControlInit[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidControlInit(0),
	o => \centroidControlInit[0]~input_o\);

-- Location: IOIBUF_X117_Y70_N1
\op[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

-- Location: IOIBUF_X106_Y91_N15
\op[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

-- Location: LCCOMB_X116_Y87_N12
\Mux13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\op[0]~input_o\ & (((\centroidControlInit[0]~input_o\) # (\op[1]~input_o\)))) # (!\op[0]~input_o\ & (\memInitAddr[0]~input_o\ & ((!\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memInitAddr[0]~input_o\,
	datab => \centroidControlInit[0]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux13~2_combout\);

-- Location: IOIBUF_X113_Y91_N1
\centroidCalcModuleFP_A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleFP_A(0),
	o => \centroidCalcModuleFP_A[0]~input_o\);

-- Location: IOIBUF_X113_Y91_N15
\centroidCalcModule_A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModule_A(0),
	o => \centroidCalcModule_A[0]~input_o\);

-- Location: LCCOMB_X116_Y87_N30
\Mux13~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux13~2_combout\ & ((\centroidCalcModuleFP_A[0]~input_o\) # ((!\op[1]~input_o\)))) # (!\Mux13~2_combout\ & (((\centroidCalcModule_A[0]~input_o\ & \op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~2_combout\,
	datab => \centroidCalcModuleFP_A[0]~input_o\,
	datac => \centroidCalcModule_A[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux13~3_combout\);

-- Location: IOIBUF_X117_Y74_N1
\op[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(2),
	o => \op[2]~input_o\);

-- Location: IOIBUF_X108_Y91_N1
\centroidCalcModuleKmodes_A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleKmodes_A(0),
	o => \centroidCalcModuleKmodes_A[0]~input_o\);

-- Location: IOIBUF_X117_Y67_N1
\mapCalcModuleKmodes_A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_A(0),
	o => \mapCalcModuleKmodes_A[0]~input_o\);

-- Location: IOIBUF_X115_Y91_N22
\mapCalcModule_A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_A(0),
	o => \mapCalcModule_A[0]~input_o\);

-- Location: IOIBUF_X117_Y83_N8
\mapCalcModuleFP_A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_A(0),
	o => \mapCalcModuleFP_A[0]~input_o\);

-- Location: LCCOMB_X116_Y87_N0
\Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & ((\mapCalcModuleFP_A[0]~input_o\))) # (!\op[0]~input_o\ & (\mapCalcModule_A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModule_A[0]~input_o\,
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \mapCalcModuleFP_A[0]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X116_Y87_N10
\Mux13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\op[1]~input_o\ & ((\Mux13~0_combout\ & ((\mapCalcModuleKmodes_A[0]~input_o\))) # (!\Mux13~0_combout\ & (\centroidCalcModuleKmodes_A[0]~input_o\)))) # (!\op[1]~input_o\ & (((\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcModuleKmodes_A[0]~input_o\,
	datab => \op[1]~input_o\,
	datac => \mapCalcModuleKmodes_A[0]~input_o\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X116_Y87_N8
\Mux13~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\op[2]~input_o\ & ((\Mux13~1_combout\))) # (!\op[2]~input_o\ & (\Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~3_combout\,
	datab => \op[2]~input_o\,
	datad => \Mux13~1_combout\,
	combout => \Mux13~4_combout\);

-- Location: IOIBUF_X113_Y91_N22
\centroidCalcModule_A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModule_A(1),
	o => \centroidCalcModule_A[1]~input_o\);

-- Location: IOIBUF_X111_Y91_N8
\centroidControlInit[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidControlInit(1),
	o => \centroidControlInit[1]~input_o\);

-- Location: IOIBUF_X117_Y84_N1
\memInitAddr[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memInitAddr(1),
	o => \memInitAddr[1]~input_o\);

-- Location: LCCOMB_X116_Y87_N22
\Mux12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & (\centroidControlInit[1]~input_o\)) # (!\op[0]~input_o\ & ((\memInitAddr[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidControlInit[1]~input_o\,
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \memInitAddr[1]~input_o\,
	combout => \Mux12~2_combout\);

-- Location: IOIBUF_X115_Y91_N8
\centroidCalcModuleFP_A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleFP_A(1),
	o => \centroidCalcModuleFP_A[1]~input_o\);

-- Location: LCCOMB_X116_Y87_N24
\Mux12~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\op[1]~input_o\ & ((\Mux12~2_combout\ & ((\centroidCalcModuleFP_A[1]~input_o\))) # (!\Mux12~2_combout\ & (\centroidCalcModule_A[1]~input_o\)))) # (!\op[1]~input_o\ & (((\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcModule_A[1]~input_o\,
	datab => \op[1]~input_o\,
	datac => \Mux12~2_combout\,
	datad => \centroidCalcModuleFP_A[1]~input_o\,
	combout => \Mux12~3_combout\);

-- Location: IOIBUF_X111_Y91_N1
\mapCalcModule_A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_A(1),
	o => \mapCalcModule_A[1]~input_o\);

-- Location: IOIBUF_X113_Y91_N8
\mapCalcModuleFP_A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_A(1),
	o => \mapCalcModuleFP_A[1]~input_o\);

-- Location: LCCOMB_X116_Y87_N26
\Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & ((\mapCalcModuleFP_A[1]~input_o\))) # (!\op[0]~input_o\ & (\mapCalcModule_A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModule_A[1]~input_o\,
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \mapCalcModuleFP_A[1]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: IOIBUF_X117_Y79_N1
\mapCalcModuleKmodes_A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_A(1),
	o => \mapCalcModuleKmodes_A[1]~input_o\);

-- Location: IOIBUF_X108_Y91_N15
\centroidCalcModuleKmodes_A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleKmodes_A(1),
	o => \centroidCalcModuleKmodes_A[1]~input_o\);

-- Location: LCCOMB_X116_Y87_N20
\Mux12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\ & (((\mapCalcModuleKmodes_A[1]~input_o\)) # (!\op[1]~input_o\))) # (!\Mux12~0_combout\ & (\op[1]~input_o\ & ((\centroidCalcModuleKmodes_A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \op[1]~input_o\,
	datac => \mapCalcModuleKmodes_A[1]~input_o\,
	datad => \centroidCalcModuleKmodes_A[1]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X116_Y87_N18
\Mux12~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\op[2]~input_o\ & ((\Mux12~1_combout\))) # (!\op[2]~input_o\ & (\Mux12~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux12~3_combout\,
	datac => \Mux12~1_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux12~4_combout\);

-- Location: IOIBUF_X117_Y41_N1
\mapCalcModule_A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_A(2),
	o => \mapCalcModule_A[2]~input_o\);

-- Location: IOIBUF_X117_Y46_N15
\mapCalcModuleFP_A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_A(2),
	o => \mapCalcModuleFP_A[2]~input_o\);

-- Location: LCCOMB_X116_Y35_N16
\Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & ((\mapCalcModuleFP_A[2]~input_o\))) # (!\op[0]~input_o\ & (\mapCalcModule_A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModule_A[2]~input_o\,
	datab => \mapCalcModuleFP_A[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: IOIBUF_X117_Y46_N22
\centroidCalcModuleKmodes_A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleKmodes_A(2),
	o => \centroidCalcModuleKmodes_A[2]~input_o\);

-- Location: IOIBUF_X117_Y41_N8
\mapCalcModuleKmodes_A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_A(2),
	o => \mapCalcModuleKmodes_A[2]~input_o\);

-- Location: LCCOMB_X116_Y35_N26
\Mux11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\op[1]~input_o\ & ((\Mux11~0_combout\ & ((\mapCalcModuleKmodes_A[2]~input_o\))) # (!\Mux11~0_combout\ & (\centroidCalcModuleKmodes_A[2]~input_o\)))) # (!\op[1]~input_o\ & (\Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mux11~0_combout\,
	datac => \centroidCalcModuleKmodes_A[2]~input_o\,
	datad => \mapCalcModuleKmodes_A[2]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: IOIBUF_X117_Y39_N8
\memInitAddr[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memInitAddr(2),
	o => \memInitAddr[2]~input_o\);

-- Location: IOIBUF_X117_Y38_N1
\centroidControlInit[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidControlInit(2),
	o => \centroidControlInit[2]~input_o\);

-- Location: LCCOMB_X116_Y35_N20
\Mux11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & ((\centroidControlInit[2]~input_o\))) # (!\op[0]~input_o\ & (\memInitAddr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memInitAddr[2]~input_o\,
	datab => \centroidControlInit[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux11~2_combout\);

-- Location: IOIBUF_X117_Y36_N8
\centroidCalcModule_A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModule_A(2),
	o => \centroidCalcModule_A[2]~input_o\);

-- Location: IOIBUF_X117_Y35_N8
\centroidCalcModuleFP_A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleFP_A(2),
	o => \centroidCalcModuleFP_A[2]~input_o\);

-- Location: LCCOMB_X116_Y35_N30
\Mux11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\op[1]~input_o\ & ((\Mux11~2_combout\ & ((\centroidCalcModuleFP_A[2]~input_o\))) # (!\Mux11~2_combout\ & (\centroidCalcModule_A[2]~input_o\)))) # (!\op[1]~input_o\ & (\Mux11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mux11~2_combout\,
	datac => \centroidCalcModule_A[2]~input_o\,
	datad => \centroidCalcModuleFP_A[2]~input_o\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X116_Y35_N0
\Mux11~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\op[2]~input_o\ & (\Mux11~1_combout\)) # (!\op[2]~input_o\ & ((\Mux11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datac => \Mux11~3_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux11~4_combout\);

-- Location: IOIBUF_X117_Y32_N1
\mapCalcModule_A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_A(3),
	o => \mapCalcModule_A[3]~input_o\);

-- Location: IOIBUF_X117_Y33_N1
\mapCalcModuleFP_A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_A(3),
	o => \mapCalcModuleFP_A[3]~input_o\);

-- Location: LCCOMB_X116_Y35_N10
\Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & ((\mapCalcModuleFP_A[3]~input_o\))) # (!\op[0]~input_o\ & (\mapCalcModule_A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModule_A[3]~input_o\,
	datab => \mapCalcModuleFP_A[3]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: IOIBUF_X117_Y19_N1
\mapCalcModuleKmodes_A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_A(3),
	o => \mapCalcModuleKmodes_A[3]~input_o\);

-- Location: IOIBUF_X117_Y32_N8
\centroidCalcModuleKmodes_A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleKmodes_A(3),
	o => \centroidCalcModuleKmodes_A[3]~input_o\);

-- Location: LCCOMB_X116_Y35_N28
\Mux10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & ((\mapCalcModuleKmodes_A[3]~input_o\) # ((!\op[1]~input_o\)))) # (!\Mux10~0_combout\ & (((\op[1]~input_o\ & \centroidCalcModuleKmodes_A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \mapCalcModuleKmodes_A[3]~input_o\,
	datac => \op[1]~input_o\,
	datad => \centroidCalcModuleKmodes_A[3]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: IOIBUF_X117_Y38_N8
\centroidControlInit[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidControlInit(3),
	o => \centroidControlInit[3]~input_o\);

-- Location: IOIBUF_X117_Y21_N8
\memInitAddr[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memInitAddr(3),
	o => \memInitAddr[3]~input_o\);

-- Location: LCCOMB_X116_Y35_N14
\Mux10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & (\centroidControlInit[3]~input_o\)) # (!\op[0]~input_o\ & ((\memInitAddr[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \centroidControlInit[3]~input_o\,
	datac => \memInitAddr[3]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: IOIBUF_X117_Y42_N8
\centroidCalcModule_A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModule_A(3),
	o => \centroidCalcModule_A[3]~input_o\);

-- Location: IOIBUF_X117_Y33_N8
\centroidCalcModuleFP_A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleFP_A(3),
	o => \centroidCalcModuleFP_A[3]~input_o\);

-- Location: LCCOMB_X116_Y35_N8
\Mux10~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\op[1]~input_o\ & ((\Mux10~2_combout\ & ((\centroidCalcModuleFP_A[3]~input_o\))) # (!\Mux10~2_combout\ & (\centroidCalcModule_A[3]~input_o\)))) # (!\op[1]~input_o\ & (\Mux10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mux10~2_combout\,
	datac => \centroidCalcModule_A[3]~input_o\,
	datad => \centroidCalcModuleFP_A[3]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X116_Y35_N2
\Mux10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\op[2]~input_o\ & (\Mux10~1_combout\)) # (!\op[2]~input_o\ & ((\Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux10~1_combout\,
	datac => \Mux10~3_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux10~4_combout\);

-- Location: IOIBUF_X117_Y34_N8
\memInitAddr[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memInitAddr(4),
	o => \memInitAddr[4]~input_o\);

-- Location: IOIBUF_X117_Y35_N1
\centroidControlInit[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidControlInit(4),
	o => \centroidControlInit[4]~input_o\);

-- Location: LCCOMB_X116_Y35_N24
\Mux9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & ((\centroidControlInit[4]~input_o\))) # (!\op[0]~input_o\ & (\memInitAddr[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memInitAddr[4]~input_o\,
	datab => \centroidControlInit[4]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: IOIBUF_X117_Y31_N8
\centroidCalcModuleFP_A[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleFP_A(4),
	o => \centroidCalcModuleFP_A[4]~input_o\);

-- Location: IOIBUF_X117_Y43_N8
\centroidCalcModule_A[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModule_A(4),
	o => \centroidCalcModule_A[4]~input_o\);

-- Location: LCCOMB_X116_Y35_N18
\Mux9~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\op[1]~input_o\ & ((\Mux9~2_combout\ & (\centroidCalcModuleFP_A[4]~input_o\)) # (!\Mux9~2_combout\ & ((\centroidCalcModule_A[4]~input_o\))))) # (!\op[1]~input_o\ & (\Mux9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mux9~2_combout\,
	datac => \centroidCalcModuleFP_A[4]~input_o\,
	datad => \centroidCalcModule_A[4]~input_o\,
	combout => \Mux9~3_combout\);

-- Location: IOIBUF_X117_Y31_N1
\mapCalcModuleFP_A[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_A(4),
	o => \mapCalcModuleFP_A[4]~input_o\);

-- Location: IOIBUF_X117_Y34_N1
\mapCalcModule_A[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_A(4),
	o => \mapCalcModule_A[4]~input_o\);

-- Location: LCCOMB_X116_Y35_N12
\Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & (\mapCalcModuleFP_A[4]~input_o\)) # (!\op[0]~input_o\ & ((\mapCalcModule_A[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \mapCalcModuleFP_A[4]~input_o\,
	datac => \mapCalcModule_A[4]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: IOIBUF_X117_Y24_N8
\centroidCalcModuleKmodes_A[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleKmodes_A(4),
	o => \centroidCalcModuleKmodes_A[4]~input_o\);

-- Location: IOIBUF_X117_Y28_N8
\mapCalcModuleKmodes_A[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_A(4),
	o => \mapCalcModuleKmodes_A[4]~input_o\);

-- Location: LCCOMB_X116_Y35_N22
\Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & (((\mapCalcModuleKmodes_A[4]~input_o\) # (!\op[1]~input_o\)))) # (!\Mux9~0_combout\ & (\centroidCalcModuleKmodes_A[4]~input_o\ & (\op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \centroidCalcModuleKmodes_A[4]~input_o\,
	datac => \op[1]~input_o\,
	datad => \mapCalcModuleKmodes_A[4]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X116_Y35_N4
\Mux9~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\op[2]~input_o\ & ((\Mux9~1_combout\))) # (!\op[2]~input_o\ & (\Mux9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux9~3_combout\,
	datac => \Mux9~1_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux9~4_combout\);

-- Location: IOIBUF_X66_Y91_N15
\centroidControlInit[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidControlInit(5),
	o => \centroidControlInit[5]~input_o\);

-- Location: IOIBUF_X101_Y91_N8
\memInitAddr[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memInitAddr(5),
	o => \memInitAddr[5]~input_o\);

-- Location: LCCOMB_X98_Y87_N26
\Mux8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & (\centroidControlInit[5]~input_o\)) # (!\op[0]~input_o\ & ((\memInitAddr[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidControlInit[5]~input_o\,
	datab => \memInitAddr[5]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: IOIBUF_X97_Y91_N8
\centroidCalcModule_A[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModule_A(5),
	o => \centroidCalcModule_A[5]~input_o\);

-- Location: IOIBUF_X99_Y91_N8
\centroidCalcModuleFP_A[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleFP_A(5),
	o => \centroidCalcModuleFP_A[5]~input_o\);

-- Location: LCCOMB_X98_Y87_N28
\Mux8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux8~2_combout\ & (((\centroidCalcModuleFP_A[5]~input_o\) # (!\op[1]~input_o\)))) # (!\Mux8~2_combout\ & (\centroidCalcModule_A[5]~input_o\ & (\op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \centroidCalcModule_A[5]~input_o\,
	datac => \op[1]~input_o\,
	datad => \centroidCalcModuleFP_A[5]~input_o\,
	combout => \Mux8~3_combout\);

-- Location: IOIBUF_X117_Y76_N1
\mapCalcModuleKmodes_A[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_A(5),
	o => \mapCalcModuleKmodes_A[5]~input_o\);

-- Location: IOIBUF_X101_Y91_N1
\centroidCalcModuleKmodes_A[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleKmodes_A(5),
	o => \centroidCalcModuleKmodes_A[5]~input_o\);

-- Location: IOIBUF_X117_Y36_N1
\mapCalcModule_A[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_A(5),
	o => \mapCalcModule_A[5]~input_o\);

-- Location: IOIBUF_X117_Y39_N1
\mapCalcModuleFP_A[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_A(5),
	o => \mapCalcModuleFP_A[5]~input_o\);

-- Location: LCCOMB_X116_Y35_N6
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & ((\mapCalcModuleFP_A[5]~input_o\))) # (!\op[0]~input_o\ & (\mapCalcModule_A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModule_A[5]~input_o\,
	datab => \mapCalcModuleFP_A[5]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X98_Y87_N16
\Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\op[1]~input_o\ & ((\Mux8~0_combout\ & (\mapCalcModuleKmodes_A[5]~input_o\)) # (!\Mux8~0_combout\ & ((\centroidCalcModuleKmodes_A[5]~input_o\))))) # (!\op[1]~input_o\ & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModuleKmodes_A[5]~input_o\,
	datab => \centroidCalcModuleKmodes_A[5]~input_o\,
	datac => \op[1]~input_o\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X98_Y87_N22
\Mux8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\op[2]~input_o\ & ((\Mux8~1_combout\))) # (!\op[2]~input_o\ & (\Mux8~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux8~3_combout\,
	datac => \op[2]~input_o\,
	datad => \Mux8~1_combout\,
	combout => \Mux8~4_combout\);

-- Location: IOIBUF_X95_Y91_N8
\centroidCalcModuleFP_A[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleFP_A(6),
	o => \centroidCalcModuleFP_A[6]~input_o\);

-- Location: IOIBUF_X97_Y91_N1
\centroidCalcModule_A[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModule_A(6),
	o => \centroidCalcModule_A[6]~input_o\);

-- Location: IOIBUF_X104_Y91_N1
\memInitAddr[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memInitAddr(6),
	o => \memInitAddr[6]~input_o\);

-- Location: IOIBUF_X104_Y91_N8
\centroidControlInit[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidControlInit(6),
	o => \centroidControlInit[6]~input_o\);

-- Location: LCCOMB_X98_Y87_N12
\Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & ((\centroidControlInit[6]~input_o\))) # (!\op[0]~input_o\ & (\memInitAddr[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memInitAddr[6]~input_o\,
	datab => \centroidControlInit[6]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X98_Y87_N30
\Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\op[1]~input_o\ & ((\Mux7~2_combout\ & (\centroidCalcModuleFP_A[6]~input_o\)) # (!\Mux7~2_combout\ & ((\centroidCalcModule_A[6]~input_o\))))) # (!\op[1]~input_o\ & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcModuleFP_A[6]~input_o\,
	datab => \centroidCalcModule_A[6]~input_o\,
	datac => \op[1]~input_o\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: IOIBUF_X92_Y91_N22
\centroidCalcModuleKmodes_A[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleKmodes_A(6),
	o => \centroidCalcModuleKmodes_A[6]~input_o\);

-- Location: IOIBUF_X95_Y91_N15
\mapCalcModule_A[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_A(6),
	o => \mapCalcModule_A[6]~input_o\);

-- Location: IOIBUF_X90_Y91_N15
\mapCalcModuleFP_A[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_A(6),
	o => \mapCalcModuleFP_A[6]~input_o\);

-- Location: LCCOMB_X98_Y87_N8
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & ((\mapCalcModuleFP_A[6]~input_o\))) # (!\op[0]~input_o\ & (\mapCalcModule_A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModule_A[6]~input_o\,
	datab => \mapCalcModuleFP_A[6]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X117_Y76_N8
\mapCalcModuleKmodes_A[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_A(6),
	o => \mapCalcModuleKmodes_A[6]~input_o\);

-- Location: LCCOMB_X98_Y87_N2
\Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\op[1]~input_o\ & ((\Mux7~0_combout\ & ((\mapCalcModuleKmodes_A[6]~input_o\))) # (!\Mux7~0_combout\ & (\centroidCalcModuleKmodes_A[6]~input_o\)))) # (!\op[1]~input_o\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \centroidCalcModuleKmodes_A[6]~input_o\,
	datac => \Mux7~0_combout\,
	datad => \mapCalcModuleKmodes_A[6]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X98_Y87_N0
\Mux7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\op[2]~input_o\ & ((\Mux7~1_combout\))) # (!\op[2]~input_o\ & (\Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datac => \op[2]~input_o\,
	datad => \Mux7~1_combout\,
	combout => \Mux7~4_combout\);

-- Location: IOIBUF_X95_Y91_N1
\centroidControlInit[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidControlInit(7),
	o => \centroidControlInit[7]~input_o\);

-- Location: IOIBUF_X99_Y91_N15
\memInitAddr[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memInitAddr(7),
	o => \memInitAddr[7]~input_o\);

-- Location: LCCOMB_X98_Y87_N14
\Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & (\centroidControlInit[7]~input_o\)) # (!\op[0]~input_o\ & ((\memInitAddr[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \centroidControlInit[7]~input_o\,
	datac => \memInitAddr[7]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: IOIBUF_X108_Y91_N22
\centroidCalcModule_A[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModule_A(7),
	o => \centroidCalcModule_A[7]~input_o\);

-- Location: IOIBUF_X90_Y91_N8
\centroidCalcModuleFP_A[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleFP_A(7),
	o => \centroidCalcModuleFP_A[7]~input_o\);

-- Location: LCCOMB_X98_Y87_N24
\Mux6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\op[1]~input_o\ & ((\Mux6~2_combout\ & ((\centroidCalcModuleFP_A[7]~input_o\))) # (!\Mux6~2_combout\ & (\centroidCalcModule_A[7]~input_o\)))) # (!\op[1]~input_o\ & (\Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mux6~2_combout\,
	datac => \centroidCalcModule_A[7]~input_o\,
	datad => \centroidCalcModuleFP_A[7]~input_o\,
	combout => \Mux6~3_combout\);

-- Location: IOIBUF_X90_Y91_N22
\mapCalcModuleFP_A[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_A(7),
	o => \mapCalcModuleFP_A[7]~input_o\);

-- Location: IOIBUF_X117_Y73_N8
\mapCalcModuleKmodes_A[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_A(7),
	o => \mapCalcModuleKmodes_A[7]~input_o\);

-- Location: IOIBUF_X92_Y91_N1
\mapCalcModule_A[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_A(7),
	o => \mapCalcModule_A[7]~input_o\);

-- Location: IOIBUF_X95_Y91_N22
\centroidCalcModuleKmodes_A[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleKmodes_A(7),
	o => \centroidCalcModuleKmodes_A[7]~input_o\);

-- Location: LCCOMB_X98_Y87_N18
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcModuleKmodes_A[7]~input_o\) # (\op[0]~input_o\)))) # (!\op[1]~input_o\ & (\mapCalcModule_A[7]~input_o\ & ((!\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModule_A[7]~input_o\,
	datab => \centroidCalcModuleKmodes_A[7]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X98_Y87_N4
\Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\op[0]~input_o\ & ((\Mux6~0_combout\ & ((\mapCalcModuleKmodes_A[7]~input_o\))) # (!\Mux6~0_combout\ & (\mapCalcModuleFP_A[7]~input_o\)))) # (!\op[0]~input_o\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModuleFP_A[7]~input_o\,
	datab => \op[0]~input_o\,
	datac => \mapCalcModuleKmodes_A[7]~input_o\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X98_Y87_N10
\Mux6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\op[2]~input_o\ & ((\Mux6~1_combout\))) # (!\op[2]~input_o\ & (\Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \Mux6~3_combout\,
	datac => \Mux6~1_combout\,
	combout => \Mux6~4_combout\);

-- Location: IOIBUF_X77_Y91_N1
\centroidCalcModuleFP_A[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleFP_A(8),
	o => \centroidCalcModuleFP_A[8]~input_o\);

-- Location: IOIBUF_X79_Y91_N15
\centroidCalcModule_A[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModule_A(8),
	o => \centroidCalcModule_A[8]~input_o\);

-- Location: IOIBUF_X70_Y91_N8
\centroidControlInit[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidControlInit(8),
	o => \centroidControlInit[8]~input_o\);

-- Location: IOIBUF_X68_Y91_N15
\memInitAddr[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memInitAddr(8),
	o => \memInitAddr[8]~input_o\);

-- Location: LCCOMB_X78_Y87_N24
\Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & (\centroidControlInit[8]~input_o\)) # (!\op[0]~input_o\ & ((\memInitAddr[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidControlInit[8]~input_o\,
	datab => \memInitAddr[8]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X78_Y87_N18
\Mux5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\op[1]~input_o\ & ((\Mux5~2_combout\ & (\centroidCalcModuleFP_A[8]~input_o\)) # (!\Mux5~2_combout\ & ((\centroidCalcModule_A[8]~input_o\))))) # (!\op[1]~input_o\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcModuleFP_A[8]~input_o\,
	datab => \centroidCalcModule_A[8]~input_o\,
	datac => \op[1]~input_o\,
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: IOIBUF_X106_Y91_N1
\mapCalcModuleFP_A[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_A(8),
	o => \mapCalcModuleFP_A[8]~input_o\);

-- Location: IOIBUF_X99_Y91_N1
\mapCalcModule_A[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_A(8),
	o => \mapCalcModule_A[8]~input_o\);

-- Location: IOIBUF_X99_Y91_N22
\centroidCalcModuleKmodes_A[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleKmodes_A(8),
	o => \centroidCalcModuleKmodes_A[8]~input_o\);

-- Location: LCCOMB_X98_Y87_N20
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcModuleKmodes_A[8]~input_o\) # (\op[0]~input_o\)))) # (!\op[1]~input_o\ & (\mapCalcModule_A[8]~input_o\ & ((!\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModule_A[8]~input_o\,
	datab => \centroidCalcModuleKmodes_A[8]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: IOIBUF_X117_Y80_N1
\mapCalcModuleKmodes_A[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_A(8),
	o => \mapCalcModuleKmodes_A[8]~input_o\);

-- Location: LCCOMB_X98_Y87_N6
\Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & (((\mapCalcModuleKmodes_A[8]~input_o\) # (!\op[0]~input_o\)))) # (!\Mux5~0_combout\ & (\mapCalcModuleFP_A[8]~input_o\ & ((\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModuleFP_A[8]~input_o\,
	datab => \Mux5~0_combout\,
	datac => \mapCalcModuleKmodes_A[8]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X78_Y87_N28
\Mux5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\op[2]~input_o\ & ((\Mux5~1_combout\))) # (!\op[2]~input_o\ & (\Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~3_combout\,
	datac => \Mux5~1_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux5~4_combout\);

-- Location: IOIBUF_X72_Y91_N8
\centroidCalcModule_A[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModule_A(9),
	o => \centroidCalcModule_A[9]~input_o\);

-- Location: IOIBUF_X75_Y91_N1
\centroidCalcModuleFP_A[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleFP_A(9),
	o => \centroidCalcModuleFP_A[9]~input_o\);

-- Location: IOIBUF_X66_Y91_N22
\memInitAddr[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memInitAddr(9),
	o => \memInitAddr[9]~input_o\);

-- Location: IOIBUF_X79_Y91_N22
\centroidControlInit[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidControlInit(9),
	o => \centroidControlInit[9]~input_o\);

-- Location: LCCOMB_X78_Y87_N2
\Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & ((\centroidControlInit[9]~input_o\))) # (!\op[0]~input_o\ & (\memInitAddr[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memInitAddr[9]~input_o\,
	datab => \centroidControlInit[9]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X78_Y87_N12
\Mux4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\op[1]~input_o\ & ((\Mux4~2_combout\ & ((\centroidCalcModuleFP_A[9]~input_o\))) # (!\Mux4~2_combout\ & (\centroidCalcModule_A[9]~input_o\)))) # (!\op[1]~input_o\ & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcModule_A[9]~input_o\,
	datab => \centroidCalcModuleFP_A[9]~input_o\,
	datac => \op[1]~input_o\,
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: IOIBUF_X75_Y91_N8
\mapCalcModuleFP_A[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_A(9),
	o => \mapCalcModuleFP_A[9]~input_o\);

-- Location: IOIBUF_X82_Y91_N8
\centroidCalcModuleKmodes_A[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleKmodes_A(9),
	o => \centroidCalcModuleKmodes_A[9]~input_o\);

-- Location: IOIBUF_X77_Y91_N15
\mapCalcModule_A[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_A(9),
	o => \mapCalcModule_A[9]~input_o\);

-- Location: LCCOMB_X78_Y87_N30
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\op[1]~input_o\ & ((\centroidCalcModuleKmodes_A[9]~input_o\) # ((\op[0]~input_o\)))) # (!\op[1]~input_o\ & (((\mapCalcModule_A[9]~input_o\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcModuleKmodes_A[9]~input_o\,
	datab => \mapCalcModule_A[9]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: IOIBUF_X117_Y73_N1
\mapCalcModuleKmodes_A[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_A(9),
	o => \mapCalcModuleKmodes_A[9]~input_o\);

-- Location: LCCOMB_X78_Y87_N8
\Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\op[0]~input_o\ & ((\Mux4~0_combout\ & ((\mapCalcModuleKmodes_A[9]~input_o\))) # (!\Mux4~0_combout\ & (\mapCalcModuleFP_A[9]~input_o\)))) # (!\op[0]~input_o\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModuleFP_A[9]~input_o\,
	datab => \op[0]~input_o\,
	datac => \Mux4~0_combout\,
	datad => \mapCalcModuleKmodes_A[9]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X78_Y87_N14
\Mux4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\op[2]~input_o\ & ((\Mux4~1_combout\))) # (!\op[2]~input_o\ & (\Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datac => \Mux4~1_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux4~4_combout\);

-- Location: IOIBUF_X117_Y62_N1
\mapCalcModuleFP_A[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_A(10),
	o => \mapCalcModuleFP_A[10]~input_o\);

-- Location: IOIBUF_X117_Y60_N15
\mapCalcModuleKmodes_A[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_A(10),
	o => \mapCalcModuleKmodes_A[10]~input_o\);

-- Location: IOIBUF_X117_Y65_N8
\centroidCalcModuleKmodes_A[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleKmodes_A(10),
	o => \centroidCalcModuleKmodes_A[10]~input_o\);

-- Location: IOIBUF_X117_Y57_N1
\mapCalcModule_A[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_A(10),
	o => \mapCalcModule_A[10]~input_o\);

-- Location: LCCOMB_X116_Y61_N0
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\op[1]~input_o\ & ((\centroidCalcModuleKmodes_A[10]~input_o\) # ((\op[0]~input_o\)))) # (!\op[1]~input_o\ & (((\mapCalcModule_A[10]~input_o\ & !\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcModuleKmodes_A[10]~input_o\,
	datab => \op[1]~input_o\,
	datac => \mapCalcModule_A[10]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X116_Y61_N10
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\op[0]~input_o\ & ((\Mux3~0_combout\ & ((\mapCalcModuleKmodes_A[10]~input_o\))) # (!\Mux3~0_combout\ & (\mapCalcModuleFP_A[10]~input_o\)))) # (!\op[0]~input_o\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \mapCalcModuleFP_A[10]~input_o\,
	datac => \mapCalcModuleKmodes_A[10]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: IOIBUF_X117_Y61_N8
\centroidCalcModuleFP_A[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleFP_A(10),
	o => \centroidCalcModuleFP_A[10]~input_o\);

-- Location: IOIBUF_X117_Y58_N8
\centroidControlInit[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidControlInit(10),
	o => \centroidControlInit[10]~input_o\);

-- Location: IOIBUF_X117_Y60_N1
\memInitAddr[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memInitAddr(10),
	o => \memInitAddr[10]~input_o\);

-- Location: LCCOMB_X116_Y61_N28
\Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & (\centroidControlInit[10]~input_o\)) # (!\op[0]~input_o\ & ((\memInitAddr[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidControlInit[10]~input_o\,
	datab => \op[1]~input_o\,
	datac => \memInitAddr[10]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: IOIBUF_X117_Y58_N1
\centroidCalcModule_A[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModule_A(10),
	o => \centroidCalcModule_A[10]~input_o\);

-- Location: LCCOMB_X116_Y61_N30
\Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\ & ((\centroidCalcModuleFP_A[10]~input_o\) # ((!\op[1]~input_o\)))) # (!\Mux3~2_combout\ & (((\centroidCalcModule_A[10]~input_o\ & \op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcModuleFP_A[10]~input_o\,
	datab => \Mux3~2_combout\,
	datac => \centroidCalcModule_A[10]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X116_Y61_N8
\Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\op[2]~input_o\ & (\Mux3~1_combout\)) # (!\op[2]~input_o\ & ((\Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datac => \Mux3~3_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux3~4_combout\);

-- Location: IOIBUF_X84_Y91_N1
\centroidControlInit[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidControlInit(11),
	o => \centroidControlInit[11]~input_o\);

-- Location: IOIBUF_X88_Y91_N1
\memInitAddr[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memInitAddr(11),
	o => \memInitAddr[11]~input_o\);

-- Location: LCCOMB_X87_Y88_N12
\Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\op[0]~input_o\ & ((\centroidControlInit[11]~input_o\) # ((\op[1]~input_o\)))) # (!\op[0]~input_o\ & (((\memInitAddr[11]~input_o\ & !\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidControlInit[11]~input_o\,
	datab => \memInitAddr[11]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: IOIBUF_X63_Y91_N22
\centroidCalcModule_A[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModule_A(11),
	o => \centroidCalcModule_A[11]~input_o\);

-- Location: IOIBUF_X86_Y91_N8
\centroidCalcModuleFP_A[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleFP_A(11),
	o => \centroidCalcModuleFP_A[11]~input_o\);

-- Location: LCCOMB_X87_Y88_N6
\Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\ & (((\centroidCalcModuleFP_A[11]~input_o\) # (!\op[1]~input_o\)))) # (!\Mux2~2_combout\ & (\centroidCalcModule_A[11]~input_o\ & ((\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \centroidCalcModule_A[11]~input_o\,
	datac => \centroidCalcModuleFP_A[11]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: IOIBUF_X117_Y67_N8
\mapCalcModuleKmodes_A[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_A(11),
	o => \mapCalcModuleKmodes_A[11]~input_o\);

-- Location: IOIBUF_X82_Y91_N1
\centroidCalcModuleKmodes_A[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleKmodes_A(11),
	o => \centroidCalcModuleKmodes_A[11]~input_o\);

-- Location: IOIBUF_X86_Y91_N15
\mapCalcModule_A[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_A(11),
	o => \mapCalcModule_A[11]~input_o\);

-- Location: LCCOMB_X87_Y88_N24
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\op[0]~input_o\ & (((\op[1]~input_o\)))) # (!\op[0]~input_o\ & ((\op[1]~input_o\ & (\centroidCalcModuleKmodes_A[11]~input_o\)) # (!\op[1]~input_o\ & ((\mapCalcModule_A[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcModuleKmodes_A[11]~input_o\,
	datab => \mapCalcModule_A[11]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X88_Y91_N8
\mapCalcModuleFP_A[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_A(11),
	o => \mapCalcModuleFP_A[11]~input_o\);

-- Location: LCCOMB_X87_Y88_N10
\Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & ((\mapCalcModuleKmodes_A[11]~input_o\) # ((!\op[0]~input_o\)))) # (!\Mux2~0_combout\ & (((\op[0]~input_o\ & \mapCalcModuleFP_A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModuleKmodes_A[11]~input_o\,
	datab => \Mux2~0_combout\,
	datac => \op[0]~input_o\,
	datad => \mapCalcModuleFP_A[11]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X87_Y88_N8
\Mux2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\op[2]~input_o\ & ((\Mux2~1_combout\))) # (!\op[2]~input_o\ & (\Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datac => \op[2]~input_o\,
	datad => \Mux2~1_combout\,
	combout => \Mux2~4_combout\);

-- Location: IOIBUF_X68_Y91_N1
\centroidCalcModuleFP_A[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleFP_A(12),
	o => \centroidCalcModuleFP_A[12]~input_o\);

-- Location: IOIBUF_X79_Y91_N8
\centroidCalcModule_A[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModule_A(12),
	o => \centroidCalcModule_A[12]~input_o\);

-- Location: IOIBUF_X117_Y46_N8
\centroidControlInit[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidControlInit(12),
	o => \centroidControlInit[12]~input_o\);

-- Location: IOIBUF_X117_Y46_N1
\memInitAddr[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memInitAddr(12),
	o => \memInitAddr[12]~input_o\);

-- Location: LCCOMB_X116_Y46_N0
\Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & (\centroidControlInit[12]~input_o\)) # (!\op[0]~input_o\ & ((\memInitAddr[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \centroidControlInit[12]~input_o\,
	datac => \memInitAddr[12]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X78_Y87_N20
\Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\op[1]~input_o\ & ((\Mux1~2_combout\ & (\centroidCalcModuleFP_A[12]~input_o\)) # (!\Mux1~2_combout\ & ((\centroidCalcModule_A[12]~input_o\))))) # (!\op[1]~input_o\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcModuleFP_A[12]~input_o\,
	datab => \centroidCalcModule_A[12]~input_o\,
	datac => \op[1]~input_o\,
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: IOIBUF_X77_Y91_N22
\mapCalcModuleKmodes_A[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_A(12),
	o => \mapCalcModuleKmodes_A[12]~input_o\);

-- Location: IOIBUF_X77_Y91_N8
\mapCalcModule_A[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_A(12),
	o => \mapCalcModule_A[12]~input_o\);

-- Location: IOIBUF_X57_Y91_N8
\centroidCalcModuleKmodes_A[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleKmodes_A(12),
	o => \centroidCalcModuleKmodes_A[12]~input_o\);

-- Location: LCCOMB_X78_Y87_N16
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\op[1]~input_o\ & (((\centroidCalcModuleKmodes_A[12]~input_o\) # (\op[0]~input_o\)))) # (!\op[1]~input_o\ & (\mapCalcModule_A[12]~input_o\ & ((!\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModule_A[12]~input_o\,
	datab => \centroidCalcModuleKmodes_A[12]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X57_Y91_N1
\mapCalcModuleFP_A[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_A(12),
	o => \mapCalcModuleFP_A[12]~input_o\);

-- Location: LCCOMB_X78_Y87_N26
\Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & ((\mapCalcModuleKmodes_A[12]~input_o\) # ((!\op[0]~input_o\)))) # (!\Mux1~0_combout\ & (((\mapCalcModuleFP_A[12]~input_o\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModuleKmodes_A[12]~input_o\,
	datab => \Mux1~0_combout\,
	datac => \mapCalcModuleFP_A[12]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X78_Y87_N22
\Mux1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\op[2]~input_o\ & ((\Mux1~1_combout\))) # (!\op[2]~input_o\ & (\Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~3_combout\,
	datac => \Mux1~1_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: IOIBUF_X117_Y79_N8
\mapCalcModuleKmodes_A[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_A(13),
	o => \mapCalcModuleKmodes_A[13]~input_o\);

-- Location: IOIBUF_X117_Y86_N1
\centroidCalcModuleKmodes_A[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleKmodes_A(13),
	o => \centroidCalcModuleKmodes_A[13]~input_o\);

-- Location: IOIBUF_X108_Y91_N8
\mapCalcModule_A[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_A(13),
	o => \mapCalcModule_A[13]~input_o\);

-- Location: LCCOMB_X116_Y87_N4
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\op[0]~input_o\ & (\op[1]~input_o\)) # (!\op[0]~input_o\ & ((\op[1]~input_o\ & (\centroidCalcModuleKmodes_A[13]~input_o\)) # (!\op[1]~input_o\ & ((\mapCalcModule_A[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[1]~input_o\,
	datac => \centroidCalcModuleKmodes_A[13]~input_o\,
	datad => \mapCalcModule_A[13]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X117_Y86_N8
\mapCalcModuleFP_A[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_A(13),
	o => \mapCalcModuleFP_A[13]~input_o\);

-- Location: LCCOMB_X116_Y87_N6
\Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\op[0]~input_o\ & ((\Mux0~0_combout\ & (\mapCalcModuleKmodes_A[13]~input_o\)) # (!\Mux0~0_combout\ & ((\mapCalcModuleFP_A[13]~input_o\))))) # (!\op[0]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \mapCalcModuleKmodes_A[13]~input_o\,
	datac => \Mux0~0_combout\,
	datad => \mapCalcModuleFP_A[13]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X117_Y84_N8
\centroidCalcModule_A[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModule_A(13),
	o => \centroidCalcModule_A[13]~input_o\);

-- Location: IOIBUF_X111_Y91_N22
\centroidCalcModuleFP_A[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidCalcModuleFP_A(13),
	o => \centroidCalcModuleFP_A[13]~input_o\);

-- Location: IOIBUF_X117_Y81_N8
\centroidControlInit[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidControlInit(13),
	o => \centroidControlInit[13]~input_o\);

-- Location: IOIBUF_X117_Y83_N1
\memInitAddr[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memInitAddr(13),
	o => \memInitAddr[13]~input_o\);

-- Location: LCCOMB_X116_Y87_N16
\Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\)))) # (!\op[1]~input_o\ & ((\op[0]~input_o\ & (\centroidControlInit[13]~input_o\)) # (!\op[0]~input_o\ & ((\memInitAddr[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidControlInit[13]~input_o\,
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \memInitAddr[13]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X116_Y87_N2
\Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\op[1]~input_o\ & ((\Mux0~2_combout\ & ((\centroidCalcModuleFP_A[13]~input_o\))) # (!\Mux0~2_combout\ & (\centroidCalcModule_A[13]~input_o\)))) # (!\op[1]~input_o\ & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidCalcModule_A[13]~input_o\,
	datab => \op[1]~input_o\,
	datac => \centroidCalcModuleFP_A[13]~input_o\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X116_Y87_N28
\Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\op[2]~input_o\ & (\Mux0~1_combout\)) # (!\op[2]~input_o\ & ((\Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \op[2]~input_o\,
	datad => \Mux0~3_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X116_Y61_N2
\Mux27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\op[2]~input_o\ & !\op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X116_Y61_N20
\Mux27~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\op[1]~input_o\) # ((\op[2]~input_o\ & \op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux27~3_combout\);

-- Location: IOIBUF_X117_Y52_N8
\centroidInit[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(0),
	o => \centroidInit[0]~input_o\);

-- Location: LCCOMB_X116_Y52_N24
\Mux27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\centroidInit[0]~input_o\ & \op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centroidInit[0]~input_o\,
	datac => \op[0]~input_o\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X78_Y87_N0
\Mux27~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\op[1]~input_o\ & (\op[0]~input_o\ & \op[2]~input_o\)) # (!\op[1]~input_o\ & ((!\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[0]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X116_Y52_N18
\Mux27~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\Mux27~3_combout\ & (((\mapCalcModuleKmodes_A[0]~input_o\ & \Mux27~2_combout\)))) # (!\Mux27~3_combout\ & ((\Mux27~1_combout\) # ((!\Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~3_combout\,
	datab => \Mux27~1_combout\,
	datac => \mapCalcModuleKmodes_A[0]~input_o\,
	datad => \Mux27~2_combout\,
	combout => \Mux27~4_combout\);

-- Location: IOIBUF_X117_Y51_N1
\mapCalcModuleFP_B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_B(0),
	o => \mapCalcModuleFP_B[0]~input_o\);

-- Location: IOIBUF_X117_Y49_N8
\mapCalcModule_B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_B(0),
	o => \mapCalcModule_B[0]~input_o\);

-- Location: LCCOMB_X116_Y52_N28
Mux27 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~combout\ = (\Mux27~0_combout\ & ((\Mux27~4_combout\ & ((\mapCalcModule_B[0]~input_o\))) # (!\Mux27~4_combout\ & (\mapCalcModuleFP_B[0]~input_o\)))) # (!\Mux27~0_combout\ & (\Mux27~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~0_combout\,
	datab => \Mux27~4_combout\,
	datac => \mapCalcModuleFP_B[0]~input_o\,
	datad => \mapCalcModule_B[0]~input_o\,
	combout => \Mux27~combout\);

-- Location: IOIBUF_X117_Y53_N1
\mapCalcModule_B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_B(1),
	o => \mapCalcModule_B[1]~input_o\);

-- Location: IOIBUF_X117_Y49_N1
\mapCalcModuleFP_B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_B(1),
	o => \mapCalcModuleFP_B[1]~input_o\);

-- Location: IOIBUF_X117_Y44_N1
\centroidInit[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(1),
	o => \centroidInit[1]~input_o\);

-- Location: LCCOMB_X116_Y52_N30
\Mux26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\centroidInit[1]~input_o\ & \op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centroidInit[1]~input_o\,
	datac => \op[0]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X116_Y52_N0
\Mux26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux27~2_combout\ & ((\Mux27~3_combout\ & (\mapCalcModuleKmodes_A[1]~input_o\)) # (!\Mux27~3_combout\ & ((\Mux26~0_combout\))))) # (!\Mux27~2_combout\ & (((!\Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModuleKmodes_A[1]~input_o\,
	datab => \Mux27~2_combout\,
	datac => \Mux26~0_combout\,
	datad => \Mux27~3_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X116_Y52_N2
Mux26 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~combout\ = (\Mux27~0_combout\ & ((\Mux26~1_combout\ & (\mapCalcModule_B[1]~input_o\)) # (!\Mux26~1_combout\ & ((\mapCalcModuleFP_B[1]~input_o\))))) # (!\Mux27~0_combout\ & (((\Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModule_B[1]~input_o\,
	datab => \mapCalcModuleFP_B[1]~input_o\,
	datac => \Mux27~0_combout\,
	datad => \Mux26~1_combout\,
	combout => \Mux26~combout\);

-- Location: IOIBUF_X117_Y50_N8
\centroidInit[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(2),
	o => \centroidInit[2]~input_o\);

-- Location: LCCOMB_X116_Y52_N4
\Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\op[0]~input_o\ & \centroidInit[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op[0]~input_o\,
	datad => \centroidInit[2]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X116_Y52_N6
\Mux25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux27~3_combout\ & (((\mapCalcModuleKmodes_A[2]~input_o\ & \Mux27~2_combout\)))) # (!\Mux27~3_combout\ & ((\Mux25~0_combout\) # ((!\Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~3_combout\,
	datab => \Mux25~0_combout\,
	datac => \mapCalcModuleKmodes_A[2]~input_o\,
	datad => \Mux27~2_combout\,
	combout => \Mux25~1_combout\);

-- Location: IOIBUF_X117_Y50_N1
\mapCalcModule_B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_B(2),
	o => \mapCalcModule_B[2]~input_o\);

-- Location: IOIBUF_X117_Y55_N1
\mapCalcModuleFP_B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_B(2),
	o => \mapCalcModuleFP_B[2]~input_o\);

-- Location: LCCOMB_X116_Y52_N16
Mux25 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~combout\ = (\Mux25~1_combout\ & ((\mapCalcModule_B[2]~input_o\) # ((!\Mux27~0_combout\)))) # (!\Mux25~1_combout\ & (((\Mux27~0_combout\ & \mapCalcModuleFP_B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~1_combout\,
	datab => \mapCalcModule_B[2]~input_o\,
	datac => \Mux27~0_combout\,
	datad => \mapCalcModuleFP_B[2]~input_o\,
	combout => \Mux25~combout\);

-- Location: IOIBUF_X117_Y65_N1
\mapCalcModule_B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_B(3),
	o => \mapCalcModule_B[3]~input_o\);

-- Location: IOIBUF_X117_Y26_N8
\centroidInit[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(3),
	o => \centroidInit[3]~input_o\);

-- Location: LCCOMB_X116_Y29_N16
\Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\op[0]~input_o\ & \centroidInit[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datad => \centroidInit[3]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X116_Y29_N10
\Mux24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux27~2_combout\ & ((\Mux27~3_combout\ & ((\mapCalcModuleKmodes_A[3]~input_o\))) # (!\Mux27~3_combout\ & (\Mux24~0_combout\)))) # (!\Mux27~2_combout\ & (((!\Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datab => \Mux24~0_combout\,
	datac => \mapCalcModuleKmodes_A[3]~input_o\,
	datad => \Mux27~3_combout\,
	combout => \Mux24~1_combout\);

-- Location: IOIBUF_X117_Y60_N8
\mapCalcModuleFP_B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_B(3),
	o => \mapCalcModuleFP_B[3]~input_o\);

-- Location: LCCOMB_X116_Y61_N6
Mux24 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~combout\ = (\Mux24~1_combout\ & ((\mapCalcModule_B[3]~input_o\) # ((!\Mux27~0_combout\)))) # (!\Mux24~1_combout\ & (((\mapCalcModuleFP_B[3]~input_o\ & \Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModule_B[3]~input_o\,
	datab => \Mux24~1_combout\,
	datac => \mapCalcModuleFP_B[3]~input_o\,
	datad => \Mux27~0_combout\,
	combout => \Mux24~combout\);

-- Location: IOIBUF_X117_Y24_N1
\mapCalcModuleFP_B[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_B(4),
	o => \mapCalcModuleFP_B[4]~input_o\);

-- Location: IOIBUF_X117_Y23_N1
\centroidInit[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(4),
	o => \centroidInit[4]~input_o\);

-- Location: LCCOMB_X116_Y29_N28
\Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\centroidInit[4]~input_o\ & \op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centroidInit[4]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X116_Y29_N30
\Mux23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux27~2_combout\ & ((\Mux27~3_combout\ & (\mapCalcModuleKmodes_A[4]~input_o\)) # (!\Mux27~3_combout\ & ((\Mux23~0_combout\))))) # (!\Mux27~2_combout\ & (((!\Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModuleKmodes_A[4]~input_o\,
	datab => \Mux23~0_combout\,
	datac => \Mux27~2_combout\,
	datad => \Mux27~3_combout\,
	combout => \Mux23~1_combout\);

-- Location: IOIBUF_X117_Y26_N1
\mapCalcModule_B[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_B(4),
	o => \mapCalcModule_B[4]~input_o\);

-- Location: LCCOMB_X116_Y29_N8
Mux23 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~combout\ = (\Mux27~0_combout\ & ((\Mux23~1_combout\ & ((\mapCalcModule_B[4]~input_o\))) # (!\Mux23~1_combout\ & (\mapCalcModuleFP_B[4]~input_o\)))) # (!\Mux27~0_combout\ & (((\Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~0_combout\,
	datab => \mapCalcModuleFP_B[4]~input_o\,
	datac => \Mux23~1_combout\,
	datad => \mapCalcModule_B[4]~input_o\,
	combout => \Mux23~combout\);

-- Location: IOIBUF_X117_Y15_N8
\centroidInit[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(5),
	o => \centroidInit[5]~input_o\);

-- Location: LCCOMB_X116_Y29_N26
\Mux22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\op[0]~input_o\ & \centroidInit[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datad => \centroidInit[5]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X116_Y29_N12
\Mux22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux27~2_combout\ & ((\Mux27~3_combout\ & (\mapCalcModuleKmodes_A[5]~input_o\)) # (!\Mux27~3_combout\ & ((\Mux22~0_combout\))))) # (!\Mux27~2_combout\ & (((!\Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModuleKmodes_A[5]~input_o\,
	datab => \Mux27~2_combout\,
	datac => \Mux22~0_combout\,
	datad => \Mux27~3_combout\,
	combout => \Mux22~1_combout\);

-- Location: IOIBUF_X117_Y15_N1
\mapCalcModuleFP_B[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_B(5),
	o => \mapCalcModuleFP_B[5]~input_o\);

-- Location: IOIBUF_X117_Y27_N8
\mapCalcModule_B[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_B(5),
	o => \mapCalcModule_B[5]~input_o\);

-- Location: LCCOMB_X116_Y29_N14
Mux22 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~combout\ = (\Mux22~1_combout\ & (((\mapCalcModule_B[5]~input_o\) # (!\Mux27~0_combout\)))) # (!\Mux22~1_combout\ & (\mapCalcModuleFP_B[5]~input_o\ & (\Mux27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~1_combout\,
	datab => \mapCalcModuleFP_B[5]~input_o\,
	datac => \Mux27~0_combout\,
	datad => \mapCalcModule_B[5]~input_o\,
	combout => \Mux22~combout\);

-- Location: IOIBUF_X117_Y23_N8
\centroidInit[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(6),
	o => \centroidInit[6]~input_o\);

-- Location: LCCOMB_X116_Y29_N24
\Mux21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\centroidInit[6]~input_o\ & \op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centroidInit[6]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X116_Y29_N18
\Mux21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux27~2_combout\ & ((\Mux27~3_combout\ & ((\mapCalcModuleKmodes_A[6]~input_o\))) # (!\Mux27~3_combout\ & (\Mux21~0_combout\)))) # (!\Mux27~2_combout\ & (((!\Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datab => \Mux21~0_combout\,
	datac => \mapCalcModuleKmodes_A[6]~input_o\,
	datad => \Mux27~3_combout\,
	combout => \Mux21~1_combout\);

-- Location: IOIBUF_X117_Y13_N1
\mapCalcModuleFP_B[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_B(6),
	o => \mapCalcModuleFP_B[6]~input_o\);

-- Location: IOIBUF_X117_Y27_N1
\mapCalcModule_B[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_B(6),
	o => \mapCalcModule_B[6]~input_o\);

-- Location: LCCOMB_X116_Y29_N20
Mux21 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~combout\ = (\Mux27~0_combout\ & ((\Mux21~1_combout\ & ((\mapCalcModule_B[6]~input_o\))) # (!\Mux21~1_combout\ & (\mapCalcModuleFP_B[6]~input_o\)))) # (!\Mux27~0_combout\ & (\Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~0_combout\,
	datab => \Mux21~1_combout\,
	datac => \mapCalcModuleFP_B[6]~input_o\,
	datad => \mapCalcModule_B[6]~input_o\,
	combout => \Mux21~combout\);

-- Location: IOIBUF_X117_Y51_N8
\centroidInit[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(7),
	o => \centroidInit[7]~input_o\);

-- Location: LCCOMB_X116_Y52_N26
\Mux20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\op[0]~input_o\ & \centroidInit[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op[0]~input_o\,
	datad => \centroidInit[7]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X116_Y52_N12
\Mux20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux27~2_combout\ & ((\Mux27~3_combout\ & (\mapCalcModuleKmodes_A[7]~input_o\)) # (!\Mux27~3_combout\ & ((\Mux20~0_combout\))))) # (!\Mux27~2_combout\ & (((!\Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModuleKmodes_A[7]~input_o\,
	datab => \Mux27~2_combout\,
	datac => \Mux20~0_combout\,
	datad => \Mux27~3_combout\,
	combout => \Mux20~1_combout\);

-- Location: IOIBUF_X117_Y54_N1
\mapCalcModule_B[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_B(7),
	o => \mapCalcModule_B[7]~input_o\);

-- Location: IOIBUF_X117_Y54_N8
\mapCalcModuleFP_B[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_B(7),
	o => \mapCalcModuleFP_B[7]~input_o\);

-- Location: LCCOMB_X116_Y52_N22
Mux20 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~combout\ = (\Mux20~1_combout\ & ((\mapCalcModule_B[7]~input_o\) # ((!\Mux27~0_combout\)))) # (!\Mux20~1_combout\ & (((\Mux27~0_combout\ & \mapCalcModuleFP_B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \mapCalcModule_B[7]~input_o\,
	datac => \Mux27~0_combout\,
	datad => \mapCalcModuleFP_B[7]~input_o\,
	combout => \Mux20~combout\);

-- Location: IOIBUF_X117_Y28_N1
\centroidInit[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(8),
	o => \centroidInit[8]~input_o\);

-- Location: LCCOMB_X116_Y29_N6
\Mux19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\centroidInit[8]~input_o\ & \op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centroidInit[8]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X116_Y29_N0
\Mux19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux27~2_combout\ & ((\Mux27~3_combout\ & ((\mapCalcModuleKmodes_A[8]~input_o\))) # (!\Mux27~3_combout\ & (\Mux19~0_combout\)))) # (!\Mux27~2_combout\ & (((!\Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Mux27~2_combout\,
	datac => \mapCalcModuleKmodes_A[8]~input_o\,
	datad => \Mux27~3_combout\,
	combout => \Mux19~1_combout\);

-- Location: IOIBUF_X117_Y22_N8
\mapCalcModuleFP_B[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_B(8),
	o => \mapCalcModuleFP_B[8]~input_o\);

-- Location: IOIBUF_X117_Y29_N1
\mapCalcModule_B[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_B(8),
	o => \mapCalcModule_B[8]~input_o\);

-- Location: LCCOMB_X116_Y29_N2
Mux19 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~combout\ = (\Mux27~0_combout\ & ((\Mux19~1_combout\ & ((\mapCalcModule_B[8]~input_o\))) # (!\Mux19~1_combout\ & (\mapCalcModuleFP_B[8]~input_o\)))) # (!\Mux27~0_combout\ & (\Mux19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~0_combout\,
	datab => \Mux19~1_combout\,
	datac => \mapCalcModuleFP_B[8]~input_o\,
	datad => \mapCalcModule_B[8]~input_o\,
	combout => \Mux19~combout\);

-- Location: IOIBUF_X117_Y18_N1
\mapCalcModule_B[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_B(9),
	o => \mapCalcModule_B[9]~input_o\);

-- Location: IOIBUF_X84_Y91_N8
\centroidInit[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(9),
	o => \centroidInit[9]~input_o\);

-- Location: LCCOMB_X87_Y88_N26
\Mux18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\centroidInit[9]~input_o\ & \op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidInit[9]~input_o\,
	datac => \op[0]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X116_Y29_N4
\Mux18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux27~2_combout\ & ((\Mux27~3_combout\ & (\mapCalcModuleKmodes_A[9]~input_o\)) # (!\Mux27~3_combout\ & ((\Mux18~0_combout\))))) # (!\Mux27~2_combout\ & (((!\Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModuleKmodes_A[9]~input_o\,
	datab => \Mux27~2_combout\,
	datac => \Mux18~0_combout\,
	datad => \Mux27~3_combout\,
	combout => \Mux18~1_combout\);

-- Location: IOIBUF_X117_Y29_N8
\mapCalcModuleFP_B[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_B(9),
	o => \mapCalcModuleFP_B[9]~input_o\);

-- Location: LCCOMB_X116_Y29_N22
Mux18 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~combout\ = (\Mux27~0_combout\ & ((\Mux18~1_combout\ & (\mapCalcModule_B[9]~input_o\)) # (!\Mux18~1_combout\ & ((\mapCalcModuleFP_B[9]~input_o\))))) # (!\Mux27~0_combout\ & (((\Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~0_combout\,
	datab => \mapCalcModule_B[9]~input_o\,
	datac => \Mux18~1_combout\,
	datad => \mapCalcModuleFP_B[9]~input_o\,
	combout => \Mux18~combout\);

-- Location: IOIBUF_X117_Y62_N8
\centroidInit[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(10),
	o => \centroidInit[10]~input_o\);

-- Location: LCCOMB_X116_Y61_N24
\Mux17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\centroidInit[10]~input_o\ & \op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \centroidInit[10]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X116_Y61_N26
\Mux17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux27~2_combout\ & ((\Mux27~3_combout\ & ((\mapCalcModuleKmodes_A[10]~input_o\))) # (!\Mux27~3_combout\ & (\Mux17~0_combout\)))) # (!\Mux27~2_combout\ & (((!\Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datab => \Mux17~0_combout\,
	datac => \mapCalcModuleKmodes_A[10]~input_o\,
	datad => \Mux27~3_combout\,
	combout => \Mux17~1_combout\);

-- Location: IOIBUF_X117_Y66_N1
\mapCalcModule_B[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_B(10),
	o => \mapCalcModule_B[10]~input_o\);

-- Location: IOIBUF_X117_Y64_N8
\mapCalcModuleFP_B[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_B(10),
	o => \mapCalcModuleFP_B[10]~input_o\);

-- Location: LCCOMB_X116_Y61_N4
Mux17 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~combout\ = (\Mux17~1_combout\ & (((\mapCalcModule_B[10]~input_o\)) # (!\Mux27~0_combout\))) # (!\Mux17~1_combout\ & (\Mux27~0_combout\ & ((\mapCalcModuleFP_B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~1_combout\,
	datab => \Mux27~0_combout\,
	datac => \mapCalcModule_B[10]~input_o\,
	datad => \mapCalcModuleFP_B[10]~input_o\,
	combout => \Mux17~combout\);

-- Location: IOIBUF_X117_Y52_N1
\centroidInit[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(11),
	o => \centroidInit[11]~input_o\);

-- Location: LCCOMB_X116_Y52_N8
\Mux16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\op[0]~input_o\ & \centroidInit[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op[0]~input_o\,
	datad => \centroidInit[11]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X116_Y52_N10
\Mux16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux27~2_combout\ & ((\Mux27~3_combout\ & (\mapCalcModuleKmodes_A[11]~input_o\)) # (!\Mux27~3_combout\ & ((\Mux16~0_combout\))))) # (!\Mux27~2_combout\ & (((!\Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModuleKmodes_A[11]~input_o\,
	datab => \Mux27~2_combout\,
	datac => \Mux16~0_combout\,
	datad => \Mux27~3_combout\,
	combout => \Mux16~1_combout\);

-- Location: IOIBUF_X117_Y48_N1
\mapCalcModule_B[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_B(11),
	o => \mapCalcModule_B[11]~input_o\);

-- Location: IOIBUF_X117_Y56_N1
\mapCalcModuleFP_B[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_B(11),
	o => \mapCalcModuleFP_B[11]~input_o\);

-- Location: LCCOMB_X116_Y52_N20
Mux16 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~combout\ = (\Mux16~1_combout\ & ((\mapCalcModule_B[11]~input_o\) # ((!\Mux27~0_combout\)))) # (!\Mux16~1_combout\ & (((\Mux27~0_combout\ & \mapCalcModuleFP_B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~1_combout\,
	datab => \mapCalcModule_B[11]~input_o\,
	datac => \Mux27~0_combout\,
	datad => \mapCalcModuleFP_B[11]~input_o\,
	combout => \Mux16~combout\);

-- Location: IOIBUF_X79_Y91_N1
\mapCalcModuleFP_B[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_B(12),
	o => \mapCalcModuleFP_B[12]~input_o\);

-- Location: IOIBUF_X53_Y91_N1
\mapCalcModule_B[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_B(12),
	o => \mapCalcModule_B[12]~input_o\);

-- Location: IOIBUF_X70_Y91_N1
\centroidInit[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(12),
	o => \centroidInit[12]~input_o\);

-- Location: LCCOMB_X78_Y87_N10
\Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\centroidInit[12]~input_o\ & \op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \centroidInit[12]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X78_Y87_N4
\Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux27~2_combout\ & ((\Mux27~3_combout\ & ((\mapCalcModuleKmodes_A[12]~input_o\))) # (!\Mux27~3_combout\ & (\Mux15~0_combout\)))) # (!\Mux27~2_combout\ & (((!\Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \Mux27~2_combout\,
	datac => \mapCalcModuleKmodes_A[12]~input_o\,
	datad => \Mux27~3_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X78_Y87_N6
Mux15 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~combout\ = (\Mux15~1_combout\ & (((\mapCalcModule_B[12]~input_o\) # (!\Mux27~0_combout\)))) # (!\Mux15~1_combout\ & (\mapCalcModuleFP_B[12]~input_o\ & ((\Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mapCalcModuleFP_B[12]~input_o\,
	datab => \mapCalcModule_B[12]~input_o\,
	datac => \Mux15~1_combout\,
	datad => \Mux27~0_combout\,
	combout => \Mux15~combout\);

-- Location: IOIBUF_X117_Y61_N1
\centroidInit[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroidInit(13),
	o => \centroidInit[13]~input_o\);

-- Location: LCCOMB_X116_Y61_N22
\Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\centroidInit[13]~input_o\ & \op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \centroidInit[13]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X116_Y61_N16
\Mux14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux27~2_combout\ & ((\Mux27~3_combout\ & ((\mapCalcModuleKmodes_A[13]~input_o\))) # (!\Mux27~3_combout\ & (\Mux14~0_combout\)))) # (!\Mux27~2_combout\ & (((!\Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \mapCalcModuleKmodes_A[13]~input_o\,
	datac => \Mux27~2_combout\,
	datad => \Mux27~3_combout\,
	combout => \Mux14~1_combout\);

-- Location: IOIBUF_X117_Y57_N8
\mapCalcModule_B[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModule_B(13),
	o => \mapCalcModule_B[13]~input_o\);

-- Location: IOIBUF_X117_Y64_N1
\mapCalcModuleFP_B[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleFP_B(13),
	o => \mapCalcModuleFP_B[13]~input_o\);

-- Location: LCCOMB_X116_Y61_N18
Mux14 : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~combout\ = (\Mux14~1_combout\ & (((\mapCalcModule_B[13]~input_o\)) # (!\Mux27~0_combout\))) # (!\Mux14~1_combout\ & (\Mux27~0_combout\ & ((\mapCalcModuleFP_B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux27~0_combout\,
	datac => \mapCalcModule_B[13]~input_o\,
	datad => \mapCalcModuleFP_B[13]~input_o\,
	combout => \Mux14~combout\);

-- Location: IOIBUF_X92_Y0_N22
\mapCalcModuleKmodes_B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_B(0),
	o => \mapCalcModuleKmodes_B[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\mapCalcModuleKmodes_B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_B(1),
	o => \mapCalcModuleKmodes_B[1]~input_o\);

-- Location: IOIBUF_X63_Y0_N8
\mapCalcModuleKmodes_B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_B(2),
	o => \mapCalcModuleKmodes_B[2]~input_o\);

-- Location: IOIBUF_X41_Y91_N15
\mapCalcModuleKmodes_B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_B(3),
	o => \mapCalcModuleKmodes_B[3]~input_o\);

-- Location: IOIBUF_X3_Y91_N15
\mapCalcModuleKmodes_B[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_B(4),
	o => \mapCalcModuleKmodes_B[4]~input_o\);

-- Location: IOIBUF_X34_Y91_N8
\mapCalcModuleKmodes_B[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_B(5),
	o => \mapCalcModuleKmodes_B[5]~input_o\);

-- Location: IOIBUF_X63_Y91_N15
\mapCalcModuleKmodes_B[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_B(6),
	o => \mapCalcModuleKmodes_B[6]~input_o\);

-- Location: IOIBUF_X84_Y0_N15
\mapCalcModuleKmodes_B[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_B(7),
	o => \mapCalcModuleKmodes_B[7]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\mapCalcModuleKmodes_B[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_B(8),
	o => \mapCalcModuleKmodes_B[8]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\mapCalcModuleKmodes_B[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_B(9),
	o => \mapCalcModuleKmodes_B[9]~input_o\);

-- Location: IOIBUF_X48_Y91_N8
\mapCalcModuleKmodes_B[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_B(10),
	o => \mapCalcModuleKmodes_B[10]~input_o\);

-- Location: IOIBUF_X75_Y0_N22
\mapCalcModuleKmodes_B[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_B(11),
	o => \mapCalcModuleKmodes_B[11]~input_o\);

-- Location: IOIBUF_X15_Y91_N8
\mapCalcModuleKmodes_B[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_B(12),
	o => \mapCalcModuleKmodes_B[12]~input_o\);

-- Location: IOIBUF_X50_Y91_N1
\mapCalcModuleKmodes_B[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mapCalcModuleKmodes_B(13),
	o => \mapCalcModuleKmodes_B[13]~input_o\);

ww_ramAddr_A(0) <= \ramAddr_A[0]~output_o\;

ww_ramAddr_A(1) <= \ramAddr_A[1]~output_o\;

ww_ramAddr_A(2) <= \ramAddr_A[2]~output_o\;

ww_ramAddr_A(3) <= \ramAddr_A[3]~output_o\;

ww_ramAddr_A(4) <= \ramAddr_A[4]~output_o\;

ww_ramAddr_A(5) <= \ramAddr_A[5]~output_o\;

ww_ramAddr_A(6) <= \ramAddr_A[6]~output_o\;

ww_ramAddr_A(7) <= \ramAddr_A[7]~output_o\;

ww_ramAddr_A(8) <= \ramAddr_A[8]~output_o\;

ww_ramAddr_A(9) <= \ramAddr_A[9]~output_o\;

ww_ramAddr_A(10) <= \ramAddr_A[10]~output_o\;

ww_ramAddr_A(11) <= \ramAddr_A[11]~output_o\;

ww_ramAddr_A(12) <= \ramAddr_A[12]~output_o\;

ww_ramAddr_A(13) <= \ramAddr_A[13]~output_o\;

ww_ramAddr_B(0) <= \ramAddr_B[0]~output_o\;

ww_ramAddr_B(1) <= \ramAddr_B[1]~output_o\;

ww_ramAddr_B(2) <= \ramAddr_B[2]~output_o\;

ww_ramAddr_B(3) <= \ramAddr_B[3]~output_o\;

ww_ramAddr_B(4) <= \ramAddr_B[4]~output_o\;

ww_ramAddr_B(5) <= \ramAddr_B[5]~output_o\;

ww_ramAddr_B(6) <= \ramAddr_B[6]~output_o\;

ww_ramAddr_B(7) <= \ramAddr_B[7]~output_o\;

ww_ramAddr_B(8) <= \ramAddr_B[8]~output_o\;

ww_ramAddr_B(9) <= \ramAddr_B[9]~output_o\;

ww_ramAddr_B(10) <= \ramAddr_B[10]~output_o\;

ww_ramAddr_B(11) <= \ramAddr_B[11]~output_o\;

ww_ramAddr_B(12) <= \ramAddr_B[12]~output_o\;

ww_ramAddr_B(13) <= \ramAddr_B[13]~output_o\;
END structure;


