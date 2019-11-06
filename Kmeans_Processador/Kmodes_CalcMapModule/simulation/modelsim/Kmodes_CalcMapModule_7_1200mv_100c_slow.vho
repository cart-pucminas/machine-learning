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

-- DATE "06/04/2018 11:15:18"

-- 
-- Device: Altera EP4CGX150DF31I7 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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


LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Kmodes_CalcMapModule IS
    PORT (
	wr_Ram : OUT std_logic;
	clk : IN std_logic;
	nrst : IN std_logic;
	en_KmodesControlCalcMap : IN std_logic;
	centroid : IN std_logic_vector(63 DOWNTO 0);
	dado : IN std_logic_vector(63 DOWNTO 0);
	reg1 : IN std_logic_vector(9 DOWNTO 0);
	reg3 : IN std_logic_vector(14 DOWNTO 0);
	reg5 : IN std_logic_vector(13 DOWNTO 0);
	reg8 : IN std_logic_vector(2 DOWNTO 0);
	enMinDistMatch : OUT std_logic;
	enSimpleMatch : OUT std_logic;
	EndDistanceMatch : OUT std_logic;
	addr_Ram_Centroid : OUT std_logic_vector(13 DOWNTO 0);
	addr_Ram_Dado : OUT std_logic_vector(13 DOWNTO 0);
	DistanceMatch : OUT std_logic_vector(3 DOWNTO 0);
	KmodesEstatoMap : OUT std_logic_vector(3 DOWNTO 0);
	KmodesSumDist : OUT std_logic_vector(6 DOWNTO 0);
	next_State : OUT std_logic_vector(3 DOWNTO 0);
	o_dado : OUT std_logic_vector(9 DOWNTO 0);
	oReg7 : OUT std_logic_vector(9 DOWNTO 0)
	);
END Kmodes_CalcMapModule;

-- Design Ports Information
-- wr_Ram	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enMinDistMatch	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enSimpleMatch	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EndDistanceMatch	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[13]	=>  Location: PIN_AC16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[12]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[11]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[10]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[9]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[8]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[7]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[6]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[5]	=>  Location: PIN_AK17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[4]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[3]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[2]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[1]	=>  Location: PIN_AK20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[0]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[13]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[12]	=>  Location: PIN_H28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[11]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[10]	=>  Location: PIN_C30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[9]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[8]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[7]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[6]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[5]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[4]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[3]	=>  Location: PIN_D30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[2]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[1]	=>  Location: PIN_K29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[0]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DistanceMatch[3]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DistanceMatch[2]	=>  Location: PIN_G30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DistanceMatch[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DistanceMatch[0]	=>  Location: PIN_H30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KmodesEstatoMap[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KmodesEstatoMap[2]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KmodesEstatoMap[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KmodesEstatoMap[0]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KmodesSumDist[6]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KmodesSumDist[5]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KmodesSumDist[4]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KmodesSumDist[3]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KmodesSumDist[2]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KmodesSumDist[1]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KmodesSumDist[0]	=>  Location: PIN_AJ18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_State[3]	=>  Location: PIN_AJ13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_State[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_State[1]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_State[0]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_dado[9]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_dado[8]	=>  Location: PIN_AJ15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_dado[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_dado[6]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_dado[5]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_dado[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_dado[3]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_dado[2]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_dado[1]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_dado[0]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oReg7[9]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oReg7[8]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oReg7[7]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oReg7[6]	=>  Location: PIN_AK15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oReg7[5]	=>  Location: PIN_AD16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oReg7[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oReg7[3]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oReg7[2]	=>  Location: PIN_AK10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oReg7[1]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oReg7[0]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[13]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[12]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[11]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[10]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[9]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[8]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[7]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[6]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[5]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[4]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[3]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[1]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[0]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nrst	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[9]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[8]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[7]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[6]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[5]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[4]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[3]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[2]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[1]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[0]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg8[2]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg8[1]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg8[0]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[0]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[1]	=>  Location: PIN_AE30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[1]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[0]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[2]	=>  Location: PIN_AJ30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[3]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[3]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[2]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[5]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[5]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[4]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[6]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[7]	=>  Location: PIN_U30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[7]	=>  Location: PIN_AG29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[6]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[40]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[41]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[41]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[40]	=>  Location: PIN_AJ28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[42]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[43]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[43]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[42]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[44]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[45]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[45]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[44]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[46]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[47]	=>  Location: PIN_AG24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[47]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[46]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[8]	=>  Location: PIN_N28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[9]	=>  Location: PIN_N24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[9]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[8]	=>  Location: PIN_N27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[10]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[11]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[11]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[10]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[12]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[13]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[13]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[12]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[14]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[15]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[15]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[14]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[32]	=>  Location: PIN_AA29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[33]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[33]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[32]	=>  Location: PIN_D29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[34]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[35]	=>  Location: PIN_W30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[35]	=>  Location: PIN_T30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[34]	=>  Location: PIN_T29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[36]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[37]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[37]	=>  Location: PIN_N29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[36]	=>  Location: PIN_G29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[38]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[39]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[39]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[38]	=>  Location: PIN_J29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[16]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[17]	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[17]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[16]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[18]	=>  Location: PIN_R30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[19]	=>  Location: PIN_W29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[19]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[18]	=>  Location: PIN_N30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[20]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[21]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[21]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[20]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[22]	=>  Location: PIN_Y28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[23]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[23]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[22]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[48]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[49]	=>  Location: PIN_L30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[49]	=>  Location: PIN_M30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[48]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[50]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[51]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[51]	=>  Location: PIN_J30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[50]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[52]	=>  Location: PIN_AA27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[53]	=>  Location: PIN_F30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[53]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[52]	=>  Location: PIN_T27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[54]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[55]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[55]	=>  Location: PIN_K30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[54]	=>  Location: PIN_AB29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[24]	=>  Location: PIN_P30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[25]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[25]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[24]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[26]	=>  Location: PIN_Y30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[27]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[27]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[26]	=>  Location: PIN_T28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[28]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[29]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[29]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[28]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[30]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[31]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[31]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[30]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[56]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[57]	=>  Location: PIN_R29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[57]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[56]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[58]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[59]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[59]	=>  Location: PIN_M29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[58]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[60]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[61]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[61]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[60]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[62]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[63]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[63]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[62]	=>  Location: PIN_E30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[14]	=>  Location: PIN_AK25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[13]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[12]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[11]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[10]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[9]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[8]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[7]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[6]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[5]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[4]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[3]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[2]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[1]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[0]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_KmodesControlCalcMap	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Kmodes_CalcMapModule IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_wr_Ram : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_nrst : std_logic;
SIGNAL ww_en_KmodesControlCalcMap : std_logic;
SIGNAL ww_centroid : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_dado : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_reg1 : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_reg3 : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_reg5 : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_reg8 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_enMinDistMatch : std_logic;
SIGNAL ww_enSimpleMatch : std_logic;
SIGNAL ww_EndDistanceMatch : std_logic;
SIGNAL ww_addr_Ram_Centroid : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_addr_Ram_Dado : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_DistanceMatch : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KmodesEstatoMap : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KmodesSumDist : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_next_State : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_dado : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_oReg7 : std_logic_vector(9 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \wr_Ram~output_o\ : std_logic;
SIGNAL \enMinDistMatch~output_o\ : std_logic;
SIGNAL \enSimpleMatch~output_o\ : std_logic;
SIGNAL \EndDistanceMatch~output_o\ : std_logic;
SIGNAL \addr_Ram_Centroid[13]~output_o\ : std_logic;
SIGNAL \addr_Ram_Centroid[12]~output_o\ : std_logic;
SIGNAL \addr_Ram_Centroid[11]~output_o\ : std_logic;
SIGNAL \addr_Ram_Centroid[10]~output_o\ : std_logic;
SIGNAL \addr_Ram_Centroid[9]~output_o\ : std_logic;
SIGNAL \addr_Ram_Centroid[8]~output_o\ : std_logic;
SIGNAL \addr_Ram_Centroid[7]~output_o\ : std_logic;
SIGNAL \addr_Ram_Centroid[6]~output_o\ : std_logic;
SIGNAL \addr_Ram_Centroid[5]~output_o\ : std_logic;
SIGNAL \addr_Ram_Centroid[4]~output_o\ : std_logic;
SIGNAL \addr_Ram_Centroid[3]~output_o\ : std_logic;
SIGNAL \addr_Ram_Centroid[2]~output_o\ : std_logic;
SIGNAL \addr_Ram_Centroid[1]~output_o\ : std_logic;
SIGNAL \addr_Ram_Centroid[0]~output_o\ : std_logic;
SIGNAL \addr_Ram_Dado[13]~output_o\ : std_logic;
SIGNAL \addr_Ram_Dado[12]~output_o\ : std_logic;
SIGNAL \addr_Ram_Dado[11]~output_o\ : std_logic;
SIGNAL \addr_Ram_Dado[10]~output_o\ : std_logic;
SIGNAL \addr_Ram_Dado[9]~output_o\ : std_logic;
SIGNAL \addr_Ram_Dado[8]~output_o\ : std_logic;
SIGNAL \addr_Ram_Dado[7]~output_o\ : std_logic;
SIGNAL \addr_Ram_Dado[6]~output_o\ : std_logic;
SIGNAL \addr_Ram_Dado[5]~output_o\ : std_logic;
SIGNAL \addr_Ram_Dado[4]~output_o\ : std_logic;
SIGNAL \addr_Ram_Dado[3]~output_o\ : std_logic;
SIGNAL \addr_Ram_Dado[2]~output_o\ : std_logic;
SIGNAL \addr_Ram_Dado[1]~output_o\ : std_logic;
SIGNAL \addr_Ram_Dado[0]~output_o\ : std_logic;
SIGNAL \DistanceMatch[3]~output_o\ : std_logic;
SIGNAL \DistanceMatch[2]~output_o\ : std_logic;
SIGNAL \DistanceMatch[1]~output_o\ : std_logic;
SIGNAL \DistanceMatch[0]~output_o\ : std_logic;
SIGNAL \KmodesEstatoMap[3]~output_o\ : std_logic;
SIGNAL \KmodesEstatoMap[2]~output_o\ : std_logic;
SIGNAL \KmodesEstatoMap[1]~output_o\ : std_logic;
SIGNAL \KmodesEstatoMap[0]~output_o\ : std_logic;
SIGNAL \KmodesSumDist[6]~output_o\ : std_logic;
SIGNAL \KmodesSumDist[5]~output_o\ : std_logic;
SIGNAL \KmodesSumDist[4]~output_o\ : std_logic;
SIGNAL \KmodesSumDist[3]~output_o\ : std_logic;
SIGNAL \KmodesSumDist[2]~output_o\ : std_logic;
SIGNAL \KmodesSumDist[1]~output_o\ : std_logic;
SIGNAL \KmodesSumDist[0]~output_o\ : std_logic;
SIGNAL \next_State[3]~output_o\ : std_logic;
SIGNAL \next_State[2]~output_o\ : std_logic;
SIGNAL \next_State[1]~output_o\ : std_logic;
SIGNAL \next_State[0]~output_o\ : std_logic;
SIGNAL \o_dado[9]~output_o\ : std_logic;
SIGNAL \o_dado[8]~output_o\ : std_logic;
SIGNAL \o_dado[7]~output_o\ : std_logic;
SIGNAL \o_dado[6]~output_o\ : std_logic;
SIGNAL \o_dado[5]~output_o\ : std_logic;
SIGNAL \o_dado[4]~output_o\ : std_logic;
SIGNAL \o_dado[3]~output_o\ : std_logic;
SIGNAL \o_dado[2]~output_o\ : std_logic;
SIGNAL \o_dado[1]~output_o\ : std_logic;
SIGNAL \o_dado[0]~output_o\ : std_logic;
SIGNAL \oReg7[9]~output_o\ : std_logic;
SIGNAL \oReg7[8]~output_o\ : std_logic;
SIGNAL \oReg7[7]~output_o\ : std_logic;
SIGNAL \oReg7[6]~output_o\ : std_logic;
SIGNAL \oReg7[5]~output_o\ : std_logic;
SIGNAL \oReg7[4]~output_o\ : std_logic;
SIGNAL \oReg7[3]~output_o\ : std_logic;
SIGNAL \oReg7[2]~output_o\ : std_logic;
SIGNAL \oReg7[1]~output_o\ : std_logic;
SIGNAL \oReg7[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \nrst~input_o\ : std_logic;
SIGNAL \inst2|s_countCentroid[0]~11_combout\ : std_logic;
SIGNAL \reg1[9]~input_o\ : std_logic;
SIGNAL \reg1[8]~input_o\ : std_logic;
SIGNAL \reg1[7]~input_o\ : std_logic;
SIGNAL \reg1[6]~input_o\ : std_logic;
SIGNAL \reg1[5]~input_o\ : std_logic;
SIGNAL \reg1[4]~input_o\ : std_logic;
SIGNAL \reg1[3]~input_o\ : std_logic;
SIGNAL \reg1[2]~input_o\ : std_logic;
SIGNAL \reg1[1]~input_o\ : std_logic;
SIGNAL \reg1[0]~input_o\ : std_logic;
SIGNAL \inst2|Add6~1\ : std_logic;
SIGNAL \inst2|Add6~3\ : std_logic;
SIGNAL \inst2|Add6~5\ : std_logic;
SIGNAL \inst2|Add6~7\ : std_logic;
SIGNAL \inst2|Add6~9\ : std_logic;
SIGNAL \inst2|Add6~11\ : std_logic;
SIGNAL \inst2|Add6~13\ : std_logic;
SIGNAL \inst2|Add6~15\ : std_logic;
SIGNAL \inst2|Add6~17\ : std_logic;
SIGNAL \inst2|Add6~18_combout\ : std_logic;
SIGNAL \inst2|Add6~16_combout\ : std_logic;
SIGNAL \inst2|Add6~14_combout\ : std_logic;
SIGNAL \inst2|Add6~12_combout\ : std_logic;
SIGNAL \inst2|Add6~10_combout\ : std_logic;
SIGNAL \inst2|Add6~8_combout\ : std_logic;
SIGNAL \inst2|Add6~6_combout\ : std_logic;
SIGNAL \inst2|Add6~4_combout\ : std_logic;
SIGNAL \inst2|Add6~2_combout\ : std_logic;
SIGNAL \inst2|Add6~0_combout\ : std_logic;
SIGNAL \inst2|LessThan3~1_cout\ : std_logic;
SIGNAL \inst2|LessThan3~3_cout\ : std_logic;
SIGNAL \inst2|LessThan3~5_cout\ : std_logic;
SIGNAL \inst2|LessThan3~7_cout\ : std_logic;
SIGNAL \inst2|LessThan3~9_cout\ : std_logic;
SIGNAL \inst2|LessThan3~11_cout\ : std_logic;
SIGNAL \inst2|LessThan3~13_cout\ : std_logic;
SIGNAL \inst2|LessThan3~15_cout\ : std_logic;
SIGNAL \inst2|LessThan3~17_cout\ : std_logic;
SIGNAL \inst2|LessThan3~18_combout\ : std_logic;
SIGNAL \inst2|state.RESET~1_combout\ : std_logic;
SIGNAL \inst2|state_fut.RESET~feeder_combout\ : std_logic;
SIGNAL \inst2|state_fut.RESET~q\ : std_logic;
SIGNAL \inst2|state.RESET~3_combout\ : std_logic;
SIGNAL \inst2|state.RESET~0_combout\ : std_logic;
SIGNAL \inst2|state.RESET~_emulated_q\ : std_logic;
SIGNAL \inst2|state.RESET~2_combout\ : std_logic;
SIGNAL \reg3[14]~input_o\ : std_logic;
SIGNAL \inst2|Add8~0_combout\ : std_logic;
SIGNAL \inst2|Add8~41_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[0]~13_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[8]~39_combout\ : std_logic;
SIGNAL \en_KmodesControlCalcMap~input_o\ : std_logic;
SIGNAL \inst2|Selector73~0_combout\ : std_logic;
SIGNAL \inst2|state_fut.IDLE~q\ : std_logic;
SIGNAL \inst2|state.IDLE~0_combout\ : std_logic;
SIGNAL \inst2|state.IDLE~q\ : std_logic;
SIGNAL \inst2|Selector74~0_combout\ : std_logic;
SIGNAL \inst2|state_fut.VERIFYDATA~feeder_combout\ : std_logic;
SIGNAL \inst2|state_fut.VERIFYDATA~q\ : std_logic;
SIGNAL \inst2|state.VERIFYDATA~q\ : std_logic;
SIGNAL \inst2|WideOr14~0_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[8]~42_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[8]~43_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[0]~14\ : std_logic;
SIGNAL \inst2|s_countDimensions[1]~15_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[1]~16\ : std_logic;
SIGNAL \inst2|s_countDimensions[2]~17_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[2]~18\ : std_logic;
SIGNAL \inst2|s_countDimensions[3]~19_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[3]~20\ : std_logic;
SIGNAL \inst2|s_countDimensions[4]~21_combout\ : std_logic;
SIGNAL \inst2|LessThan2~6_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[4]~22\ : std_logic;
SIGNAL \inst2|s_countDimensions[5]~23_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[5]~24\ : std_logic;
SIGNAL \inst2|s_countDimensions[6]~25_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[6]~26\ : std_logic;
SIGNAL \inst2|s_countDimensions[7]~27_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[7]~28\ : std_logic;
SIGNAL \inst2|s_countDimensions[8]~29_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[8]~30\ : std_logic;
SIGNAL \inst2|s_countDimensions[9]~31_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[9]~32\ : std_logic;
SIGNAL \inst2|s_countDimensions[10]~33_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[10]~34\ : std_logic;
SIGNAL \inst2|s_countDimensions[11]~35_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[11]~36\ : std_logic;
SIGNAL \inst2|s_countDimensions[12]~37_combout\ : std_logic;
SIGNAL \inst2|LessThan2~2_combout\ : std_logic;
SIGNAL \reg8[2]~input_o\ : std_logic;
SIGNAL \reg8[1]~input_o\ : std_logic;
SIGNAL \reg8[0]~input_o\ : std_logic;
SIGNAL \inst2|LessThan2~3_combout\ : std_logic;
SIGNAL \inst2|LessThan2~4_combout\ : std_logic;
SIGNAL \inst2|LessThan2~5_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[8]~41_combout\ : std_logic;
SIGNAL \inst2|state_fut.MINDISTANCE~q\ : std_logic;
SIGNAL \inst2|state.MINDISTANCE~q\ : std_logic;
SIGNAL \inst2|s_countDado[9]~0_combout\ : std_logic;
SIGNAL \inst2|WideOr13~0_combout\ : std_logic;
SIGNAL \inst2|s_countDado[9]~1_combout\ : std_logic;
SIGNAL \inst2|Add8~1\ : std_logic;
SIGNAL \inst2|Add8~2_combout\ : std_logic;
SIGNAL \inst2|Add8~40_combout\ : std_logic;
SIGNAL \inst2|Add8~3\ : std_logic;
SIGNAL \inst2|Add8~4_combout\ : std_logic;
SIGNAL \inst2|Add8~39_combout\ : std_logic;
SIGNAL \inst2|Add8~5\ : std_logic;
SIGNAL \inst2|Add8~6_combout\ : std_logic;
SIGNAL \inst2|Add8~38_combout\ : std_logic;
SIGNAL \inst2|Add8~7\ : std_logic;
SIGNAL \inst2|Add8~8_combout\ : std_logic;
SIGNAL \inst2|Add8~37_combout\ : std_logic;
SIGNAL \inst2|Add8~9\ : std_logic;
SIGNAL \inst2|Add8~10_combout\ : std_logic;
SIGNAL \inst2|Add8~36_combout\ : std_logic;
SIGNAL \inst2|Add8~11\ : std_logic;
SIGNAL \inst2|Add8~12_combout\ : std_logic;
SIGNAL \inst2|Add8~35_combout\ : std_logic;
SIGNAL \inst2|Add8~13\ : std_logic;
SIGNAL \inst2|Add8~14_combout\ : std_logic;
SIGNAL \inst2|Add8~34_combout\ : std_logic;
SIGNAL \inst2|Add8~15\ : std_logic;
SIGNAL \inst2|Add8~16_combout\ : std_logic;
SIGNAL \inst2|Add8~33_combout\ : std_logic;
SIGNAL \inst2|Add8~17\ : std_logic;
SIGNAL \inst2|Add8~18_combout\ : std_logic;
SIGNAL \inst2|Add8~32_combout\ : std_logic;
SIGNAL \inst2|Add8~19\ : std_logic;
SIGNAL \inst2|Add8~20_combout\ : std_logic;
SIGNAL \inst2|Add8~31_combout\ : std_logic;
SIGNAL \inst2|Add8~21\ : std_logic;
SIGNAL \inst2|Add8~22_combout\ : std_logic;
SIGNAL \inst2|Add8~30_combout\ : std_logic;
SIGNAL \inst2|Add8~23\ : std_logic;
SIGNAL \inst2|Add8~24_combout\ : std_logic;
SIGNAL \inst2|Add8~29_combout\ : std_logic;
SIGNAL \inst2|Add8~25\ : std_logic;
SIGNAL \inst2|Add8~26_combout\ : std_logic;
SIGNAL \inst2|Add8~28_combout\ : std_logic;
SIGNAL \inst2|Add8~27\ : std_logic;
SIGNAL \inst2|Add8~42_combout\ : std_logic;
SIGNAL \inst2|Selector0~0_combout\ : std_logic;
SIGNAL \reg3[13]~input_o\ : std_logic;
SIGNAL \reg3[12]~input_o\ : std_logic;
SIGNAL \reg3[11]~input_o\ : std_logic;
SIGNAL \reg3[10]~input_o\ : std_logic;
SIGNAL \reg3[9]~input_o\ : std_logic;
SIGNAL \reg3[8]~input_o\ : std_logic;
SIGNAL \reg3[7]~input_o\ : std_logic;
SIGNAL \reg3[6]~input_o\ : std_logic;
SIGNAL \reg3[5]~input_o\ : std_logic;
SIGNAL \reg3[4]~input_o\ : std_logic;
SIGNAL \reg3[3]~input_o\ : std_logic;
SIGNAL \reg3[2]~input_o\ : std_logic;
SIGNAL \reg3[1]~input_o\ : std_logic;
SIGNAL \reg3[0]~input_o\ : std_logic;
SIGNAL \inst2|LessThan0~1_cout\ : std_logic;
SIGNAL \inst2|LessThan0~3_cout\ : std_logic;
SIGNAL \inst2|LessThan0~5_cout\ : std_logic;
SIGNAL \inst2|LessThan0~7_cout\ : std_logic;
SIGNAL \inst2|LessThan0~9_cout\ : std_logic;
SIGNAL \inst2|LessThan0~11_cout\ : std_logic;
SIGNAL \inst2|LessThan0~13_cout\ : std_logic;
SIGNAL \inst2|LessThan0~15_cout\ : std_logic;
SIGNAL \inst2|LessThan0~17_cout\ : std_logic;
SIGNAL \inst2|LessThan0~19_cout\ : std_logic;
SIGNAL \inst2|LessThan0~21_cout\ : std_logic;
SIGNAL \inst2|LessThan0~23_cout\ : std_logic;
SIGNAL \inst2|LessThan0~25_cout\ : std_logic;
SIGNAL \inst2|LessThan0~27_cout\ : std_logic;
SIGNAL \inst2|LessThan0~28_combout\ : std_logic;
SIGNAL \inst2|state_fut~13_combout\ : std_logic;
SIGNAL \inst2|state_fut.ENDSTATE~q\ : std_logic;
SIGNAL \inst2|state.ENDSTATE~q\ : std_logic;
SIGNAL \inst2|s_countCentroid[5]~10_combout\ : std_logic;
SIGNAL \inst2|s_countCentroid[5]~31_combout\ : std_logic;
SIGNAL \inst2|s_countCentroid[0]~12\ : std_logic;
SIGNAL \inst2|s_countCentroid[1]~13_combout\ : std_logic;
SIGNAL \inst2|s_countCentroid[1]~14\ : std_logic;
SIGNAL \inst2|s_countCentroid[2]~15_combout\ : std_logic;
SIGNAL \inst2|s_countCentroid[2]~16\ : std_logic;
SIGNAL \inst2|s_countCentroid[3]~17_combout\ : std_logic;
SIGNAL \inst2|s_countCentroid[3]~18\ : std_logic;
SIGNAL \inst2|s_countCentroid[4]~19_combout\ : std_logic;
SIGNAL \inst2|s_countCentroid[4]~20\ : std_logic;
SIGNAL \inst2|s_countCentroid[5]~21_combout\ : std_logic;
SIGNAL \inst2|s_countCentroid[5]~22\ : std_logic;
SIGNAL \inst2|s_countCentroid[6]~23_combout\ : std_logic;
SIGNAL \inst2|s_countCentroid[6]~24\ : std_logic;
SIGNAL \inst2|s_countCentroid[7]~25_combout\ : std_logic;
SIGNAL \inst2|s_countCentroid[7]~26\ : std_logic;
SIGNAL \inst2|s_countCentroid[8]~27_combout\ : std_logic;
SIGNAL \inst2|s_countCentroid[8]~28\ : std_logic;
SIGNAL \inst2|s_countCentroid[9]~29_combout\ : std_logic;
SIGNAL \inst2|LessThan1~1_cout\ : std_logic;
SIGNAL \inst2|LessThan1~3_cout\ : std_logic;
SIGNAL \inst2|LessThan1~5_cout\ : std_logic;
SIGNAL \inst2|LessThan1~7_cout\ : std_logic;
SIGNAL \inst2|LessThan1~9_cout\ : std_logic;
SIGNAL \inst2|LessThan1~11_cout\ : std_logic;
SIGNAL \inst2|LessThan1~13_cout\ : std_logic;
SIGNAL \inst2|LessThan1~15_cout\ : std_logic;
SIGNAL \inst2|LessThan1~17_cout\ : std_logic;
SIGNAL \inst2|LessThan1~18_combout\ : std_logic;
SIGNAL \inst2|Selector77~0_combout\ : std_logic;
SIGNAL \inst2|state_fut.CALCDISTANCE~q\ : std_logic;
SIGNAL \inst2|state.CALCDISTANCE~q\ : std_logic;
SIGNAL \inst2|s_en_SimpleMatch~feeder_combout\ : std_logic;
SIGNAL \inst2|s_en_SimpleMatch~q\ : std_logic;
SIGNAL \inst|s_endDistanceMatch~feeder_combout\ : std_logic;
SIGNAL \inst|s_endDistanceMatch~q\ : std_logic;
SIGNAL \inst2|state.RESET~5_combout\ : std_logic;
SIGNAL \inst2|state.WAITCALCDISTANCE~1_combout\ : std_logic;
SIGNAL \inst2|state.WAITCALCDISTANCE~0_combout\ : std_logic;
SIGNAL \inst2|state.WAITCALCDISTANCE~_emulated_q\ : std_logic;
SIGNAL \inst2|state.WAITCALCDISTANCE~2_combout\ : std_logic;
SIGNAL \inst2|state_fut.VERIFYDIMENSION~q\ : std_logic;
SIGNAL \inst2|state.VERIFYDIMENSION~q\ : std_logic;
SIGNAL \inst2|LessThan2~7_combout\ : std_logic;
SIGNAL \inst2|Selector75~0_combout\ : std_logic;
SIGNAL \inst2|Selector75~1_combout\ : std_logic;
SIGNAL \inst2|state_fut.LOADDATA~q\ : std_logic;
SIGNAL \inst2|state.LOADDATA~q\ : std_logic;
SIGNAL \inst2|Selector76~0_combout\ : std_logic;
SIGNAL \inst2|state_fut.ENDCENTROIDS~q\ : std_logic;
SIGNAL \inst2|state.ENDCENTROIDS~q\ : std_logic;
SIGNAL \inst2|s_countDimensions[8]~40_combout\ : std_logic;
SIGNAL \inst2|state_fut.STOREDATA~q\ : std_logic;
SIGNAL \inst2|state.STOREDATA~q\ : std_logic;
SIGNAL \inst2|s_wrRam~feeder_combout\ : std_logic;
SIGNAL \inst2|s_wrRam~q\ : std_logic;
SIGNAL \inst2|s_enMinDistanceMatch~feeder_combout\ : std_logic;
SIGNAL \inst2|s_enMinDistanceMatch~q\ : std_logic;
SIGNAL \inst2|WideOr13~1_combout\ : std_logic;
SIGNAL \inst2|WideOr5~combout\ : std_logic;
SIGNAL \reg5[13]~input_o\ : std_logic;
SIGNAL \reg5[12]~input_o\ : std_logic;
SIGNAL \reg5[11]~input_o\ : std_logic;
SIGNAL \reg5[10]~input_o\ : std_logic;
SIGNAL \reg5[9]~input_o\ : std_logic;
SIGNAL \reg5[8]~input_o\ : std_logic;
SIGNAL \reg5[7]~input_o\ : std_logic;
SIGNAL \reg5[6]~input_o\ : std_logic;
SIGNAL \reg5[5]~input_o\ : std_logic;
SIGNAL \reg5[4]~input_o\ : std_logic;
SIGNAL \reg5[3]~input_o\ : std_logic;
SIGNAL \reg5[2]~input_o\ : std_logic;
SIGNAL \reg5[1]~input_o\ : std_logic;
SIGNAL \reg5[0]~input_o\ : std_logic;
SIGNAL \inst2|Add2~1\ : std_logic;
SIGNAL \inst2|Add2~3\ : std_logic;
SIGNAL \inst2|Add2~5\ : std_logic;
SIGNAL \inst2|Add2~7\ : std_logic;
SIGNAL \inst2|Add2~9\ : std_logic;
SIGNAL \inst2|Add2~11\ : std_logic;
SIGNAL \inst2|Add2~13\ : std_logic;
SIGNAL \inst2|Add2~15\ : std_logic;
SIGNAL \inst2|Add2~17\ : std_logic;
SIGNAL \inst2|Add2~19\ : std_logic;
SIGNAL \inst2|Add2~21\ : std_logic;
SIGNAL \inst2|Add2~23\ : std_logic;
SIGNAL \inst2|Add2~25\ : std_logic;
SIGNAL \inst2|Add2~26_combout\ : std_logic;
SIGNAL \inst2|Add2~24_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[1][9]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[0][9]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[1][8]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[1][7]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[0][8]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[0][7]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[1][6]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[0][6]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[1][5]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[1][4]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[0][5]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[0][4]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[1][3]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[1][2]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[0][3]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[1][1]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[0][2]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[1][0]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[0][1]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[2][9]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[2][8]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[2][7]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[2][6]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[2][5]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[2][4]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[2][3]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[2][2]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[2][1]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[2][0]~combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst2|Add2~22_combout\ : std_logic;
SIGNAL \inst2|Add2~20_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst2|Add2~18_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst2|Add2~16_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst2|Add2~14_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst2|Add2~12_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst2|Add2~10_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst2|Add2~8_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst2|Add2~6_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst2|Add2~4_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst2|Add2~2_combout\ : std_logic;
SIGNAL \inst2|Add2~0_combout\ : std_logic;
SIGNAL \inst2|Mult1|mult_core|decoder_node[0][0]~combout\ : std_logic;
SIGNAL \inst2|Add3~1\ : std_logic;
SIGNAL \inst2|Add3~3\ : std_logic;
SIGNAL \inst2|Add3~5\ : std_logic;
SIGNAL \inst2|Add3~7\ : std_logic;
SIGNAL \inst2|Add3~9\ : std_logic;
SIGNAL \inst2|Add3~11\ : std_logic;
SIGNAL \inst2|Add3~13\ : std_logic;
SIGNAL \inst2|Add3~15\ : std_logic;
SIGNAL \inst2|Add3~17\ : std_logic;
SIGNAL \inst2|Add3~19\ : std_logic;
SIGNAL \inst2|Add3~21\ : std_logic;
SIGNAL \inst2|Add3~23\ : std_logic;
SIGNAL \inst2|Add3~25\ : std_logic;
SIGNAL \inst2|Add3~26_combout\ : std_logic;
SIGNAL \inst2|Selector52~0_combout\ : std_logic;
SIGNAL \inst2|Add3~24_combout\ : std_logic;
SIGNAL \inst2|Selector53~0_combout\ : std_logic;
SIGNAL \inst2|Add3~22_combout\ : std_logic;
SIGNAL \inst2|Selector54~0_combout\ : std_logic;
SIGNAL \inst2|Add3~20_combout\ : std_logic;
SIGNAL \inst2|Selector55~0_combout\ : std_logic;
SIGNAL \inst2|Add3~18_combout\ : std_logic;
SIGNAL \inst2|Selector56~0_combout\ : std_logic;
SIGNAL \inst2|Add3~16_combout\ : std_logic;
SIGNAL \inst2|Selector57~0_combout\ : std_logic;
SIGNAL \inst2|Add3~14_combout\ : std_logic;
SIGNAL \inst2|Selector58~0_combout\ : std_logic;
SIGNAL \inst2|Add3~12_combout\ : std_logic;
SIGNAL \inst2|Selector59~0_combout\ : std_logic;
SIGNAL \inst2|Add3~10_combout\ : std_logic;
SIGNAL \inst2|Selector60~0_combout\ : std_logic;
SIGNAL \inst2|Add3~8_combout\ : std_logic;
SIGNAL \inst2|Selector61~0_combout\ : std_logic;
SIGNAL \inst2|Add3~6_combout\ : std_logic;
SIGNAL \inst2|Selector62~0_combout\ : std_logic;
SIGNAL \inst2|Add3~4_combout\ : std_logic;
SIGNAL \inst2|Selector63~0_combout\ : std_logic;
SIGNAL \inst2|Add3~2_combout\ : std_logic;
SIGNAL \inst2|Selector64~0_combout\ : std_logic;
SIGNAL \inst2|Add3~0_combout\ : std_logic;
SIGNAL \inst2|Selector65~0_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[2][11]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[1][12]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[0][13]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[1][11]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[0][12]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[1][10]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[0][11]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[1][9]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[0][10]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[1][8]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[0][9]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[0][8]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[1][7]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[1][6]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[0][7]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[0][6]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[1][5]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[1][4]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[0][5]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[1][3]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[0][4]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[1][2]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[0][3]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[1][1]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[0][2]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[1][0]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[0][1]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[2][10]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[2][9]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[2][8]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[2][7]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[2][6]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[2][5]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[2][4]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[2][3]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[2][2]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[2][1]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[2][0]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|decoder_node[0][0]~combout\ : std_logic;
SIGNAL \inst2|Add1~1\ : std_logic;
SIGNAL \inst2|Add1~3\ : std_logic;
SIGNAL \inst2|Add1~5\ : std_logic;
SIGNAL \inst2|Add1~7\ : std_logic;
SIGNAL \inst2|Add1~9\ : std_logic;
SIGNAL \inst2|Add1~11\ : std_logic;
SIGNAL \inst2|Add1~13\ : std_logic;
SIGNAL \inst2|Add1~15\ : std_logic;
SIGNAL \inst2|Add1~17\ : std_logic;
SIGNAL \inst2|Add1~19\ : std_logic;
SIGNAL \inst2|Add1~21\ : std_logic;
SIGNAL \inst2|Add1~23\ : std_logic;
SIGNAL \inst2|Add1~25\ : std_logic;
SIGNAL \inst2|Add1~26_combout\ : std_logic;
SIGNAL \inst2|Selector38~0_combout\ : std_logic;
SIGNAL \inst2|WideOr4~0_combout\ : std_logic;
SIGNAL \inst2|WideOr4~combout\ : std_logic;
SIGNAL \inst2|Add1~24_combout\ : std_logic;
SIGNAL \inst2|Selector39~0_combout\ : std_logic;
SIGNAL \inst2|Add1~22_combout\ : std_logic;
SIGNAL \inst2|Selector40~0_combout\ : std_logic;
SIGNAL \inst2|Add1~20_combout\ : std_logic;
SIGNAL \inst2|Selector41~0_combout\ : std_logic;
SIGNAL \inst2|Add1~18_combout\ : std_logic;
SIGNAL \inst2|Selector42~0_combout\ : std_logic;
SIGNAL \inst2|Add1~16_combout\ : std_logic;
SIGNAL \inst2|Selector43~0_combout\ : std_logic;
SIGNAL \inst2|Add1~14_combout\ : std_logic;
SIGNAL \inst2|Selector44~0_combout\ : std_logic;
SIGNAL \inst2|Add1~12_combout\ : std_logic;
SIGNAL \inst2|Selector45~0_combout\ : std_logic;
SIGNAL \inst2|Add1~10_combout\ : std_logic;
SIGNAL \inst2|Selector46~0_combout\ : std_logic;
SIGNAL \inst2|Add1~8_combout\ : std_logic;
SIGNAL \inst2|Selector47~0_combout\ : std_logic;
SIGNAL \inst2|Add1~6_combout\ : std_logic;
SIGNAL \inst2|Selector48~0_combout\ : std_logic;
SIGNAL \inst2|Add1~4_combout\ : std_logic;
SIGNAL \inst2|Selector49~0_combout\ : std_logic;
SIGNAL \inst2|Add1~2_combout\ : std_logic;
SIGNAL \inst2|Selector50~0_combout\ : std_logic;
SIGNAL \inst2|Add1~0_combout\ : std_logic;
SIGNAL \inst2|Selector51~0_combout\ : std_logic;
SIGNAL \dado[5]~input_o\ : std_logic;
SIGNAL \inst|s_dado[5]~feeder_combout\ : std_logic;
SIGNAL \centroid[5]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[5]~feeder_combout\ : std_logic;
SIGNAL \dado[4]~input_o\ : std_logic;
SIGNAL \centroid[4]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[4]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal7~2_combout\ : std_logic;
SIGNAL \centroid[2]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[2]~feeder_combout\ : std_logic;
SIGNAL \dado[3]~input_o\ : std_logic;
SIGNAL \inst|s_dado[3]~feeder_combout\ : std_logic;
SIGNAL \dado[2]~input_o\ : std_logic;
SIGNAL \centroid[3]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[3]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal7~1_combout\ : std_logic;
SIGNAL \centroid[7]~input_o\ : std_logic;
SIGNAL \dado[7]~input_o\ : std_logic;
SIGNAL \dado[6]~input_o\ : std_logic;
SIGNAL \centroid[6]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[6]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal7~3_combout\ : std_logic;
SIGNAL \dado[1]~input_o\ : std_logic;
SIGNAL \centroid[0]~input_o\ : std_logic;
SIGNAL \dado[0]~input_o\ : std_logic;
SIGNAL \centroid[1]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[1]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal7~0_combout\ : std_logic;
SIGNAL \inst|Equal7~4_combout\ : std_logic;
SIGNAL \inst|s_dist0~q\ : std_logic;
SIGNAL \dado[43]~input_o\ : std_logic;
SIGNAL \inst|s_dado[43]~feeder_combout\ : std_logic;
SIGNAL \centroid[43]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[43]~feeder_combout\ : std_logic;
SIGNAL \dado[42]~input_o\ : std_logic;
SIGNAL \centroid[42]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[42]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal2~1_combout\ : std_logic;
SIGNAL \centroid[47]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[47]~feeder_combout\ : std_logic;
SIGNAL \centroid[46]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[46]~feeder_combout\ : std_logic;
SIGNAL \dado[46]~input_o\ : std_logic;
SIGNAL \dado[47]~input_o\ : std_logic;
SIGNAL \inst|s_dado[47]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal2~3_combout\ : std_logic;
SIGNAL \centroid[41]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[41]~feeder_combout\ : std_logic;
SIGNAL \dado[41]~input_o\ : std_logic;
SIGNAL \dado[40]~input_o\ : std_logic;
SIGNAL \centroid[40]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[40]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \centroid[45]~input_o\ : std_logic;
SIGNAL \centroid[44]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[44]~feeder_combout\ : std_logic;
SIGNAL \dado[44]~input_o\ : std_logic;
SIGNAL \dado[45]~input_o\ : std_logic;
SIGNAL \inst|s_dado[45]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal2~2_combout\ : std_logic;
SIGNAL \inst|Equal2~4_combout\ : std_logic;
SIGNAL \inst|s_dist5~q\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|op_2~1_combout\ : std_logic;
SIGNAL \centroid[27]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[27]~feeder_combout\ : std_logic;
SIGNAL \centroid[26]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[26]~feeder_combout\ : std_logic;
SIGNAL \dado[26]~input_o\ : std_logic;
SIGNAL \dado[27]~input_o\ : std_logic;
SIGNAL \inst|Equal4~1_combout\ : std_logic;
SIGNAL \centroid[31]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[31]~feeder_combout\ : std_logic;
SIGNAL \dado[31]~input_o\ : std_logic;
SIGNAL \inst|s_dado[31]~feeder_combout\ : std_logic;
SIGNAL \dado[30]~input_o\ : std_logic;
SIGNAL \centroid[30]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[30]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal4~3_combout\ : std_logic;
SIGNAL \centroid[29]~input_o\ : std_logic;
SIGNAL \dado[29]~input_o\ : std_logic;
SIGNAL \inst|s_dado[29]~feeder_combout\ : std_logic;
SIGNAL \dado[28]~input_o\ : std_logic;
SIGNAL \centroid[28]~input_o\ : std_logic;
SIGNAL \inst|Equal4~2_combout\ : std_logic;
SIGNAL \dado[24]~input_o\ : std_logic;
SIGNAL \inst|s_dado[24]~feeder_combout\ : std_logic;
SIGNAL \centroid[25]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[25]~feeder_combout\ : std_logic;
SIGNAL \dado[25]~input_o\ : std_logic;
SIGNAL \centroid[24]~input_o\ : std_logic;
SIGNAL \inst|Equal4~0_combout\ : std_logic;
SIGNAL \inst|Equal4~4_combout\ : std_logic;
SIGNAL \inst|s_dist3~q\ : std_logic;
SIGNAL \centroid[57]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[57]~feeder_combout\ : std_logic;
SIGNAL \dado[57]~input_o\ : std_logic;
SIGNAL \inst|s_dado[57]~feeder_combout\ : std_logic;
SIGNAL \dado[56]~input_o\ : std_logic;
SIGNAL \centroid[56]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[56]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \dado[61]~input_o\ : std_logic;
SIGNAL \inst|s_dado[61]~feeder_combout\ : std_logic;
SIGNAL \centroid[61]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[61]~feeder_combout\ : std_logic;
SIGNAL \dado[60]~input_o\ : std_logic;
SIGNAL \centroid[60]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[60]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \centroid[59]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[59]~feeder_combout\ : std_logic;
SIGNAL \centroid[58]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[58]~feeder_combout\ : std_logic;
SIGNAL \dado[58]~input_o\ : std_logic;
SIGNAL \dado[59]~input_o\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \centroid[63]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[63]~feeder_combout\ : std_logic;
SIGNAL \dado[63]~input_o\ : std_logic;
SIGNAL \inst|s_dado[63]~feeder_combout\ : std_logic;
SIGNAL \dado[62]~input_o\ : std_logic;
SIGNAL \centroid[62]~input_o\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|s_dist7~q\ : std_logic;
SIGNAL \centroid[52]~input_o\ : std_logic;
SIGNAL \centroid[53]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[53]~feeder_combout\ : std_logic;
SIGNAL \dado[52]~input_o\ : std_logic;
SIGNAL \dado[53]~input_o\ : std_logic;
SIGNAL \inst|Equal1~2_combout\ : std_logic;
SIGNAL \dado[51]~input_o\ : std_logic;
SIGNAL \inst|s_dado[51]~feeder_combout\ : std_logic;
SIGNAL \centroid[50]~input_o\ : std_logic;
SIGNAL \dado[50]~input_o\ : std_logic;
SIGNAL \centroid[51]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[51]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \centroid[55]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[55]~feeder_combout\ : std_logic;
SIGNAL \centroid[54]~input_o\ : std_logic;
SIGNAL \dado[54]~input_o\ : std_logic;
SIGNAL \dado[55]~input_o\ : std_logic;
SIGNAL \inst|s_dado[55]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal1~3_combout\ : std_logic;
SIGNAL \dado[49]~input_o\ : std_logic;
SIGNAL \centroid[48]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[48]~feeder_combout\ : std_logic;
SIGNAL \dado[48]~input_o\ : std_logic;
SIGNAL \centroid[49]~input_o\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Equal1~4_combout\ : std_logic;
SIGNAL \inst|s_dist6~q\ : std_logic;
SIGNAL \dado[21]~input_o\ : std_logic;
SIGNAL \centroid[20]~input_o\ : std_logic;
SIGNAL \dado[20]~input_o\ : std_logic;
SIGNAL \centroid[21]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[21]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal5~2_combout\ : std_logic;
SIGNAL \centroid[19]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[19]~feeder_combout\ : std_logic;
SIGNAL \centroid[18]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[18]~feeder_combout\ : std_logic;
SIGNAL \dado[18]~input_o\ : std_logic;
SIGNAL \dado[19]~input_o\ : std_logic;
SIGNAL \inst|s_dado[19]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal5~1_combout\ : std_logic;
SIGNAL \centroid[17]~input_o\ : std_logic;
SIGNAL \dado[17]~input_o\ : std_logic;
SIGNAL \dado[16]~input_o\ : std_logic;
SIGNAL \centroid[16]~input_o\ : std_logic;
SIGNAL \inst|Equal5~0_combout\ : std_logic;
SIGNAL \centroid[23]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[23]~feeder_combout\ : std_logic;
SIGNAL \dado[23]~input_o\ : std_logic;
SIGNAL \dado[22]~input_o\ : std_logic;
SIGNAL \centroid[22]~input_o\ : std_logic;
SIGNAL \inst|Equal5~3_combout\ : std_logic;
SIGNAL \inst|Equal5~4_combout\ : std_logic;
SIGNAL \inst|s_dist2~q\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|op_6~1_combout\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|op_4~0_combout\ : std_logic;
SIGNAL \dado[11]~input_o\ : std_logic;
SIGNAL \inst|s_dado[11]~feeder_combout\ : std_logic;
SIGNAL \centroid[11]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[11]~feeder_combout\ : std_logic;
SIGNAL \dado[10]~input_o\ : std_logic;
SIGNAL \centroid[10]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[10]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal6~1_combout\ : std_logic;
SIGNAL \centroid[15]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[15]~feeder_combout\ : std_logic;
SIGNAL \dado[15]~input_o\ : std_logic;
SIGNAL \inst|s_dado[15]~feeder_combout\ : std_logic;
SIGNAL \dado[14]~input_o\ : std_logic;
SIGNAL \centroid[14]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[14]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal6~3_combout\ : std_logic;
SIGNAL \centroid[13]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[13]~feeder_combout\ : std_logic;
SIGNAL \centroid[12]~input_o\ : std_logic;
SIGNAL \dado[12]~input_o\ : std_logic;
SIGNAL \dado[13]~input_o\ : std_logic;
SIGNAL \inst|s_dado[13]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal6~2_combout\ : std_logic;
SIGNAL \dado[9]~input_o\ : std_logic;
SIGNAL \inst|s_dado[9]~feeder_combout\ : std_logic;
SIGNAL \centroid[8]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[8]~feeder_combout\ : std_logic;
SIGNAL \dado[8]~input_o\ : std_logic;
SIGNAL \centroid[9]~input_o\ : std_logic;
SIGNAL \inst|Equal6~0_combout\ : std_logic;
SIGNAL \inst|Equal6~4_combout\ : std_logic;
SIGNAL \inst|s_dist1~q\ : std_logic;
SIGNAL \centroid[35]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[35]~feeder_combout\ : std_logic;
SIGNAL \centroid[34]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[34]~feeder_combout\ : std_logic;
SIGNAL \dado[34]~input_o\ : std_logic;
SIGNAL \dado[35]~input_o\ : std_logic;
SIGNAL \inst|Equal3~1_combout\ : std_logic;
SIGNAL \centroid[39]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[39]~feeder_combout\ : std_logic;
SIGNAL \dado[39]~input_o\ : std_logic;
SIGNAL \dado[38]~input_o\ : std_logic;
SIGNAL \centroid[38]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[38]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal3~3_combout\ : std_logic;
SIGNAL \centroid[33]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[33]~feeder_combout\ : std_logic;
SIGNAL \centroid[32]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[32]~feeder_combout\ : std_logic;
SIGNAL \dado[32]~input_o\ : std_logic;
SIGNAL \dado[33]~input_o\ : std_logic;
SIGNAL \inst|s_dado[33]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal3~0_combout\ : std_logic;
SIGNAL \dado[37]~input_o\ : std_logic;
SIGNAL \centroid[37]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[37]~feeder_combout\ : std_logic;
SIGNAL \dado[36]~input_o\ : std_logic;
SIGNAL \centroid[36]~input_o\ : std_logic;
SIGNAL \inst|Equal3~2_combout\ : std_logic;
SIGNAL \inst|Equal3~4_combout\ : std_logic;
SIGNAL \inst|s_dist4~q\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|op_6~0_combout\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|op_7~0_combout\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|op_7~2_combout\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|op_7~1_combout\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|op_5~0_combout\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|op_4~1_combout\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|op_5~1_combout\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|op_5~2_combout\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|op_5~3_combout\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|op_5~4_combout\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|op_5~5_combout\ : std_logic;
SIGNAL \inst2|WideOr14~combout\ : std_logic;
SIGNAL \inst2|WideOr15~combout\ : std_logic;
SIGNAL \inst2|s_distanceMatch[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|Add4~0_combout\ : std_logic;
SIGNAL \inst2|WideOr7~combout\ : std_logic;
SIGNAL \inst2|Selector72~0_combout\ : std_logic;
SIGNAL \inst2|Add4~1\ : std_logic;
SIGNAL \inst2|Add4~2_combout\ : std_logic;
SIGNAL \inst2|Selector71~0_combout\ : std_logic;
SIGNAL \inst2|Add4~3\ : std_logic;
SIGNAL \inst2|Add4~4_combout\ : std_logic;
SIGNAL \inst2|Selector70~0_combout\ : std_logic;
SIGNAL \inst2|Add4~5\ : std_logic;
SIGNAL \inst2|Add4~6_combout\ : std_logic;
SIGNAL \inst2|Selector69~0_combout\ : std_logic;
SIGNAL \inst2|Add4~7\ : std_logic;
SIGNAL \inst2|Add4~8_combout\ : std_logic;
SIGNAL \inst2|Selector68~0_combout\ : std_logic;
SIGNAL \inst2|Add4~9\ : std_logic;
SIGNAL \inst2|Add4~10_combout\ : std_logic;
SIGNAL \inst2|Selector67~0_combout\ : std_logic;
SIGNAL \inst2|Add4~11\ : std_logic;
SIGNAL \inst2|Add4~12_combout\ : std_logic;
SIGNAL \inst2|Selector66~0_combout\ : std_logic;
SIGNAL \inst2|s_blockState[3]~0_combout\ : std_logic;
SIGNAL \inst2|s_blockState[2]~1_combout\ : std_logic;
SIGNAL \inst2|s_blockState[1]~2_combout\ : std_logic;
SIGNAL \inst1|s_countCentroid[9]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_countCentroid[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_countCentroid[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_countCentroid[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_reg7[9]~0_combout\ : std_logic;
SIGNAL \inst1|s_countCentroid[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_countCentroid[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_countCentroid[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_reg7[9]~1_combout\ : std_logic;
SIGNAL \inst1|s_reg7[9]~2_combout\ : std_logic;
SIGNAL \inst1|s_distanceMatch[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_distanceMatch[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_reg6[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_distanceMatch[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_distanceMatch[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_distanceMatch[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_distanceMatch[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_cout\ : std_logic;
SIGNAL \inst1|LessThan0~3_cout\ : std_logic;
SIGNAL \inst1|LessThan0~5_cout\ : std_logic;
SIGNAL \inst1|LessThan0~7_cout\ : std_logic;
SIGNAL \inst1|LessThan0~9_cout\ : std_logic;
SIGNAL \inst1|LessThan0~11_cout\ : std_logic;
SIGNAL \inst1|LessThan0~12_combout\ : std_logic;
SIGNAL \inst1|s_reg7[9]~3_combout\ : std_logic;
SIGNAL \inst2|s_oDado[9]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_reg7[8]~feeder_combout\ : std_logic;
SIGNAL \inst2|s_oDado[8]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_reg7[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|s_oDado[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_reg7[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|s_oDado[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_reg7[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|s_oDado[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_reg7[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|s_oDado[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_reg7[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|s_oDado[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_reg7[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|s_oDado[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_reg7[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|s_oDado[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_reg7[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|s_oDado[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_reg6\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst1|s_distanceMatch\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst1|s_countCentroid\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|s_distanceMatch\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|s_dado\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst|s_centroid\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst2|s_countDimensions\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst2|s_countCentroid\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|s_addrRamCentroid\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst2|s_addrRamDado\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst2|estado\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|s_sumDistance\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst2|s_blockState\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|s_oDado\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|s_reg7\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|s_countDado\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|ALT_INV_state.RESET~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_state.WAITCALCDISTANCE~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_state.IDLE~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_state.ENDCENTROIDS~q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_blockState\ : std_logic_vector(2 DOWNTO 2);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

wr_Ram <= ww_wr_Ram;
ww_clk <= clk;
ww_nrst <= nrst;
ww_en_KmodesControlCalcMap <= en_KmodesControlCalcMap;
ww_centroid <= centroid;
ww_dado <= dado;
ww_reg1 <= reg1;
ww_reg3 <= reg3;
ww_reg5 <= reg5;
ww_reg8 <= reg8;
enMinDistMatch <= ww_enMinDistMatch;
enSimpleMatch <= ww_enSimpleMatch;
EndDistanceMatch <= ww_EndDistanceMatch;
addr_Ram_Centroid <= ww_addr_Ram_Centroid;
addr_Ram_Dado <= ww_addr_Ram_Dado;
DistanceMatch <= ww_DistanceMatch;
KmodesEstatoMap <= ww_KmodesEstatoMap;
KmodesSumDist <= ww_KmodesSumDist;
next_State <= ww_next_State;
o_dado <= ww_o_dado;
oReg7 <= ww_oReg7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\inst2|ALT_INV_state.RESET~0_combout\ <= NOT \inst2|state.RESET~0_combout\;
\inst2|ALT_INV_state.WAITCALCDISTANCE~0_combout\ <= NOT \inst2|state.WAITCALCDISTANCE~0_combout\;
\inst2|ALT_INV_state.IDLE~0_combout\ <= NOT \inst2|state.IDLE~0_combout\;
\inst2|ALT_INV_state.ENDCENTROIDS~q\ <= NOT \inst2|state.ENDCENTROIDS~q\;
\inst2|ALT_INV_s_blockState\(2) <= NOT \inst2|s_blockState\(2);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y0_N16
\wr_Ram~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_wrRam~q\,
	devoe => ww_devoe,
	o => \wr_Ram~output_o\);

-- Location: IOOBUF_X66_Y0_N16
\enMinDistMatch~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_enMinDistanceMatch~q\,
	devoe => ww_devoe,
	o => \enMinDistMatch~output_o\);

-- Location: IOOBUF_X117_Y27_N2
\enSimpleMatch~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_en_SimpleMatch~q\,
	devoe => ww_devoe,
	o => \enSimpleMatch~output_o\);

-- Location: IOOBUF_X117_Y72_N9
\EndDistanceMatch~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_endDistanceMatch~q\,
	devoe => ww_devoe,
	o => \EndDistanceMatch~output_o\);

-- Location: IOOBUF_X48_Y0_N9
\addr_Ram_Centroid[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(13),
	devoe => ww_devoe,
	o => \addr_Ram_Centroid[13]~output_o\);

-- Location: IOOBUF_X75_Y0_N2
\addr_Ram_Centroid[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(12),
	devoe => ww_devoe,
	o => \addr_Ram_Centroid[12]~output_o\);

-- Location: IOOBUF_X84_Y91_N2
\addr_Ram_Centroid[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(11),
	devoe => ww_devoe,
	o => \addr_Ram_Centroid[11]~output_o\);

-- Location: IOOBUF_X48_Y0_N2
\addr_Ram_Centroid[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(10),
	devoe => ww_devoe,
	o => \addr_Ram_Centroid[10]~output_o\);

-- Location: IOOBUF_X48_Y0_N23
\addr_Ram_Centroid[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(9),
	devoe => ww_devoe,
	o => \addr_Ram_Centroid[9]~output_o\);

-- Location: IOOBUF_X84_Y91_N9
\addr_Ram_Centroid[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(8),
	devoe => ww_devoe,
	o => \addr_Ram_Centroid[8]~output_o\);

-- Location: IOOBUF_X39_Y0_N9
\addr_Ram_Centroid[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(7),
	devoe => ww_devoe,
	o => \addr_Ram_Centroid[7]~output_o\);

-- Location: IOOBUF_X39_Y0_N2
\addr_Ram_Centroid[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(6),
	devoe => ww_devoe,
	o => \addr_Ram_Centroid[6]~output_o\);

-- Location: IOOBUF_X66_Y0_N2
\addr_Ram_Centroid[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(5),
	devoe => ww_devoe,
	o => \addr_Ram_Centroid[5]~output_o\);

-- Location: IOOBUF_X82_Y91_N9
\addr_Ram_Centroid[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(4),
	devoe => ww_devoe,
	o => \addr_Ram_Centroid[4]~output_o\);

-- Location: IOOBUF_X117_Y65_N2
\addr_Ram_Centroid[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(3),
	devoe => ww_devoe,
	o => \addr_Ram_Centroid[3]~output_o\);

-- Location: IOOBUF_X53_Y0_N2
\addr_Ram_Centroid[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(2),
	devoe => ww_devoe,
	o => \addr_Ram_Centroid[2]~output_o\);

-- Location: IOOBUF_X77_Y0_N2
\addr_Ram_Centroid[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(1),
	devoe => ww_devoe,
	o => \addr_Ram_Centroid[1]~output_o\);

-- Location: IOOBUF_X117_Y73_N2
\addr_Ram_Centroid[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(0),
	devoe => ww_devoe,
	o => \addr_Ram_Centroid[0]~output_o\);

-- Location: IOOBUF_X88_Y0_N16
\addr_Ram_Dado[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(13),
	devoe => ww_devoe,
	o => \addr_Ram_Dado[13]~output_o\);

-- Location: IOOBUF_X117_Y76_N9
\addr_Ram_Dado[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(12),
	devoe => ww_devoe,
	o => \addr_Ram_Dado[12]~output_o\);

-- Location: IOOBUF_X117_Y70_N2
\addr_Ram_Dado[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(11),
	devoe => ww_devoe,
	o => \addr_Ram_Dado[11]~output_o\);

-- Location: IOOBUF_X117_Y77_N9
\addr_Ram_Dado[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(10),
	devoe => ww_devoe,
	o => \addr_Ram_Dado[10]~output_o\);

-- Location: IOOBUF_X86_Y0_N16
\addr_Ram_Dado[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(9),
	devoe => ww_devoe,
	o => \addr_Ram_Dado[9]~output_o\);

-- Location: IOOBUF_X66_Y0_N9
\addr_Ram_Dado[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(8),
	devoe => ww_devoe,
	o => \addr_Ram_Dado[8]~output_o\);

-- Location: IOOBUF_X82_Y0_N2
\addr_Ram_Dado[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(7),
	devoe => ww_devoe,
	o => \addr_Ram_Dado[7]~output_o\);

-- Location: IOOBUF_X86_Y0_N9
\addr_Ram_Dado[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(6),
	devoe => ww_devoe,
	o => \addr_Ram_Dado[6]~output_o\);

-- Location: IOOBUF_X86_Y91_N9
\addr_Ram_Dado[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(5),
	devoe => ww_devoe,
	o => \addr_Ram_Dado[5]~output_o\);

-- Location: IOOBUF_X82_Y0_N9
\addr_Ram_Dado[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(4),
	devoe => ww_devoe,
	o => \addr_Ram_Dado[4]~output_o\);

-- Location: IOOBUF_X117_Y74_N9
\addr_Ram_Dado[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(3),
	devoe => ww_devoe,
	o => \addr_Ram_Dado[3]~output_o\);

-- Location: IOOBUF_X92_Y0_N16
\addr_Ram_Dado[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(2),
	devoe => ww_devoe,
	o => \addr_Ram_Dado[2]~output_o\);

-- Location: IOOBUF_X117_Y64_N9
\addr_Ram_Dado[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(1),
	devoe => ww_devoe,
	o => \addr_Ram_Dado[1]~output_o\);

-- Location: IOOBUF_X95_Y0_N16
\addr_Ram_Dado[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(0),
	devoe => ww_devoe,
	o => \addr_Ram_Dado[0]~output_o\);

-- Location: IOOBUF_X117_Y64_N2
\DistanceMatch[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|parallel_add_component|auto_generated|op_5~2_combout\,
	devoe => ww_devoe,
	o => \DistanceMatch[3]~output_o\);

-- Location: IOOBUF_X117_Y61_N9
\DistanceMatch[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|parallel_add_component|auto_generated|op_5~3_combout\,
	devoe => ww_devoe,
	o => \DistanceMatch[2]~output_o\);

-- Location: IOOBUF_X117_Y67_N2
\DistanceMatch[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|parallel_add_component|auto_generated|op_5~4_combout\,
	devoe => ww_devoe,
	o => \DistanceMatch[1]~output_o\);

-- Location: IOOBUF_X117_Y61_N2
\DistanceMatch[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|parallel_add_component|auto_generated|op_5~5_combout\,
	devoe => ww_devoe,
	o => \DistanceMatch[0]~output_o\);

-- Location: IOOBUF_X84_Y0_N16
\KmodesEstatoMap[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|estado\(3),
	devoe => ww_devoe,
	o => \KmodesEstatoMap[3]~output_o\);

-- Location: IOOBUF_X86_Y0_N23
\KmodesEstatoMap[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|estado\(2),
	devoe => ww_devoe,
	o => \KmodesEstatoMap[2]~output_o\);

-- Location: IOOBUF_X61_Y0_N16
\KmodesEstatoMap[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|estado\(1),
	devoe => ww_devoe,
	o => \KmodesEstatoMap[1]~output_o\);

-- Location: IOOBUF_X86_Y91_N16
\KmodesEstatoMap[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|estado\(0),
	devoe => ww_devoe,
	o => \KmodesEstatoMap[0]~output_o\);

-- Location: IOOBUF_X68_Y0_N2
\KmodesSumDist[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_sumDistance\(6),
	devoe => ww_devoe,
	o => \KmodesSumDist[6]~output_o\);

-- Location: IOOBUF_X68_Y0_N16
\KmodesSumDist[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_sumDistance\(5),
	devoe => ww_devoe,
	o => \KmodesSumDist[5]~output_o\);

-- Location: IOOBUF_X66_Y0_N23
\KmodesSumDist[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_sumDistance\(4),
	devoe => ww_devoe,
	o => \KmodesSumDist[4]~output_o\);

-- Location: IOOBUF_X70_Y0_N2
\KmodesSumDist[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_sumDistance\(3),
	devoe => ww_devoe,
	o => \KmodesSumDist[3]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\KmodesSumDist[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_sumDistance\(2),
	devoe => ww_devoe,
	o => \KmodesSumDist[2]~output_o\);

-- Location: IOOBUF_X70_Y0_N9
\KmodesSumDist[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_sumDistance\(1),
	devoe => ww_devoe,
	o => \KmodesSumDist[1]~output_o\);

-- Location: IOOBUF_X68_Y0_N9
\KmodesSumDist[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_sumDistance\(0),
	devoe => ww_devoe,
	o => \KmodesSumDist[0]~output_o\);

-- Location: IOOBUF_X53_Y0_N9
\next_State[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_blockState\(3),
	devoe => ww_devoe,
	o => \next_State[3]~output_o\);

-- Location: IOOBUF_X77_Y0_N9
\next_State[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_s_blockState\(2),
	devoe => ww_devoe,
	o => \next_State[2]~output_o\);

-- Location: IOOBUF_X46_Y0_N16
\next_State[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_blockState\(1),
	devoe => ww_devoe,
	o => \next_State[1]~output_o\);

-- Location: IOOBUF_X104_Y0_N9
\next_State[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_blockState\(0),
	devoe => ww_devoe,
	o => \next_State[0]~output_o\);

-- Location: IOOBUF_X39_Y0_N16
\o_dado[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_oDado\(9),
	devoe => ww_devoe,
	o => \o_dado[9]~output_o\);

-- Location: IOOBUF_X63_Y0_N23
\o_dado[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_oDado\(8),
	devoe => ww_devoe,
	o => \o_dado[8]~output_o\);

-- Location: IOOBUF_X37_Y0_N9
\o_dado[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_oDado\(7),
	devoe => ww_devoe,
	o => \o_dado[7]~output_o\);

-- Location: IOOBUF_X61_Y0_N9
\o_dado[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_oDado\(6),
	devoe => ww_devoe,
	o => \o_dado[6]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\o_dado[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_oDado\(5),
	devoe => ww_devoe,
	o => \o_dado[5]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\o_dado[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_oDado\(4),
	devoe => ww_devoe,
	o => \o_dado[4]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\o_dado[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_oDado\(3),
	devoe => ww_devoe,
	o => \o_dado[3]~output_o\);

-- Location: IOOBUF_X61_Y0_N2
\o_dado[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_oDado\(2),
	devoe => ww_devoe,
	o => \o_dado[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\o_dado[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_oDado\(1),
	devoe => ww_devoe,
	o => \o_dado[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\o_dado[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_oDado\(0),
	devoe => ww_devoe,
	o => \o_dado[0]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\oReg7[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_reg7\(9),
	devoe => ww_devoe,
	o => \oReg7[9]~output_o\);

-- Location: IOOBUF_X41_Y0_N2
\oReg7[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_reg7\(8),
	devoe => ww_devoe,
	o => \oReg7[8]~output_o\);

-- Location: IOOBUF_X63_Y0_N2
\oReg7[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_reg7\(7),
	devoe => ww_devoe,
	o => \oReg7[7]~output_o\);

-- Location: IOOBUF_X63_Y0_N16
\oReg7[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_reg7\(6),
	devoe => ww_devoe,
	o => \oReg7[6]~output_o\);

-- Location: IOOBUF_X63_Y0_N9
\oReg7[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_reg7\(5),
	devoe => ww_devoe,
	o => \oReg7[5]~output_o\);

-- Location: IOOBUF_X46_Y0_N23
\oReg7[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_reg7\(4),
	devoe => ww_devoe,
	o => \oReg7[4]~output_o\);

-- Location: IOOBUF_X44_Y0_N23
\oReg7[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_reg7\(3),
	devoe => ww_devoe,
	o => \oReg7[3]~output_o\);

-- Location: IOOBUF_X44_Y0_N2
\oReg7[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_reg7\(2),
	devoe => ww_devoe,
	o => \oReg7[2]~output_o\);

-- Location: IOOBUF_X41_Y0_N9
\oReg7[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_reg7\(1),
	devoe => ww_devoe,
	o => \oReg7[1]~output_o\);

-- Location: IOOBUF_X44_Y0_N9
\oReg7[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_reg7\(0),
	devoe => ww_devoe,
	o => \oReg7[0]~output_o\);

-- Location: IOIBUF_X57_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G29
\clk~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X86_Y0_N1
\nrst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nrst,
	o => \nrst~input_o\);

-- Location: LCCOMB_X83_Y6_N6
\inst2|s_countCentroid[0]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[0]~11_combout\ = \inst2|s_countCentroid\(0) $ (VCC)
-- \inst2|s_countCentroid[0]~12\ = CARRY(\inst2|s_countCentroid\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countCentroid\(0),
	datad => VCC,
	combout => \inst2|s_countCentroid[0]~11_combout\,
	cout => \inst2|s_countCentroid[0]~12\);

-- Location: IOIBUF_X75_Y0_N8
\reg1[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg1(9),
	o => \reg1[9]~input_o\);

-- Location: IOIBUF_X68_Y0_N22
\reg1[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg1(8),
	o => \reg1[8]~input_o\);

-- Location: IOIBUF_X75_Y0_N15
\reg1[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg1(7),
	o => \reg1[7]~input_o\);

-- Location: IOIBUF_X70_Y0_N22
\reg1[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg1(6),
	o => \reg1[6]~input_o\);

-- Location: IOIBUF_X75_Y0_N22
\reg1[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg1(5),
	o => \reg1[5]~input_o\);

-- Location: IOIBUF_X50_Y0_N8
\reg1[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg1(4),
	o => \reg1[4]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\reg1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg1(3),
	o => \reg1[3]~input_o\);

-- Location: IOIBUF_X70_Y0_N15
\reg1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg1(2),
	o => \reg1[2]~input_o\);

-- Location: IOIBUF_X50_Y0_N15
\reg1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg1(1),
	o => \reg1[1]~input_o\);

-- Location: IOIBUF_X44_Y0_N15
\reg1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg1(0),
	o => \reg1[0]~input_o\);

-- Location: LCCOMB_X78_Y4_N10
\inst2|Add6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add6~0_combout\ = \reg1[0]~input_o\ $ (VCC)
-- \inst2|Add6~1\ = CARRY(\reg1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg1[0]~input_o\,
	datad => VCC,
	combout => \inst2|Add6~0_combout\,
	cout => \inst2|Add6~1\);

-- Location: LCCOMB_X78_Y4_N12
\inst2|Add6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add6~2_combout\ = (\reg1[1]~input_o\ & (\inst2|Add6~1\ & VCC)) # (!\reg1[1]~input_o\ & (!\inst2|Add6~1\))
-- \inst2|Add6~3\ = CARRY((!\reg1[1]~input_o\ & !\inst2|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg1[1]~input_o\,
	datad => VCC,
	cin => \inst2|Add6~1\,
	combout => \inst2|Add6~2_combout\,
	cout => \inst2|Add6~3\);

-- Location: LCCOMB_X78_Y4_N14
\inst2|Add6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add6~4_combout\ = (\reg1[2]~input_o\ & ((GND) # (!\inst2|Add6~3\))) # (!\reg1[2]~input_o\ & (\inst2|Add6~3\ $ (GND)))
-- \inst2|Add6~5\ = CARRY((\reg1[2]~input_o\) # (!\inst2|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg1[2]~input_o\,
	datad => VCC,
	cin => \inst2|Add6~3\,
	combout => \inst2|Add6~4_combout\,
	cout => \inst2|Add6~5\);

-- Location: LCCOMB_X78_Y4_N16
\inst2|Add6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add6~6_combout\ = (\reg1[3]~input_o\ & (\inst2|Add6~5\ & VCC)) # (!\reg1[3]~input_o\ & (!\inst2|Add6~5\))
-- \inst2|Add6~7\ = CARRY((!\reg1[3]~input_o\ & !\inst2|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg1[3]~input_o\,
	datad => VCC,
	cin => \inst2|Add6~5\,
	combout => \inst2|Add6~6_combout\,
	cout => \inst2|Add6~7\);

-- Location: LCCOMB_X78_Y4_N18
\inst2|Add6~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add6~8_combout\ = (\reg1[4]~input_o\ & ((GND) # (!\inst2|Add6~7\))) # (!\reg1[4]~input_o\ & (\inst2|Add6~7\ $ (GND)))
-- \inst2|Add6~9\ = CARRY((\reg1[4]~input_o\) # (!\inst2|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg1[4]~input_o\,
	datad => VCC,
	cin => \inst2|Add6~7\,
	combout => \inst2|Add6~8_combout\,
	cout => \inst2|Add6~9\);

-- Location: LCCOMB_X78_Y4_N20
\inst2|Add6~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add6~10_combout\ = (\reg1[5]~input_o\ & (\inst2|Add6~9\ & VCC)) # (!\reg1[5]~input_o\ & (!\inst2|Add6~9\))
-- \inst2|Add6~11\ = CARRY((!\reg1[5]~input_o\ & !\inst2|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg1[5]~input_o\,
	datad => VCC,
	cin => \inst2|Add6~9\,
	combout => \inst2|Add6~10_combout\,
	cout => \inst2|Add6~11\);

-- Location: LCCOMB_X78_Y4_N22
\inst2|Add6~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add6~12_combout\ = (\reg1[6]~input_o\ & ((GND) # (!\inst2|Add6~11\))) # (!\reg1[6]~input_o\ & (\inst2|Add6~11\ $ (GND)))
-- \inst2|Add6~13\ = CARRY((\reg1[6]~input_o\) # (!\inst2|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg1[6]~input_o\,
	datad => VCC,
	cin => \inst2|Add6~11\,
	combout => \inst2|Add6~12_combout\,
	cout => \inst2|Add6~13\);

-- Location: LCCOMB_X78_Y4_N24
\inst2|Add6~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add6~14_combout\ = (\reg1[7]~input_o\ & (\inst2|Add6~13\ & VCC)) # (!\reg1[7]~input_o\ & (!\inst2|Add6~13\))
-- \inst2|Add6~15\ = CARRY((!\reg1[7]~input_o\ & !\inst2|Add6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg1[7]~input_o\,
	datad => VCC,
	cin => \inst2|Add6~13\,
	combout => \inst2|Add6~14_combout\,
	cout => \inst2|Add6~15\);

-- Location: LCCOMB_X78_Y4_N26
\inst2|Add6~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add6~16_combout\ = (\reg1[8]~input_o\ & ((GND) # (!\inst2|Add6~15\))) # (!\reg1[8]~input_o\ & (\inst2|Add6~15\ $ (GND)))
-- \inst2|Add6~17\ = CARRY((\reg1[8]~input_o\) # (!\inst2|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg1[8]~input_o\,
	datad => VCC,
	cin => \inst2|Add6~15\,
	combout => \inst2|Add6~16_combout\,
	cout => \inst2|Add6~17\);

-- Location: LCCOMB_X78_Y4_N28
\inst2|Add6~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add6~18_combout\ = \inst2|Add6~17\ $ (!\reg1[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \reg1[9]~input_o\,
	cin => \inst2|Add6~17\,
	combout => \inst2|Add6~18_combout\);

-- Location: LCCOMB_X79_Y6_N6
\inst2|LessThan3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~1_cout\ = CARRY((\inst2|Add6~0_combout\ & !\inst2|s_countCentroid\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add6~0_combout\,
	datab => \inst2|s_countCentroid\(0),
	datad => VCC,
	cout => \inst2|LessThan3~1_cout\);

-- Location: LCCOMB_X79_Y6_N8
\inst2|LessThan3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~3_cout\ = CARRY((\inst2|Add6~2_combout\ & (\inst2|s_countCentroid\(1) & !\inst2|LessThan3~1_cout\)) # (!\inst2|Add6~2_combout\ & ((\inst2|s_countCentroid\(1)) # (!\inst2|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add6~2_combout\,
	datab => \inst2|s_countCentroid\(1),
	datad => VCC,
	cin => \inst2|LessThan3~1_cout\,
	cout => \inst2|LessThan3~3_cout\);

-- Location: LCCOMB_X79_Y6_N10
\inst2|LessThan3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~5_cout\ = CARRY((\inst2|Add6~4_combout\ & ((!\inst2|LessThan3~3_cout\) # (!\inst2|s_countCentroid\(2)))) # (!\inst2|Add6~4_combout\ & (!\inst2|s_countCentroid\(2) & !\inst2|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add6~4_combout\,
	datab => \inst2|s_countCentroid\(2),
	datad => VCC,
	cin => \inst2|LessThan3~3_cout\,
	cout => \inst2|LessThan3~5_cout\);

-- Location: LCCOMB_X79_Y6_N12
\inst2|LessThan3~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~7_cout\ = CARRY((\inst2|s_countCentroid\(3) & ((!\inst2|LessThan3~5_cout\) # (!\inst2|Add6~6_combout\))) # (!\inst2|s_countCentroid\(3) & (!\inst2|Add6~6_combout\ & !\inst2|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countCentroid\(3),
	datab => \inst2|Add6~6_combout\,
	datad => VCC,
	cin => \inst2|LessThan3~5_cout\,
	cout => \inst2|LessThan3~7_cout\);

-- Location: LCCOMB_X79_Y6_N14
\inst2|LessThan3~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~9_cout\ = CARRY((\inst2|s_countCentroid\(4) & (\inst2|Add6~8_combout\ & !\inst2|LessThan3~7_cout\)) # (!\inst2|s_countCentroid\(4) & ((\inst2|Add6~8_combout\) # (!\inst2|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countCentroid\(4),
	datab => \inst2|Add6~8_combout\,
	datad => VCC,
	cin => \inst2|LessThan3~7_cout\,
	cout => \inst2|LessThan3~9_cout\);

-- Location: LCCOMB_X79_Y6_N16
\inst2|LessThan3~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~11_cout\ = CARRY((\inst2|s_countCentroid\(5) & ((!\inst2|LessThan3~9_cout\) # (!\inst2|Add6~10_combout\))) # (!\inst2|s_countCentroid\(5) & (!\inst2|Add6~10_combout\ & !\inst2|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countCentroid\(5),
	datab => \inst2|Add6~10_combout\,
	datad => VCC,
	cin => \inst2|LessThan3~9_cout\,
	cout => \inst2|LessThan3~11_cout\);

-- Location: LCCOMB_X79_Y6_N18
\inst2|LessThan3~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~13_cout\ = CARRY((\inst2|s_countCentroid\(6) & (\inst2|Add6~12_combout\ & !\inst2|LessThan3~11_cout\)) # (!\inst2|s_countCentroid\(6) & ((\inst2|Add6~12_combout\) # (!\inst2|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countCentroid\(6),
	datab => \inst2|Add6~12_combout\,
	datad => VCC,
	cin => \inst2|LessThan3~11_cout\,
	cout => \inst2|LessThan3~13_cout\);

-- Location: LCCOMB_X79_Y6_N20
\inst2|LessThan3~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~15_cout\ = CARRY((\inst2|s_countCentroid\(7) & ((!\inst2|LessThan3~13_cout\) # (!\inst2|Add6~14_combout\))) # (!\inst2|s_countCentroid\(7) & (!\inst2|Add6~14_combout\ & !\inst2|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countCentroid\(7),
	datab => \inst2|Add6~14_combout\,
	datad => VCC,
	cin => \inst2|LessThan3~13_cout\,
	cout => \inst2|LessThan3~15_cout\);

-- Location: LCCOMB_X79_Y6_N22
\inst2|LessThan3~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~17_cout\ = CARRY((\inst2|Add6~16_combout\ & ((!\inst2|LessThan3~15_cout\) # (!\inst2|s_countCentroid\(8)))) # (!\inst2|Add6~16_combout\ & (!\inst2|s_countCentroid\(8) & !\inst2|LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add6~16_combout\,
	datab => \inst2|s_countCentroid\(8),
	datad => VCC,
	cin => \inst2|LessThan3~15_cout\,
	cout => \inst2|LessThan3~17_cout\);

-- Location: LCCOMB_X79_Y6_N24
\inst2|LessThan3~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~18_combout\ = (\inst2|Add6~18_combout\ & ((\inst2|LessThan3~17_cout\) # (!\inst2|s_countCentroid\(9)))) # (!\inst2|Add6~18_combout\ & (\inst2|LessThan3~17_cout\ & !\inst2|s_countCentroid\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add6~18_combout\,
	datad => \inst2|s_countCentroid\(9),
	cin => \inst2|LessThan3~17_cout\,
	combout => \inst2|LessThan3~18_combout\);

-- Location: LCCOMB_X86_Y6_N2
\inst2|state.RESET~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|state.RESET~1_combout\ = (!\inst2|state.RESET~5_combout\ & ((\inst2|state.RESET~1_combout\) # (!\nrst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.RESET~5_combout\,
	datac => \nrst~input_o\,
	datad => \inst2|state.RESET~1_combout\,
	combout => \inst2|state.RESET~1_combout\);

-- Location: LCCOMB_X86_Y6_N14
\inst2|state_fut.RESET~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|state_fut.RESET~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst2|state_fut.RESET~feeder_combout\);

-- Location: FF_X86_Y6_N15
\inst2|state_fut.RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|state_fut.RESET~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state_fut.RESET~q\);

-- Location: LCCOMB_X86_Y6_N22
\inst2|state.RESET~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|state.RESET~3_combout\ = \inst2|state_fut.RESET~q\ $ (!\inst2|state.RESET~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|state_fut.RESET~q\,
	datad => \inst2|state.RESET~1_combout\,
	combout => \inst2|state.RESET~3_combout\);

-- Location: LCCOMB_X86_Y6_N24
\inst2|state.RESET~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|state.RESET~0_combout\ = (\inst2|state.RESET~5_combout\) # (!\nrst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nrst~input_o\,
	datad => \inst2|state.RESET~5_combout\,
	combout => \inst2|state.RESET~0_combout\);

-- Location: FF_X86_Y6_N23
\inst2|state.RESET~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|state.RESET~3_combout\,
	clrn => \inst2|ALT_INV_state.RESET~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.RESET~_emulated_q\);

-- Location: LCCOMB_X86_Y6_N8
\inst2|state.RESET~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|state.RESET~2_combout\ = (!\inst2|state.RESET~5_combout\ & ((\inst2|state.RESET~1_combout\ $ (\inst2|state.RESET~_emulated_q\)) # (!\nrst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nrst~input_o\,
	datab => \inst2|state.RESET~1_combout\,
	datac => \inst2|state.RESET~_emulated_q\,
	datad => \inst2|state.RESET~5_combout\,
	combout => \inst2|state.RESET~2_combout\);

-- Location: IOIBUF_X92_Y0_N1
\reg3[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(14),
	o => \reg3[14]~input_o\);

-- Location: LCCOMB_X86_Y4_N0
\inst2|Add8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~0_combout\ = \inst2|s_countDado\(0) $ (VCC)
-- \inst2|Add8~1\ = CARRY(\inst2|s_countDado\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_countDado\(0),
	datad => VCC,
	combout => \inst2|Add8~0_combout\,
	cout => \inst2|Add8~1\);

-- Location: LCCOMB_X90_Y5_N30
\inst2|Add8~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~41_combout\ = (\inst2|Add8~0_combout\ & \inst2|state.STOREDATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add8~0_combout\,
	datad => \inst2|state.STOREDATA~q\,
	combout => \inst2|Add8~41_combout\);

-- Location: LCCOMB_X84_Y6_N2
\inst2|s_countDimensions[0]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[0]~13_combout\ = \inst2|s_countDimensions\(0) $ (VCC)
-- \inst2|s_countDimensions[0]~14\ = CARRY(\inst2|s_countDimensions\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_countDimensions\(0),
	datad => VCC,
	combout => \inst2|s_countDimensions[0]~13_combout\,
	cout => \inst2|s_countDimensions[0]~14\);

-- Location: LCCOMB_X85_Y6_N20
\inst2|s_countDimensions[8]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[8]~39_combout\ = (\inst2|state.ENDCENTROIDS~q\) # (!\inst2|state.VERIFYDIMENSION~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.ENDCENTROIDS~q\,
	datad => \inst2|state.VERIFYDIMENSION~q\,
	combout => \inst2|s_countDimensions[8]~39_combout\);

-- Location: IOIBUF_X39_Y0_N22
\en_KmodesControlCalcMap~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_KmodesControlCalcMap,
	o => \en_KmodesControlCalcMap~input_o\);

-- Location: LCCOMB_X85_Y6_N30
\inst2|Selector73~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector73~0_combout\ = (\inst2|state.ENDSTATE~q\) # ((\inst2|state.RESET~2_combout\) # ((\inst2|state.IDLE~q\ & !\en_KmodesControlCalcMap~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.IDLE~q\,
	datab => \inst2|state.ENDSTATE~q\,
	datac => \inst2|state.RESET~2_combout\,
	datad => \en_KmodesControlCalcMap~input_o\,
	combout => \inst2|Selector73~0_combout\);

-- Location: FF_X85_Y6_N31
\inst2|state_fut.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector73~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state_fut.IDLE~q\);

-- Location: LCCOMB_X86_Y6_N20
\inst2|state.IDLE~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|state.IDLE~0_combout\ = (\inst|s_endDistanceMatch~q\) # (!\nrst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nrst~input_o\,
	datad => \inst|s_endDistanceMatch~q\,
	combout => \inst2|state.IDLE~0_combout\);

-- Location: FF_X85_Y6_N21
\inst2|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|state_fut.IDLE~q\,
	clrn => \inst2|ALT_INV_state.IDLE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.IDLE~q\);

-- Location: LCCOMB_X85_Y6_N28
\inst2|Selector74~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector74~0_combout\ = (\inst2|state.STOREDATA~q\) # ((\en_KmodesControlCalcMap~input_o\ & \inst2|state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_KmodesControlCalcMap~input_o\,
	datac => \inst2|state.STOREDATA~q\,
	datad => \inst2|state.IDLE~q\,
	combout => \inst2|Selector74~0_combout\);

-- Location: LCCOMB_X82_Y6_N30
\inst2|state_fut.VERIFYDATA~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|state_fut.VERIFYDATA~feeder_combout\ = \inst2|Selector74~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Selector74~0_combout\,
	combout => \inst2|state_fut.VERIFYDATA~feeder_combout\);

-- Location: FF_X82_Y6_N31
\inst2|state_fut.VERIFYDATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|state_fut.VERIFYDATA~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state_fut.VERIFYDATA~q\);

-- Location: FF_X85_Y6_N13
\inst2|state.VERIFYDATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|state_fut.VERIFYDATA~q\,
	clrn => \inst2|ALT_INV_state.IDLE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.VERIFYDATA~q\);

-- Location: LCCOMB_X85_Y6_N22
\inst2|WideOr14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|WideOr14~0_combout\ = (!\inst2|state.VERIFYDATA~q\ & (!\inst2|state.MINDISTANCE~q\ & !\inst2|state.LOADDATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.VERIFYDATA~q\,
	datac => \inst2|state.MINDISTANCE~q\,
	datad => \inst2|state.LOADDATA~q\,
	combout => \inst2|WideOr14~0_combout\);

-- Location: LCCOMB_X85_Y6_N18
\inst2|s_countDimensions[8]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[8]~42_combout\ = (\inst2|state.IDLE~q\) # ((\inst2|state.CALCDISTANCE~q\) # (\inst2|s_countDimensions[8]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.IDLE~q\,
	datab => \inst2|state.CALCDISTANCE~q\,
	datad => \inst2|s_countDimensions[8]~41_combout\,
	combout => \inst2|s_countDimensions[8]~42_combout\);

-- Location: LCCOMB_X84_Y6_N30
\inst2|s_countDimensions[8]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[8]~43_combout\ = (\inst2|WideOr14~0_combout\ & (!\inst2|s_countDimensions[8]~40_combout\ & (!\inst2|state.WAITCALCDISTANCE~2_combout\ & !\inst2|s_countDimensions[8]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideOr14~0_combout\,
	datab => \inst2|s_countDimensions[8]~40_combout\,
	datac => \inst2|state.WAITCALCDISTANCE~2_combout\,
	datad => \inst2|s_countDimensions[8]~42_combout\,
	combout => \inst2|s_countDimensions[8]~43_combout\);

-- Location: FF_X84_Y6_N3
\inst2|s_countDimensions[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countDimensions[0]~13_combout\,
	sclr => \inst2|s_countDimensions[8]~39_combout\,
	ena => \inst2|s_countDimensions[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions\(0));

-- Location: LCCOMB_X84_Y6_N4
\inst2|s_countDimensions[1]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[1]~15_combout\ = (\inst2|s_countDimensions\(1) & (!\inst2|s_countDimensions[0]~14\)) # (!\inst2|s_countDimensions\(1) & ((\inst2|s_countDimensions[0]~14\) # (GND)))
-- \inst2|s_countDimensions[1]~16\ = CARRY((!\inst2|s_countDimensions[0]~14\) # (!\inst2|s_countDimensions\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_countDimensions\(1),
	datad => VCC,
	cin => \inst2|s_countDimensions[0]~14\,
	combout => \inst2|s_countDimensions[1]~15_combout\,
	cout => \inst2|s_countDimensions[1]~16\);

-- Location: FF_X84_Y6_N5
\inst2|s_countDimensions[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countDimensions[1]~15_combout\,
	sclr => \inst2|s_countDimensions[8]~39_combout\,
	ena => \inst2|s_countDimensions[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions\(1));

-- Location: LCCOMB_X84_Y6_N6
\inst2|s_countDimensions[2]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[2]~17_combout\ = (\inst2|s_countDimensions\(2) & (\inst2|s_countDimensions[1]~16\ $ (GND))) # (!\inst2|s_countDimensions\(2) & (!\inst2|s_countDimensions[1]~16\ & VCC))
-- \inst2|s_countDimensions[2]~18\ = CARRY((\inst2|s_countDimensions\(2) & !\inst2|s_countDimensions[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(2),
	datad => VCC,
	cin => \inst2|s_countDimensions[1]~16\,
	combout => \inst2|s_countDimensions[2]~17_combout\,
	cout => \inst2|s_countDimensions[2]~18\);

-- Location: FF_X84_Y6_N7
\inst2|s_countDimensions[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countDimensions[2]~17_combout\,
	sclr => \inst2|s_countDimensions[8]~39_combout\,
	ena => \inst2|s_countDimensions[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions\(2));

-- Location: LCCOMB_X84_Y6_N8
\inst2|s_countDimensions[3]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[3]~19_combout\ = (\inst2|s_countDimensions\(3) & (!\inst2|s_countDimensions[2]~18\)) # (!\inst2|s_countDimensions\(3) & ((\inst2|s_countDimensions[2]~18\) # (GND)))
-- \inst2|s_countDimensions[3]~20\ = CARRY((!\inst2|s_countDimensions[2]~18\) # (!\inst2|s_countDimensions\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_countDimensions\(3),
	datad => VCC,
	cin => \inst2|s_countDimensions[2]~18\,
	combout => \inst2|s_countDimensions[3]~19_combout\,
	cout => \inst2|s_countDimensions[3]~20\);

-- Location: FF_X84_Y6_N9
\inst2|s_countDimensions[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countDimensions[3]~19_combout\,
	sclr => \inst2|s_countDimensions[8]~39_combout\,
	ena => \inst2|s_countDimensions[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions\(3));

-- Location: LCCOMB_X84_Y6_N10
\inst2|s_countDimensions[4]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[4]~21_combout\ = (\inst2|s_countDimensions\(4) & (\inst2|s_countDimensions[3]~20\ $ (GND))) # (!\inst2|s_countDimensions\(4) & (!\inst2|s_countDimensions[3]~20\ & VCC))
-- \inst2|s_countDimensions[4]~22\ = CARRY((\inst2|s_countDimensions\(4) & !\inst2|s_countDimensions[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(4),
	datad => VCC,
	cin => \inst2|s_countDimensions[3]~20\,
	combout => \inst2|s_countDimensions[4]~21_combout\,
	cout => \inst2|s_countDimensions[4]~22\);

-- Location: FF_X84_Y6_N11
\inst2|s_countDimensions[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countDimensions[4]~21_combout\,
	sclr => \inst2|s_countDimensions[8]~39_combout\,
	ena => \inst2|s_countDimensions[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions\(4));

-- Location: LCCOMB_X86_Y6_N4
\inst2|LessThan2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~6_combout\ = (\inst2|s_countDimensions\(4)) # (\inst2|s_countDimensions\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(4),
	datad => \inst2|s_countDimensions\(3),
	combout => \inst2|LessThan2~6_combout\);

-- Location: LCCOMB_X84_Y6_N12
\inst2|s_countDimensions[5]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[5]~23_combout\ = (\inst2|s_countDimensions\(5) & (!\inst2|s_countDimensions[4]~22\)) # (!\inst2|s_countDimensions\(5) & ((\inst2|s_countDimensions[4]~22\) # (GND)))
-- \inst2|s_countDimensions[5]~24\ = CARRY((!\inst2|s_countDimensions[4]~22\) # (!\inst2|s_countDimensions\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(5),
	datad => VCC,
	cin => \inst2|s_countDimensions[4]~22\,
	combout => \inst2|s_countDimensions[5]~23_combout\,
	cout => \inst2|s_countDimensions[5]~24\);

-- Location: FF_X84_Y6_N13
\inst2|s_countDimensions[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countDimensions[5]~23_combout\,
	sclr => \inst2|s_countDimensions[8]~39_combout\,
	ena => \inst2|s_countDimensions[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions\(5));

-- Location: LCCOMB_X84_Y6_N14
\inst2|s_countDimensions[6]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[6]~25_combout\ = (\inst2|s_countDimensions\(6) & (\inst2|s_countDimensions[5]~24\ $ (GND))) # (!\inst2|s_countDimensions\(6) & (!\inst2|s_countDimensions[5]~24\ & VCC))
-- \inst2|s_countDimensions[6]~26\ = CARRY((\inst2|s_countDimensions\(6) & !\inst2|s_countDimensions[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_countDimensions\(6),
	datad => VCC,
	cin => \inst2|s_countDimensions[5]~24\,
	combout => \inst2|s_countDimensions[6]~25_combout\,
	cout => \inst2|s_countDimensions[6]~26\);

-- Location: FF_X84_Y6_N15
\inst2|s_countDimensions[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countDimensions[6]~25_combout\,
	sclr => \inst2|s_countDimensions[8]~39_combout\,
	ena => \inst2|s_countDimensions[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions\(6));

-- Location: LCCOMB_X84_Y6_N16
\inst2|s_countDimensions[7]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[7]~27_combout\ = (\inst2|s_countDimensions\(7) & (!\inst2|s_countDimensions[6]~26\)) # (!\inst2|s_countDimensions\(7) & ((\inst2|s_countDimensions[6]~26\) # (GND)))
-- \inst2|s_countDimensions[7]~28\ = CARRY((!\inst2|s_countDimensions[6]~26\) # (!\inst2|s_countDimensions\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_countDimensions\(7),
	datad => VCC,
	cin => \inst2|s_countDimensions[6]~26\,
	combout => \inst2|s_countDimensions[7]~27_combout\,
	cout => \inst2|s_countDimensions[7]~28\);

-- Location: FF_X84_Y6_N17
\inst2|s_countDimensions[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countDimensions[7]~27_combout\,
	sclr => \inst2|s_countDimensions[8]~39_combout\,
	ena => \inst2|s_countDimensions[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions\(7));

-- Location: LCCOMB_X84_Y6_N18
\inst2|s_countDimensions[8]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[8]~29_combout\ = (\inst2|s_countDimensions\(8) & (\inst2|s_countDimensions[7]~28\ $ (GND))) # (!\inst2|s_countDimensions\(8) & (!\inst2|s_countDimensions[7]~28\ & VCC))
-- \inst2|s_countDimensions[8]~30\ = CARRY((\inst2|s_countDimensions\(8) & !\inst2|s_countDimensions[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_countDimensions\(8),
	datad => VCC,
	cin => \inst2|s_countDimensions[7]~28\,
	combout => \inst2|s_countDimensions[8]~29_combout\,
	cout => \inst2|s_countDimensions[8]~30\);

-- Location: FF_X84_Y6_N19
\inst2|s_countDimensions[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countDimensions[8]~29_combout\,
	sclr => \inst2|s_countDimensions[8]~39_combout\,
	ena => \inst2|s_countDimensions[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions\(8));

-- Location: LCCOMB_X84_Y6_N20
\inst2|s_countDimensions[9]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[9]~31_combout\ = (\inst2|s_countDimensions\(9) & (!\inst2|s_countDimensions[8]~30\)) # (!\inst2|s_countDimensions\(9) & ((\inst2|s_countDimensions[8]~30\) # (GND)))
-- \inst2|s_countDimensions[9]~32\ = CARRY((!\inst2|s_countDimensions[8]~30\) # (!\inst2|s_countDimensions\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_countDimensions\(9),
	datad => VCC,
	cin => \inst2|s_countDimensions[8]~30\,
	combout => \inst2|s_countDimensions[9]~31_combout\,
	cout => \inst2|s_countDimensions[9]~32\);

-- Location: FF_X84_Y6_N21
\inst2|s_countDimensions[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countDimensions[9]~31_combout\,
	sclr => \inst2|s_countDimensions[8]~39_combout\,
	ena => \inst2|s_countDimensions[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions\(9));

-- Location: LCCOMB_X84_Y6_N22
\inst2|s_countDimensions[10]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[10]~33_combout\ = (\inst2|s_countDimensions\(10) & (\inst2|s_countDimensions[9]~32\ $ (GND))) # (!\inst2|s_countDimensions\(10) & (!\inst2|s_countDimensions[9]~32\ & VCC))
-- \inst2|s_countDimensions[10]~34\ = CARRY((\inst2|s_countDimensions\(10) & !\inst2|s_countDimensions[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(10),
	datad => VCC,
	cin => \inst2|s_countDimensions[9]~32\,
	combout => \inst2|s_countDimensions[10]~33_combout\,
	cout => \inst2|s_countDimensions[10]~34\);

-- Location: FF_X84_Y6_N23
\inst2|s_countDimensions[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countDimensions[10]~33_combout\,
	sclr => \inst2|s_countDimensions[8]~39_combout\,
	ena => \inst2|s_countDimensions[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions\(10));

-- Location: LCCOMB_X84_Y6_N24
\inst2|s_countDimensions[11]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[11]~35_combout\ = (\inst2|s_countDimensions\(11) & (!\inst2|s_countDimensions[10]~34\)) # (!\inst2|s_countDimensions\(11) & ((\inst2|s_countDimensions[10]~34\) # (GND)))
-- \inst2|s_countDimensions[11]~36\ = CARRY((!\inst2|s_countDimensions[10]~34\) # (!\inst2|s_countDimensions\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_countDimensions\(11),
	datad => VCC,
	cin => \inst2|s_countDimensions[10]~34\,
	combout => \inst2|s_countDimensions[11]~35_combout\,
	cout => \inst2|s_countDimensions[11]~36\);

-- Location: FF_X84_Y6_N25
\inst2|s_countDimensions[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countDimensions[11]~35_combout\,
	sclr => \inst2|s_countDimensions[8]~39_combout\,
	ena => \inst2|s_countDimensions[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions\(11));

-- Location: LCCOMB_X84_Y6_N26
\inst2|s_countDimensions[12]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[12]~37_combout\ = \inst2|s_countDimensions\(12) $ (!\inst2|s_countDimensions[11]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(12),
	cin => \inst2|s_countDimensions[11]~36\,
	combout => \inst2|s_countDimensions[12]~37_combout\);

-- Location: FF_X84_Y6_N27
\inst2|s_countDimensions[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countDimensions[12]~37_combout\,
	sclr => \inst2|s_countDimensions[8]~39_combout\,
	ena => \inst2|s_countDimensions[8]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions\(12));

-- Location: LCCOMB_X84_Y4_N0
\inst2|LessThan2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~2_combout\ = (\inst2|s_countDimensions\(11)) # ((\inst2|s_countDimensions\(12)) # ((\inst2|s_countDimensions\(9)) # (\inst2|s_countDimensions\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(11),
	datab => \inst2|s_countDimensions\(12),
	datac => \inst2|s_countDimensions\(9),
	datad => \inst2|s_countDimensions\(10),
	combout => \inst2|LessThan2~2_combout\);

-- Location: IOIBUF_X82_Y0_N22
\reg8[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg8(2),
	o => \reg8[2]~input_o\);

-- Location: IOIBUF_X88_Y0_N1
\reg8[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg8(1),
	o => \reg8[1]~input_o\);

-- Location: IOIBUF_X82_Y0_N15
\reg8[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg8(0),
	o => \reg8[0]~input_o\);

-- Location: LCCOMB_X84_Y5_N28
\inst2|LessThan2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~3_combout\ = (\reg8[1]~input_o\ & (((\reg8[0]~input_o\ & !\inst2|s_countDimensions\(0))) # (!\inst2|s_countDimensions\(1)))) # (!\reg8[1]~input_o\ & (\reg8[0]~input_o\ & (!\inst2|s_countDimensions\(0) & !\inst2|s_countDimensions\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datab => \reg8[0]~input_o\,
	datac => \inst2|s_countDimensions\(0),
	datad => \inst2|s_countDimensions\(1),
	combout => \inst2|LessThan2~3_combout\);

-- Location: LCCOMB_X84_Y5_N2
\inst2|LessThan2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~4_combout\ = (\inst2|LessThan2~2_combout\) # ((\inst2|s_countDimensions\(2) & ((!\inst2|LessThan2~3_combout\) # (!\reg8[2]~input_o\))) # (!\inst2|s_countDimensions\(2) & (!\reg8[2]~input_o\ & !\inst2|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(2),
	datab => \inst2|LessThan2~2_combout\,
	datac => \reg8[2]~input_o\,
	datad => \inst2|LessThan2~3_combout\,
	combout => \inst2|LessThan2~4_combout\);

-- Location: LCCOMB_X84_Y6_N28
\inst2|LessThan2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~5_combout\ = (\inst2|s_countDimensions\(5)) # ((\inst2|s_countDimensions\(8)) # ((\inst2|s_countDimensions\(6)) # (\inst2|s_countDimensions\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(5),
	datab => \inst2|s_countDimensions\(8),
	datac => \inst2|s_countDimensions\(6),
	datad => \inst2|s_countDimensions\(7),
	combout => \inst2|LessThan2~5_combout\);

-- Location: LCCOMB_X85_Y6_N6
\inst2|s_countDimensions[8]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[8]~41_combout\ = (\inst2|state.VERIFYDIMENSION~q\ & ((\inst2|LessThan2~6_combout\) # ((\inst2|LessThan2~4_combout\) # (\inst2|LessThan2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan2~6_combout\,
	datab => \inst2|LessThan2~4_combout\,
	datac => \inst2|state.VERIFYDIMENSION~q\,
	datad => \inst2|LessThan2~5_combout\,
	combout => \inst2|s_countDimensions[8]~41_combout\);

-- Location: FF_X85_Y6_N15
\inst2|state_fut.MINDISTANCE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst2|s_countDimensions[8]~41_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state_fut.MINDISTANCE~q\);

-- Location: FF_X85_Y6_N23
\inst2|state.MINDISTANCE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|state_fut.MINDISTANCE~q\,
	clrn => \inst2|ALT_INV_state.IDLE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.MINDISTANCE~q\);

-- Location: LCCOMB_X85_Y6_N12
\inst2|s_countDado[9]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countDado[9]~0_combout\ = (\inst2|state.MINDISTANCE~q\) # ((\inst2|state.IDLE~q\) # ((\inst2|state.VERIFYDATA~q\) # (\inst2|state.CALCDISTANCE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.MINDISTANCE~q\,
	datab => \inst2|state.IDLE~q\,
	datac => \inst2|state.VERIFYDATA~q\,
	datad => \inst2|state.CALCDISTANCE~q\,
	combout => \inst2|s_countDado[9]~0_combout\);

-- Location: LCCOMB_X85_Y6_N4
\inst2|WideOr13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|WideOr13~0_combout\ = (!\inst2|state.ENDCENTROIDS~q\ & !\inst2|state.VERIFYDIMENSION~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.ENDCENTROIDS~q\,
	datad => \inst2|state.VERIFYDIMENSION~q\,
	combout => \inst2|WideOr13~0_combout\);

-- Location: LCCOMB_X86_Y6_N30
\inst2|s_countDado[9]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countDado[9]~1_combout\ = (!\inst2|s_countDado[9]~0_combout\ & (!\inst2|state.LOADDATA~q\ & (\inst2|WideOr13~0_combout\ & !\inst2|state.WAITCALCDISTANCE~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado[9]~0_combout\,
	datab => \inst2|state.LOADDATA~q\,
	datac => \inst2|WideOr13~0_combout\,
	datad => \inst2|state.WAITCALCDISTANCE~2_combout\,
	combout => \inst2|s_countDado[9]~1_combout\);

-- Location: FF_X89_Y5_N29
\inst2|s_countDado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst2|Add8~41_combout\,
	sload => VCC,
	ena => \inst2|s_countDado[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado\(0));

-- Location: LCCOMB_X86_Y4_N2
\inst2|Add8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~2_combout\ = (\inst2|s_countDado\(1) & (!\inst2|Add8~1\)) # (!\inst2|s_countDado\(1) & ((\inst2|Add8~1\) # (GND)))
-- \inst2|Add8~3\ = CARRY((!\inst2|Add8~1\) # (!\inst2|s_countDado\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(1),
	datad => VCC,
	cin => \inst2|Add8~1\,
	combout => \inst2|Add8~2_combout\,
	cout => \inst2|Add8~3\);

-- Location: LCCOMB_X85_Y5_N18
\inst2|Add8~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~40_combout\ = (\inst2|Add8~2_combout\ & \inst2|state.STOREDATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add8~2_combout\,
	datad => \inst2|state.STOREDATA~q\,
	combout => \inst2|Add8~40_combout\);

-- Location: FF_X85_Y5_N19
\inst2|s_countDado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Add8~40_combout\,
	ena => \inst2|s_countDado[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado\(1));

-- Location: LCCOMB_X86_Y4_N4
\inst2|Add8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~4_combout\ = (\inst2|s_countDado\(2) & (\inst2|Add8~3\ $ (GND))) # (!\inst2|s_countDado\(2) & (!\inst2|Add8~3\ & VCC))
-- \inst2|Add8~5\ = CARRY((\inst2|s_countDado\(2) & !\inst2|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_countDado\(2),
	datad => VCC,
	cin => \inst2|Add8~3\,
	combout => \inst2|Add8~4_combout\,
	cout => \inst2|Add8~5\);

-- Location: LCCOMB_X85_Y5_N24
\inst2|Add8~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~39_combout\ = (\inst2|state.STOREDATA~q\ & \inst2|Add8~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.STOREDATA~q\,
	datad => \inst2|Add8~4_combout\,
	combout => \inst2|Add8~39_combout\);

-- Location: FF_X85_Y5_N25
\inst2|s_countDado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Add8~39_combout\,
	ena => \inst2|s_countDado[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado\(2));

-- Location: LCCOMB_X86_Y4_N6
\inst2|Add8~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~6_combout\ = (\inst2|s_countDado\(3) & (!\inst2|Add8~5\)) # (!\inst2|s_countDado\(3) & ((\inst2|Add8~5\) # (GND)))
-- \inst2|Add8~7\ = CARRY((!\inst2|Add8~5\) # (!\inst2|s_countDado\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(3),
	datad => VCC,
	cin => \inst2|Add8~5\,
	combout => \inst2|Add8~6_combout\,
	cout => \inst2|Add8~7\);

-- Location: LCCOMB_X85_Y5_N6
\inst2|Add8~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~38_combout\ = (\inst2|Add8~6_combout\ & \inst2|state.STOREDATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add8~6_combout\,
	datad => \inst2|state.STOREDATA~q\,
	combout => \inst2|Add8~38_combout\);

-- Location: FF_X89_Y5_N27
\inst2|s_countDado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst2|Add8~38_combout\,
	sload => VCC,
	ena => \inst2|s_countDado[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado\(3));

-- Location: LCCOMB_X86_Y4_N8
\inst2|Add8~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~8_combout\ = (\inst2|s_countDado\(4) & (\inst2|Add8~7\ $ (GND))) # (!\inst2|s_countDado\(4) & (!\inst2|Add8~7\ & VCC))
-- \inst2|Add8~9\ = CARRY((\inst2|s_countDado\(4) & !\inst2|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_countDado\(4),
	datad => VCC,
	cin => \inst2|Add8~7\,
	combout => \inst2|Add8~8_combout\,
	cout => \inst2|Add8~9\);

-- Location: LCCOMB_X90_Y5_N24
\inst2|Add8~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~37_combout\ = (\inst2|Add8~8_combout\ & \inst2|state.STOREDATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add8~8_combout\,
	datad => \inst2|state.STOREDATA~q\,
	combout => \inst2|Add8~37_combout\);

-- Location: FF_X90_Y5_N25
\inst2|s_countDado[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Add8~37_combout\,
	ena => \inst2|s_countDado[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado\(4));

-- Location: LCCOMB_X86_Y4_N10
\inst2|Add8~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~10_combout\ = (\inst2|s_countDado\(5) & (!\inst2|Add8~9\)) # (!\inst2|s_countDado\(5) & ((\inst2|Add8~9\) # (GND)))
-- \inst2|Add8~11\ = CARRY((!\inst2|Add8~9\) # (!\inst2|s_countDado\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(5),
	datad => VCC,
	cin => \inst2|Add8~9\,
	combout => \inst2|Add8~10_combout\,
	cout => \inst2|Add8~11\);

-- Location: LCCOMB_X90_Y5_N10
\inst2|Add8~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~36_combout\ = (\inst2|Add8~10_combout\ & \inst2|state.STOREDATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add8~10_combout\,
	datad => \inst2|state.STOREDATA~q\,
	combout => \inst2|Add8~36_combout\);

-- Location: FF_X90_Y5_N11
\inst2|s_countDado[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Add8~36_combout\,
	ena => \inst2|s_countDado[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado\(5));

-- Location: LCCOMB_X86_Y4_N12
\inst2|Add8~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~12_combout\ = (\inst2|s_countDado\(6) & (\inst2|Add8~11\ $ (GND))) # (!\inst2|s_countDado\(6) & (!\inst2|Add8~11\ & VCC))
-- \inst2|Add8~13\ = CARRY((\inst2|s_countDado\(6) & !\inst2|Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_countDado\(6),
	datad => VCC,
	cin => \inst2|Add8~11\,
	combout => \inst2|Add8~12_combout\,
	cout => \inst2|Add8~13\);

-- Location: LCCOMB_X90_Y5_N16
\inst2|Add8~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~35_combout\ = (\inst2|state.STOREDATA~q\ & \inst2|Add8~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.STOREDATA~q\,
	datad => \inst2|Add8~12_combout\,
	combout => \inst2|Add8~35_combout\);

-- Location: FF_X90_Y5_N17
\inst2|s_countDado[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Add8~35_combout\,
	ena => \inst2|s_countDado[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado\(6));

-- Location: LCCOMB_X86_Y4_N14
\inst2|Add8~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~14_combout\ = (\inst2|s_countDado\(7) & (!\inst2|Add8~13\)) # (!\inst2|s_countDado\(7) & ((\inst2|Add8~13\) # (GND)))
-- \inst2|Add8~15\ = CARRY((!\inst2|Add8~13\) # (!\inst2|s_countDado\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(7),
	datad => VCC,
	cin => \inst2|Add8~13\,
	combout => \inst2|Add8~14_combout\,
	cout => \inst2|Add8~15\);

-- Location: LCCOMB_X86_Y5_N12
\inst2|Add8~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~34_combout\ = (\inst2|state.STOREDATA~q\ & \inst2|Add8~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|state.STOREDATA~q\,
	datad => \inst2|Add8~14_combout\,
	combout => \inst2|Add8~34_combout\);

-- Location: FF_X86_Y5_N13
\inst2|s_countDado[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Add8~34_combout\,
	ena => \inst2|s_countDado[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado\(7));

-- Location: LCCOMB_X86_Y4_N16
\inst2|Add8~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~16_combout\ = (\inst2|s_countDado\(8) & (\inst2|Add8~15\ $ (GND))) # (!\inst2|s_countDado\(8) & (!\inst2|Add8~15\ & VCC))
-- \inst2|Add8~17\ = CARRY((\inst2|s_countDado\(8) & !\inst2|Add8~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_countDado\(8),
	datad => VCC,
	cin => \inst2|Add8~15\,
	combout => \inst2|Add8~16_combout\,
	cout => \inst2|Add8~17\);

-- Location: LCCOMB_X85_Y4_N0
\inst2|Add8~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~33_combout\ = (\inst2|state.STOREDATA~q\ & \inst2|Add8~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|state.STOREDATA~q\,
	datad => \inst2|Add8~16_combout\,
	combout => \inst2|Add8~33_combout\);

-- Location: FF_X85_Y5_N3
\inst2|s_countDado[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst2|Add8~33_combout\,
	sload => VCC,
	ena => \inst2|s_countDado[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado\(8));

-- Location: LCCOMB_X86_Y4_N18
\inst2|Add8~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~18_combout\ = (\inst2|s_countDado\(9) & (!\inst2|Add8~17\)) # (!\inst2|s_countDado\(9) & ((\inst2|Add8~17\) # (GND)))
-- \inst2|Add8~19\ = CARRY((!\inst2|Add8~17\) # (!\inst2|s_countDado\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_countDado\(9),
	datad => VCC,
	cin => \inst2|Add8~17\,
	combout => \inst2|Add8~18_combout\,
	cout => \inst2|Add8~19\);

-- Location: LCCOMB_X85_Y5_N0
\inst2|Add8~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~32_combout\ = (\inst2|state.STOREDATA~q\ & \inst2|Add8~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.STOREDATA~q\,
	datad => \inst2|Add8~18_combout\,
	combout => \inst2|Add8~32_combout\);

-- Location: FF_X85_Y5_N1
\inst2|s_countDado[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Add8~32_combout\,
	ena => \inst2|s_countDado[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado\(9));

-- Location: LCCOMB_X86_Y4_N20
\inst2|Add8~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~20_combout\ = (\inst2|s_countDado\(10) & (\inst2|Add8~19\ $ (GND))) # (!\inst2|s_countDado\(10) & (!\inst2|Add8~19\ & VCC))
-- \inst2|Add8~21\ = CARRY((\inst2|s_countDado\(10) & !\inst2|Add8~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(10),
	datad => VCC,
	cin => \inst2|Add8~19\,
	combout => \inst2|Add8~20_combout\,
	cout => \inst2|Add8~21\);

-- Location: LCCOMB_X86_Y5_N30
\inst2|Add8~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~31_combout\ = (\inst2|state.STOREDATA~q\ & \inst2|Add8~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|state.STOREDATA~q\,
	datad => \inst2|Add8~20_combout\,
	combout => \inst2|Add8~31_combout\);

-- Location: FF_X86_Y5_N31
\inst2|s_countDado[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Add8~31_combout\,
	ena => \inst2|s_countDado[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado\(10));

-- Location: LCCOMB_X86_Y4_N22
\inst2|Add8~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~22_combout\ = (\inst2|s_countDado\(11) & (!\inst2|Add8~21\)) # (!\inst2|s_countDado\(11) & ((\inst2|Add8~21\) # (GND)))
-- \inst2|Add8~23\ = CARRY((!\inst2|Add8~21\) # (!\inst2|s_countDado\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(11),
	datad => VCC,
	cin => \inst2|Add8~21\,
	combout => \inst2|Add8~22_combout\,
	cout => \inst2|Add8~23\);

-- Location: LCCOMB_X85_Y4_N10
\inst2|Add8~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~30_combout\ = (\inst2|state.STOREDATA~q\ & \inst2|Add8~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|state.STOREDATA~q\,
	datad => \inst2|Add8~22_combout\,
	combout => \inst2|Add8~30_combout\);

-- Location: FF_X85_Y5_N27
\inst2|s_countDado[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst2|Add8~30_combout\,
	sload => VCC,
	ena => \inst2|s_countDado[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado\(11));

-- Location: LCCOMB_X86_Y4_N24
\inst2|Add8~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~24_combout\ = (\inst2|s_countDado\(12) & (\inst2|Add8~23\ $ (GND))) # (!\inst2|s_countDado\(12) & (!\inst2|Add8~23\ & VCC))
-- \inst2|Add8~25\ = CARRY((\inst2|s_countDado\(12) & !\inst2|Add8~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(12),
	datad => VCC,
	cin => \inst2|Add8~23\,
	combout => \inst2|Add8~24_combout\,
	cout => \inst2|Add8~25\);

-- Location: LCCOMB_X85_Y5_N20
\inst2|Add8~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~29_combout\ = (\inst2|Add8~24_combout\ & \inst2|state.STOREDATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add8~24_combout\,
	datad => \inst2|state.STOREDATA~q\,
	combout => \inst2|Add8~29_combout\);

-- Location: FF_X85_Y5_N21
\inst2|s_countDado[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Add8~29_combout\,
	ena => \inst2|s_countDado[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado\(12));

-- Location: LCCOMB_X86_Y4_N26
\inst2|Add8~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~26_combout\ = (\inst2|s_countDado\(13) & (!\inst2|Add8~25\)) # (!\inst2|s_countDado\(13) & ((\inst2|Add8~25\) # (GND)))
-- \inst2|Add8~27\ = CARRY((!\inst2|Add8~25\) # (!\inst2|s_countDado\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_countDado\(13),
	datad => VCC,
	cin => \inst2|Add8~25\,
	combout => \inst2|Add8~26_combout\,
	cout => \inst2|Add8~27\);

-- Location: LCCOMB_X85_Y4_N20
\inst2|Add8~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~28_combout\ = (\inst2|state.STOREDATA~q\ & \inst2|Add8~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|state.STOREDATA~q\,
	datad => \inst2|Add8~26_combout\,
	combout => \inst2|Add8~28_combout\);

-- Location: FF_X85_Y4_N21
\inst2|s_countDado[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Add8~28_combout\,
	ena => \inst2|s_countDado[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado\(13));

-- Location: LCCOMB_X86_Y4_N28
\inst2|Add8~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add8~42_combout\ = \inst2|s_countDado\(14) $ (!\inst2|Add8~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(14),
	cin => \inst2|Add8~27\,
	combout => \inst2|Add8~42_combout\);

-- Location: LCCOMB_X85_Y4_N26
\inst2|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector0~0_combout\ = (\inst2|Add8~42_combout\ & ((\inst2|state.STOREDATA~q\) # ((\inst2|s_countDado\(14) & !\inst2|s_countDado[9]~1_combout\)))) # (!\inst2|Add8~42_combout\ & (((\inst2|s_countDado\(14) & !\inst2|s_countDado[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add8~42_combout\,
	datab => \inst2|state.STOREDATA~q\,
	datac => \inst2|s_countDado\(14),
	datad => \inst2|s_countDado[9]~1_combout\,
	combout => \inst2|Selector0~0_combout\);

-- Location: FF_X85_Y4_N27
\inst2|s_countDado[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado\(14));

-- Location: IOIBUF_X95_Y0_N1
\reg3[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(13),
	o => \reg3[13]~input_o\);

-- Location: IOIBUF_X61_Y0_N22
\reg3[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(12),
	o => \reg3[12]~input_o\);

-- Location: IOIBUF_X95_Y0_N8
\reg3[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(11),
	o => \reg3[11]~input_o\);

-- Location: IOIBUF_X88_Y0_N22
\reg3[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(10),
	o => \reg3[10]~input_o\);

-- Location: IOIBUF_X92_Y0_N8
\reg3[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(9),
	o => \reg3[9]~input_o\);

-- Location: IOIBUF_X99_Y0_N8
\reg3[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(8),
	o => \reg3[8]~input_o\);

-- Location: IOIBUF_X99_Y0_N15
\reg3[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(7),
	o => \reg3[7]~input_o\);

-- Location: IOIBUF_X90_Y0_N1
\reg3[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(6),
	o => \reg3[6]~input_o\);

-- Location: IOIBUF_X88_Y0_N8
\reg3[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(5),
	o => \reg3[5]~input_o\);

-- Location: IOIBUF_X97_Y0_N1
\reg3[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(4),
	o => \reg3[4]~input_o\);

-- Location: IOIBUF_X99_Y0_N1
\reg3[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(3),
	o => \reg3[3]~input_o\);

-- Location: IOIBUF_X90_Y0_N8
\reg3[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(2),
	o => \reg3[2]~input_o\);

-- Location: IOIBUF_X97_Y0_N8
\reg3[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(1),
	o => \reg3[1]~input_o\);

-- Location: IOIBUF_X92_Y0_N22
\reg3[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(0),
	o => \reg3[0]~input_o\);

-- Location: LCCOMB_X89_Y4_N0
\inst2|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_cout\ = CARRY((!\inst2|s_countDado\(0) & \reg3[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(0),
	datab => \reg3[0]~input_o\,
	datad => VCC,
	cout => \inst2|LessThan0~1_cout\);

-- Location: LCCOMB_X89_Y4_N2
\inst2|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~3_cout\ = CARRY((\inst2|s_countDado\(1) & ((!\inst2|LessThan0~1_cout\) # (!\reg3[1]~input_o\))) # (!\inst2|s_countDado\(1) & (!\reg3[1]~input_o\ & !\inst2|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(1),
	datab => \reg3[1]~input_o\,
	datad => VCC,
	cin => \inst2|LessThan0~1_cout\,
	cout => \inst2|LessThan0~3_cout\);

-- Location: LCCOMB_X89_Y4_N4
\inst2|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~5_cout\ = CARRY((\reg3[2]~input_o\ & ((!\inst2|LessThan0~3_cout\) # (!\inst2|s_countDado\(2)))) # (!\reg3[2]~input_o\ & (!\inst2|s_countDado\(2) & !\inst2|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg3[2]~input_o\,
	datab => \inst2|s_countDado\(2),
	datad => VCC,
	cin => \inst2|LessThan0~3_cout\,
	cout => \inst2|LessThan0~5_cout\);

-- Location: LCCOMB_X89_Y4_N6
\inst2|LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~7_cout\ = CARRY((\reg3[3]~input_o\ & (\inst2|s_countDado\(3) & !\inst2|LessThan0~5_cout\)) # (!\reg3[3]~input_o\ & ((\inst2|s_countDado\(3)) # (!\inst2|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg3[3]~input_o\,
	datab => \inst2|s_countDado\(3),
	datad => VCC,
	cin => \inst2|LessThan0~5_cout\,
	cout => \inst2|LessThan0~7_cout\);

-- Location: LCCOMB_X89_Y4_N8
\inst2|LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~9_cout\ = CARRY((\inst2|s_countDado\(4) & (\reg3[4]~input_o\ & !\inst2|LessThan0~7_cout\)) # (!\inst2|s_countDado\(4) & ((\reg3[4]~input_o\) # (!\inst2|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(4),
	datab => \reg3[4]~input_o\,
	datad => VCC,
	cin => \inst2|LessThan0~7_cout\,
	cout => \inst2|LessThan0~9_cout\);

-- Location: LCCOMB_X89_Y4_N10
\inst2|LessThan0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~11_cout\ = CARRY((\inst2|s_countDado\(5) & ((!\inst2|LessThan0~9_cout\) # (!\reg3[5]~input_o\))) # (!\inst2|s_countDado\(5) & (!\reg3[5]~input_o\ & !\inst2|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(5),
	datab => \reg3[5]~input_o\,
	datad => VCC,
	cin => \inst2|LessThan0~9_cout\,
	cout => \inst2|LessThan0~11_cout\);

-- Location: LCCOMB_X89_Y4_N12
\inst2|LessThan0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~13_cout\ = CARRY((\reg3[6]~input_o\ & ((!\inst2|LessThan0~11_cout\) # (!\inst2|s_countDado\(6)))) # (!\reg3[6]~input_o\ & (!\inst2|s_countDado\(6) & !\inst2|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg3[6]~input_o\,
	datab => \inst2|s_countDado\(6),
	datad => VCC,
	cin => \inst2|LessThan0~11_cout\,
	cout => \inst2|LessThan0~13_cout\);

-- Location: LCCOMB_X89_Y4_N14
\inst2|LessThan0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~15_cout\ = CARRY((\reg3[7]~input_o\ & (\inst2|s_countDado\(7) & !\inst2|LessThan0~13_cout\)) # (!\reg3[7]~input_o\ & ((\inst2|s_countDado\(7)) # (!\inst2|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg3[7]~input_o\,
	datab => \inst2|s_countDado\(7),
	datad => VCC,
	cin => \inst2|LessThan0~13_cout\,
	cout => \inst2|LessThan0~15_cout\);

-- Location: LCCOMB_X89_Y4_N16
\inst2|LessThan0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~17_cout\ = CARRY((\inst2|s_countDado\(8) & (\reg3[8]~input_o\ & !\inst2|LessThan0~15_cout\)) # (!\inst2|s_countDado\(8) & ((\reg3[8]~input_o\) # (!\inst2|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(8),
	datab => \reg3[8]~input_o\,
	datad => VCC,
	cin => \inst2|LessThan0~15_cout\,
	cout => \inst2|LessThan0~17_cout\);

-- Location: LCCOMB_X89_Y4_N18
\inst2|LessThan0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~19_cout\ = CARRY((\inst2|s_countDado\(9) & ((!\inst2|LessThan0~17_cout\) # (!\reg3[9]~input_o\))) # (!\inst2|s_countDado\(9) & (!\reg3[9]~input_o\ & !\inst2|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(9),
	datab => \reg3[9]~input_o\,
	datad => VCC,
	cin => \inst2|LessThan0~17_cout\,
	cout => \inst2|LessThan0~19_cout\);

-- Location: LCCOMB_X89_Y4_N20
\inst2|LessThan0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~21_cout\ = CARRY((\inst2|s_countDado\(10) & (\reg3[10]~input_o\ & !\inst2|LessThan0~19_cout\)) # (!\inst2|s_countDado\(10) & ((\reg3[10]~input_o\) # (!\inst2|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(10),
	datab => \reg3[10]~input_o\,
	datad => VCC,
	cin => \inst2|LessThan0~19_cout\,
	cout => \inst2|LessThan0~21_cout\);

-- Location: LCCOMB_X89_Y4_N22
\inst2|LessThan0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~23_cout\ = CARRY((\inst2|s_countDado\(11) & ((!\inst2|LessThan0~21_cout\) # (!\reg3[11]~input_o\))) # (!\inst2|s_countDado\(11) & (!\reg3[11]~input_o\ & !\inst2|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(11),
	datab => \reg3[11]~input_o\,
	datad => VCC,
	cin => \inst2|LessThan0~21_cout\,
	cout => \inst2|LessThan0~23_cout\);

-- Location: LCCOMB_X89_Y4_N24
\inst2|LessThan0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~25_cout\ = CARRY((\inst2|s_countDado\(12) & (\reg3[12]~input_o\ & !\inst2|LessThan0~23_cout\)) # (!\inst2|s_countDado\(12) & ((\reg3[12]~input_o\) # (!\inst2|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(12),
	datab => \reg3[12]~input_o\,
	datad => VCC,
	cin => \inst2|LessThan0~23_cout\,
	cout => \inst2|LessThan0~25_cout\);

-- Location: LCCOMB_X89_Y4_N26
\inst2|LessThan0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~27_cout\ = CARRY((\inst2|s_countDado\(13) & ((!\inst2|LessThan0~25_cout\) # (!\reg3[13]~input_o\))) # (!\inst2|s_countDado\(13) & (!\reg3[13]~input_o\ & !\inst2|LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(13),
	datab => \reg3[13]~input_o\,
	datad => VCC,
	cin => \inst2|LessThan0~25_cout\,
	cout => \inst2|LessThan0~27_cout\);

-- Location: LCCOMB_X89_Y4_N28
\inst2|LessThan0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~28_combout\ = (\reg3[14]~input_o\ & ((!\inst2|s_countDado\(14)) # (!\inst2|LessThan0~27_cout\))) # (!\reg3[14]~input_o\ & (!\inst2|LessThan0~27_cout\ & !\inst2|s_countDado\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg3[14]~input_o\,
	datad => \inst2|s_countDado\(14),
	cin => \inst2|LessThan0~27_cout\,
	combout => \inst2|LessThan0~28_combout\);

-- Location: LCCOMB_X85_Y6_N26
\inst2|state_fut~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|state_fut~13_combout\ = (!\inst2|LessThan0~28_combout\ & \inst2|state.VERIFYDATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|LessThan0~28_combout\,
	datad => \inst2|state.VERIFYDATA~q\,
	combout => \inst2|state_fut~13_combout\);

-- Location: FF_X85_Y6_N27
\inst2|state_fut.ENDSTATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|state_fut~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state_fut.ENDSTATE~q\);

-- Location: FF_X85_Y6_N11
\inst2|state.ENDSTATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|state_fut.ENDSTATE~q\,
	clrn => \inst2|ALT_INV_state.IDLE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.ENDSTATE~q\);

-- Location: LCCOMB_X85_Y6_N14
\inst2|s_countCentroid[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[5]~10_combout\ = (\inst2|state.ENDSTATE~q\) # (\inst2|state.STOREDATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.ENDSTATE~q\,
	datad => \inst2|state.STOREDATA~q\,
	combout => \inst2|s_countCentroid[5]~10_combout\);

-- Location: LCCOMB_X86_Y6_N28
\inst2|s_countCentroid[5]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[5]~31_combout\ = (\inst2|state.RESET~2_combout\) # ((\inst2|s_countCentroid[5]~10_combout\) # ((\inst2|state.ENDCENTROIDS~q\ & \inst2|LessThan3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.ENDCENTROIDS~q\,
	datab => \inst2|LessThan3~18_combout\,
	datac => \inst2|state.RESET~2_combout\,
	datad => \inst2|s_countCentroid[5]~10_combout\,
	combout => \inst2|s_countCentroid[5]~31_combout\);

-- Location: FF_X83_Y6_N7
\inst2|s_countCentroid[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countCentroid[0]~11_combout\,
	sclr => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	ena => \inst2|s_countCentroid[5]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countCentroid\(0));

-- Location: LCCOMB_X83_Y6_N8
\inst2|s_countCentroid[1]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[1]~13_combout\ = (\inst2|s_countCentroid\(1) & (!\inst2|s_countCentroid[0]~12\)) # (!\inst2|s_countCentroid\(1) & ((\inst2|s_countCentroid[0]~12\) # (GND)))
-- \inst2|s_countCentroid[1]~14\ = CARRY((!\inst2|s_countCentroid[0]~12\) # (!\inst2|s_countCentroid\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countCentroid\(1),
	datad => VCC,
	cin => \inst2|s_countCentroid[0]~12\,
	combout => \inst2|s_countCentroid[1]~13_combout\,
	cout => \inst2|s_countCentroid[1]~14\);

-- Location: FF_X83_Y6_N9
\inst2|s_countCentroid[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countCentroid[1]~13_combout\,
	sclr => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	ena => \inst2|s_countCentroid[5]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countCentroid\(1));

-- Location: LCCOMB_X83_Y6_N10
\inst2|s_countCentroid[2]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[2]~15_combout\ = (\inst2|s_countCentroid\(2) & (\inst2|s_countCentroid[1]~14\ $ (GND))) # (!\inst2|s_countCentroid\(2) & (!\inst2|s_countCentroid[1]~14\ & VCC))
-- \inst2|s_countCentroid[2]~16\ = CARRY((\inst2|s_countCentroid\(2) & !\inst2|s_countCentroid[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countCentroid\(2),
	datad => VCC,
	cin => \inst2|s_countCentroid[1]~14\,
	combout => \inst2|s_countCentroid[2]~15_combout\,
	cout => \inst2|s_countCentroid[2]~16\);

-- Location: FF_X83_Y6_N11
\inst2|s_countCentroid[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countCentroid[2]~15_combout\,
	sclr => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	ena => \inst2|s_countCentroid[5]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countCentroid\(2));

-- Location: LCCOMB_X83_Y6_N12
\inst2|s_countCentroid[3]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[3]~17_combout\ = (\inst2|s_countCentroid\(3) & (!\inst2|s_countCentroid[2]~16\)) # (!\inst2|s_countCentroid\(3) & ((\inst2|s_countCentroid[2]~16\) # (GND)))
-- \inst2|s_countCentroid[3]~18\ = CARRY((!\inst2|s_countCentroid[2]~16\) # (!\inst2|s_countCentroid\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_countCentroid\(3),
	datad => VCC,
	cin => \inst2|s_countCentroid[2]~16\,
	combout => \inst2|s_countCentroid[3]~17_combout\,
	cout => \inst2|s_countCentroid[3]~18\);

-- Location: FF_X83_Y6_N13
\inst2|s_countCentroid[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countCentroid[3]~17_combout\,
	sclr => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	ena => \inst2|s_countCentroid[5]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countCentroid\(3));

-- Location: LCCOMB_X83_Y6_N14
\inst2|s_countCentroid[4]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[4]~19_combout\ = (\inst2|s_countCentroid\(4) & (\inst2|s_countCentroid[3]~18\ $ (GND))) # (!\inst2|s_countCentroid\(4) & (!\inst2|s_countCentroid[3]~18\ & VCC))
-- \inst2|s_countCentroid[4]~20\ = CARRY((\inst2|s_countCentroid\(4) & !\inst2|s_countCentroid[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_countCentroid\(4),
	datad => VCC,
	cin => \inst2|s_countCentroid[3]~18\,
	combout => \inst2|s_countCentroid[4]~19_combout\,
	cout => \inst2|s_countCentroid[4]~20\);

-- Location: FF_X83_Y6_N15
\inst2|s_countCentroid[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countCentroid[4]~19_combout\,
	sclr => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	ena => \inst2|s_countCentroid[5]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countCentroid\(4));

-- Location: LCCOMB_X83_Y6_N16
\inst2|s_countCentroid[5]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[5]~21_combout\ = (\inst2|s_countCentroid\(5) & (!\inst2|s_countCentroid[4]~20\)) # (!\inst2|s_countCentroid\(5) & ((\inst2|s_countCentroid[4]~20\) # (GND)))
-- \inst2|s_countCentroid[5]~22\ = CARRY((!\inst2|s_countCentroid[4]~20\) # (!\inst2|s_countCentroid\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_countCentroid\(5),
	datad => VCC,
	cin => \inst2|s_countCentroid[4]~20\,
	combout => \inst2|s_countCentroid[5]~21_combout\,
	cout => \inst2|s_countCentroid[5]~22\);

-- Location: FF_X83_Y6_N17
\inst2|s_countCentroid[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countCentroid[5]~21_combout\,
	sclr => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	ena => \inst2|s_countCentroid[5]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countCentroid\(5));

-- Location: LCCOMB_X83_Y6_N18
\inst2|s_countCentroid[6]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[6]~23_combout\ = (\inst2|s_countCentroid\(6) & (\inst2|s_countCentroid[5]~22\ $ (GND))) # (!\inst2|s_countCentroid\(6) & (!\inst2|s_countCentroid[5]~22\ & VCC))
-- \inst2|s_countCentroid[6]~24\ = CARRY((\inst2|s_countCentroid\(6) & !\inst2|s_countCentroid[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_countCentroid\(6),
	datad => VCC,
	cin => \inst2|s_countCentroid[5]~22\,
	combout => \inst2|s_countCentroid[6]~23_combout\,
	cout => \inst2|s_countCentroid[6]~24\);

-- Location: FF_X83_Y6_N19
\inst2|s_countCentroid[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countCentroid[6]~23_combout\,
	sclr => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	ena => \inst2|s_countCentroid[5]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countCentroid\(6));

-- Location: LCCOMB_X83_Y6_N20
\inst2|s_countCentroid[7]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[7]~25_combout\ = (\inst2|s_countCentroid\(7) & (!\inst2|s_countCentroid[6]~24\)) # (!\inst2|s_countCentroid\(7) & ((\inst2|s_countCentroid[6]~24\) # (GND)))
-- \inst2|s_countCentroid[7]~26\ = CARRY((!\inst2|s_countCentroid[6]~24\) # (!\inst2|s_countCentroid\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_countCentroid\(7),
	datad => VCC,
	cin => \inst2|s_countCentroid[6]~24\,
	combout => \inst2|s_countCentroid[7]~25_combout\,
	cout => \inst2|s_countCentroid[7]~26\);

-- Location: FF_X83_Y6_N21
\inst2|s_countCentroid[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countCentroid[7]~25_combout\,
	sclr => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	ena => \inst2|s_countCentroid[5]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countCentroid\(7));

-- Location: LCCOMB_X83_Y6_N22
\inst2|s_countCentroid[8]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[8]~27_combout\ = (\inst2|s_countCentroid\(8) & (\inst2|s_countCentroid[7]~26\ $ (GND))) # (!\inst2|s_countCentroid\(8) & (!\inst2|s_countCentroid[7]~26\ & VCC))
-- \inst2|s_countCentroid[8]~28\ = CARRY((\inst2|s_countCentroid\(8) & !\inst2|s_countCentroid[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_countCentroid\(8),
	datad => VCC,
	cin => \inst2|s_countCentroid[7]~26\,
	combout => \inst2|s_countCentroid[8]~27_combout\,
	cout => \inst2|s_countCentroid[8]~28\);

-- Location: FF_X83_Y6_N23
\inst2|s_countCentroid[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countCentroid[8]~27_combout\,
	sclr => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	ena => \inst2|s_countCentroid[5]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countCentroid\(8));

-- Location: LCCOMB_X83_Y6_N24
\inst2|s_countCentroid[9]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[9]~29_combout\ = \inst2|s_countCentroid[8]~28\ $ (\inst2|s_countCentroid\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|s_countCentroid\(9),
	cin => \inst2|s_countCentroid[8]~28\,
	combout => \inst2|s_countCentroid[9]~29_combout\);

-- Location: FF_X83_Y6_N25
\inst2|s_countCentroid[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countCentroid[9]~29_combout\,
	sclr => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	ena => \inst2|s_countCentroid[5]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countCentroid\(9));

-- Location: LCCOMB_X79_Y4_N6
\inst2|LessThan1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~1_cout\ = CARRY((\reg1[0]~input_o\ & !\inst2|s_countCentroid\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg1[0]~input_o\,
	datab => \inst2|s_countCentroid\(0),
	datad => VCC,
	cout => \inst2|LessThan1~1_cout\);

-- Location: LCCOMB_X79_Y4_N8
\inst2|LessThan1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~3_cout\ = CARRY((\inst2|s_countCentroid\(1) & ((!\inst2|LessThan1~1_cout\) # (!\reg1[1]~input_o\))) # (!\inst2|s_countCentroid\(1) & (!\reg1[1]~input_o\ & !\inst2|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countCentroid\(1),
	datab => \reg1[1]~input_o\,
	datad => VCC,
	cin => \inst2|LessThan1~1_cout\,
	cout => \inst2|LessThan1~3_cout\);

-- Location: LCCOMB_X79_Y4_N10
\inst2|LessThan1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~5_cout\ = CARRY((\reg1[2]~input_o\ & ((!\inst2|LessThan1~3_cout\) # (!\inst2|s_countCentroid\(2)))) # (!\reg1[2]~input_o\ & (!\inst2|s_countCentroid\(2) & !\inst2|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg1[2]~input_o\,
	datab => \inst2|s_countCentroid\(2),
	datad => VCC,
	cin => \inst2|LessThan1~3_cout\,
	cout => \inst2|LessThan1~5_cout\);

-- Location: LCCOMB_X79_Y4_N12
\inst2|LessThan1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~7_cout\ = CARRY((\inst2|s_countCentroid\(3) & ((!\inst2|LessThan1~5_cout\) # (!\reg1[3]~input_o\))) # (!\inst2|s_countCentroid\(3) & (!\reg1[3]~input_o\ & !\inst2|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countCentroid\(3),
	datab => \reg1[3]~input_o\,
	datad => VCC,
	cin => \inst2|LessThan1~5_cout\,
	cout => \inst2|LessThan1~7_cout\);

-- Location: LCCOMB_X79_Y4_N14
\inst2|LessThan1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~9_cout\ = CARRY((\reg1[4]~input_o\ & ((!\inst2|LessThan1~7_cout\) # (!\inst2|s_countCentroid\(4)))) # (!\reg1[4]~input_o\ & (!\inst2|s_countCentroid\(4) & !\inst2|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg1[4]~input_o\,
	datab => \inst2|s_countCentroid\(4),
	datad => VCC,
	cin => \inst2|LessThan1~7_cout\,
	cout => \inst2|LessThan1~9_cout\);

-- Location: LCCOMB_X79_Y4_N16
\inst2|LessThan1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~11_cout\ = CARRY((\reg1[5]~input_o\ & (\inst2|s_countCentroid\(5) & !\inst2|LessThan1~9_cout\)) # (!\reg1[5]~input_o\ & ((\inst2|s_countCentroid\(5)) # (!\inst2|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg1[5]~input_o\,
	datab => \inst2|s_countCentroid\(5),
	datad => VCC,
	cin => \inst2|LessThan1~9_cout\,
	cout => \inst2|LessThan1~11_cout\);

-- Location: LCCOMB_X79_Y4_N18
\inst2|LessThan1~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~13_cout\ = CARRY((\inst2|s_countCentroid\(6) & (\reg1[6]~input_o\ & !\inst2|LessThan1~11_cout\)) # (!\inst2|s_countCentroid\(6) & ((\reg1[6]~input_o\) # (!\inst2|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countCentroid\(6),
	datab => \reg1[6]~input_o\,
	datad => VCC,
	cin => \inst2|LessThan1~11_cout\,
	cout => \inst2|LessThan1~13_cout\);

-- Location: LCCOMB_X79_Y4_N20
\inst2|LessThan1~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~15_cout\ = CARRY((\inst2|s_countCentroid\(7) & ((!\inst2|LessThan1~13_cout\) # (!\reg1[7]~input_o\))) # (!\inst2|s_countCentroid\(7) & (!\reg1[7]~input_o\ & !\inst2|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countCentroid\(7),
	datab => \reg1[7]~input_o\,
	datad => VCC,
	cin => \inst2|LessThan1~13_cout\,
	cout => \inst2|LessThan1~15_cout\);

-- Location: LCCOMB_X79_Y4_N22
\inst2|LessThan1~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~17_cout\ = CARRY((\reg1[8]~input_o\ & ((!\inst2|LessThan1~15_cout\) # (!\inst2|s_countCentroid\(8)))) # (!\reg1[8]~input_o\ & (!\inst2|s_countCentroid\(8) & !\inst2|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg1[8]~input_o\,
	datab => \inst2|s_countCentroid\(8),
	datad => VCC,
	cin => \inst2|LessThan1~15_cout\,
	cout => \inst2|LessThan1~17_cout\);

-- Location: LCCOMB_X79_Y4_N24
\inst2|LessThan1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~18_combout\ = (\inst2|s_countCentroid\(9) & (\inst2|LessThan1~17_cout\ & \reg1[9]~input_o\)) # (!\inst2|s_countCentroid\(9) & ((\inst2|LessThan1~17_cout\) # (\reg1[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_countCentroid\(9),
	datad => \reg1[9]~input_o\,
	cin => \inst2|LessThan1~17_cout\,
	combout => \inst2|LessThan1~18_combout\);

-- Location: LCCOMB_X86_Y6_N10
\inst2|Selector77~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector77~0_combout\ = (\inst2|state.CALCDISTANCE~q\) # ((\inst2|state.LOADDATA~q\ & \inst2|LessThan1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.CALCDISTANCE~q\,
	datac => \inst2|state.LOADDATA~q\,
	datad => \inst2|LessThan1~18_combout\,
	combout => \inst2|Selector77~0_combout\);

-- Location: FF_X86_Y6_N11
\inst2|state_fut.CALCDISTANCE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector77~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state_fut.CALCDISTANCE~q\);

-- Location: FF_X85_Y6_N17
\inst2|state.CALCDISTANCE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|state_fut.CALCDISTANCE~q\,
	clrn => \inst2|ALT_INV_state.IDLE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.CALCDISTANCE~q\);

-- Location: LCCOMB_X115_Y17_N28
\inst2|s_en_SimpleMatch~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_en_SimpleMatch~feeder_combout\ = \inst2|state.CALCDISTANCE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|state.CALCDISTANCE~q\,
	combout => \inst2|s_en_SimpleMatch~feeder_combout\);

-- Location: FF_X115_Y17_N29
\inst2|s_en_SimpleMatch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_en_SimpleMatch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_en_SimpleMatch~q\);

-- Location: LCCOMB_X86_Y6_N16
\inst|s_endDistanceMatch~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_endDistanceMatch~feeder_combout\ = \inst2|s_en_SimpleMatch~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_en_SimpleMatch~q\,
	combout => \inst|s_endDistanceMatch~feeder_combout\);

-- Location: FF_X86_Y6_N17
\inst|s_endDistanceMatch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_endDistanceMatch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_endDistanceMatch~q\);

-- Location: LCCOMB_X86_Y6_N12
\inst2|state.RESET~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|state.RESET~5_combout\ = (\nrst~input_o\ & \inst|s_endDistanceMatch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nrst~input_o\,
	datad => \inst|s_endDistanceMatch~q\,
	combout => \inst2|state.RESET~5_combout\);

-- Location: LCCOMB_X87_Y6_N28
\inst2|state.WAITCALCDISTANCE~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|state.WAITCALCDISTANCE~1_combout\ = (\nrst~input_o\ & ((\inst2|state.RESET~5_combout\) # (\inst2|state.WAITCALCDISTANCE~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.RESET~5_combout\,
	datab => \nrst~input_o\,
	datad => \inst2|state.WAITCALCDISTANCE~1_combout\,
	combout => \inst2|state.WAITCALCDISTANCE~1_combout\);

-- Location: LCCOMB_X87_Y6_N14
\inst2|state.WAITCALCDISTANCE~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|state.WAITCALCDISTANCE~0_combout\ = (\inst2|state.RESET~5_combout\) # (!\nrst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nrst~input_o\,
	datad => \inst2|state.RESET~5_combout\,
	combout => \inst2|state.WAITCALCDISTANCE~0_combout\);

-- Location: FF_X87_Y6_N15
\inst2|state.WAITCALCDISTANCE~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|state.WAITCALCDISTANCE~1_combout\,
	clrn => \inst2|ALT_INV_state.WAITCALCDISTANCE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.WAITCALCDISTANCE~_emulated_q\);

-- Location: LCCOMB_X86_Y6_N0
\inst2|state.WAITCALCDISTANCE~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|state.WAITCALCDISTANCE~2_combout\ = (\nrst~input_o\ & ((\inst2|state.RESET~5_combout\) # (\inst2|state.WAITCALCDISTANCE~1_combout\ $ (\inst2|state.WAITCALCDISTANCE~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nrst~input_o\,
	datab => \inst2|state.WAITCALCDISTANCE~1_combout\,
	datac => \inst2|state.WAITCALCDISTANCE~_emulated_q\,
	datad => \inst2|state.RESET~5_combout\,
	combout => \inst2|state.WAITCALCDISTANCE~2_combout\);

-- Location: FF_X86_Y6_N19
\inst2|state_fut.VERIFYDIMENSION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst2|state.WAITCALCDISTANCE~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state_fut.VERIFYDIMENSION~q\);

-- Location: FF_X85_Y6_N7
\inst2|state.VERIFYDIMENSION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|state_fut.VERIFYDIMENSION~q\,
	clrn => \inst2|ALT_INV_state.IDLE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.VERIFYDIMENSION~q\);

-- Location: LCCOMB_X85_Y6_N16
\inst2|LessThan2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~7_combout\ = (\inst2|s_countDimensions\(4)) # ((\inst2|LessThan2~5_combout\) # (\inst2|s_countDimensions\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(4),
	datab => \inst2|LessThan2~5_combout\,
	datad => \inst2|s_countDimensions\(3),
	combout => \inst2|LessThan2~7_combout\);

-- Location: LCCOMB_X85_Y6_N2
\inst2|Selector75~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector75~0_combout\ = (\inst2|LessThan3~18_combout\ & ((\inst2|state.ENDCENTROIDS~q\) # ((\inst2|LessThan0~28_combout\ & \inst2|state.VERIFYDATA~q\)))) # (!\inst2|LessThan3~18_combout\ & (\inst2|LessThan0~28_combout\ & 
-- ((\inst2|state.VERIFYDATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~18_combout\,
	datab => \inst2|LessThan0~28_combout\,
	datac => \inst2|state.ENDCENTROIDS~q\,
	datad => \inst2|state.VERIFYDATA~q\,
	combout => \inst2|Selector75~0_combout\);

-- Location: LCCOMB_X85_Y6_N8
\inst2|Selector75~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector75~1_combout\ = (\inst2|Selector75~0_combout\) # ((\inst2|state.VERIFYDIMENSION~q\ & (!\inst2|LessThan2~7_combout\ & !\inst2|LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.VERIFYDIMENSION~q\,
	datab => \inst2|LessThan2~7_combout\,
	datac => \inst2|LessThan2~4_combout\,
	datad => \inst2|Selector75~0_combout\,
	combout => \inst2|Selector75~1_combout\);

-- Location: FF_X85_Y6_N9
\inst2|state_fut.LOADDATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector75~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state_fut.LOADDATA~q\);

-- Location: FF_X85_Y6_N19
\inst2|state.LOADDATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|state_fut.LOADDATA~q\,
	clrn => \inst2|ALT_INV_state.IDLE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.LOADDATA~q\);

-- Location: LCCOMB_X86_Y6_N26
\inst2|Selector76~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector76~0_combout\ = (\inst2|state.MINDISTANCE~q\) # ((\inst2|state.LOADDATA~q\ & !\inst2|LessThan1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.LOADDATA~q\,
	datac => \inst2|state.MINDISTANCE~q\,
	datad => \inst2|LessThan1~18_combout\,
	combout => \inst2|Selector76~0_combout\);

-- Location: FF_X86_Y6_N27
\inst2|state_fut.ENDCENTROIDS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state_fut.ENDCENTROIDS~q\);

-- Location: FF_X85_Y6_N3
\inst2|state.ENDCENTROIDS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|state_fut.ENDCENTROIDS~q\,
	clrn => \inst2|ALT_INV_state.IDLE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.ENDCENTROIDS~q\);

-- Location: LCCOMB_X84_Y6_N0
\inst2|s_countDimensions[8]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[8]~40_combout\ = (\inst2|state.ENDCENTROIDS~q\ & !\inst2|LessThan3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.ENDCENTROIDS~q\,
	datac => \inst2|LessThan3~18_combout\,
	combout => \inst2|s_countDimensions[8]~40_combout\);

-- Location: FF_X84_Y6_N1
\inst2|state_fut.STOREDATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_countDimensions[8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state_fut.STOREDATA~q\);

-- Location: FF_X85_Y6_N29
\inst2|state.STOREDATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|state_fut.STOREDATA~q\,
	clrn => \inst2|ALT_INV_state.IDLE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.STOREDATA~q\);

-- Location: LCCOMB_X63_Y4_N20
\inst2|s_wrRam~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_wrRam~feeder_combout\ = \inst2|state.STOREDATA~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|state.STOREDATA~q\,
	combout => \inst2|s_wrRam~feeder_combout\);

-- Location: FF_X63_Y4_N21
\inst2|s_wrRam\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_wrRam~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_wrRam~q\);

-- Location: LCCOMB_X71_Y4_N12
\inst2|s_enMinDistanceMatch~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_enMinDistanceMatch~feeder_combout\ = \inst2|state.MINDISTANCE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|state.MINDISTANCE~q\,
	combout => \inst2|s_enMinDistanceMatch~feeder_combout\);

-- Location: FF_X71_Y4_N13
\inst2|s_enMinDistanceMatch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_enMinDistanceMatch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_enMinDistanceMatch~q\);

-- Location: LCCOMB_X86_Y6_N6
\inst2|WideOr13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|WideOr13~1_combout\ = (\inst2|state.MINDISTANCE~q\) # ((\inst2|state.CALCDISTANCE~q\) # ((\inst2|state.WAITCALCDISTANCE~2_combout\) # (!\inst2|WideOr13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.MINDISTANCE~q\,
	datab => \inst2|state.CALCDISTANCE~q\,
	datac => \inst2|WideOr13~0_combout\,
	datad => \inst2|state.WAITCALCDISTANCE~2_combout\,
	combout => \inst2|WideOr13~1_combout\);

-- Location: LCCOMB_X85_Y8_N16
\inst2|WideOr5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|WideOr5~combout\ = (\inst2|state.VERIFYDATA~q\) # ((\inst2|state.IDLE~q\) # ((\inst2|s_countCentroid[5]~10_combout\) # (\inst2|WideOr13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.VERIFYDATA~q\,
	datab => \inst2|state.IDLE~q\,
	datac => \inst2|s_countCentroid[5]~10_combout\,
	datad => \inst2|WideOr13~1_combout\,
	combout => \inst2|WideOr5~combout\);

-- Location: IOIBUF_X57_Y0_N8
\reg5[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(13),
	o => \reg5[13]~input_o\);

-- Location: IOIBUF_X57_Y0_N1
\reg5[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(12),
	o => \reg5[12]~input_o\);

-- Location: IOIBUF_X77_Y0_N22
\reg5[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(11),
	o => \reg5[11]~input_o\);

-- Location: IOIBUF_X48_Y0_N15
\reg5[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(10),
	o => \reg5[10]~input_o\);

-- Location: IOIBUF_X53_Y0_N22
\reg5[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(9),
	o => \reg5[9]~input_o\);

-- Location: IOIBUF_X84_Y0_N22
\reg5[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(8),
	o => \reg5[8]~input_o\);

-- Location: IOIBUF_X37_Y0_N15
\reg5[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(7),
	o => \reg5[7]~input_o\);

-- Location: IOIBUF_X84_Y0_N8
\reg5[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(6),
	o => \reg5[6]~input_o\);

-- Location: IOIBUF_X77_Y0_N15
\reg5[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(5),
	o => \reg5[5]~input_o\);

-- Location: IOIBUF_X41_Y0_N22
\reg5[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(4),
	o => \reg5[4]~input_o\);

-- Location: IOIBUF_X53_Y0_N15
\reg5[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(3),
	o => \reg5[3]~input_o\);

-- Location: IOIBUF_X84_Y0_N1
\reg5[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(2),
	o => \reg5[2]~input_o\);

-- Location: IOIBUF_X41_Y0_N15
\reg5[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(1),
	o => \reg5[1]~input_o\);

-- Location: IOIBUF_X37_Y0_N22
\reg5[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(0),
	o => \reg5[0]~input_o\);

-- Location: LCCOMB_X84_Y4_N4
\inst2|Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add2~0_combout\ = (\reg5[0]~input_o\ & (\inst2|s_countDimensions\(0) $ (VCC))) # (!\reg5[0]~input_o\ & (\inst2|s_countDimensions\(0) & VCC))
-- \inst2|Add2~1\ = CARRY((\reg5[0]~input_o\ & \inst2|s_countDimensions\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg5[0]~input_o\,
	datab => \inst2|s_countDimensions\(0),
	datad => VCC,
	combout => \inst2|Add2~0_combout\,
	cout => \inst2|Add2~1\);

-- Location: LCCOMB_X84_Y4_N6
\inst2|Add2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add2~2_combout\ = (\inst2|s_countDimensions\(1) & ((\reg5[1]~input_o\ & (\inst2|Add2~1\ & VCC)) # (!\reg5[1]~input_o\ & (!\inst2|Add2~1\)))) # (!\inst2|s_countDimensions\(1) & ((\reg5[1]~input_o\ & (!\inst2|Add2~1\)) # (!\reg5[1]~input_o\ & 
-- ((\inst2|Add2~1\) # (GND)))))
-- \inst2|Add2~3\ = CARRY((\inst2|s_countDimensions\(1) & (!\reg5[1]~input_o\ & !\inst2|Add2~1\)) # (!\inst2|s_countDimensions\(1) & ((!\inst2|Add2~1\) # (!\reg5[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(1),
	datab => \reg5[1]~input_o\,
	datad => VCC,
	cin => \inst2|Add2~1\,
	combout => \inst2|Add2~2_combout\,
	cout => \inst2|Add2~3\);

-- Location: LCCOMB_X84_Y4_N8
\inst2|Add2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add2~4_combout\ = ((\inst2|s_countDimensions\(2) $ (\reg5[2]~input_o\ $ (!\inst2|Add2~3\)))) # (GND)
-- \inst2|Add2~5\ = CARRY((\inst2|s_countDimensions\(2) & ((\reg5[2]~input_o\) # (!\inst2|Add2~3\))) # (!\inst2|s_countDimensions\(2) & (\reg5[2]~input_o\ & !\inst2|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(2),
	datab => \reg5[2]~input_o\,
	datad => VCC,
	cin => \inst2|Add2~3\,
	combout => \inst2|Add2~4_combout\,
	cout => \inst2|Add2~5\);

-- Location: LCCOMB_X84_Y4_N10
\inst2|Add2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add2~6_combout\ = (\reg5[3]~input_o\ & ((\inst2|s_countDimensions\(3) & (\inst2|Add2~5\ & VCC)) # (!\inst2|s_countDimensions\(3) & (!\inst2|Add2~5\)))) # (!\reg5[3]~input_o\ & ((\inst2|s_countDimensions\(3) & (!\inst2|Add2~5\)) # 
-- (!\inst2|s_countDimensions\(3) & ((\inst2|Add2~5\) # (GND)))))
-- \inst2|Add2~7\ = CARRY((\reg5[3]~input_o\ & (!\inst2|s_countDimensions\(3) & !\inst2|Add2~5\)) # (!\reg5[3]~input_o\ & ((!\inst2|Add2~5\) # (!\inst2|s_countDimensions\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg5[3]~input_o\,
	datab => \inst2|s_countDimensions\(3),
	datad => VCC,
	cin => \inst2|Add2~5\,
	combout => \inst2|Add2~6_combout\,
	cout => \inst2|Add2~7\);

-- Location: LCCOMB_X84_Y4_N12
\inst2|Add2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add2~8_combout\ = ((\reg5[4]~input_o\ $ (\inst2|s_countDimensions\(4) $ (!\inst2|Add2~7\)))) # (GND)
-- \inst2|Add2~9\ = CARRY((\reg5[4]~input_o\ & ((\inst2|s_countDimensions\(4)) # (!\inst2|Add2~7\))) # (!\reg5[4]~input_o\ & (\inst2|s_countDimensions\(4) & !\inst2|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg5[4]~input_o\,
	datab => \inst2|s_countDimensions\(4),
	datad => VCC,
	cin => \inst2|Add2~7\,
	combout => \inst2|Add2~8_combout\,
	cout => \inst2|Add2~9\);

-- Location: LCCOMB_X84_Y4_N14
\inst2|Add2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add2~10_combout\ = (\reg5[5]~input_o\ & ((\inst2|s_countDimensions\(5) & (\inst2|Add2~9\ & VCC)) # (!\inst2|s_countDimensions\(5) & (!\inst2|Add2~9\)))) # (!\reg5[5]~input_o\ & ((\inst2|s_countDimensions\(5) & (!\inst2|Add2~9\)) # 
-- (!\inst2|s_countDimensions\(5) & ((\inst2|Add2~9\) # (GND)))))
-- \inst2|Add2~11\ = CARRY((\reg5[5]~input_o\ & (!\inst2|s_countDimensions\(5) & !\inst2|Add2~9\)) # (!\reg5[5]~input_o\ & ((!\inst2|Add2~9\) # (!\inst2|s_countDimensions\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg5[5]~input_o\,
	datab => \inst2|s_countDimensions\(5),
	datad => VCC,
	cin => \inst2|Add2~9\,
	combout => \inst2|Add2~10_combout\,
	cout => \inst2|Add2~11\);

-- Location: LCCOMB_X84_Y4_N16
\inst2|Add2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add2~12_combout\ = ((\inst2|s_countDimensions\(6) $ (\reg5[6]~input_o\ $ (!\inst2|Add2~11\)))) # (GND)
-- \inst2|Add2~13\ = CARRY((\inst2|s_countDimensions\(6) & ((\reg5[6]~input_o\) # (!\inst2|Add2~11\))) # (!\inst2|s_countDimensions\(6) & (\reg5[6]~input_o\ & !\inst2|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(6),
	datab => \reg5[6]~input_o\,
	datad => VCC,
	cin => \inst2|Add2~11\,
	combout => \inst2|Add2~12_combout\,
	cout => \inst2|Add2~13\);

-- Location: LCCOMB_X84_Y4_N18
\inst2|Add2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add2~14_combout\ = (\reg5[7]~input_o\ & ((\inst2|s_countDimensions\(7) & (\inst2|Add2~13\ & VCC)) # (!\inst2|s_countDimensions\(7) & (!\inst2|Add2~13\)))) # (!\reg5[7]~input_o\ & ((\inst2|s_countDimensions\(7) & (!\inst2|Add2~13\)) # 
-- (!\inst2|s_countDimensions\(7) & ((\inst2|Add2~13\) # (GND)))))
-- \inst2|Add2~15\ = CARRY((\reg5[7]~input_o\ & (!\inst2|s_countDimensions\(7) & !\inst2|Add2~13\)) # (!\reg5[7]~input_o\ & ((!\inst2|Add2~13\) # (!\inst2|s_countDimensions\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg5[7]~input_o\,
	datab => \inst2|s_countDimensions\(7),
	datad => VCC,
	cin => \inst2|Add2~13\,
	combout => \inst2|Add2~14_combout\,
	cout => \inst2|Add2~15\);

-- Location: LCCOMB_X84_Y4_N20
\inst2|Add2~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add2~16_combout\ = ((\inst2|s_countDimensions\(8) $ (\reg5[8]~input_o\ $ (!\inst2|Add2~15\)))) # (GND)
-- \inst2|Add2~17\ = CARRY((\inst2|s_countDimensions\(8) & ((\reg5[8]~input_o\) # (!\inst2|Add2~15\))) # (!\inst2|s_countDimensions\(8) & (\reg5[8]~input_o\ & !\inst2|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(8),
	datab => \reg5[8]~input_o\,
	datad => VCC,
	cin => \inst2|Add2~15\,
	combout => \inst2|Add2~16_combout\,
	cout => \inst2|Add2~17\);

-- Location: LCCOMB_X84_Y4_N22
\inst2|Add2~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add2~18_combout\ = (\inst2|s_countDimensions\(9) & ((\reg5[9]~input_o\ & (\inst2|Add2~17\ & VCC)) # (!\reg5[9]~input_o\ & (!\inst2|Add2~17\)))) # (!\inst2|s_countDimensions\(9) & ((\reg5[9]~input_o\ & (!\inst2|Add2~17\)) # (!\reg5[9]~input_o\ & 
-- ((\inst2|Add2~17\) # (GND)))))
-- \inst2|Add2~19\ = CARRY((\inst2|s_countDimensions\(9) & (!\reg5[9]~input_o\ & !\inst2|Add2~17\)) # (!\inst2|s_countDimensions\(9) & ((!\inst2|Add2~17\) # (!\reg5[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(9),
	datab => \reg5[9]~input_o\,
	datad => VCC,
	cin => \inst2|Add2~17\,
	combout => \inst2|Add2~18_combout\,
	cout => \inst2|Add2~19\);

-- Location: LCCOMB_X84_Y4_N24
\inst2|Add2~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add2~20_combout\ = ((\reg5[10]~input_o\ $ (\inst2|s_countDimensions\(10) $ (!\inst2|Add2~19\)))) # (GND)
-- \inst2|Add2~21\ = CARRY((\reg5[10]~input_o\ & ((\inst2|s_countDimensions\(10)) # (!\inst2|Add2~19\))) # (!\reg5[10]~input_o\ & (\inst2|s_countDimensions\(10) & !\inst2|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg5[10]~input_o\,
	datab => \inst2|s_countDimensions\(10),
	datad => VCC,
	cin => \inst2|Add2~19\,
	combout => \inst2|Add2~20_combout\,
	cout => \inst2|Add2~21\);

-- Location: LCCOMB_X84_Y4_N26
\inst2|Add2~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add2~22_combout\ = (\inst2|s_countDimensions\(11) & ((\reg5[11]~input_o\ & (\inst2|Add2~21\ & VCC)) # (!\reg5[11]~input_o\ & (!\inst2|Add2~21\)))) # (!\inst2|s_countDimensions\(11) & ((\reg5[11]~input_o\ & (!\inst2|Add2~21\)) # (!\reg5[11]~input_o\ 
-- & ((\inst2|Add2~21\) # (GND)))))
-- \inst2|Add2~23\ = CARRY((\inst2|s_countDimensions\(11) & (!\reg5[11]~input_o\ & !\inst2|Add2~21\)) # (!\inst2|s_countDimensions\(11) & ((!\inst2|Add2~21\) # (!\reg5[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(11),
	datab => \reg5[11]~input_o\,
	datad => VCC,
	cin => \inst2|Add2~21\,
	combout => \inst2|Add2~22_combout\,
	cout => \inst2|Add2~23\);

-- Location: LCCOMB_X84_Y4_N28
\inst2|Add2~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add2~24_combout\ = ((\reg5[12]~input_o\ $ (\inst2|s_countDimensions\(12) $ (!\inst2|Add2~23\)))) # (GND)
-- \inst2|Add2~25\ = CARRY((\reg5[12]~input_o\ & ((\inst2|s_countDimensions\(12)) # (!\inst2|Add2~23\))) # (!\reg5[12]~input_o\ & (\inst2|s_countDimensions\(12) & !\inst2|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg5[12]~input_o\,
	datab => \inst2|s_countDimensions\(12),
	datad => VCC,
	cin => \inst2|Add2~23\,
	combout => \inst2|Add2~24_combout\,
	cout => \inst2|Add2~25\);

-- Location: LCCOMB_X84_Y4_N30
\inst2|Add2~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add2~26_combout\ = \inst2|Add2~25\ $ (\reg5[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \reg5[13]~input_o\,
	cin => \inst2|Add2~25\,
	combout => \inst2|Add2~26_combout\);

-- Location: LCCOMB_X82_Y6_N10
\inst2|Mult1|mult_core|decoder_node[1][9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[1][9]~combout\ = (\inst2|s_countCentroid\(9) & (\reg8[1]~input_o\ $ (\reg8[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countCentroid\(9),
	combout => \inst2|Mult1|mult_core|decoder_node[1][9]~combout\);

-- Location: LCCOMB_X82_Y6_N8
\inst2|Mult1|mult_core|decoder_node[0][9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[0][9]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countCentroid\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countCentroid\(9),
	combout => \inst2|Mult1|mult_core|decoder_node[0][9]~combout\);

-- Location: LCCOMB_X82_Y6_N18
\inst2|Mult1|mult_core|decoder_node[1][8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[1][8]~combout\ = (\inst2|s_countCentroid\(8) & (\reg8[1]~input_o\ $ (\reg8[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countCentroid\(8),
	combout => \inst2|Mult1|mult_core|decoder_node[1][8]~combout\);

-- Location: LCCOMB_X82_Y8_N28
\inst2|Mult1|mult_core|decoder_node[1][7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[1][7]~combout\ = (\inst2|s_countCentroid\(7) & (\reg8[1]~input_o\ $ (\reg8[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datab => \reg8[0]~input_o\,
	datad => \inst2|s_countCentroid\(7),
	combout => \inst2|Mult1|mult_core|decoder_node[1][7]~combout\);

-- Location: LCCOMB_X83_Y6_N28
\inst2|Mult1|mult_core|decoder_node[0][8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[0][8]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countCentroid\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[0]~input_o\,
	datac => \inst2|s_countCentroid\(8),
	combout => \inst2|Mult1|mult_core|decoder_node[0][8]~combout\);

-- Location: LCCOMB_X82_Y6_N16
\inst2|Mult1|mult_core|decoder_node[0][7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[0][7]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countCentroid\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[0]~input_o\,
	datac => \inst2|s_countCentroid\(7),
	combout => \inst2|Mult1|mult_core|decoder_node[0][7]~combout\);

-- Location: LCCOMB_X82_Y6_N26
\inst2|Mult1|mult_core|decoder_node[1][6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[1][6]~combout\ = (\inst2|s_countCentroid\(6) & (\reg8[1]~input_o\ $ (\reg8[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countCentroid\(6),
	combout => \inst2|Mult1|mult_core|decoder_node[1][6]~combout\);

-- Location: LCCOMB_X82_Y6_N4
\inst2|Mult1|mult_core|decoder_node[0][6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[0][6]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countCentroid\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countCentroid\(6),
	combout => \inst2|Mult1|mult_core|decoder_node[0][6]~combout\);

-- Location: LCCOMB_X82_Y8_N2
\inst2|Mult1|mult_core|decoder_node[1][5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[1][5]~combout\ = (\inst2|s_countCentroid\(5) & (\reg8[0]~input_o\ $ (\reg8[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg8[0]~input_o\,
	datac => \inst2|s_countCentroid\(5),
	datad => \reg8[1]~input_o\,
	combout => \inst2|Mult1|mult_core|decoder_node[1][5]~combout\);

-- Location: LCCOMB_X82_Y6_N22
\inst2|Mult1|mult_core|decoder_node[1][4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[1][4]~combout\ = (\inst2|s_countCentroid\(4) & (\reg8[1]~input_o\ $ (\reg8[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datac => \inst2|s_countCentroid\(4),
	datad => \reg8[0]~input_o\,
	combout => \inst2|Mult1|mult_core|decoder_node[1][4]~combout\);

-- Location: LCCOMB_X82_Y8_N4
\inst2|Mult1|mult_core|decoder_node[0][5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[0][5]~combout\ = (\inst2|s_countCentroid\(5) & !\reg8[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_countCentroid\(5),
	datad => \reg8[0]~input_o\,
	combout => \inst2|Mult1|mult_core|decoder_node[0][5]~combout\);

-- Location: LCCOMB_X83_Y6_N30
\inst2|Mult1|mult_core|decoder_node[0][4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[0][4]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countCentroid\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[0]~input_o\,
	datac => \inst2|s_countCentroid\(4),
	combout => \inst2|Mult1|mult_core|decoder_node[0][4]~combout\);

-- Location: LCCOMB_X82_Y6_N24
\inst2|Mult1|mult_core|decoder_node[1][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[1][3]~combout\ = (\inst2|s_countCentroid\(3) & (\reg8[1]~input_o\ $ (\reg8[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datac => \inst2|s_countCentroid\(3),
	datad => \reg8[0]~input_o\,
	combout => \inst2|Mult1|mult_core|decoder_node[1][3]~combout\);

-- Location: LCCOMB_X82_Y8_N0
\inst2|Mult1|mult_core|decoder_node[1][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[1][2]~combout\ = (\inst2|s_countCentroid\(2) & (\reg8[1]~input_o\ $ (\reg8[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datab => \reg8[0]~input_o\,
	datac => \inst2|s_countCentroid\(2),
	combout => \inst2|Mult1|mult_core|decoder_node[1][2]~combout\);

-- Location: LCCOMB_X83_Y6_N0
\inst2|Mult1|mult_core|decoder_node[0][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[0][3]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countCentroid\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countCentroid\(3),
	combout => \inst2|Mult1|mult_core|decoder_node[0][3]~combout\);

-- Location: LCCOMB_X83_Y6_N26
\inst2|Mult1|mult_core|decoder_node[1][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[1][1]~combout\ = (\inst2|s_countCentroid\(1) & (\reg8[1]~input_o\ $ (\reg8[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datac => \inst2|s_countCentroid\(1),
	datad => \reg8[0]~input_o\,
	combout => \inst2|Mult1|mult_core|decoder_node[1][1]~combout\);

-- Location: LCCOMB_X82_Y8_N30
\inst2|Mult1|mult_core|decoder_node[0][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[0][2]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countCentroid\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg8[0]~input_o\,
	datac => \inst2|s_countCentroid\(2),
	combout => \inst2|Mult1|mult_core|decoder_node[0][2]~combout\);

-- Location: LCCOMB_X83_Y6_N2
\inst2|Mult1|mult_core|decoder_node[1][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[1][0]~combout\ = (\inst2|s_countCentroid\(0) & (\reg8[1]~input_o\ $ (\reg8[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countCentroid\(0),
	combout => \inst2|Mult1|mult_core|decoder_node[1][0]~combout\);

-- Location: LCCOMB_X83_Y6_N4
\inst2|Mult1|mult_core|decoder_node[0][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[0][1]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countCentroid\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[0]~input_o\,
	datac => \inst2|s_countCentroid\(1),
	combout => \inst2|Mult1|mult_core|decoder_node[0][1]~combout\);

-- Location: LCCOMB_X82_Y8_N6
\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\inst2|Mult1|mult_core|decoder_node[1][0]~combout\ & (\inst2|Mult1|mult_core|decoder_node[0][1]~combout\ $ (VCC))) # (!\inst2|Mult1|mult_core|decoder_node[1][0]~combout\ & 
-- (\inst2|Mult1|mult_core|decoder_node[0][1]~combout\ & VCC))
-- \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\inst2|Mult1|mult_core|decoder_node[1][0]~combout\ & \inst2|Mult1|mult_core|decoder_node[0][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|decoder_node[1][0]~combout\,
	datab => \inst2|Mult1|mult_core|decoder_node[0][1]~combout\,
	datad => VCC,
	combout => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X82_Y8_N8
\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\inst2|Mult1|mult_core|decoder_node[1][1]~combout\ & ((\inst2|Mult1|mult_core|decoder_node[0][2]~combout\ & (\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\inst2|Mult1|mult_core|decoder_node[0][2]~combout\ & (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\inst2|Mult1|mult_core|decoder_node[1][1]~combout\ & ((\inst2|Mult1|mult_core|decoder_node[0][2]~combout\ & 
-- (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\inst2|Mult1|mult_core|decoder_node[0][2]~combout\ & ((\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\inst2|Mult1|mult_core|decoder_node[1][1]~combout\ & (!\inst2|Mult1|mult_core|decoder_node[0][2]~combout\ & !\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\inst2|Mult1|mult_core|decoder_node[1][1]~combout\ & ((!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\inst2|Mult1|mult_core|decoder_node[0][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|decoder_node[1][1]~combout\,
	datab => \inst2|Mult1|mult_core|decoder_node[0][2]~combout\,
	datad => VCC,
	cin => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X82_Y8_N10
\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\inst2|Mult1|mult_core|decoder_node[1][2]~combout\ $ (\inst2|Mult1|mult_core|decoder_node[0][3]~combout\ $ (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # 
-- (GND)
-- \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\inst2|Mult1|mult_core|decoder_node[1][2]~combout\ & ((\inst2|Mult1|mult_core|decoder_node[0][3]~combout\) # (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\inst2|Mult1|mult_core|decoder_node[1][2]~combout\ & (\inst2|Mult1|mult_core|decoder_node[0][3]~combout\ & !\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|decoder_node[1][2]~combout\,
	datab => \inst2|Mult1|mult_core|decoder_node[0][3]~combout\,
	datad => VCC,
	cin => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X82_Y8_N12
\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\inst2|Mult1|mult_core|decoder_node[0][4]~combout\ & ((\inst2|Mult1|mult_core|decoder_node[1][3]~combout\ & (\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\inst2|Mult1|mult_core|decoder_node[1][3]~combout\ & (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\inst2|Mult1|mult_core|decoder_node[0][4]~combout\ & ((\inst2|Mult1|mult_core|decoder_node[1][3]~combout\ & 
-- (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\inst2|Mult1|mult_core|decoder_node[1][3]~combout\ & ((\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\inst2|Mult1|mult_core|decoder_node[0][4]~combout\ & (!\inst2|Mult1|mult_core|decoder_node[1][3]~combout\ & !\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\inst2|Mult1|mult_core|decoder_node[0][4]~combout\ & ((!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\inst2|Mult1|mult_core|decoder_node[1][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|decoder_node[0][4]~combout\,
	datab => \inst2|Mult1|mult_core|decoder_node[1][3]~combout\,
	datad => VCC,
	cin => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X82_Y8_N14
\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\inst2|Mult1|mult_core|decoder_node[1][4]~combout\ $ (\inst2|Mult1|mult_core|decoder_node[0][5]~combout\ $ (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # 
-- (GND)
-- \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\inst2|Mult1|mult_core|decoder_node[1][4]~combout\ & ((\inst2|Mult1|mult_core|decoder_node[0][5]~combout\) # (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # 
-- (!\inst2|Mult1|mult_core|decoder_node[1][4]~combout\ & (\inst2|Mult1|mult_core|decoder_node[0][5]~combout\ & !\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|decoder_node[1][4]~combout\,
	datab => \inst2|Mult1|mult_core|decoder_node[0][5]~combout\,
	datad => VCC,
	cin => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X82_Y8_N16
\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\inst2|Mult1|mult_core|decoder_node[0][6]~combout\ & ((\inst2|Mult1|mult_core|decoder_node[1][5]~combout\ & (\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\ & VCC)) # 
-- (!\inst2|Mult1|mult_core|decoder_node[1][5]~combout\ & (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\)))) # (!\inst2|Mult1|mult_core|decoder_node[0][6]~combout\ & ((\inst2|Mult1|mult_core|decoder_node[1][5]~combout\ & 
-- (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\inst2|Mult1|mult_core|decoder_node[1][5]~combout\ & ((\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((\inst2|Mult1|mult_core|decoder_node[0][6]~combout\ & (!\inst2|Mult1|mult_core|decoder_node[1][5]~combout\ & !\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # 
-- (!\inst2|Mult1|mult_core|decoder_node[0][6]~combout\ & ((!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\inst2|Mult1|mult_core|decoder_node[1][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|decoder_node[0][6]~combout\,
	datab => \inst2|Mult1|mult_core|decoder_node[1][5]~combout\,
	datad => VCC,
	cin => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X82_Y8_N18
\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = ((\inst2|Mult1|mult_core|decoder_node[0][7]~combout\ $ (\inst2|Mult1|mult_core|decoder_node[1][6]~combout\ $ (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\)))) # 
-- (GND)
-- \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\inst2|Mult1|mult_core|decoder_node[0][7]~combout\ & ((\inst2|Mult1|mult_core|decoder_node[1][6]~combout\) # (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\))) # 
-- (!\inst2|Mult1|mult_core|decoder_node[0][7]~combout\ & (\inst2|Mult1|mult_core|decoder_node[1][6]~combout\ & !\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|decoder_node[0][7]~combout\,
	datab => \inst2|Mult1|mult_core|decoder_node[1][6]~combout\,
	datad => VCC,
	cin => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X82_Y8_N20
\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\inst2|Mult1|mult_core|decoder_node[1][7]~combout\ & ((\inst2|Mult1|mult_core|decoder_node[0][8]~combout\ & (\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\ & VCC)) # 
-- (!\inst2|Mult1|mult_core|decoder_node[0][8]~combout\ & (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\)))) # (!\inst2|Mult1|mult_core|decoder_node[1][7]~combout\ & ((\inst2|Mult1|mult_core|decoder_node[0][8]~combout\ & 
-- (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\inst2|Mult1|mult_core|decoder_node[0][8]~combout\ & ((\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((\inst2|Mult1|mult_core|decoder_node[1][7]~combout\ & (!\inst2|Mult1|mult_core|decoder_node[0][8]~combout\ & !\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # 
-- (!\inst2|Mult1|mult_core|decoder_node[1][7]~combout\ & ((!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\inst2|Mult1|mult_core|decoder_node[0][8]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|decoder_node[1][7]~combout\,
	datab => \inst2|Mult1|mult_core|decoder_node[0][8]~combout\,
	datad => VCC,
	cin => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X82_Y8_N22
\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = ((\inst2|Mult1|mult_core|decoder_node[0][9]~combout\ $ (\inst2|Mult1|mult_core|decoder_node[1][8]~combout\ $ (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~15\)))) # 
-- (GND)
-- \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~17\ = CARRY((\inst2|Mult1|mult_core|decoder_node[0][9]~combout\ & ((\inst2|Mult1|mult_core|decoder_node[1][8]~combout\) # (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~15\))) # 
-- (!\inst2|Mult1|mult_core|decoder_node[0][9]~combout\ & (\inst2|Mult1|mult_core|decoder_node[1][8]~combout\ & !\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|decoder_node[0][9]~combout\,
	datab => \inst2|Mult1|mult_core|decoder_node[1][8]~combout\,
	datad => VCC,
	cin => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cout => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X82_Y8_N24
\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ = (\inst2|Mult1|mult_core|decoder_node[1][9]~combout\ & (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~17\)) # (!\inst2|Mult1|mult_core|decoder_node[1][9]~combout\ & 
-- ((\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (GND)))
-- \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~19\ = CARRY((!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (!\inst2|Mult1|mult_core|decoder_node[1][9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|decoder_node[1][9]~combout\,
	datad => VCC,
	cin => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~17\,
	combout => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	cout => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X82_Y8_N26
\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ = !\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~19\,
	combout => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\);

-- Location: LCCOMB_X84_Y5_N16
\inst2|Mult1|mult_core|decoder_node[2][9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[2][9]~combout\ = (\inst2|s_countCentroid\(9) & (\reg8[2]~input_o\ $ (((\reg8[1]~input_o\ & \reg8[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datab => \reg8[2]~input_o\,
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countCentroid\(9),
	combout => \inst2|Mult1|mult_core|decoder_node[2][9]~combout\);

-- Location: LCCOMB_X82_Y6_N2
\inst2|Mult1|mult_core|decoder_node[2][8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[2][8]~combout\ = (\inst2|s_countCentroid\(8) & (\reg8[2]~input_o\ $ (((\reg8[1]~input_o\ & \reg8[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datab => \reg8[2]~input_o\,
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countCentroid\(8),
	combout => \inst2|Mult1|mult_core|decoder_node[2][8]~combout\);

-- Location: LCCOMB_X83_Y8_N0
\inst2|Mult1|mult_core|decoder_node[2][7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[2][7]~combout\ = (\inst2|s_countCentroid\(7) & (\reg8[2]~input_o\ $ (((\reg8[0]~input_o\ & \reg8[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[0]~input_o\,
	datab => \reg8[1]~input_o\,
	datac => \inst2|s_countCentroid\(7),
	datad => \reg8[2]~input_o\,
	combout => \inst2|Mult1|mult_core|decoder_node[2][7]~combout\);

-- Location: LCCOMB_X82_Y6_N20
\inst2|Mult1|mult_core|decoder_node[2][6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[2][6]~combout\ = (\inst2|s_countCentroid\(6) & (\reg8[2]~input_o\ $ (((\reg8[1]~input_o\ & \reg8[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datab => \reg8[2]~input_o\,
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countCentroid\(6),
	combout => \inst2|Mult1|mult_core|decoder_node[2][6]~combout\);

-- Location: LCCOMB_X83_Y8_N6
\inst2|Mult1|mult_core|decoder_node[2][5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[2][5]~combout\ = (\inst2|s_countCentroid\(5) & (\reg8[2]~input_o\ $ (((\reg8[0]~input_o\ & \reg8[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[0]~input_o\,
	datab => \reg8[1]~input_o\,
	datac => \inst2|s_countCentroid\(5),
	datad => \reg8[2]~input_o\,
	combout => \inst2|Mult1|mult_core|decoder_node[2][5]~combout\);

-- Location: LCCOMB_X82_Y6_N6
\inst2|Mult1|mult_core|decoder_node[2][4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[2][4]~combout\ = (\inst2|s_countCentroid\(4) & (\reg8[2]~input_o\ $ (((\reg8[1]~input_o\ & \reg8[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datab => \reg8[2]~input_o\,
	datac => \inst2|s_countCentroid\(4),
	datad => \reg8[0]~input_o\,
	combout => \inst2|Mult1|mult_core|decoder_node[2][4]~combout\);

-- Location: LCCOMB_X82_Y6_N12
\inst2|Mult1|mult_core|decoder_node[2][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[2][3]~combout\ = (\inst2|s_countCentroid\(3) & (\reg8[2]~input_o\ $ (((\reg8[1]~input_o\ & \reg8[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datab => \reg8[2]~input_o\,
	datac => \inst2|s_countCentroid\(3),
	datad => \reg8[0]~input_o\,
	combout => \inst2|Mult1|mult_core|decoder_node[2][3]~combout\);

-- Location: LCCOMB_X83_Y8_N4
\inst2|Mult1|mult_core|decoder_node[2][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[2][2]~combout\ = (\inst2|s_countCentroid\(2) & (\reg8[2]~input_o\ $ (((\reg8[0]~input_o\ & \reg8[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[0]~input_o\,
	datab => \reg8[2]~input_o\,
	datac => \reg8[1]~input_o\,
	datad => \inst2|s_countCentroid\(2),
	combout => \inst2|Mult1|mult_core|decoder_node[2][2]~combout\);

-- Location: LCCOMB_X83_Y8_N30
\inst2|Mult1|mult_core|decoder_node[2][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[2][1]~combout\ = (\inst2|s_countCentroid\(1) & (\reg8[2]~input_o\ $ (((\reg8[0]~input_o\ & \reg8[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[0]~input_o\,
	datab => \reg8[1]~input_o\,
	datac => \inst2|s_countCentroid\(1),
	datad => \reg8[2]~input_o\,
	combout => \inst2|Mult1|mult_core|decoder_node[2][1]~combout\);

-- Location: LCCOMB_X83_Y8_N2
\inst2|Mult1|mult_core|decoder_node[2][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[2][0]~combout\ = (\inst2|s_countCentroid\(0) & (\reg8[2]~input_o\ $ (((\reg8[0]~input_o\ & \reg8[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[0]~input_o\,
	datab => \reg8[2]~input_o\,
	datac => \reg8[1]~input_o\,
	datad => \inst2|s_countCentroid\(0),
	combout => \inst2|Mult1|mult_core|decoder_node[2][0]~combout\);

-- Location: LCCOMB_X83_Y8_N8
\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\inst2|Mult1|mult_core|decoder_node[2][0]~combout\ $ (VCC))) # 
-- (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\inst2|Mult1|mult_core|decoder_node[2][0]~combout\ & VCC))
-- \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & \inst2|Mult1|mult_core|decoder_node[2][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \inst2|Mult1|mult_core|decoder_node[2][0]~combout\,
	datad => VCC,
	combout => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X83_Y8_N10
\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\inst2|Mult1|mult_core|decoder_node[2][1]~combout\ & 
-- (\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\inst2|Mult1|mult_core|decoder_node[2][1]~combout\ & (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\inst2|Mult1|mult_core|decoder_node[2][1]~combout\ & (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # 
-- (!\inst2|Mult1|mult_core|decoder_node[2][1]~combout\ & ((\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\inst2|Mult1|mult_core|decoder_node[2][1]~combout\ & 
-- !\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (!\inst2|Mult1|mult_core|decoder_node[2][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datab => \inst2|Mult1|mult_core|decoder_node[2][1]~combout\,
	datad => VCC,
	cin => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X83_Y8_N12
\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ $ (\inst2|Mult1|mult_core|decoder_node[2][2]~combout\ $ 
-- (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\inst2|Mult1|mult_core|decoder_node[2][2]~combout\) # 
-- (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\inst2|Mult1|mult_core|decoder_node[2][2]~combout\ & 
-- !\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \inst2|Mult1|mult_core|decoder_node[2][2]~combout\,
	datad => VCC,
	cin => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X83_Y8_N14
\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = (\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\inst2|Mult1|mult_core|decoder_node[2][3]~combout\ & 
-- (\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\inst2|Mult1|mult_core|decoder_node[2][3]~combout\ & (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)))) # 
-- (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\inst2|Mult1|mult_core|decoder_node[2][3]~combout\ & (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # 
-- (!\inst2|Mult1|mult_core|decoder_node[2][3]~combout\ & ((\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ = CARRY((\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (!\inst2|Mult1|mult_core|decoder_node[2][3]~combout\ & 
-- !\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # 
-- (!\inst2|Mult1|mult_core|decoder_node[2][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \inst2|Mult1|mult_core|decoder_node[2][3]~combout\,
	datad => VCC,
	cin => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	cout => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X83_Y8_N16
\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = ((\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ $ (\inst2|Mult1|mult_core|decoder_node[2][4]~combout\ $ 
-- (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ = CARRY((\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\inst2|Mult1|mult_core|decoder_node[2][4]~combout\) # 
-- (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\))) # (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (\inst2|Mult1|mult_core|decoder_node[2][4]~combout\ & 
-- !\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => \inst2|Mult1|mult_core|decoder_node[2][4]~combout\,
	datad => VCC,
	cin => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\,
	combout => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	cout => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X83_Y8_N18
\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ = (\inst2|Mult1|mult_core|decoder_node[2][5]~combout\ & ((\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & 
-- (\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ & VCC)) # (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)))) # 
-- (!\inst2|Mult1|mult_core|decoder_node[2][5]~combout\ & ((\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # 
-- (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & ((\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ = CARRY((\inst2|Mult1|mult_core|decoder_node[2][5]~combout\ & (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & 
-- !\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # (!\inst2|Mult1|mult_core|decoder_node[2][5]~combout\ & ((!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # 
-- (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|decoder_node[2][5]~combout\,
	datab => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\,
	combout => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	cout => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X83_Y8_N20
\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ = ((\inst2|Mult1|mult_core|decoder_node[2][6]~combout\ $ (\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ $ 
-- (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ = CARRY((\inst2|Mult1|mult_core|decoder_node[2][6]~combout\ & ((\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\) # 
-- (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\))) # (!\inst2|Mult1|mult_core|decoder_node[2][6]~combout\ & (\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- !\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|decoder_node[2][6]~combout\,
	datab => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\,
	combout => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	cout => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X83_Y8_N22
\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ = (\inst2|Mult1|mult_core|decoder_node[2][7]~combout\ & ((\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- (\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ & VCC)) # (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)))) # 
-- (!\inst2|Mult1|mult_core|decoder_node[2][7]~combout\ & ((\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # 
-- (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & ((\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ = CARRY((\inst2|Mult1|mult_core|decoder_node[2][7]~combout\ & (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- !\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # (!\inst2|Mult1|mult_core|decoder_node[2][7]~combout\ & ((!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # 
-- (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|decoder_node[2][7]~combout\,
	datab => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\,
	combout => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	cout => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X83_Y8_N24
\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ = ((\inst2|Mult1|mult_core|decoder_node[2][8]~combout\ $ (\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ $ 
-- (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\)))) # (GND)
-- \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ = CARRY((\inst2|Mult1|mult_core|decoder_node[2][8]~combout\ & ((\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\) # 
-- (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\))) # (!\inst2|Mult1|mult_core|decoder_node[2][8]~combout\ & (\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- !\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|decoder_node[2][8]~combout\,
	datab => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\,
	combout => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	cout => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X83_Y8_N26
\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ = (\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & ((\inst2|Mult1|mult_core|decoder_node[2][9]~combout\ & 
-- (\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ & VCC)) # (!\inst2|Mult1|mult_core|decoder_node[2][9]~combout\ & (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\)))) # 
-- (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & ((\inst2|Mult1|mult_core|decoder_node[2][9]~combout\ & (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\)) # 
-- (!\inst2|Mult1|mult_core|decoder_node[2][9]~combout\ & ((\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\) # (GND)))))
-- \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ = CARRY((\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & (!\inst2|Mult1|mult_core|decoder_node[2][9]~combout\ & 
-- !\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\)) # (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & ((!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\) # 
-- (!\inst2|Mult1|mult_core|decoder_node[2][9]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	datab => \inst2|Mult1|mult_core|decoder_node[2][9]~combout\,
	datad => VCC,
	cin => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\,
	combout => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	cout => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X83_Y8_N28
\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ = !\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\,
	combout => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\);

-- Location: LCCOMB_X85_Y8_N18
\inst2|Mult1|mult_core|decoder_node[0][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult1|mult_core|decoder_node[0][0]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countCentroid\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[0]~input_o\,
	datad => \inst2|s_countCentroid\(0),
	combout => \inst2|Mult1|mult_core|decoder_node[0][0]~combout\);

-- Location: LCCOMB_X84_Y8_N2
\inst2|Add3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add3~0_combout\ = (\inst2|Add2~0_combout\ & (\inst2|Mult1|mult_core|decoder_node[0][0]~combout\ $ (VCC))) # (!\inst2|Add2~0_combout\ & (\inst2|Mult1|mult_core|decoder_node[0][0]~combout\ & VCC))
-- \inst2|Add3~1\ = CARRY((\inst2|Add2~0_combout\ & \inst2|Mult1|mult_core|decoder_node[0][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add2~0_combout\,
	datab => \inst2|Mult1|mult_core|decoder_node[0][0]~combout\,
	datad => VCC,
	combout => \inst2|Add3~0_combout\,
	cout => \inst2|Add3~1\);

-- Location: LCCOMB_X84_Y8_N4
\inst2|Add3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add3~2_combout\ = (\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & ((\inst2|Add2~2_combout\ & (\inst2|Add3~1\ & VCC)) # (!\inst2|Add2~2_combout\ & (!\inst2|Add3~1\)))) # 
-- (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & ((\inst2|Add2~2_combout\ & (!\inst2|Add3~1\)) # (!\inst2|Add2~2_combout\ & ((\inst2|Add3~1\) # (GND)))))
-- \inst2|Add3~3\ = CARRY((\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (!\inst2|Add2~2_combout\ & !\inst2|Add3~1\)) # (!\inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & ((!\inst2|Add3~1\) # 
-- (!\inst2|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datab => \inst2|Add2~2_combout\,
	datad => VCC,
	cin => \inst2|Add3~1\,
	combout => \inst2|Add3~2_combout\,
	cout => \inst2|Add3~3\);

-- Location: LCCOMB_X84_Y8_N6
\inst2|Add3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add3~4_combout\ = ((\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ $ (\inst2|Add2~4_combout\ $ (!\inst2|Add3~3\)))) # (GND)
-- \inst2|Add3~5\ = CARRY((\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & ((\inst2|Add2~4_combout\) # (!\inst2|Add3~3\))) # (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & 
-- (\inst2|Add2~4_combout\ & !\inst2|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datab => \inst2|Add2~4_combout\,
	datad => VCC,
	cin => \inst2|Add3~3\,
	combout => \inst2|Add3~4_combout\,
	cout => \inst2|Add3~5\);

-- Location: LCCOMB_X84_Y8_N8
\inst2|Add3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add3~6_combout\ = (\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & ((\inst2|Add2~6_combout\ & (\inst2|Add3~5\ & VCC)) # (!\inst2|Add2~6_combout\ & (!\inst2|Add3~5\)))) # 
-- (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & ((\inst2|Add2~6_combout\ & (!\inst2|Add3~5\)) # (!\inst2|Add2~6_combout\ & ((\inst2|Add3~5\) # (GND)))))
-- \inst2|Add3~7\ = CARRY((\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & (!\inst2|Add2~6_combout\ & !\inst2|Add3~5\)) # (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & 
-- ((!\inst2|Add3~5\) # (!\inst2|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datab => \inst2|Add2~6_combout\,
	datad => VCC,
	cin => \inst2|Add3~5\,
	combout => \inst2|Add3~6_combout\,
	cout => \inst2|Add3~7\);

-- Location: LCCOMB_X84_Y8_N10
\inst2|Add3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add3~8_combout\ = ((\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ $ (\inst2|Add2~8_combout\ $ (!\inst2|Add3~7\)))) # (GND)
-- \inst2|Add3~9\ = CARRY((\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & ((\inst2|Add2~8_combout\) # (!\inst2|Add3~7\))) # (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & 
-- (\inst2|Add2~8_combout\ & !\inst2|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datab => \inst2|Add2~8_combout\,
	datad => VCC,
	cin => \inst2|Add3~7\,
	combout => \inst2|Add3~8_combout\,
	cout => \inst2|Add3~9\);

-- Location: LCCOMB_X84_Y8_N12
\inst2|Add3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add3~10_combout\ = (\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & ((\inst2|Add2~10_combout\ & (\inst2|Add3~9\ & VCC)) # (!\inst2|Add2~10_combout\ & (!\inst2|Add3~9\)))) # 
-- (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & ((\inst2|Add2~10_combout\ & (!\inst2|Add3~9\)) # (!\inst2|Add2~10_combout\ & ((\inst2|Add3~9\) # (GND)))))
-- \inst2|Add3~11\ = CARRY((\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (!\inst2|Add2~10_combout\ & !\inst2|Add3~9\)) # (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & 
-- ((!\inst2|Add3~9\) # (!\inst2|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datab => \inst2|Add2~10_combout\,
	datad => VCC,
	cin => \inst2|Add3~9\,
	combout => \inst2|Add3~10_combout\,
	cout => \inst2|Add3~11\);

-- Location: LCCOMB_X84_Y8_N14
\inst2|Add3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add3~12_combout\ = ((\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ $ (\inst2|Add2~12_combout\ $ (!\inst2|Add3~11\)))) # (GND)
-- \inst2|Add3~13\ = CARRY((\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & ((\inst2|Add2~12_combout\) # (!\inst2|Add3~11\))) # (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & 
-- (\inst2|Add2~12_combout\ & !\inst2|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datab => \inst2|Add2~12_combout\,
	datad => VCC,
	cin => \inst2|Add3~11\,
	combout => \inst2|Add3~12_combout\,
	cout => \inst2|Add3~13\);

-- Location: LCCOMB_X84_Y8_N16
\inst2|Add3~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add3~14_combout\ = (\inst2|Add2~14_combout\ & ((\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (\inst2|Add3~13\ & VCC)) # (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & 
-- (!\inst2|Add3~13\)))) # (!\inst2|Add2~14_combout\ & ((\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (!\inst2|Add3~13\)) # (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & 
-- ((\inst2|Add3~13\) # (GND)))))
-- \inst2|Add3~15\ = CARRY((\inst2|Add2~14_combout\ & (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & !\inst2|Add3~13\)) # (!\inst2|Add2~14_combout\ & ((!\inst2|Add3~13\) # 
-- (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add2~14_combout\,
	datab => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst2|Add3~13\,
	combout => \inst2|Add3~14_combout\,
	cout => \inst2|Add3~15\);

-- Location: LCCOMB_X84_Y8_N18
\inst2|Add3~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add3~16_combout\ = ((\inst2|Add2~16_combout\ $ (\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ $ (!\inst2|Add3~15\)))) # (GND)
-- \inst2|Add3~17\ = CARRY((\inst2|Add2~16_combout\ & ((\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\) # (!\inst2|Add3~15\))) # (!\inst2|Add2~16_combout\ & 
-- (\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & !\inst2|Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add2~16_combout\,
	datab => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst2|Add3~15\,
	combout => \inst2|Add3~16_combout\,
	cout => \inst2|Add3~17\);

-- Location: LCCOMB_X84_Y8_N20
\inst2|Add3~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add3~18_combout\ = (\inst2|Add2~18_combout\ & ((\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & (\inst2|Add3~17\ & VCC)) # (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & 
-- (!\inst2|Add3~17\)))) # (!\inst2|Add2~18_combout\ & ((\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & (!\inst2|Add3~17\)) # (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & 
-- ((\inst2|Add3~17\) # (GND)))))
-- \inst2|Add3~19\ = CARRY((\inst2|Add2~18_combout\ & (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & !\inst2|Add3~17\)) # (!\inst2|Add2~18_combout\ & ((!\inst2|Add3~17\) # 
-- (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add2~18_combout\,
	datab => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst2|Add3~17\,
	combout => \inst2|Add3~18_combout\,
	cout => \inst2|Add3~19\);

-- Location: LCCOMB_X84_Y8_N22
\inst2|Add3~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add3~20_combout\ = ((\inst2|Add2~20_combout\ $ (\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ $ (!\inst2|Add3~19\)))) # (GND)
-- \inst2|Add3~21\ = CARRY((\inst2|Add2~20_combout\ & ((\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\) # (!\inst2|Add3~19\))) # (!\inst2|Add2~20_combout\ & 
-- (\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & !\inst2|Add3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add2~20_combout\,
	datab => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst2|Add3~19\,
	combout => \inst2|Add3~20_combout\,
	cout => \inst2|Add3~21\);

-- Location: LCCOMB_X84_Y8_N24
\inst2|Add3~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add3~22_combout\ = (\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\inst2|Add2~22_combout\ & (\inst2|Add3~21\ & VCC)) # (!\inst2|Add2~22_combout\ & (!\inst2|Add3~21\)))) # 
-- (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\inst2|Add2~22_combout\ & (!\inst2|Add3~21\)) # (!\inst2|Add2~22_combout\ & ((\inst2|Add3~21\) # (GND)))))
-- \inst2|Add3~23\ = CARRY((\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\inst2|Add2~22_combout\ & !\inst2|Add3~21\)) # (!\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & 
-- ((!\inst2|Add3~21\) # (!\inst2|Add2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datab => \inst2|Add2~22_combout\,
	datad => VCC,
	cin => \inst2|Add3~21\,
	combout => \inst2|Add3~22_combout\,
	cout => \inst2|Add3~23\);

-- Location: LCCOMB_X84_Y8_N26
\inst2|Add3~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add3~24_combout\ = ((\inst2|Add2~24_combout\ $ (\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ $ (!\inst2|Add3~23\)))) # (GND)
-- \inst2|Add3~25\ = CARRY((\inst2|Add2~24_combout\ & ((\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\) # (!\inst2|Add3~23\))) # (!\inst2|Add2~24_combout\ & 
-- (\inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ & !\inst2|Add3~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add2~24_combout\,
	datab => \inst2|Mult1|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \inst2|Add3~23\,
	combout => \inst2|Add3~24_combout\,
	cout => \inst2|Add3~25\);

-- Location: LCCOMB_X84_Y8_N28
\inst2|Add3~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add3~26_combout\ = \inst2|Add3~25\ $ (\inst2|Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Add2~26_combout\,
	cin => \inst2|Add3~25\,
	combout => \inst2|Add3~26_combout\);

-- Location: LCCOMB_X84_Y8_N0
\inst2|Selector52~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector52~0_combout\ = (\inst2|state.LOADDATA~q\ & ((\inst2|Add3~26_combout\) # ((\inst2|WideOr5~combout\ & \inst2|s_addrRamCentroid\(13))))) # (!\inst2|state.LOADDATA~q\ & (\inst2|WideOr5~combout\ & (\inst2|s_addrRamCentroid\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.LOADDATA~q\,
	datab => \inst2|WideOr5~combout\,
	datac => \inst2|s_addrRamCentroid\(13),
	datad => \inst2|Add3~26_combout\,
	combout => \inst2|Selector52~0_combout\);

-- Location: FF_X84_Y8_N1
\inst2|s_addrRamCentroid[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector52~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(13));

-- Location: LCCOMB_X84_Y8_N30
\inst2|Selector53~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector53~0_combout\ = (\inst2|Add3~24_combout\ & ((\inst2|state.LOADDATA~q\) # ((\inst2|s_addrRamCentroid\(12) & \inst2|WideOr5~combout\)))) # (!\inst2|Add3~24_combout\ & (((\inst2|s_addrRamCentroid\(12) & \inst2|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add3~24_combout\,
	datab => \inst2|state.LOADDATA~q\,
	datac => \inst2|s_addrRamCentroid\(12),
	datad => \inst2|WideOr5~combout\,
	combout => \inst2|Selector53~0_combout\);

-- Location: FF_X84_Y8_N31
\inst2|s_addrRamCentroid[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector53~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(12));

-- Location: LCCOMB_X85_Y8_N0
\inst2|Selector54~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector54~0_combout\ = (\inst2|state.LOADDATA~q\ & ((\inst2|Add3~22_combout\) # ((\inst2|WideOr5~combout\ & \inst2|s_addrRamCentroid\(11))))) # (!\inst2|state.LOADDATA~q\ & (\inst2|WideOr5~combout\ & (\inst2|s_addrRamCentroid\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.LOADDATA~q\,
	datab => \inst2|WideOr5~combout\,
	datac => \inst2|s_addrRamCentroid\(11),
	datad => \inst2|Add3~22_combout\,
	combout => \inst2|Selector54~0_combout\);

-- Location: FF_X85_Y8_N1
\inst2|s_addrRamCentroid[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector54~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(11));

-- Location: LCCOMB_X85_Y8_N2
\inst2|Selector55~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector55~0_combout\ = (\inst2|state.LOADDATA~q\ & ((\inst2|Add3~20_combout\) # ((\inst2|WideOr5~combout\ & \inst2|s_addrRamCentroid\(10))))) # (!\inst2|state.LOADDATA~q\ & (\inst2|WideOr5~combout\ & (\inst2|s_addrRamCentroid\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.LOADDATA~q\,
	datab => \inst2|WideOr5~combout\,
	datac => \inst2|s_addrRamCentroid\(10),
	datad => \inst2|Add3~20_combout\,
	combout => \inst2|Selector55~0_combout\);

-- Location: FF_X85_Y8_N3
\inst2|s_addrRamCentroid[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(10));

-- Location: LCCOMB_X85_Y8_N20
\inst2|Selector56~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector56~0_combout\ = (\inst2|state.LOADDATA~q\ & ((\inst2|Add3~18_combout\) # ((\inst2|WideOr5~combout\ & \inst2|s_addrRamCentroid\(9))))) # (!\inst2|state.LOADDATA~q\ & (\inst2|WideOr5~combout\ & (\inst2|s_addrRamCentroid\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.LOADDATA~q\,
	datab => \inst2|WideOr5~combout\,
	datac => \inst2|s_addrRamCentroid\(9),
	datad => \inst2|Add3~18_combout\,
	combout => \inst2|Selector56~0_combout\);

-- Location: FF_X85_Y8_N21
\inst2|s_addrRamCentroid[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector56~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(9));

-- Location: LCCOMB_X85_Y8_N10
\inst2|Selector57~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector57~0_combout\ = (\inst2|state.LOADDATA~q\ & ((\inst2|Add3~16_combout\) # ((\inst2|WideOr5~combout\ & \inst2|s_addrRamCentroid\(8))))) # (!\inst2|state.LOADDATA~q\ & (\inst2|WideOr5~combout\ & (\inst2|s_addrRamCentroid\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.LOADDATA~q\,
	datab => \inst2|WideOr5~combout\,
	datac => \inst2|s_addrRamCentroid\(8),
	datad => \inst2|Add3~16_combout\,
	combout => \inst2|Selector57~0_combout\);

-- Location: FF_X85_Y8_N11
\inst2|s_addrRamCentroid[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(8));

-- Location: LCCOMB_X85_Y8_N28
\inst2|Selector58~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector58~0_combout\ = (\inst2|state.LOADDATA~q\ & ((\inst2|Add3~14_combout\) # ((\inst2|WideOr5~combout\ & \inst2|s_addrRamCentroid\(7))))) # (!\inst2|state.LOADDATA~q\ & (\inst2|WideOr5~combout\ & (\inst2|s_addrRamCentroid\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.LOADDATA~q\,
	datab => \inst2|WideOr5~combout\,
	datac => \inst2|s_addrRamCentroid\(7),
	datad => \inst2|Add3~14_combout\,
	combout => \inst2|Selector58~0_combout\);

-- Location: FF_X85_Y8_N29
\inst2|s_addrRamCentroid[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector58~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(7));

-- Location: LCCOMB_X85_Y8_N30
\inst2|Selector59~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector59~0_combout\ = (\inst2|state.LOADDATA~q\ & ((\inst2|Add3~12_combout\) # ((\inst2|WideOr5~combout\ & \inst2|s_addrRamCentroid\(6))))) # (!\inst2|state.LOADDATA~q\ & (\inst2|WideOr5~combout\ & (\inst2|s_addrRamCentroid\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.LOADDATA~q\,
	datab => \inst2|WideOr5~combout\,
	datac => \inst2|s_addrRamCentroid\(6),
	datad => \inst2|Add3~12_combout\,
	combout => \inst2|Selector59~0_combout\);

-- Location: FF_X85_Y8_N31
\inst2|s_addrRamCentroid[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector59~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(6));

-- Location: LCCOMB_X85_Y8_N4
\inst2|Selector60~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector60~0_combout\ = (\inst2|state.LOADDATA~q\ & ((\inst2|Add3~10_combout\) # ((\inst2|WideOr5~combout\ & \inst2|s_addrRamCentroid\(5))))) # (!\inst2|state.LOADDATA~q\ & (\inst2|WideOr5~combout\ & (\inst2|s_addrRamCentroid\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.LOADDATA~q\,
	datab => \inst2|WideOr5~combout\,
	datac => \inst2|s_addrRamCentroid\(5),
	datad => \inst2|Add3~10_combout\,
	combout => \inst2|Selector60~0_combout\);

-- Location: FF_X85_Y8_N5
\inst2|s_addrRamCentroid[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector60~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(5));

-- Location: LCCOMB_X85_Y8_N22
\inst2|Selector61~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector61~0_combout\ = (\inst2|state.LOADDATA~q\ & ((\inst2|Add3~8_combout\) # ((\inst2|WideOr5~combout\ & \inst2|s_addrRamCentroid\(4))))) # (!\inst2|state.LOADDATA~q\ & (\inst2|WideOr5~combout\ & (\inst2|s_addrRamCentroid\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.LOADDATA~q\,
	datab => \inst2|WideOr5~combout\,
	datac => \inst2|s_addrRamCentroid\(4),
	datad => \inst2|Add3~8_combout\,
	combout => \inst2|Selector61~0_combout\);

-- Location: FF_X85_Y8_N23
\inst2|s_addrRamCentroid[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector61~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(4));

-- Location: LCCOMB_X85_Y8_N12
\inst2|Selector62~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector62~0_combout\ = (\inst2|Add3~6_combout\ & ((\inst2|state.LOADDATA~q\) # ((\inst2|s_addrRamCentroid\(3) & \inst2|WideOr5~combout\)))) # (!\inst2|Add3~6_combout\ & (((\inst2|s_addrRamCentroid\(3) & \inst2|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add3~6_combout\,
	datab => \inst2|state.LOADDATA~q\,
	datac => \inst2|s_addrRamCentroid\(3),
	datad => \inst2|WideOr5~combout\,
	combout => \inst2|Selector62~0_combout\);

-- Location: FF_X85_Y8_N13
\inst2|s_addrRamCentroid[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector62~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(3));

-- Location: LCCOMB_X85_Y8_N14
\inst2|Selector63~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector63~0_combout\ = (\inst2|state.LOADDATA~q\ & ((\inst2|Add3~4_combout\) # ((\inst2|s_addrRamCentroid\(2) & \inst2|WideOr5~combout\)))) # (!\inst2|state.LOADDATA~q\ & (((\inst2|s_addrRamCentroid\(2) & \inst2|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.LOADDATA~q\,
	datab => \inst2|Add3~4_combout\,
	datac => \inst2|s_addrRamCentroid\(2),
	datad => \inst2|WideOr5~combout\,
	combout => \inst2|Selector63~0_combout\);

-- Location: FF_X85_Y8_N15
\inst2|s_addrRamCentroid[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector63~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(2));

-- Location: LCCOMB_X85_Y8_N24
\inst2|Selector64~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector64~0_combout\ = (\inst2|state.LOADDATA~q\ & ((\inst2|Add3~2_combout\) # ((\inst2|s_addrRamCentroid\(1) & \inst2|WideOr5~combout\)))) # (!\inst2|state.LOADDATA~q\ & (((\inst2|s_addrRamCentroid\(1) & \inst2|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.LOADDATA~q\,
	datab => \inst2|Add3~2_combout\,
	datac => \inst2|s_addrRamCentroid\(1),
	datad => \inst2|WideOr5~combout\,
	combout => \inst2|Selector64~0_combout\);

-- Location: FF_X85_Y8_N25
\inst2|s_addrRamCentroid[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(1));

-- Location: LCCOMB_X85_Y8_N26
\inst2|Selector65~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector65~0_combout\ = (\inst2|state.LOADDATA~q\ & ((\inst2|Add3~0_combout\) # ((\inst2|s_addrRamCentroid\(0) & \inst2|WideOr5~combout\)))) # (!\inst2|state.LOADDATA~q\ & (((\inst2|s_addrRamCentroid\(0) & \inst2|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.LOADDATA~q\,
	datab => \inst2|Add3~0_combout\,
	datac => \inst2|s_addrRamCentroid\(0),
	datad => \inst2|WideOr5~combout\,
	combout => \inst2|Selector65~0_combout\);

-- Location: FF_X85_Y8_N27
\inst2|s_addrRamCentroid[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(0));

-- Location: LCCOMB_X90_Y5_N14
\inst2|Mult0|mult_core|decoder_node[2][11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[2][11]~combout\ = (\inst2|s_countDado\(11) & (\reg8[2]~input_o\ $ (((\reg8[1]~input_o\ & \reg8[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datab => \reg8[0]~input_o\,
	datac => \reg8[2]~input_o\,
	datad => \inst2|s_countDado\(11),
	combout => \inst2|Mult0|mult_core|decoder_node[2][11]~combout\);

-- Location: LCCOMB_X85_Y5_N26
\inst2|Mult0|mult_core|decoder_node[1][12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[1][12]~combout\ = (\inst2|s_countDado\(12) & (\reg8[0]~input_o\ $ (\reg8[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[0]~input_o\,
	datab => \reg8[1]~input_o\,
	datad => \inst2|s_countDado\(12),
	combout => \inst2|Mult0|mult_core|decoder_node[1][12]~combout\);

-- Location: LCCOMB_X88_Y4_N16
\inst2|Mult0|mult_core|decoder_node[0][13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[0][13]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countDado\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(13),
	combout => \inst2|Mult0|mult_core|decoder_node[0][13]~combout\);

-- Location: LCCOMB_X85_Y5_N2
\inst2|Mult0|mult_core|decoder_node[1][11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[1][11]~combout\ = (\inst2|s_countDado\(11) & (\reg8[1]~input_o\ $ (\reg8[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(11),
	datab => \reg8[1]~input_o\,
	datad => \reg8[0]~input_o\,
	combout => \inst2|Mult0|mult_core|decoder_node[1][11]~combout\);

-- Location: LCCOMB_X90_Y5_N22
\inst2|Mult0|mult_core|decoder_node[0][12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[0][12]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countDado\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(12),
	combout => \inst2|Mult0|mult_core|decoder_node[0][12]~combout\);

-- Location: LCCOMB_X90_Y5_N4
\inst2|Mult0|mult_core|decoder_node[1][10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[1][10]~combout\ = (\inst2|s_countDado\(10) & (\reg8[1]~input_o\ $ (\reg8[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(10),
	combout => \inst2|Mult0|mult_core|decoder_node[1][10]~combout\);

-- Location: LCCOMB_X85_Y5_N16
\inst2|Mult0|mult_core|decoder_node[0][11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[0][11]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countDado\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[0]~input_o\,
	datac => \inst2|s_countDado\(11),
	combout => \inst2|Mult0|mult_core|decoder_node[0][11]~combout\);

-- Location: LCCOMB_X85_Y5_N10
\inst2|Mult0|mult_core|decoder_node[1][9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[1][9]~combout\ = (\inst2|s_countDado\(9) & (\reg8[1]~input_o\ $ (\reg8[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(9),
	combout => \inst2|Mult0|mult_core|decoder_node[1][9]~combout\);

-- Location: LCCOMB_X86_Y5_N18
\inst2|Mult0|mult_core|decoder_node[0][10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[0][10]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countDado\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[0]~input_o\,
	datac => \inst2|s_countDado\(10),
	combout => \inst2|Mult0|mult_core|decoder_node[0][10]~combout\);

-- Location: LCCOMB_X85_Y5_N14
\inst2|Mult0|mult_core|decoder_node[1][8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[1][8]~combout\ = (\inst2|s_countDado\(8) & (\reg8[1]~input_o\ $ (\reg8[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(8),
	combout => \inst2|Mult0|mult_core|decoder_node[1][8]~combout\);

-- Location: LCCOMB_X85_Y5_N28
\inst2|Mult0|mult_core|decoder_node[0][9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[0][9]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countDado\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(9),
	combout => \inst2|Mult0|mult_core|decoder_node[0][9]~combout\);

-- Location: LCCOMB_X85_Y5_N12
\inst2|Mult0|mult_core|decoder_node[0][8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[0][8]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countDado\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(8),
	combout => \inst2|Mult0|mult_core|decoder_node[0][8]~combout\);

-- Location: LCCOMB_X86_Y5_N20
\inst2|Mult0|mult_core|decoder_node[1][7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[1][7]~combout\ = (\inst2|s_countDado\(7) & (\reg8[1]~input_o\ $ (\reg8[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(7),
	combout => \inst2|Mult0|mult_core|decoder_node[1][7]~combout\);

-- Location: LCCOMB_X90_Y5_N2
\inst2|Mult0|mult_core|decoder_node[1][6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[1][6]~combout\ = (\inst2|s_countDado\(6) & (\reg8[1]~input_o\ $ (\reg8[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(6),
	combout => \inst2|Mult0|mult_core|decoder_node[1][6]~combout\);

-- Location: LCCOMB_X86_Y5_N26
\inst2|Mult0|mult_core|decoder_node[0][7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[0][7]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countDado\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(7),
	combout => \inst2|Mult0|mult_core|decoder_node[0][7]~combout\);

-- Location: LCCOMB_X90_Y5_N20
\inst2|Mult0|mult_core|decoder_node[0][6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[0][6]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countDado\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(6),
	combout => \inst2|Mult0|mult_core|decoder_node[0][6]~combout\);

-- Location: LCCOMB_X90_Y5_N18
\inst2|Mult0|mult_core|decoder_node[1][5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[1][5]~combout\ = (\inst2|s_countDado\(5) & (\reg8[1]~input_o\ $ (\reg8[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(5),
	combout => \inst2|Mult0|mult_core|decoder_node[1][5]~combout\);

-- Location: LCCOMB_X90_Y5_N6
\inst2|Mult0|mult_core|decoder_node[1][4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[1][4]~combout\ = (\inst2|s_countDado\(4) & (\reg8[1]~input_o\ $ (\reg8[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(4),
	combout => \inst2|Mult0|mult_core|decoder_node[1][4]~combout\);

-- Location: LCCOMB_X90_Y5_N8
\inst2|Mult0|mult_core|decoder_node[0][5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[0][5]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countDado\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(5),
	combout => \inst2|Mult0|mult_core|decoder_node[0][5]~combout\);

-- Location: LCCOMB_X89_Y5_N26
\inst2|Mult0|mult_core|decoder_node[1][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[1][3]~combout\ = (\inst2|s_countDado\(3) & (\reg8[0]~input_o\ $ (\reg8[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[0]~input_o\,
	datab => \reg8[1]~input_o\,
	datac => \inst2|s_countDado\(3),
	combout => \inst2|Mult0|mult_core|decoder_node[1][3]~combout\);

-- Location: LCCOMB_X90_Y5_N0
\inst2|Mult0|mult_core|decoder_node[0][4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[0][4]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countDado\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(4),
	combout => \inst2|Mult0|mult_core|decoder_node[0][4]~combout\);

-- Location: LCCOMB_X85_Y5_N22
\inst2|Mult0|mult_core|decoder_node[1][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[1][2]~combout\ = (\inst2|s_countDado\(2) & (\reg8[1]~input_o\ $ (\reg8[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(2),
	combout => \inst2|Mult0|mult_core|decoder_node[1][2]~combout\);

-- Location: LCCOMB_X89_Y5_N28
\inst2|Mult0|mult_core|decoder_node[0][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[0][3]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countDado\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(3),
	combout => \inst2|Mult0|mult_core|decoder_node[0][3]~combout\);

-- Location: LCCOMB_X85_Y5_N30
\inst2|Mult0|mult_core|decoder_node[1][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[1][1]~combout\ = (\inst2|s_countDado\(1) & (\reg8[1]~input_o\ $ (\reg8[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(1),
	combout => \inst2|Mult0|mult_core|decoder_node[1][1]~combout\);

-- Location: LCCOMB_X85_Y5_N8
\inst2|Mult0|mult_core|decoder_node[0][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[0][2]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countDado\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(2),
	combout => \inst2|Mult0|mult_core|decoder_node[0][2]~combout\);

-- Location: LCCOMB_X89_Y5_N30
\inst2|Mult0|mult_core|decoder_node[1][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[1][0]~combout\ = (\inst2|s_countDado\(0) & (\reg8[0]~input_o\ $ (\reg8[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[0]~input_o\,
	datab => \reg8[1]~input_o\,
	datac => \inst2|s_countDado\(0),
	combout => \inst2|Mult0|mult_core|decoder_node[1][0]~combout\);

-- Location: LCCOMB_X85_Y5_N4
\inst2|Mult0|mult_core|decoder_node[0][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[0][1]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countDado\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(1),
	combout => \inst2|Mult0|mult_core|decoder_node[0][1]~combout\);

-- Location: LCCOMB_X89_Y5_N0
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\inst2|Mult0|mult_core|decoder_node[1][0]~combout\ & (\inst2|Mult0|mult_core|decoder_node[0][1]~combout\ $ (VCC))) # (!\inst2|Mult0|mult_core|decoder_node[1][0]~combout\ & 
-- (\inst2|Mult0|mult_core|decoder_node[0][1]~combout\ & VCC))
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\inst2|Mult0|mult_core|decoder_node[1][0]~combout\ & \inst2|Mult0|mult_core|decoder_node[0][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|decoder_node[1][0]~combout\,
	datab => \inst2|Mult0|mult_core|decoder_node[0][1]~combout\,
	datad => VCC,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X89_Y5_N2
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\inst2|Mult0|mult_core|decoder_node[1][1]~combout\ & ((\inst2|Mult0|mult_core|decoder_node[0][2]~combout\ & (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\inst2|Mult0|mult_core|decoder_node[0][2]~combout\ & (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\inst2|Mult0|mult_core|decoder_node[1][1]~combout\ & ((\inst2|Mult0|mult_core|decoder_node[0][2]~combout\ & 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\inst2|Mult0|mult_core|decoder_node[0][2]~combout\ & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\inst2|Mult0|mult_core|decoder_node[1][1]~combout\ & (!\inst2|Mult0|mult_core|decoder_node[0][2]~combout\ & !\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\inst2|Mult0|mult_core|decoder_node[1][1]~combout\ & ((!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\inst2|Mult0|mult_core|decoder_node[0][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|decoder_node[1][1]~combout\,
	datab => \inst2|Mult0|mult_core|decoder_node[0][2]~combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X89_Y5_N4
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\inst2|Mult0|mult_core|decoder_node[1][2]~combout\ $ (\inst2|Mult0|mult_core|decoder_node[0][3]~combout\ $ (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # 
-- (GND)
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\inst2|Mult0|mult_core|decoder_node[1][2]~combout\ & ((\inst2|Mult0|mult_core|decoder_node[0][3]~combout\) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\inst2|Mult0|mult_core|decoder_node[1][2]~combout\ & (\inst2|Mult0|mult_core|decoder_node[0][3]~combout\ & !\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|decoder_node[1][2]~combout\,
	datab => \inst2|Mult0|mult_core|decoder_node[0][3]~combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X89_Y5_N6
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\inst2|Mult0|mult_core|decoder_node[1][3]~combout\ & ((\inst2|Mult0|mult_core|decoder_node[0][4]~combout\ & (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\inst2|Mult0|mult_core|decoder_node[0][4]~combout\ & (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\inst2|Mult0|mult_core|decoder_node[1][3]~combout\ & ((\inst2|Mult0|mult_core|decoder_node[0][4]~combout\ & 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\inst2|Mult0|mult_core|decoder_node[0][4]~combout\ & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\inst2|Mult0|mult_core|decoder_node[1][3]~combout\ & (!\inst2|Mult0|mult_core|decoder_node[0][4]~combout\ & !\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\inst2|Mult0|mult_core|decoder_node[1][3]~combout\ & ((!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\inst2|Mult0|mult_core|decoder_node[0][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|decoder_node[1][3]~combout\,
	datab => \inst2|Mult0|mult_core|decoder_node[0][4]~combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X89_Y5_N8
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\inst2|Mult0|mult_core|decoder_node[1][4]~combout\ $ (\inst2|Mult0|mult_core|decoder_node[0][5]~combout\ $ (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # 
-- (GND)
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\inst2|Mult0|mult_core|decoder_node[1][4]~combout\ & ((\inst2|Mult0|mult_core|decoder_node[0][5]~combout\) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # 
-- (!\inst2|Mult0|mult_core|decoder_node[1][4]~combout\ & (\inst2|Mult0|mult_core|decoder_node[0][5]~combout\ & !\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|decoder_node[1][4]~combout\,
	datab => \inst2|Mult0|mult_core|decoder_node[0][5]~combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X89_Y5_N10
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\inst2|Mult0|mult_core|decoder_node[0][6]~combout\ & ((\inst2|Mult0|mult_core|decoder_node[1][5]~combout\ & (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ & VCC)) # 
-- (!\inst2|Mult0|mult_core|decoder_node[1][5]~combout\ & (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)))) # (!\inst2|Mult0|mult_core|decoder_node[0][6]~combout\ & ((\inst2|Mult0|mult_core|decoder_node[1][5]~combout\ & 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\inst2|Mult0|mult_core|decoder_node[1][5]~combout\ & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((\inst2|Mult0|mult_core|decoder_node[0][6]~combout\ & (!\inst2|Mult0|mult_core|decoder_node[1][5]~combout\ & !\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # 
-- (!\inst2|Mult0|mult_core|decoder_node[0][6]~combout\ & ((!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\inst2|Mult0|mult_core|decoder_node[1][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|decoder_node[0][6]~combout\,
	datab => \inst2|Mult0|mult_core|decoder_node[1][5]~combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X89_Y5_N12
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = ((\inst2|Mult0|mult_core|decoder_node[1][6]~combout\ $ (\inst2|Mult0|mult_core|decoder_node[0][7]~combout\ $ (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))) # 
-- (GND)
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\inst2|Mult0|mult_core|decoder_node[1][6]~combout\ & ((\inst2|Mult0|mult_core|decoder_node[0][7]~combout\) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))) # 
-- (!\inst2|Mult0|mult_core|decoder_node[1][6]~combout\ & (\inst2|Mult0|mult_core|decoder_node[0][7]~combout\ & !\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|decoder_node[1][6]~combout\,
	datab => \inst2|Mult0|mult_core|decoder_node[0][7]~combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X89_Y5_N14
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\inst2|Mult0|mult_core|decoder_node[0][8]~combout\ & ((\inst2|Mult0|mult_core|decoder_node[1][7]~combout\ & (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ & VCC)) # 
-- (!\inst2|Mult0|mult_core|decoder_node[1][7]~combout\ & (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)))) # (!\inst2|Mult0|mult_core|decoder_node[0][8]~combout\ & ((\inst2|Mult0|mult_core|decoder_node[1][7]~combout\ & 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\inst2|Mult0|mult_core|decoder_node[1][7]~combout\ & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((\inst2|Mult0|mult_core|decoder_node[0][8]~combout\ & (!\inst2|Mult0|mult_core|decoder_node[1][7]~combout\ & !\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # 
-- (!\inst2|Mult0|mult_core|decoder_node[0][8]~combout\ & ((!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\inst2|Mult0|mult_core|decoder_node[1][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|decoder_node[0][8]~combout\,
	datab => \inst2|Mult0|mult_core|decoder_node[1][7]~combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X89_Y5_N16
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = ((\inst2|Mult0|mult_core|decoder_node[1][8]~combout\ $ (\inst2|Mult0|mult_core|decoder_node[0][9]~combout\ $ (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\)))) # 
-- (GND)
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ = CARRY((\inst2|Mult0|mult_core|decoder_node[1][8]~combout\ & ((\inst2|Mult0|mult_core|decoder_node[0][9]~combout\) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\))) # 
-- (!\inst2|Mult0|mult_core|decoder_node[1][8]~combout\ & (\inst2|Mult0|mult_core|decoder_node[0][9]~combout\ & !\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|decoder_node[1][8]~combout\,
	datab => \inst2|Mult0|mult_core|decoder_node[0][9]~combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X89_Y5_N18
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ = (\inst2|Mult0|mult_core|decoder_node[1][9]~combout\ & ((\inst2|Mult0|mult_core|decoder_node[0][10]~combout\ & (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ & VCC)) 
-- # (!\inst2|Mult0|mult_core|decoder_node[0][10]~combout\ & (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\)))) # (!\inst2|Mult0|mult_core|decoder_node[1][9]~combout\ & ((\inst2|Mult0|mult_core|decoder_node[0][10]~combout\ & 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\)) # (!\inst2|Mult0|mult_core|decoder_node[0][10]~combout\ & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (GND)))))
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ = CARRY((\inst2|Mult0|mult_core|decoder_node[1][9]~combout\ & (!\inst2|Mult0|mult_core|decoder_node[0][10]~combout\ & !\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\)) # 
-- (!\inst2|Mult0|mult_core|decoder_node[1][9]~combout\ & ((!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (!\inst2|Mult0|mult_core|decoder_node[0][10]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|decoder_node[1][9]~combout\,
	datab => \inst2|Mult0|mult_core|decoder_node[0][10]~combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X89_Y5_N20
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ = ((\inst2|Mult0|mult_core|decoder_node[1][10]~combout\ $ (\inst2|Mult0|mult_core|decoder_node[0][11]~combout\ $ (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\)))) # 
-- (GND)
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ = CARRY((\inst2|Mult0|mult_core|decoder_node[1][10]~combout\ & ((\inst2|Mult0|mult_core|decoder_node[0][11]~combout\) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\))) # 
-- (!\inst2|Mult0|mult_core|decoder_node[1][10]~combout\ & (\inst2|Mult0|mult_core|decoder_node[0][11]~combout\ & !\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|decoder_node[1][10]~combout\,
	datab => \inst2|Mult0|mult_core|decoder_node[0][11]~combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\);

-- Location: LCCOMB_X89_Y5_N22
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ = (\inst2|Mult0|mult_core|decoder_node[1][11]~combout\ & ((\inst2|Mult0|mult_core|decoder_node[0][12]~combout\ & (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ & VCC)) 
-- # (!\inst2|Mult0|mult_core|decoder_node[0][12]~combout\ & (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\)))) # (!\inst2|Mult0|mult_core|decoder_node[1][11]~combout\ & ((\inst2|Mult0|mult_core|decoder_node[0][12]~combout\ & 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\)) # (!\inst2|Mult0|mult_core|decoder_node[0][12]~combout\ & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (GND)))))
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ = CARRY((\inst2|Mult0|mult_core|decoder_node[1][11]~combout\ & (!\inst2|Mult0|mult_core|decoder_node[0][12]~combout\ & !\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\)) # 
-- (!\inst2|Mult0|mult_core|decoder_node[1][11]~combout\ & ((!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (!\inst2|Mult0|mult_core|decoder_node[0][12]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|decoder_node[1][11]~combout\,
	datab => \inst2|Mult0|mult_core|decoder_node[0][12]~combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\);

-- Location: LCCOMB_X89_Y5_N24
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ = \inst2|Mult0|mult_core|decoder_node[1][12]~combout\ $ (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ $ (!\inst2|Mult0|mult_core|decoder_node[0][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|mult_core|decoder_node[1][12]~combout\,
	datad => \inst2|Mult0|mult_core|decoder_node[0][13]~combout\,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\);

-- Location: LCCOMB_X84_Y5_N14
\inst2|Mult0|mult_core|decoder_node[2][10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[2][10]~combout\ = (\inst2|s_countDado\(10) & (\reg8[2]~input_o\ $ (((\reg8[1]~input_o\ & \reg8[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datab => \reg8[2]~input_o\,
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(10),
	combout => \inst2|Mult0|mult_core|decoder_node[2][10]~combout\);

-- Location: LCCOMB_X84_Y5_N4
\inst2|Mult0|mult_core|decoder_node[2][9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[2][9]~combout\ = (\inst2|s_countDado\(9) & (\reg8[2]~input_o\ $ (((\reg8[1]~input_o\ & \reg8[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datab => \reg8[2]~input_o\,
	datac => \inst2|s_countDado\(9),
	datad => \reg8[0]~input_o\,
	combout => \inst2|Mult0|mult_core|decoder_node[2][9]~combout\);

-- Location: LCCOMB_X84_Y5_N6
\inst2|Mult0|mult_core|decoder_node[2][8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[2][8]~combout\ = (\inst2|s_countDado\(8) & (\reg8[2]~input_o\ $ (((\reg8[1]~input_o\ & \reg8[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datab => \reg8[2]~input_o\,
	datac => \inst2|s_countDado\(8),
	datad => \reg8[0]~input_o\,
	combout => \inst2|Mult0|mult_core|decoder_node[2][8]~combout\);

-- Location: LCCOMB_X86_Y5_N24
\inst2|Mult0|mult_core|decoder_node[2][7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[2][7]~combout\ = (\inst2|s_countDado\(7) & (\reg8[2]~input_o\ $ (((\reg8[1]~input_o\ & \reg8[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datab => \reg8[2]~input_o\,
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(7),
	combout => \inst2|Mult0|mult_core|decoder_node[2][7]~combout\);

-- Location: LCCOMB_X88_Y5_N0
\inst2|Mult0|mult_core|decoder_node[2][6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[2][6]~combout\ = (\inst2|s_countDado\(6) & (\reg8[2]~input_o\ $ (((\reg8[0]~input_o\ & \reg8[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[2]~input_o\,
	datab => \reg8[0]~input_o\,
	datac => \reg8[1]~input_o\,
	datad => \inst2|s_countDado\(6),
	combout => \inst2|Mult0|mult_core|decoder_node[2][6]~combout\);

-- Location: LCCOMB_X90_Y5_N12
\inst2|Mult0|mult_core|decoder_node[2][5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[2][5]~combout\ = (\inst2|s_countDado\(5) & (\reg8[2]~input_o\ $ (((\reg8[1]~input_o\ & \reg8[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datab => \reg8[0]~input_o\,
	datac => \reg8[2]~input_o\,
	datad => \inst2|s_countDado\(5),
	combout => \inst2|Mult0|mult_core|decoder_node[2][5]~combout\);

-- Location: LCCOMB_X90_Y5_N26
\inst2|Mult0|mult_core|decoder_node[2][4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[2][4]~combout\ = (\inst2|s_countDado\(4) & (\reg8[2]~input_o\ $ (((\reg8[1]~input_o\ & \reg8[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datab => \reg8[0]~input_o\,
	datac => \reg8[2]~input_o\,
	datad => \inst2|s_countDado\(4),
	combout => \inst2|Mult0|mult_core|decoder_node[2][4]~combout\);

-- Location: LCCOMB_X88_Y5_N30
\inst2|Mult0|mult_core|decoder_node[2][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[2][3]~combout\ = (\inst2|s_countDado\(3) & (\reg8[2]~input_o\ $ (((\reg8[0]~input_o\ & \reg8[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(3),
	datab => \reg8[0]~input_o\,
	datac => \reg8[1]~input_o\,
	datad => \reg8[2]~input_o\,
	combout => \inst2|Mult0|mult_core|decoder_node[2][3]~combout\);

-- Location: LCCOMB_X88_Y5_N28
\inst2|Mult0|mult_core|decoder_node[2][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[2][2]~combout\ = (\inst2|s_countDado\(2) & (\reg8[2]~input_o\ $ (((\reg8[0]~input_o\ & \reg8[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(2),
	datab => \reg8[0]~input_o\,
	datac => \reg8[1]~input_o\,
	datad => \reg8[2]~input_o\,
	combout => \inst2|Mult0|mult_core|decoder_node[2][2]~combout\);

-- Location: LCCOMB_X88_Y5_N26
\inst2|Mult0|mult_core|decoder_node[2][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[2][1]~combout\ = (\inst2|s_countDado\(1) & (\reg8[2]~input_o\ $ (((\reg8[1]~input_o\ & \reg8[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[2]~input_o\,
	datab => \reg8[1]~input_o\,
	datac => \inst2|s_countDado\(1),
	datad => \reg8[0]~input_o\,
	combout => \inst2|Mult0|mult_core|decoder_node[2][1]~combout\);

-- Location: LCCOMB_X90_Y5_N28
\inst2|Mult0|mult_core|decoder_node[2][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[2][0]~combout\ = (\inst2|s_countDado\(0) & (\reg8[2]~input_o\ $ (((\reg8[1]~input_o\ & \reg8[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datab => \reg8[0]~input_o\,
	datac => \reg8[2]~input_o\,
	datad => \inst2|s_countDado\(0),
	combout => \inst2|Mult0|mult_core|decoder_node[2][0]~combout\);

-- Location: LCCOMB_X88_Y5_N2
\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\inst2|Mult0|mult_core|decoder_node[2][0]~combout\ $ (VCC))) # 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\inst2|Mult0|mult_core|decoder_node[2][0]~combout\ & VCC))
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & \inst2|Mult0|mult_core|decoder_node[2][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \inst2|Mult0|mult_core|decoder_node[2][0]~combout\,
	datad => VCC,
	combout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X88_Y5_N4
\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\inst2|Mult0|mult_core|decoder_node[2][1]~combout\ & 
-- (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\inst2|Mult0|mult_core|decoder_node[2][1]~combout\ & (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\inst2|Mult0|mult_core|decoder_node[2][1]~combout\ & (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # 
-- (!\inst2|Mult0|mult_core|decoder_node[2][1]~combout\ & ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\inst2|Mult0|mult_core|decoder_node[2][1]~combout\ & 
-- !\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (!\inst2|Mult0|mult_core|decoder_node[2][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datab => \inst2|Mult0|mult_core|decoder_node[2][1]~combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X88_Y5_N6
\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ $ (\inst2|Mult0|mult_core|decoder_node[2][2]~combout\ $ 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\inst2|Mult0|mult_core|decoder_node[2][2]~combout\) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\inst2|Mult0|mult_core|decoder_node[2][2]~combout\ & 
-- !\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \inst2|Mult0|mult_core|decoder_node[2][2]~combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X88_Y5_N8
\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = (\inst2|Mult0|mult_core|decoder_node[2][3]~combout\ & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & 
-- (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)))) # 
-- (!\inst2|Mult0|mult_core|decoder_node[2][3]~combout\ & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ = CARRY((\inst2|Mult0|mult_core|decoder_node[2][3]~combout\ & (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & 
-- !\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\inst2|Mult0|mult_core|decoder_node[2][3]~combout\ & ((!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|decoder_node[2][3]~combout\,
	datab => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	cout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X88_Y5_N10
\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = ((\inst2|Mult0|mult_core|decoder_node[2][4]~combout\ $ (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ $ 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ = CARRY((\inst2|Mult0|mult_core|decoder_node[2][4]~combout\ & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\))) # (!\inst2|Mult0|mult_core|decoder_node[2][4]~combout\ & (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- !\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|decoder_node[2][4]~combout\,
	datab => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\,
	combout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	cout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X88_Y5_N12
\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ = (\inst2|Mult0|mult_core|decoder_node[2][5]~combout\ & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & 
-- (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ & VCC)) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)))) # 
-- (!\inst2|Mult0|mult_core|decoder_node[2][5]~combout\ & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ = CARRY((\inst2|Mult0|mult_core|decoder_node[2][5]~combout\ & (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & 
-- !\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # (!\inst2|Mult0|mult_core|decoder_node[2][5]~combout\ & ((!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|decoder_node[2][5]~combout\,
	datab => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\,
	combout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	cout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X88_Y5_N14
\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ = ((\inst2|Mult0|mult_core|decoder_node[2][6]~combout\ $ (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ $ 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ = CARRY((\inst2|Mult0|mult_core|decoder_node[2][6]~combout\ & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\))) # (!\inst2|Mult0|mult_core|decoder_node[2][6]~combout\ & (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- !\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|decoder_node[2][6]~combout\,
	datab => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\,
	combout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	cout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X88_Y5_N16
\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ = (\inst2|Mult0|mult_core|decoder_node[2][7]~combout\ & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ & VCC)) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)))) # 
-- (!\inst2|Mult0|mult_core|decoder_node[2][7]~combout\ & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ = CARRY((\inst2|Mult0|mult_core|decoder_node[2][7]~combout\ & (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- !\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # (!\inst2|Mult0|mult_core|decoder_node[2][7]~combout\ & ((!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|decoder_node[2][7]~combout\,
	datab => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\,
	combout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	cout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X88_Y5_N18
\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ = ((\inst2|Mult0|mult_core|decoder_node[2][8]~combout\ $ (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ $ 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\)))) # (GND)
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ = CARRY((\inst2|Mult0|mult_core|decoder_node[2][8]~combout\ & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\))) # (!\inst2|Mult0|mult_core|decoder_node[2][8]~combout\ & (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- !\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|decoder_node[2][8]~combout\,
	datab => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\,
	combout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	cout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X88_Y5_N20
\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ = (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & ((\inst2|Mult0|mult_core|decoder_node[2][9]~combout\ & 
-- (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ & VCC)) # (!\inst2|Mult0|mult_core|decoder_node[2][9]~combout\ & (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\)))) # 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & ((\inst2|Mult0|mult_core|decoder_node[2][9]~combout\ & (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\)) # 
-- (!\inst2|Mult0|mult_core|decoder_node[2][9]~combout\ & ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\) # (GND)))))
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ = CARRY((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & (!\inst2|Mult0|mult_core|decoder_node[2][9]~combout\ & 
-- !\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\)) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & ((!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\) # 
-- (!\inst2|Mult0|mult_core|decoder_node[2][9]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	datab => \inst2|Mult0|mult_core|decoder_node[2][9]~combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\,
	combout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	cout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X88_Y5_N22
\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ = ((\inst2|Mult0|mult_core|decoder_node[2][10]~combout\ $ (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ $ 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\)))) # (GND)
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\ = CARRY((\inst2|Mult0|mult_core|decoder_node[2][10]~combout\ & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\))) # (!\inst2|Mult0|mult_core|decoder_node[2][10]~combout\ & (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & 
-- !\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|decoder_node[2][10]~combout\,
	datab => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\,
	combout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\,
	cout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\);

-- Location: LCCOMB_X88_Y5_N24
\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\ = \inst2|Mult0|mult_core|decoder_node[2][11]~combout\ $ (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\ $ 
-- (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|mult_core|decoder_node[2][11]~combout\,
	datad => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\,
	cin => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\,
	combout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\);

-- Location: LCCOMB_X86_Y5_N22
\inst2|Mult0|mult_core|decoder_node[0][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|decoder_node[0][0]~combout\ = (!\reg8[0]~input_o\ & \inst2|s_countDado\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg8[0]~input_o\,
	datad => \inst2|s_countDado\(0),
	combout => \inst2|Mult0|mult_core|decoder_node[0][0]~combout\);

-- Location: LCCOMB_X87_Y5_N2
\inst2|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add1~0_combout\ = (\inst2|s_countDimensions\(0) & (\inst2|Mult0|mult_core|decoder_node[0][0]~combout\ $ (VCC))) # (!\inst2|s_countDimensions\(0) & (\inst2|Mult0|mult_core|decoder_node[0][0]~combout\ & VCC))
-- \inst2|Add1~1\ = CARRY((\inst2|s_countDimensions\(0) & \inst2|Mult0|mult_core|decoder_node[0][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(0),
	datab => \inst2|Mult0|mult_core|decoder_node[0][0]~combout\,
	datad => VCC,
	combout => \inst2|Add1~0_combout\,
	cout => \inst2|Add1~1\);

-- Location: LCCOMB_X87_Y5_N4
\inst2|Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add1~2_combout\ = (\inst2|s_countDimensions\(1) & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (\inst2|Add1~1\ & VCC)) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (!\inst2|Add1~1\)))) # 
-- (!\inst2|s_countDimensions\(1) & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (!\inst2|Add1~1\)) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & ((\inst2|Add1~1\) # (GND)))))
-- \inst2|Add1~3\ = CARRY((\inst2|s_countDimensions\(1) & (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & !\inst2|Add1~1\)) # (!\inst2|s_countDimensions\(1) & ((!\inst2|Add1~1\) # 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(1),
	datab => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \inst2|Add1~1\,
	combout => \inst2|Add1~2_combout\,
	cout => \inst2|Add1~3\);

-- Location: LCCOMB_X87_Y5_N6
\inst2|Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add1~4_combout\ = ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ $ (\inst2|s_countDimensions\(2) $ (!\inst2|Add1~3\)))) # (GND)
-- \inst2|Add1~5\ = CARRY((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & ((\inst2|s_countDimensions\(2)) # (!\inst2|Add1~3\))) # (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & 
-- (\inst2|s_countDimensions\(2) & !\inst2|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datab => \inst2|s_countDimensions\(2),
	datad => VCC,
	cin => \inst2|Add1~3\,
	combout => \inst2|Add1~4_combout\,
	cout => \inst2|Add1~5\);

-- Location: LCCOMB_X87_Y5_N8
\inst2|Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add1~6_combout\ = (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & ((\inst2|s_countDimensions\(3) & (\inst2|Add1~5\ & VCC)) # (!\inst2|s_countDimensions\(3) & (!\inst2|Add1~5\)))) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & ((\inst2|s_countDimensions\(3) & (!\inst2|Add1~5\)) # (!\inst2|s_countDimensions\(3) & ((\inst2|Add1~5\) # (GND)))))
-- \inst2|Add1~7\ = CARRY((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & (!\inst2|s_countDimensions\(3) & !\inst2|Add1~5\)) # (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & 
-- ((!\inst2|Add1~5\) # (!\inst2|s_countDimensions\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datab => \inst2|s_countDimensions\(3),
	datad => VCC,
	cin => \inst2|Add1~5\,
	combout => \inst2|Add1~6_combout\,
	cout => \inst2|Add1~7\);

-- Location: LCCOMB_X87_Y5_N10
\inst2|Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add1~8_combout\ = ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ $ (\inst2|s_countDimensions\(4) $ (!\inst2|Add1~7\)))) # (GND)
-- \inst2|Add1~9\ = CARRY((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & ((\inst2|s_countDimensions\(4)) # (!\inst2|Add1~7\))) # (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & 
-- (\inst2|s_countDimensions\(4) & !\inst2|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datab => \inst2|s_countDimensions\(4),
	datad => VCC,
	cin => \inst2|Add1~7\,
	combout => \inst2|Add1~8_combout\,
	cout => \inst2|Add1~9\);

-- Location: LCCOMB_X87_Y5_N12
\inst2|Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add1~10_combout\ = (\inst2|s_countDimensions\(5) & ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (\inst2|Add1~9\ & VCC)) # (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & 
-- (!\inst2|Add1~9\)))) # (!\inst2|s_countDimensions\(5) & ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (!\inst2|Add1~9\)) # (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & 
-- ((\inst2|Add1~9\) # (GND)))))
-- \inst2|Add1~11\ = CARRY((\inst2|s_countDimensions\(5) & (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & !\inst2|Add1~9\)) # (!\inst2|s_countDimensions\(5) & ((!\inst2|Add1~9\) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(5),
	datab => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst2|Add1~9\,
	combout => \inst2|Add1~10_combout\,
	cout => \inst2|Add1~11\);

-- Location: LCCOMB_X87_Y5_N14
\inst2|Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add1~12_combout\ = ((\inst2|s_countDimensions\(6) $ (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ $ (!\inst2|Add1~11\)))) # (GND)
-- \inst2|Add1~13\ = CARRY((\inst2|s_countDimensions\(6) & ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\) # (!\inst2|Add1~11\))) # (!\inst2|s_countDimensions\(6) & 
-- (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & !\inst2|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(6),
	datab => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst2|Add1~11\,
	combout => \inst2|Add1~12_combout\,
	cout => \inst2|Add1~13\);

-- Location: LCCOMB_X87_Y5_N16
\inst2|Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add1~14_combout\ = (\inst2|s_countDimensions\(7) & ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (\inst2|Add1~13\ & VCC)) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (!\inst2|Add1~13\)))) # (!\inst2|s_countDimensions\(7) & ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (!\inst2|Add1~13\)) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & ((\inst2|Add1~13\) # (GND)))))
-- \inst2|Add1~15\ = CARRY((\inst2|s_countDimensions\(7) & (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & !\inst2|Add1~13\)) # (!\inst2|s_countDimensions\(7) & ((!\inst2|Add1~13\) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(7),
	datab => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst2|Add1~13\,
	combout => \inst2|Add1~14_combout\,
	cout => \inst2|Add1~15\);

-- Location: LCCOMB_X87_Y5_N18
\inst2|Add1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add1~16_combout\ = ((\inst2|s_countDimensions\(8) $ (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ $ (!\inst2|Add1~15\)))) # (GND)
-- \inst2|Add1~17\ = CARRY((\inst2|s_countDimensions\(8) & ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\) # (!\inst2|Add1~15\))) # (!\inst2|s_countDimensions\(8) & 
-- (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & !\inst2|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(8),
	datab => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst2|Add1~15\,
	combout => \inst2|Add1~16_combout\,
	cout => \inst2|Add1~17\);

-- Location: LCCOMB_X87_Y5_N20
\inst2|Add1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add1~18_combout\ = (\inst2|s_countDimensions\(9) & ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & (\inst2|Add1~17\ & VCC)) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & (!\inst2|Add1~17\)))) # (!\inst2|s_countDimensions\(9) & ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & (!\inst2|Add1~17\)) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & ((\inst2|Add1~17\) # (GND)))))
-- \inst2|Add1~19\ = CARRY((\inst2|s_countDimensions\(9) & (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & !\inst2|Add1~17\)) # (!\inst2|s_countDimensions\(9) & ((!\inst2|Add1~17\) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(9),
	datab => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst2|Add1~17\,
	combout => \inst2|Add1~18_combout\,
	cout => \inst2|Add1~19\);

-- Location: LCCOMB_X87_Y5_N22
\inst2|Add1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add1~20_combout\ = ((\inst2|s_countDimensions\(10) $ (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ $ (!\inst2|Add1~19\)))) # (GND)
-- \inst2|Add1~21\ = CARRY((\inst2|s_countDimensions\(10) & ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\) # (!\inst2|Add1~19\))) # (!\inst2|s_countDimensions\(10) & 
-- (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & !\inst2|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(10),
	datab => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst2|Add1~19\,
	combout => \inst2|Add1~20_combout\,
	cout => \inst2|Add1~21\);

-- Location: LCCOMB_X87_Y5_N24
\inst2|Add1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add1~22_combout\ = (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\inst2|s_countDimensions\(11) & (\inst2|Add1~21\ & VCC)) # (!\inst2|s_countDimensions\(11) & (!\inst2|Add1~21\)))) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & ((\inst2|s_countDimensions\(11) & (!\inst2|Add1~21\)) # (!\inst2|s_countDimensions\(11) & ((\inst2|Add1~21\) # (GND)))))
-- \inst2|Add1~23\ = CARRY((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & (!\inst2|s_countDimensions\(11) & !\inst2|Add1~21\)) # (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & 
-- ((!\inst2|Add1~21\) # (!\inst2|s_countDimensions\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datab => \inst2|s_countDimensions\(11),
	datad => VCC,
	cin => \inst2|Add1~21\,
	combout => \inst2|Add1~22_combout\,
	cout => \inst2|Add1~23\);

-- Location: LCCOMB_X87_Y5_N26
\inst2|Add1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add1~24_combout\ = ((\inst2|s_countDimensions\(12) $ (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ $ (!\inst2|Add1~23\)))) # (GND)
-- \inst2|Add1~25\ = CARRY((\inst2|s_countDimensions\(12) & ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\) # (!\inst2|Add1~23\))) # (!\inst2|s_countDimensions\(12) & 
-- (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ & !\inst2|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDimensions\(12),
	datab => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \inst2|Add1~23\,
	combout => \inst2|Add1~24_combout\,
	cout => \inst2|Add1~25\);

-- Location: LCCOMB_X87_Y5_N28
\inst2|Add1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add1~26_combout\ = \inst2|Add1~25\ $ (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22_combout\,
	cin => \inst2|Add1~25\,
	combout => \inst2|Add1~26_combout\);

-- Location: LCCOMB_X87_Y5_N0
\inst2|Selector38~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector38~0_combout\ = (\inst2|state.STOREDATA~q\ & (\inst2|s_countDado\(13))) # (!\inst2|state.STOREDATA~q\ & (((\inst2|state.LOADDATA~q\ & \inst2|Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.STOREDATA~q\,
	datab => \inst2|s_countDado\(13),
	datac => \inst2|state.LOADDATA~q\,
	datad => \inst2|Add1~26_combout\,
	combout => \inst2|Selector38~0_combout\);

-- Location: LCCOMB_X85_Y6_N10
\inst2|WideOr4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|WideOr4~0_combout\ = (\inst2|state.MINDISTANCE~q\) # ((\inst2|state.CALCDISTANCE~q\) # ((\inst2|state.ENDSTATE~q\) # (\inst2|state.VERIFYDATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.MINDISTANCE~q\,
	datab => \inst2|state.CALCDISTANCE~q\,
	datac => \inst2|state.ENDSTATE~q\,
	datad => \inst2|state.VERIFYDATA~q\,
	combout => \inst2|WideOr4~0_combout\);

-- Location: LCCOMB_X86_Y6_N18
\inst2|WideOr4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|WideOr4~combout\ = (!\inst2|WideOr4~0_combout\ & (\inst2|WideOr13~0_combout\ & (!\inst2|state.WAITCALCDISTANCE~2_combout\ & !\inst2|state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideOr4~0_combout\,
	datab => \inst2|WideOr13~0_combout\,
	datac => \inst2|state.WAITCALCDISTANCE~2_combout\,
	datad => \inst2|state.IDLE~q\,
	combout => \inst2|WideOr4~combout\);

-- Location: FF_X87_Y5_N1
\inst2|s_addrRamDado[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector38~0_combout\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(13));

-- Location: LCCOMB_X87_Y5_N30
\inst2|Selector39~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector39~0_combout\ = (\inst2|state.STOREDATA~q\ & (((\inst2|s_countDado\(12))))) # (!\inst2|state.STOREDATA~q\ & (\inst2|state.LOADDATA~q\ & (\inst2|Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.STOREDATA~q\,
	datab => \inst2|state.LOADDATA~q\,
	datac => \inst2|Add1~24_combout\,
	datad => \inst2|s_countDado\(12),
	combout => \inst2|Selector39~0_combout\);

-- Location: FF_X87_Y5_N31
\inst2|s_addrRamDado[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector39~0_combout\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(12));

-- Location: LCCOMB_X86_Y5_N4
\inst2|Selector40~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector40~0_combout\ = (\inst2|state.STOREDATA~q\ & (\inst2|s_countDado\(11))) # (!\inst2|state.STOREDATA~q\ & (((\inst2|state.LOADDATA~q\ & \inst2|Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(11),
	datab => \inst2|state.LOADDATA~q\,
	datac => \inst2|state.STOREDATA~q\,
	datad => \inst2|Add1~22_combout\,
	combout => \inst2|Selector40~0_combout\);

-- Location: FF_X86_Y5_N5
\inst2|s_addrRamDado[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector40~0_combout\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(11));

-- Location: LCCOMB_X86_Y5_N14
\inst2|Selector41~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector41~0_combout\ = (\inst2|state.STOREDATA~q\ & (((\inst2|s_countDado\(10))))) # (!\inst2|state.STOREDATA~q\ & (\inst2|state.LOADDATA~q\ & ((\inst2|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.LOADDATA~q\,
	datab => \inst2|state.STOREDATA~q\,
	datac => \inst2|s_countDado\(10),
	datad => \inst2|Add1~20_combout\,
	combout => \inst2|Selector41~0_combout\);

-- Location: FF_X86_Y5_N15
\inst2|s_addrRamDado[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector41~0_combout\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(10));

-- Location: LCCOMB_X86_Y5_N28
\inst2|Selector42~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector42~0_combout\ = (\inst2|state.STOREDATA~q\ & (\inst2|s_countDado\(9))) # (!\inst2|state.STOREDATA~q\ & (((\inst2|Add1~18_combout\ & \inst2|state.LOADDATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(9),
	datab => \inst2|state.STOREDATA~q\,
	datac => \inst2|Add1~18_combout\,
	datad => \inst2|state.LOADDATA~q\,
	combout => \inst2|Selector42~0_combout\);

-- Location: FF_X86_Y5_N29
\inst2|s_addrRamDado[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector42~0_combout\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(9));

-- Location: LCCOMB_X86_Y5_N2
\inst2|Selector43~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector43~0_combout\ = (\inst2|state.STOREDATA~q\ & (((\inst2|s_countDado\(8))))) # (!\inst2|state.STOREDATA~q\ & (\inst2|state.LOADDATA~q\ & ((\inst2|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.LOADDATA~q\,
	datab => \inst2|s_countDado\(8),
	datac => \inst2|state.STOREDATA~q\,
	datad => \inst2|Add1~16_combout\,
	combout => \inst2|Selector43~0_combout\);

-- Location: FF_X86_Y5_N3
\inst2|s_addrRamDado[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector43~0_combout\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(8));

-- Location: LCCOMB_X86_Y5_N8
\inst2|Selector44~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector44~0_combout\ = (\inst2|state.STOREDATA~q\ & (\inst2|s_countDado\(7))) # (!\inst2|state.STOREDATA~q\ & (((\inst2|state.LOADDATA~q\ & \inst2|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(7),
	datab => \inst2|state.LOADDATA~q\,
	datac => \inst2|state.STOREDATA~q\,
	datad => \inst2|Add1~14_combout\,
	combout => \inst2|Selector44~0_combout\);

-- Location: FF_X86_Y5_N9
\inst2|s_addrRamDado[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector44~0_combout\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(7));

-- Location: LCCOMB_X86_Y5_N10
\inst2|Selector45~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector45~0_combout\ = (\inst2|state.STOREDATA~q\ & (\inst2|s_countDado\(6))) # (!\inst2|state.STOREDATA~q\ & (((\inst2|Add1~12_combout\ & \inst2|state.LOADDATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(6),
	datab => \inst2|state.STOREDATA~q\,
	datac => \inst2|Add1~12_combout\,
	datad => \inst2|state.LOADDATA~q\,
	combout => \inst2|Selector45~0_combout\);

-- Location: FF_X86_Y5_N11
\inst2|s_addrRamDado[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector45~0_combout\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(6));

-- Location: LCCOMB_X86_Y5_N16
\inst2|Selector46~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector46~0_combout\ = (\inst2|state.STOREDATA~q\ & (\inst2|s_countDado\(5))) # (!\inst2|state.STOREDATA~q\ & (((\inst2|Add1~10_combout\ & \inst2|state.LOADDATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(5),
	datab => \inst2|state.STOREDATA~q\,
	datac => \inst2|Add1~10_combout\,
	datad => \inst2|state.LOADDATA~q\,
	combout => \inst2|Selector46~0_combout\);

-- Location: FF_X86_Y5_N17
\inst2|s_addrRamDado[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector46~0_combout\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(5));

-- Location: LCCOMB_X86_Y5_N6
\inst2|Selector47~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector47~0_combout\ = (\inst2|state.STOREDATA~q\ & (\inst2|s_countDado\(4))) # (!\inst2|state.STOREDATA~q\ & (((\inst2|Add1~8_combout\ & \inst2|state.LOADDATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(4),
	datab => \inst2|state.STOREDATA~q\,
	datac => \inst2|Add1~8_combout\,
	datad => \inst2|state.LOADDATA~q\,
	combout => \inst2|Selector47~0_combout\);

-- Location: FF_X86_Y5_N7
\inst2|s_addrRamDado[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector47~0_combout\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(4));

-- Location: LCCOMB_X86_Y5_N0
\inst2|Selector48~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector48~0_combout\ = (\inst2|state.STOREDATA~q\ & (\inst2|s_countDado\(3))) # (!\inst2|state.STOREDATA~q\ & (((\inst2|Add1~6_combout\ & \inst2|state.LOADDATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_countDado\(3),
	datab => \inst2|state.STOREDATA~q\,
	datac => \inst2|Add1~6_combout\,
	datad => \inst2|state.LOADDATA~q\,
	combout => \inst2|Selector48~0_combout\);

-- Location: FF_X86_Y5_N1
\inst2|s_addrRamDado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector48~0_combout\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(3));

-- Location: LCCOMB_X87_Y6_N20
\inst2|Selector49~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector49~0_combout\ = (\inst2|state.STOREDATA~q\ & (((\inst2|s_countDado\(2))))) # (!\inst2|state.STOREDATA~q\ & (\inst2|state.LOADDATA~q\ & ((\inst2|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.LOADDATA~q\,
	datab => \inst2|s_countDado\(2),
	datac => \inst2|state.STOREDATA~q\,
	datad => \inst2|Add1~4_combout\,
	combout => \inst2|Selector49~0_combout\);

-- Location: FF_X87_Y6_N21
\inst2|s_addrRamDado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector49~0_combout\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(2));

-- Location: LCCOMB_X87_Y6_N26
\inst2|Selector50~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector50~0_combout\ = (\inst2|state.STOREDATA~q\ & (\inst2|s_countDado\(1))) # (!\inst2|state.STOREDATA~q\ & (((\inst2|state.LOADDATA~q\ & \inst2|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.STOREDATA~q\,
	datab => \inst2|s_countDado\(1),
	datac => \inst2|state.LOADDATA~q\,
	datad => \inst2|Add1~2_combout\,
	combout => \inst2|Selector50~0_combout\);

-- Location: FF_X87_Y6_N27
\inst2|s_addrRamDado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector50~0_combout\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(1));

-- Location: LCCOMB_X87_Y6_N24
\inst2|Selector51~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector51~0_combout\ = (\inst2|state.STOREDATA~q\ & (((\inst2|s_countDado\(0))))) # (!\inst2|state.STOREDATA~q\ & (\inst2|state.LOADDATA~q\ & ((\inst2|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.LOADDATA~q\,
	datab => \inst2|s_countDado\(0),
	datac => \inst2|state.STOREDATA~q\,
	datad => \inst2|Add1~0_combout\,
	combout => \inst2|Selector51~0_combout\);

-- Location: FF_X87_Y6_N25
\inst2|s_addrRamDado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector51~0_combout\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(0));

-- Location: IOIBUF_X117_Y41_N1
\dado[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(5),
	o => \dado[5]~input_o\);

-- Location: LCCOMB_X116_Y10_N22
\inst|s_dado[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_dado[5]~feeder_combout\ = \dado[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[5]~input_o\,
	combout => \inst|s_dado[5]~feeder_combout\);

-- Location: FF_X116_Y10_N23
\inst|s_dado[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_dado[5]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(5));

-- Location: IOIBUF_X117_Y8_N1
\centroid[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(5),
	o => \centroid[5]~input_o\);

-- Location: LCCOMB_X116_Y10_N8
\inst|s_centroid[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[5]~feeder_combout\ = \centroid[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[5]~input_o\,
	combout => \inst|s_centroid[5]~feeder_combout\);

-- Location: FF_X116_Y10_N9
\inst|s_centroid[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[5]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(5));

-- Location: IOIBUF_X117_Y13_N1
\dado[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(4),
	o => \dado[4]~input_o\);

-- Location: FF_X116_Y10_N17
\inst|s_dado[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[4]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(4));

-- Location: IOIBUF_X117_Y15_N8
\centroid[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(4),
	o => \centroid[4]~input_o\);

-- Location: LCCOMB_X116_Y10_N18
\inst|s_centroid[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[4]~feeder_combout\ = \centroid[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[4]~input_o\,
	combout => \inst|s_centroid[4]~feeder_combout\);

-- Location: FF_X116_Y10_N19
\inst|s_centroid[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[4]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(4));

-- Location: LCCOMB_X116_Y10_N16
\inst|Equal7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal7~2_combout\ = (\inst|s_dado\(5) & (\inst|s_centroid\(5) & (\inst|s_dado\(4) $ (!\inst|s_centroid\(4))))) # (!\inst|s_dado\(5) & (!\inst|s_centroid\(5) & (\inst|s_dado\(4) $ (!\inst|s_centroid\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_dado\(5),
	datab => \inst|s_centroid\(5),
	datac => \inst|s_dado\(4),
	datad => \inst|s_centroid\(4),
	combout => \inst|Equal7~2_combout\);

-- Location: IOIBUF_X117_Y11_N8
\centroid[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(2),
	o => \centroid[2]~input_o\);

-- Location: LCCOMB_X116_Y10_N10
\inst|s_centroid[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[2]~feeder_combout\ = \centroid[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[2]~input_o\,
	combout => \inst|s_centroid[2]~feeder_combout\);

-- Location: FF_X116_Y10_N11
\inst|s_centroid[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[2]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(2));

-- Location: IOIBUF_X117_Y8_N8
\dado[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(3),
	o => \dado[3]~input_o\);

-- Location: LCCOMB_X116_Y10_N14
\inst|s_dado[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_dado[3]~feeder_combout\ = \dado[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[3]~input_o\,
	combout => \inst|s_dado[3]~feeder_combout\);

-- Location: FF_X116_Y10_N15
\inst|s_dado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_dado[3]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(3));

-- Location: IOIBUF_X117_Y15_N1
\dado[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(2),
	o => \dado[2]~input_o\);

-- Location: FF_X116_Y10_N5
\inst|s_dado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[2]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(2));

-- Location: IOIBUF_X117_Y42_N8
\centroid[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(3),
	o => \centroid[3]~input_o\);

-- Location: LCCOMB_X116_Y10_N0
\inst|s_centroid[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[3]~feeder_combout\ = \centroid[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[3]~input_o\,
	combout => \inst|s_centroid[3]~feeder_combout\);

-- Location: FF_X116_Y10_N1
\inst|s_centroid[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[3]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(3));

-- Location: LCCOMB_X116_Y10_N4
\inst|Equal7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal7~1_combout\ = (\inst|s_centroid\(2) & (\inst|s_dado\(2) & (\inst|s_dado\(3) $ (!\inst|s_centroid\(3))))) # (!\inst|s_centroid\(2) & (!\inst|s_dado\(2) & (\inst|s_dado\(3) $ (!\inst|s_centroid\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_centroid\(2),
	datab => \inst|s_dado\(3),
	datac => \inst|s_dado\(2),
	datad => \inst|s_centroid\(3),
	combout => \inst|Equal7~1_combout\);

-- Location: IOIBUF_X117_Y42_N1
\centroid[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(7),
	o => \centroid[7]~input_o\);

-- Location: FF_X116_Y10_N27
\inst|s_centroid[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \centroid[7]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(7));

-- Location: IOIBUF_X117_Y11_N1
\dado[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(7),
	o => \dado[7]~input_o\);

-- Location: FF_X116_Y10_N21
\inst|s_dado[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[7]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(7));

-- Location: IOIBUF_X117_Y10_N8
\dado[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(6),
	o => \dado[6]~input_o\);

-- Location: FF_X116_Y10_N31
\inst|s_dado[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[6]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(6));

-- Location: IOIBUF_X117_Y59_N1
\centroid[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(6),
	o => \centroid[6]~input_o\);

-- Location: LCCOMB_X116_Y17_N16
\inst|s_centroid[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[6]~feeder_combout\ = \centroid[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[6]~input_o\,
	combout => \inst|s_centroid[6]~feeder_combout\);

-- Location: FF_X116_Y17_N17
\inst|s_centroid[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[6]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(6));

-- Location: LCCOMB_X116_Y10_N30
\inst|Equal7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal7~3_combout\ = (\inst|s_centroid\(7) & (\inst|s_dado\(7) & (\inst|s_dado\(6) $ (!\inst|s_centroid\(6))))) # (!\inst|s_centroid\(7) & (!\inst|s_dado\(7) & (\inst|s_dado\(6) $ (!\inst|s_centroid\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_centroid\(7),
	datab => \inst|s_dado\(7),
	datac => \inst|s_dado\(6),
	datad => \inst|s_centroid\(6),
	combout => \inst|Equal7~3_combout\);

-- Location: IOIBUF_X117_Y44_N1
\dado[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(1),
	o => \dado[1]~input_o\);

-- Location: FF_X116_Y10_N7
\inst|s_dado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[1]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(1));

-- Location: IOIBUF_X117_Y41_N8
\centroid[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(0),
	o => \centroid[0]~input_o\);

-- Location: FF_X116_Y10_N25
\inst|s_centroid[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \centroid[0]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(0));

-- Location: IOIBUF_X117_Y10_N1
\dado[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(0),
	o => \dado[0]~input_o\);

-- Location: FF_X116_Y10_N29
\inst|s_dado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[0]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(0));

-- Location: IOIBUF_X117_Y19_N8
\centroid[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(1),
	o => \centroid[1]~input_o\);

-- Location: LCCOMB_X115_Y17_N14
\inst|s_centroid[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[1]~feeder_combout\ = \centroid[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[1]~input_o\,
	combout => \inst|s_centroid[1]~feeder_combout\);

-- Location: FF_X115_Y17_N15
\inst|s_centroid[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[1]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(1));

-- Location: LCCOMB_X116_Y10_N28
\inst|Equal7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal7~0_combout\ = (\inst|s_dado\(1) & (\inst|s_centroid\(1) & (\inst|s_centroid\(0) $ (!\inst|s_dado\(0))))) # (!\inst|s_dado\(1) & (!\inst|s_centroid\(1) & (\inst|s_centroid\(0) $ (!\inst|s_dado\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_dado\(1),
	datab => \inst|s_centroid\(0),
	datac => \inst|s_dado\(0),
	datad => \inst|s_centroid\(1),
	combout => \inst|Equal7~0_combout\);

-- Location: LCCOMB_X116_Y10_N12
\inst|Equal7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal7~4_combout\ = (((!\inst|Equal7~0_combout\) # (!\inst|Equal7~3_combout\)) # (!\inst|Equal7~1_combout\)) # (!\inst|Equal7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal7~2_combout\,
	datab => \inst|Equal7~1_combout\,
	datac => \inst|Equal7~3_combout\,
	datad => \inst|Equal7~0_combout\,
	combout => \inst|Equal7~4_combout\);

-- Location: FF_X115_Y14_N1
\inst|s_dist0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Equal7~4_combout\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dist0~q\);

-- Location: IOIBUF_X111_Y0_N15
\dado[43]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(43),
	o => \dado[43]~input_o\);

-- Location: LCCOMB_X107_Y3_N12
\inst|s_dado[43]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_dado[43]~feeder_combout\ = \dado[43]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[43]~input_o\,
	combout => \inst|s_dado[43]~feeder_combout\);

-- Location: FF_X107_Y3_N13
\inst|s_dado[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_dado[43]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(43));

-- Location: IOIBUF_X113_Y0_N15
\centroid[43]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(43),
	o => \centroid[43]~input_o\);

-- Location: LCCOMB_X107_Y3_N14
\inst|s_centroid[43]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[43]~feeder_combout\ = \centroid[43]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[43]~input_o\,
	combout => \inst|s_centroid[43]~feeder_combout\);

-- Location: FF_X107_Y3_N15
\inst|s_centroid[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[43]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(43));

-- Location: IOIBUF_X108_Y0_N1
\dado[42]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(42),
	o => \dado[42]~input_o\);

-- Location: FF_X107_Y3_N7
\inst|s_dado[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[42]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(42));

-- Location: IOIBUF_X106_Y0_N15
\centroid[42]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(42),
	o => \centroid[42]~input_o\);

-- Location: LCCOMB_X107_Y3_N28
\inst|s_centroid[42]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[42]~feeder_combout\ = \centroid[42]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[42]~input_o\,
	combout => \inst|s_centroid[42]~feeder_combout\);

-- Location: FF_X107_Y3_N29
\inst|s_centroid[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[42]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(42));

-- Location: LCCOMB_X107_Y3_N6
\inst|Equal2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal2~1_combout\ = (\inst|s_dado\(43) & (\inst|s_centroid\(43) & (\inst|s_dado\(42) $ (!\inst|s_centroid\(42))))) # (!\inst|s_dado\(43) & (!\inst|s_centroid\(43) & (\inst|s_dado\(42) $ (!\inst|s_centroid\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_dado\(43),
	datab => \inst|s_centroid\(43),
	datac => \inst|s_dado\(42),
	datad => \inst|s_centroid\(42),
	combout => \inst|Equal2~1_combout\);

-- Location: IOIBUF_X104_Y0_N22
\centroid[47]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(47),
	o => \centroid[47]~input_o\);

-- Location: LCCOMB_X107_Y3_N30
\inst|s_centroid[47]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[47]~feeder_combout\ = \centroid[47]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[47]~input_o\,
	combout => \inst|s_centroid[47]~feeder_combout\);

-- Location: FF_X107_Y3_N31
\inst|s_centroid[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[47]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(47));

-- Location: IOIBUF_X111_Y0_N1
\centroid[46]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(46),
	o => \centroid[46]~input_o\);

-- Location: LCCOMB_X107_Y3_N8
\inst|s_centroid[46]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[46]~feeder_combout\ = \centroid[46]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[46]~input_o\,
	combout => \inst|s_centroid[46]~feeder_combout\);

-- Location: FF_X107_Y3_N9
\inst|s_centroid[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[46]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(46));

-- Location: IOIBUF_X108_Y0_N15
\dado[46]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(46),
	o => \dado[46]~input_o\);

-- Location: FF_X107_Y3_N19
\inst|s_dado[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[46]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(46));

-- Location: IOIBUF_X106_Y0_N8
\dado[47]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(47),
	o => \dado[47]~input_o\);

-- Location: LCCOMB_X107_Y3_N16
\inst|s_dado[47]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_dado[47]~feeder_combout\ = \dado[47]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[47]~input_o\,
	combout => \inst|s_dado[47]~feeder_combout\);

-- Location: FF_X107_Y3_N17
\inst|s_dado[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_dado[47]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(47));

-- Location: LCCOMB_X107_Y3_N18
\inst|Equal2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal2~3_combout\ = (\inst|s_centroid\(47) & (\inst|s_dado\(47) & (\inst|s_centroid\(46) $ (!\inst|s_dado\(46))))) # (!\inst|s_centroid\(47) & (!\inst|s_dado\(47) & (\inst|s_centroid\(46) $ (!\inst|s_dado\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_centroid\(47),
	datab => \inst|s_centroid\(46),
	datac => \inst|s_dado\(46),
	datad => \inst|s_dado\(47),
	combout => \inst|Equal2~3_combout\);

-- Location: IOIBUF_X104_Y0_N15
\centroid[41]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(41),
	o => \centroid[41]~input_o\);

-- Location: LCCOMB_X107_Y3_N10
\inst|s_centroid[41]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[41]~feeder_combout\ = \centroid[41]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[41]~input_o\,
	combout => \inst|s_centroid[41]~feeder_combout\);

-- Location: FF_X107_Y3_N11
\inst|s_centroid[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[41]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(41));

-- Location: IOIBUF_X106_Y0_N1
\dado[41]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(41),
	o => \dado[41]~input_o\);

-- Location: FF_X107_Y3_N25
\inst|s_dado[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[41]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(41));

-- Location: IOIBUF_X104_Y0_N1
\dado[40]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(40),
	o => \dado[40]~input_o\);

-- Location: FF_X107_Y3_N3
\inst|s_dado[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[40]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(40));

-- Location: IOIBUF_X113_Y0_N22
\centroid[40]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(40),
	o => \centroid[40]~input_o\);

-- Location: LCCOMB_X107_Y3_N0
\inst|s_centroid[40]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[40]~feeder_combout\ = \centroid[40]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[40]~input_o\,
	combout => \inst|s_centroid[40]~feeder_combout\);

-- Location: FF_X107_Y3_N1
\inst|s_centroid[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[40]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(40));

-- Location: LCCOMB_X107_Y3_N2
\inst|Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = (\inst|s_centroid\(41) & (\inst|s_dado\(41) & (\inst|s_dado\(40) $ (!\inst|s_centroid\(40))))) # (!\inst|s_centroid\(41) & (!\inst|s_dado\(41) & (\inst|s_dado\(40) $ (!\inst|s_centroid\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_centroid\(41),
	datab => \inst|s_dado\(41),
	datac => \inst|s_dado\(40),
	datad => \inst|s_centroid\(40),
	combout => \inst|Equal2~0_combout\);

-- Location: IOIBUF_X113_Y0_N1
\centroid[45]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(45),
	o => \centroid[45]~input_o\);

-- Location: FF_X107_Y3_N27
\inst|s_centroid[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \centroid[45]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(45));

-- Location: IOIBUF_X108_Y0_N22
\centroid[44]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(44),
	o => \centroid[44]~input_o\);

-- Location: LCCOMB_X107_Y3_N4
\inst|s_centroid[44]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[44]~feeder_combout\ = \centroid[44]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[44]~input_o\,
	combout => \inst|s_centroid[44]~feeder_combout\);

-- Location: FF_X107_Y3_N5
\inst|s_centroid[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[44]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(44));

-- Location: IOIBUF_X108_Y0_N8
\dado[44]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(44),
	o => \dado[44]~input_o\);

-- Location: FF_X107_Y3_N23
\inst|s_dado[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[44]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(44));

-- Location: IOIBUF_X111_Y0_N8
\dado[45]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(45),
	o => \dado[45]~input_o\);

-- Location: LCCOMB_X107_Y3_N20
\inst|s_dado[45]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_dado[45]~feeder_combout\ = \dado[45]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[45]~input_o\,
	combout => \inst|s_dado[45]~feeder_combout\);

-- Location: FF_X107_Y3_N21
\inst|s_dado[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_dado[45]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(45));

-- Location: LCCOMB_X107_Y3_N22
\inst|Equal2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal2~2_combout\ = (\inst|s_centroid\(45) & (\inst|s_dado\(45) & (\inst|s_centroid\(44) $ (!\inst|s_dado\(44))))) # (!\inst|s_centroid\(45) & (!\inst|s_dado\(45) & (\inst|s_centroid\(44) $ (!\inst|s_dado\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_centroid\(45),
	datab => \inst|s_centroid\(44),
	datac => \inst|s_dado\(44),
	datad => \inst|s_dado\(45),
	combout => \inst|Equal2~2_combout\);

-- Location: LCCOMB_X111_Y14_N0
\inst|Equal2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal2~4_combout\ = (((!\inst|Equal2~2_combout\) # (!\inst|Equal2~0_combout\)) # (!\inst|Equal2~3_combout\)) # (!\inst|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~1_combout\,
	datab => \inst|Equal2~3_combout\,
	datac => \inst|Equal2~0_combout\,
	datad => \inst|Equal2~2_combout\,
	combout => \inst|Equal2~4_combout\);

-- Location: FF_X111_Y14_N1
\inst|s_dist5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Equal2~4_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dist5~q\);

-- Location: LCCOMB_X115_Y14_N12
\inst3|parallel_add_component|auto_generated|op_2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|op_2~1_combout\ = \inst|s_dist0~q\ $ (\inst|s_dist5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_dist0~q\,
	datad => \inst|s_dist5~q\,
	combout => \inst3|parallel_add_component|auto_generated|op_2~1_combout\);

-- Location: IOIBUF_X117_Y33_N1
\centroid[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(27),
	o => \centroid[27]~input_o\);

-- Location: LCCOMB_X116_Y17_N30
\inst|s_centroid[27]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[27]~feeder_combout\ = \centroid[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[27]~input_o\,
	combout => \inst|s_centroid[27]~feeder_combout\);

-- Location: FF_X116_Y17_N31
\inst|s_centroid[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[27]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(27));

-- Location: IOIBUF_X117_Y31_N1
\centroid[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(26),
	o => \centroid[26]~input_o\);

-- Location: LCCOMB_X116_Y17_N8
\inst|s_centroid[26]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[26]~feeder_combout\ = \centroid[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[26]~input_o\,
	combout => \inst|s_centroid[26]~feeder_combout\);

-- Location: FF_X116_Y17_N9
\inst|s_centroid[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[26]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(26));

-- Location: IOIBUF_X117_Y48_N1
\dado[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(26),
	o => \dado[26]~input_o\);

-- Location: FF_X116_Y17_N7
\inst|s_dado[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[26]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(26));

-- Location: IOIBUF_X117_Y49_N8
\dado[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(27),
	o => \dado[27]~input_o\);

-- Location: FF_X116_Y17_N21
\inst|s_dado[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[27]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(27));

-- Location: LCCOMB_X116_Y17_N6
\inst|Equal4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal4~1_combout\ = (\inst|s_centroid\(27) & (\inst|s_dado\(27) & (\inst|s_centroid\(26) $ (!\inst|s_dado\(26))))) # (!\inst|s_centroid\(27) & (!\inst|s_dado\(27) & (\inst|s_centroid\(26) $ (!\inst|s_dado\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_centroid\(27),
	datab => \inst|s_centroid\(26),
	datac => \inst|s_dado\(26),
	datad => \inst|s_dado\(27),
	combout => \inst|Equal4~1_combout\);

-- Location: IOIBUF_X117_Y29_N8
\centroid[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(31),
	o => \centroid[31]~input_o\);

-- Location: LCCOMB_X114_Y25_N10
\inst|s_centroid[31]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[31]~feeder_combout\ = \centroid[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[31]~input_o\,
	combout => \inst|s_centroid[31]~feeder_combout\);

-- Location: FF_X114_Y25_N11
\inst|s_centroid[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[31]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(31));

-- Location: IOIBUF_X117_Y33_N8
\dado[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(31),
	o => \dado[31]~input_o\);

-- Location: LCCOMB_X114_Y25_N4
\inst|s_dado[31]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_dado[31]~feeder_combout\ = \dado[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[31]~input_o\,
	combout => \inst|s_dado[31]~feeder_combout\);

-- Location: FF_X114_Y25_N5
\inst|s_dado[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_dado[31]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(31));

-- Location: IOIBUF_X117_Y32_N8
\dado[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(30),
	o => \dado[30]~input_o\);

-- Location: FF_X114_Y25_N19
\inst|s_dado[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[30]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(30));

-- Location: IOIBUF_X117_Y28_N8
\centroid[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(30),
	o => \centroid[30]~input_o\);

-- Location: LCCOMB_X114_Y25_N28
\inst|s_centroid[30]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[30]~feeder_combout\ = \centroid[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[30]~input_o\,
	combout => \inst|s_centroid[30]~feeder_combout\);

-- Location: FF_X114_Y25_N29
\inst|s_centroid[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[30]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(30));

-- Location: LCCOMB_X114_Y25_N18
\inst|Equal4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal4~3_combout\ = (\inst|s_centroid\(31) & (\inst|s_dado\(31) & (\inst|s_dado\(30) $ (!\inst|s_centroid\(30))))) # (!\inst|s_centroid\(31) & (!\inst|s_dado\(31) & (\inst|s_dado\(30) $ (!\inst|s_centroid\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_centroid\(31),
	datab => \inst|s_dado\(31),
	datac => \inst|s_dado\(30),
	datad => \inst|s_centroid\(30),
	combout => \inst|Equal4~3_combout\);

-- Location: IOIBUF_X117_Y18_N1
\centroid[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(29),
	o => \centroid[29]~input_o\);

-- Location: FF_X115_Y17_N13
\inst|s_centroid[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \centroid[29]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(29));

-- Location: IOIBUF_X117_Y21_N8
\dado[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(29),
	o => \dado[29]~input_o\);

-- Location: LCCOMB_X116_Y17_N14
\inst|s_dado[29]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_dado[29]~feeder_combout\ = \dado[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[29]~input_o\,
	combout => \inst|s_dado[29]~feeder_combout\);

-- Location: FF_X116_Y17_N15
\inst|s_dado[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_dado[29]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(29));

-- Location: IOIBUF_X117_Y19_N1
\dado[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(28),
	o => \dado[28]~input_o\);

-- Location: FF_X115_Y17_N31
\inst|s_dado[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[28]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(28));

-- Location: IOIBUF_X117_Y49_N1
\centroid[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(28),
	o => \centroid[28]~input_o\);

-- Location: FF_X116_Y17_N29
\inst|s_centroid[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \centroid[28]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(28));

-- Location: LCCOMB_X115_Y17_N30
\inst|Equal4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal4~2_combout\ = (\inst|s_centroid\(29) & (\inst|s_dado\(29) & (\inst|s_dado\(28) $ (!\inst|s_centroid\(28))))) # (!\inst|s_centroid\(29) & (!\inst|s_dado\(29) & (\inst|s_dado\(28) $ (!\inst|s_centroid\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_centroid\(29),
	datab => \inst|s_dado\(29),
	datac => \inst|s_dado\(28),
	datad => \inst|s_centroid\(28),
	combout => \inst|Equal4~2_combout\);

-- Location: IOIBUF_X117_Y21_N1
\dado[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(24),
	o => \dado[24]~input_o\);

-- Location: LCCOMB_X116_Y17_N10
\inst|s_dado[24]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_dado[24]~feeder_combout\ = \dado[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[24]~input_o\,
	combout => \inst|s_dado[24]~feeder_combout\);

-- Location: FF_X116_Y17_N11
\inst|s_dado[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_dado[24]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(24));

-- Location: IOIBUF_X117_Y17_N8
\centroid[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(25),
	o => \centroid[25]~input_o\);

-- Location: LCCOMB_X116_Y17_N18
\inst|s_centroid[25]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[25]~feeder_combout\ = \centroid[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[25]~input_o\,
	combout => \inst|s_centroid[25]~feeder_combout\);

-- Location: FF_X116_Y17_N19
\inst|s_centroid[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[25]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(25));

-- Location: IOIBUF_X117_Y35_N8
\dado[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(25),
	o => \dado[25]~input_o\);

-- Location: FF_X116_Y17_N25
\inst|s_dado[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[25]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(25));

-- Location: IOIBUF_X117_Y51_N8
\centroid[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(24),
	o => \centroid[24]~input_o\);

-- Location: FF_X116_Y17_N13
\inst|s_centroid[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \centroid[24]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(24));

-- Location: LCCOMB_X116_Y17_N24
\inst|Equal4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal4~0_combout\ = (\inst|s_dado\(24) & (\inst|s_centroid\(24) & (\inst|s_centroid\(25) $ (!\inst|s_dado\(25))))) # (!\inst|s_dado\(24) & (!\inst|s_centroid\(24) & (\inst|s_centroid\(25) $ (!\inst|s_dado\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_dado\(24),
	datab => \inst|s_centroid\(25),
	datac => \inst|s_dado\(25),
	datad => \inst|s_centroid\(24),
	combout => \inst|Equal4~0_combout\);

-- Location: LCCOMB_X115_Y17_N18
\inst|Equal4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal4~4_combout\ = (((!\inst|Equal4~0_combout\) # (!\inst|Equal4~2_combout\)) # (!\inst|Equal4~3_combout\)) # (!\inst|Equal4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~1_combout\,
	datab => \inst|Equal4~3_combout\,
	datac => \inst|Equal4~2_combout\,
	datad => \inst|Equal4~0_combout\,
	combout => \inst|Equal4~4_combout\);

-- Location: FF_X115_Y17_N19
\inst|s_dist3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Equal4~4_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dist3~q\);

-- Location: IOIBUF_X117_Y48_N8
\centroid[57]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(57),
	o => \centroid[57]~input_o\);

-- Location: LCCOMB_X116_Y17_N26
\inst|s_centroid[57]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[57]~feeder_combout\ = \centroid[57]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[57]~input_o\,
	combout => \inst|s_centroid[57]~feeder_combout\);

-- Location: FF_X116_Y17_N27
\inst|s_centroid[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[57]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(57));

-- Location: IOIBUF_X117_Y58_N1
\dado[57]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(57),
	o => \dado[57]~input_o\);

-- Location: LCCOMB_X116_Y17_N4
\inst|s_dado[57]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_dado[57]~feeder_combout\ = \dado[57]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[57]~input_o\,
	combout => \inst|s_dado[57]~feeder_combout\);

-- Location: FF_X116_Y17_N5
\inst|s_dado[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_dado[57]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(57));

-- Location: IOIBUF_X117_Y23_N8
\dado[56]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(56),
	o => \dado[56]~input_o\);

-- Location: FF_X116_Y17_N3
\inst|s_dado[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[56]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(56));

-- Location: IOIBUF_X117_Y35_N1
\centroid[56]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(56),
	o => \centroid[56]~input_o\);

-- Location: LCCOMB_X116_Y17_N0
\inst|s_centroid[56]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[56]~feeder_combout\ = \centroid[56]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[56]~input_o\,
	combout => \inst|s_centroid[56]~feeder_combout\);

-- Location: FF_X116_Y17_N1
\inst|s_centroid[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[56]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(56));

-- Location: LCCOMB_X116_Y17_N2
\inst|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|s_centroid\(57) & (\inst|s_dado\(57) & (\inst|s_dado\(56) $ (!\inst|s_centroid\(56))))) # (!\inst|s_centroid\(57) & (!\inst|s_dado\(57) & (\inst|s_dado\(56) $ (!\inst|s_centroid\(56)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_centroid\(57),
	datab => \inst|s_dado\(57),
	datac => \inst|s_dado\(56),
	datad => \inst|s_centroid\(56),
	combout => \inst|Equal0~0_combout\);

-- Location: IOIBUF_X117_Y66_N8
\dado[61]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(61),
	o => \dado[61]~input_o\);

-- Location: LCCOMB_X93_Y20_N12
\inst|s_dado[61]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_dado[61]~feeder_combout\ = \dado[61]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[61]~input_o\,
	combout => \inst|s_dado[61]~feeder_combout\);

-- Location: FF_X93_Y20_N13
\inst|s_dado[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_dado[61]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(61));

-- Location: IOIBUF_X117_Y65_N8
\centroid[61]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(61),
	o => \centroid[61]~input_o\);

-- Location: LCCOMB_X93_Y20_N18
\inst|s_centroid[61]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[61]~feeder_combout\ = \centroid[61]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[61]~input_o\,
	combout => \inst|s_centroid[61]~feeder_combout\);

-- Location: FF_X93_Y20_N19
\inst|s_centroid[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[61]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(61));

-- Location: IOIBUF_X117_Y79_N1
\dado[60]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(60),
	o => \dado[60]~input_o\);

-- Location: FF_X93_Y20_N27
\inst|s_dado[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[60]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(60));

-- Location: IOIBUF_X117_Y68_N1
\centroid[60]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(60),
	o => \centroid[60]~input_o\);

-- Location: LCCOMB_X93_Y20_N24
\inst|s_centroid[60]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[60]~feeder_combout\ = \centroid[60]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[60]~input_o\,
	combout => \inst|s_centroid[60]~feeder_combout\);

-- Location: FF_X93_Y20_N25
\inst|s_centroid[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[60]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(60));

-- Location: LCCOMB_X93_Y20_N26
\inst|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|s_dado\(61) & (\inst|s_centroid\(61) & (\inst|s_dado\(60) $ (!\inst|s_centroid\(60))))) # (!\inst|s_dado\(61) & (!\inst|s_centroid\(61) & (\inst|s_dado\(60) $ (!\inst|s_centroid\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_dado\(61),
	datab => \inst|s_centroid\(61),
	datac => \inst|s_dado\(60),
	datad => \inst|s_centroid\(60),
	combout => \inst|Equal0~2_combout\);

-- Location: IOIBUF_X117_Y67_N8
\centroid[59]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(59),
	o => \centroid[59]~input_o\);

-- Location: LCCOMB_X93_Y20_N10
\inst|s_centroid[59]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[59]~feeder_combout\ = \centroid[59]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[59]~input_o\,
	combout => \inst|s_centroid[59]~feeder_combout\);

-- Location: FF_X93_Y20_N11
\inst|s_centroid[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[59]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(59));

-- Location: IOIBUF_X117_Y76_N1
\centroid[58]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(58),
	o => \centroid[58]~input_o\);

-- Location: LCCOMB_X93_Y20_N4
\inst|s_centroid[58]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[58]~feeder_combout\ = \centroid[58]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[58]~input_o\,
	combout => \inst|s_centroid[58]~feeder_combout\);

-- Location: FF_X93_Y20_N5
\inst|s_centroid[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[58]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(58));

-- Location: IOIBUF_X117_Y73_N8
\dado[58]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(58),
	o => \dado[58]~input_o\);

-- Location: FF_X93_Y20_N23
\inst|s_dado[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[58]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(58));

-- Location: IOIBUF_X117_Y58_N8
\dado[59]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(59),
	o => \dado[59]~input_o\);

-- Location: FF_X93_Y20_N17
\inst|s_dado[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[59]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(59));

-- Location: LCCOMB_X93_Y20_N22
\inst|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|s_centroid\(59) & (\inst|s_dado\(59) & (\inst|s_centroid\(58) $ (!\inst|s_dado\(58))))) # (!\inst|s_centroid\(59) & (!\inst|s_dado\(59) & (\inst|s_centroid\(58) $ (!\inst|s_dado\(58)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_centroid\(59),
	datab => \inst|s_centroid\(58),
	datac => \inst|s_dado\(58),
	datad => \inst|s_dado\(59),
	combout => \inst|Equal0~1_combout\);

-- Location: IOIBUF_X117_Y72_N1
\centroid[63]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(63),
	o => \centroid[63]~input_o\);

-- Location: LCCOMB_X93_Y20_N30
\inst|s_centroid[63]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[63]~feeder_combout\ = \centroid[63]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[63]~input_o\,
	combout => \inst|s_centroid[63]~feeder_combout\);

-- Location: FF_X93_Y20_N31
\inst|s_centroid[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[63]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(63));

-- Location: IOIBUF_X117_Y66_N1
\dado[63]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(63),
	o => \dado[63]~input_o\);

-- Location: LCCOMB_X93_Y20_N20
\inst|s_dado[63]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_dado[63]~feeder_combout\ = \dado[63]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[63]~input_o\,
	combout => \inst|s_dado[63]~feeder_combout\);

-- Location: FF_X93_Y20_N21
\inst|s_dado[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_dado[63]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(63));

-- Location: IOIBUF_X117_Y69_N8
\dado[62]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(62),
	o => \dado[62]~input_o\);

-- Location: FF_X93_Y20_N15
\inst|s_dado[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[62]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(62));

-- Location: IOIBUF_X117_Y60_N15
\centroid[62]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(62),
	o => \centroid[62]~input_o\);

-- Location: FF_X93_Y20_N29
\inst|s_centroid[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \centroid[62]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(62));

-- Location: LCCOMB_X93_Y20_N14
\inst|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\inst|s_centroid\(63) & (\inst|s_dado\(63) & (\inst|s_dado\(62) $ (!\inst|s_centroid\(62))))) # (!\inst|s_centroid\(63) & (!\inst|s_dado\(63) & (\inst|s_dado\(62) $ (!\inst|s_centroid\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_centroid\(63),
	datab => \inst|s_dado\(63),
	datac => \inst|s_dado\(62),
	datad => \inst|s_centroid\(62),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X115_Y17_N20
\inst|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (((!\inst|Equal0~3_combout\) # (!\inst|Equal0~1_combout\)) # (!\inst|Equal0~2_combout\)) # (!\inst|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Equal0~2_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Equal0~3_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: FF_X115_Y17_N21
\inst|s_dist7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Equal0~4_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dist7~q\);

-- Location: IOIBUF_X117_Y14_N8
\centroid[52]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(52),
	o => \centroid[52]~input_o\);

-- Location: FF_X115_Y14_N7
\inst|s_centroid[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \centroid[52]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(52));

-- Location: IOIBUF_X117_Y69_N1
\centroid[53]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(53),
	o => \centroid[53]~input_o\);

-- Location: LCCOMB_X116_Y14_N20
\inst|s_centroid[53]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[53]~feeder_combout\ = \centroid[53]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[53]~input_o\,
	combout => \inst|s_centroid[53]~feeder_combout\);

-- Location: FF_X116_Y14_N21
\inst|s_centroid[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[53]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(53));

-- Location: IOIBUF_X117_Y44_N8
\dado[52]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(52),
	o => \dado[52]~input_o\);

-- Location: FF_X116_Y14_N31
\inst|s_dado[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[52]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(52));

-- Location: IOIBUF_X117_Y17_N1
\dado[53]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(53),
	o => \dado[53]~input_o\);

-- Location: FF_X116_Y17_N23
\inst|s_dado[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[53]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(53));

-- Location: LCCOMB_X116_Y14_N30
\inst|Equal1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal1~2_combout\ = (\inst|s_centroid\(52) & (\inst|s_dado\(52) & (\inst|s_centroid\(53) $ (!\inst|s_dado\(53))))) # (!\inst|s_centroid\(52) & (!\inst|s_dado\(52) & (\inst|s_centroid\(53) $ (!\inst|s_dado\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_centroid\(52),
	datab => \inst|s_centroid\(53),
	datac => \inst|s_dado\(52),
	datad => \inst|s_dado\(53),
	combout => \inst|Equal1~2_combout\);

-- Location: IOIBUF_X117_Y62_N8
\dado[51]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(51),
	o => \dado[51]~input_o\);

-- Location: LCCOMB_X116_Y14_N12
\inst|s_dado[51]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_dado[51]~feeder_combout\ = \dado[51]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[51]~input_o\,
	combout => \inst|s_dado[51]~feeder_combout\);

-- Location: FF_X116_Y14_N13
\inst|s_dado[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_dado[51]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(51));

-- Location: IOIBUF_X117_Y34_N1
\centroid[50]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(50),
	o => \centroid[50]~input_o\);

-- Location: FF_X116_Y14_N9
\inst|s_centroid[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \centroid[50]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(50));

-- Location: IOIBUF_X117_Y32_N1
\dado[50]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(50),
	o => \dado[50]~input_o\);

-- Location: FF_X116_Y14_N19
\inst|s_dado[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[50]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(50));

-- Location: IOIBUF_X117_Y18_N8
\centroid[51]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(51),
	o => \centroid[51]~input_o\);

-- Location: LCCOMB_X116_Y14_N14
\inst|s_centroid[51]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[51]~feeder_combout\ = \centroid[51]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[51]~input_o\,
	combout => \inst|s_centroid[51]~feeder_combout\);

-- Location: FF_X116_Y14_N15
\inst|s_centroid[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[51]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(51));

-- Location: LCCOMB_X116_Y14_N18
\inst|Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (\inst|s_dado\(51) & (\inst|s_centroid\(51) & (\inst|s_centroid\(50) $ (!\inst|s_dado\(50))))) # (!\inst|s_dado\(51) & (!\inst|s_centroid\(51) & (\inst|s_centroid\(50) $ (!\inst|s_dado\(50)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_dado\(51),
	datab => \inst|s_centroid\(50),
	datac => \inst|s_dado\(50),
	datad => \inst|s_centroid\(51),
	combout => \inst|Equal1~1_combout\);

-- Location: IOIBUF_X117_Y22_N8
\centroid[55]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(55),
	o => \centroid[55]~input_o\);

-- Location: LCCOMB_X116_Y14_N6
\inst|s_centroid[55]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[55]~feeder_combout\ = \centroid[55]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[55]~input_o\,
	combout => \inst|s_centroid[55]~feeder_combout\);

-- Location: FF_X116_Y14_N7
\inst|s_centroid[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[55]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(55));

-- Location: IOIBUF_X117_Y34_N8
\centroid[54]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(54),
	o => \centroid[54]~input_o\);

-- Location: FF_X116_Y14_N1
\inst|s_centroid[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \centroid[54]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(54));

-- Location: IOIBUF_X117_Y31_N8
\dado[54]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(54),
	o => \dado[54]~input_o\);

-- Location: FF_X116_Y14_N23
\inst|s_dado[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[54]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(54));

-- Location: IOIBUF_X117_Y60_N8
\dado[55]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(55),
	o => \dado[55]~input_o\);

-- Location: LCCOMB_X116_Y14_N24
\inst|s_dado[55]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_dado[55]~feeder_combout\ = \dado[55]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[55]~input_o\,
	combout => \inst|s_dado[55]~feeder_combout\);

-- Location: FF_X116_Y14_N25
\inst|s_dado[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_dado[55]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(55));

-- Location: LCCOMB_X116_Y14_N22
\inst|Equal1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal1~3_combout\ = (\inst|s_centroid\(55) & (\inst|s_dado\(55) & (\inst|s_centroid\(54) $ (!\inst|s_dado\(54))))) # (!\inst|s_centroid\(55) & (!\inst|s_dado\(55) & (\inst|s_centroid\(54) $ (!\inst|s_dado\(54)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_centroid\(55),
	datab => \inst|s_centroid\(54),
	datac => \inst|s_dado\(54),
	datad => \inst|s_dado\(55),
	combout => \inst|Equal1~3_combout\);

-- Location: IOIBUF_X117_Y57_N1
\dado[49]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(49),
	o => \dado[49]~input_o\);

-- Location: FF_X116_Y14_N27
\inst|s_dado[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[49]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(49));

-- Location: IOIBUF_X117_Y14_N1
\centroid[48]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(48),
	o => \centroid[48]~input_o\);

-- Location: LCCOMB_X116_Y14_N4
\inst|s_centroid[48]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[48]~feeder_combout\ = \centroid[48]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[48]~input_o\,
	combout => \inst|s_centroid[48]~feeder_combout\);

-- Location: FF_X116_Y14_N5
\inst|s_centroid[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[48]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(48));

-- Location: IOIBUF_X117_Y36_N1
\dado[48]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(48),
	o => \dado[48]~input_o\);

-- Location: FF_X116_Y14_N29
\inst|s_dado[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[48]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(48));

-- Location: IOIBUF_X117_Y60_N1
\centroid[49]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(49),
	o => \centroid[49]~input_o\);

-- Location: FF_X116_Y14_N3
\inst|s_centroid[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \centroid[49]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(49));

-- Location: LCCOMB_X116_Y14_N28
\inst|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst|s_dado\(49) & (\inst|s_centroid\(49) & (\inst|s_centroid\(48) $ (!\inst|s_dado\(48))))) # (!\inst|s_dado\(49) & (!\inst|s_centroid\(49) & (\inst|s_centroid\(48) $ (!\inst|s_dado\(48)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_dado\(49),
	datab => \inst|s_centroid\(48),
	datac => \inst|s_dado\(48),
	datad => \inst|s_centroid\(49),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X116_Y14_N10
\inst|Equal1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal1~4_combout\ = (((!\inst|Equal1~0_combout\) # (!\inst|Equal1~3_combout\)) # (!\inst|Equal1~1_combout\)) # (!\inst|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~2_combout\,
	datab => \inst|Equal1~1_combout\,
	datac => \inst|Equal1~3_combout\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|Equal1~4_combout\);

-- Location: FF_X116_Y14_N11
\inst|s_dist6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Equal1~4_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dist6~q\);

-- Location: IOIBUF_X117_Y50_N8
\dado[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(21),
	o => \dado[21]~input_o\);

-- Location: FF_X116_Y20_N13
\inst|s_dado[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[21]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(21));

-- Location: IOIBUF_X117_Y43_N1
\centroid[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(20),
	o => \centroid[20]~input_o\);

-- Location: FF_X116_Y20_N5
\inst|s_centroid[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \centroid[20]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(20));

-- Location: IOIBUF_X117_Y52_N1
\dado[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(20),
	o => \dado[20]~input_o\);

-- Location: FF_X116_Y20_N31
\inst|s_dado[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[20]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(20));

-- Location: IOIBUF_X117_Y23_N1
\centroid[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(21),
	o => \centroid[21]~input_o\);

-- Location: LCCOMB_X116_Y20_N2
\inst|s_centroid[21]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[21]~feeder_combout\ = \centroid[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[21]~input_o\,
	combout => \inst|s_centroid[21]~feeder_combout\);

-- Location: FF_X116_Y20_N3
\inst|s_centroid[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[21]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(21));

-- Location: LCCOMB_X116_Y20_N30
\inst|Equal5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal5~2_combout\ = (\inst|s_dado\(21) & (\inst|s_centroid\(21) & (\inst|s_centroid\(20) $ (!\inst|s_dado\(20))))) # (!\inst|s_dado\(21) & (!\inst|s_centroid\(21) & (\inst|s_centroid\(20) $ (!\inst|s_dado\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_dado\(21),
	datab => \inst|s_centroid\(20),
	datac => \inst|s_dado\(20),
	datad => \inst|s_centroid\(21),
	combout => \inst|Equal5~2_combout\);

-- Location: IOIBUF_X117_Y39_N8
\centroid[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(19),
	o => \centroid[19]~input_o\);

-- Location: LCCOMB_X116_Y20_N26
\inst|s_centroid[19]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[19]~feeder_combout\ = \centroid[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[19]~input_o\,
	combout => \inst|s_centroid[19]~feeder_combout\);

-- Location: FF_X116_Y20_N27
\inst|s_centroid[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[19]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(19));

-- Location: IOIBUF_X117_Y51_N1
\centroid[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(18),
	o => \centroid[18]~input_o\);

-- Location: LCCOMB_X116_Y20_N8
\inst|s_centroid[18]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[18]~feeder_combout\ = \centroid[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[18]~input_o\,
	combout => \inst|s_centroid[18]~feeder_combout\);

-- Location: FF_X116_Y20_N9
\inst|s_centroid[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[18]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(18));

-- Location: IOIBUF_X117_Y53_N1
\dado[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(18),
	o => \dado[18]~input_o\);

-- Location: FF_X116_Y20_N15
\inst|s_dado[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[18]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(18));

-- Location: IOIBUF_X117_Y36_N8
\dado[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(19),
	o => \dado[19]~input_o\);

-- Location: LCCOMB_X116_Y20_N24
\inst|s_dado[19]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_dado[19]~feeder_combout\ = \dado[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[19]~input_o\,
	combout => \inst|s_dado[19]~feeder_combout\);

-- Location: FF_X116_Y20_N25
\inst|s_dado[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_dado[19]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(19));

-- Location: LCCOMB_X116_Y20_N14
\inst|Equal5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal5~1_combout\ = (\inst|s_centroid\(19) & (\inst|s_dado\(19) & (\inst|s_centroid\(18) $ (!\inst|s_dado\(18))))) # (!\inst|s_centroid\(19) & (!\inst|s_dado\(19) & (\inst|s_centroid\(18) $ (!\inst|s_dado\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_centroid\(19),
	datab => \inst|s_centroid\(18),
	datac => \inst|s_dado\(18),
	datad => \inst|s_dado\(19),
	combout => \inst|Equal5~1_combout\);

-- Location: IOIBUF_X117_Y52_N8
\centroid[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(17),
	o => \centroid[17]~input_o\);

-- Location: FF_X116_Y20_N7
\inst|s_centroid[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \centroid[17]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(17));

-- Location: IOIBUF_X117_Y50_N1
\dado[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(17),
	o => \dado[17]~input_o\);

-- Location: FF_X116_Y20_N1
\inst|s_dado[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[17]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(17));

-- Location: IOIBUF_X117_Y24_N8
\dado[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(16),
	o => \dado[16]~input_o\);

-- Location: FF_X116_Y20_N19
\inst|s_dado[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[16]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(16));

-- Location: IOIBUF_X117_Y43_N8
\centroid[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(16),
	o => \centroid[16]~input_o\);

-- Location: FF_X116_Y20_N29
\inst|s_centroid[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \centroid[16]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(16));

-- Location: LCCOMB_X116_Y20_N18
\inst|Equal5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal5~0_combout\ = (\inst|s_centroid\(17) & (\inst|s_dado\(17) & (\inst|s_dado\(16) $ (!\inst|s_centroid\(16))))) # (!\inst|s_centroid\(17) & (!\inst|s_dado\(17) & (\inst|s_dado\(16) $ (!\inst|s_centroid\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_centroid\(17),
	datab => \inst|s_dado\(17),
	datac => \inst|s_dado\(16),
	datad => \inst|s_centroid\(16),
	combout => \inst|Equal5~0_combout\);

-- Location: IOIBUF_X117_Y24_N1
\centroid[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(23),
	o => \centroid[23]~input_o\);

-- Location: LCCOMB_X116_Y20_N10
\inst|s_centroid[23]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[23]~feeder_combout\ = \centroid[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[23]~input_o\,
	combout => \inst|s_centroid[23]~feeder_combout\);

-- Location: FF_X116_Y20_N11
\inst|s_centroid[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[23]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(23));

-- Location: IOIBUF_X117_Y39_N1
\dado[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(23),
	o => \dado[23]~input_o\);

-- Location: FF_X116_Y20_N21
\inst|s_dado[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[23]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(23));

-- Location: IOIBUF_X117_Y27_N8
\dado[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(22),
	o => \dado[22]~input_o\);

-- Location: FF_X116_Y20_N23
\inst|s_dado[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[22]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(22));

-- Location: IOIBUF_X117_Y28_N1
\centroid[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(22),
	o => \centroid[22]~input_o\);

-- Location: FF_X116_Y20_N17
\inst|s_centroid[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \centroid[22]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(22));

-- Location: LCCOMB_X116_Y20_N22
\inst|Equal5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal5~3_combout\ = (\inst|s_centroid\(23) & (\inst|s_dado\(23) & (\inst|s_dado\(22) $ (!\inst|s_centroid\(22))))) # (!\inst|s_centroid\(23) & (!\inst|s_dado\(23) & (\inst|s_dado\(22) $ (!\inst|s_centroid\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_centroid\(23),
	datab => \inst|s_dado\(23),
	datac => \inst|s_dado\(22),
	datad => \inst|s_centroid\(22),
	combout => \inst|Equal5~3_combout\);

-- Location: LCCOMB_X116_Y14_N16
\inst|Equal5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal5~4_combout\ = (((!\inst|Equal5~3_combout\) # (!\inst|Equal5~0_combout\)) # (!\inst|Equal5~1_combout\)) # (!\inst|Equal5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~2_combout\,
	datab => \inst|Equal5~1_combout\,
	datac => \inst|Equal5~0_combout\,
	datad => \inst|Equal5~3_combout\,
	combout => \inst|Equal5~4_combout\);

-- Location: FF_X116_Y14_N17
\inst|s_dist2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Equal5~4_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dist2~q\);

-- Location: LCCOMB_X116_Y14_N26
\inst3|parallel_add_component|auto_generated|op_6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|op_6~1_combout\ = (\inst|s_dist6~q\ & \inst|s_dist2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_dist6~q\,
	datad => \inst|s_dist2~q\,
	combout => \inst3|parallel_add_component|auto_generated|op_6~1_combout\);

-- Location: LCCOMB_X115_Y14_N10
\inst3|parallel_add_component|auto_generated|op_4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|op_4~0_combout\ = (\inst3|parallel_add_component|auto_generated|op_6~1_combout\ & ((\inst3|parallel_add_component|auto_generated|op_2~1_combout\ & ((\inst|s_dist3~q\) # (\inst|s_dist7~q\))) # 
-- (!\inst3|parallel_add_component|auto_generated|op_2~1_combout\ & (\inst|s_dist3~q\ & \inst|s_dist7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|parallel_add_component|auto_generated|op_2~1_combout\,
	datab => \inst|s_dist3~q\,
	datac => \inst|s_dist7~q\,
	datad => \inst3|parallel_add_component|auto_generated|op_6~1_combout\,
	combout => \inst3|parallel_add_component|auto_generated|op_4~0_combout\);

-- Location: IOIBUF_X117_Y7_N1
\dado[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(11),
	o => \dado[11]~input_o\);

-- Location: LCCOMB_X116_Y6_N12
\inst|s_dado[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_dado[11]~feeder_combout\ = \dado[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[11]~input_o\,
	combout => \inst|s_dado[11]~feeder_combout\);

-- Location: FF_X116_Y6_N13
\inst|s_dado[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_dado[11]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(11));

-- Location: IOIBUF_X115_Y0_N15
\centroid[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(11),
	o => \centroid[11]~input_o\);

-- Location: LCCOMB_X116_Y6_N18
\inst|s_centroid[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[11]~feeder_combout\ = \centroid[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[11]~input_o\,
	combout => \inst|s_centroid[11]~feeder_combout\);

-- Location: FF_X116_Y6_N19
\inst|s_centroid[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[11]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(11));

-- Location: IOIBUF_X117_Y6_N8
\dado[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(10),
	o => \dado[10]~input_o\);

-- Location: FF_X116_Y6_N3
\inst|s_dado[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[10]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(10));

-- Location: IOIBUF_X117_Y5_N1
\centroid[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(10),
	o => \centroid[10]~input_o\);

-- Location: LCCOMB_X116_Y6_N0
\inst|s_centroid[10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[10]~feeder_combout\ = \centroid[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[10]~input_o\,
	combout => \inst|s_centroid[10]~feeder_combout\);

-- Location: FF_X116_Y6_N1
\inst|s_centroid[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[10]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(10));

-- Location: LCCOMB_X116_Y6_N2
\inst|Equal6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal6~1_combout\ = (\inst|s_dado\(11) & (\inst|s_centroid\(11) & (\inst|s_dado\(10) $ (!\inst|s_centroid\(10))))) # (!\inst|s_dado\(11) & (!\inst|s_centroid\(11) & (\inst|s_dado\(10) $ (!\inst|s_centroid\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_dado\(11),
	datab => \inst|s_centroid\(11),
	datac => \inst|s_dado\(10),
	datad => \inst|s_centroid\(10),
	combout => \inst|Equal6~1_combout\);

-- Location: IOIBUF_X113_Y0_N8
\centroid[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(15),
	o => \centroid[15]~input_o\);

-- Location: LCCOMB_X116_Y6_N6
\inst|s_centroid[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[15]~feeder_combout\ = \centroid[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[15]~input_o\,
	combout => \inst|s_centroid[15]~feeder_combout\);

-- Location: FF_X116_Y6_N7
\inst|s_centroid[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[15]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(15));

-- Location: IOIBUF_X117_Y13_N8
\dado[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(15),
	o => \dado[15]~input_o\);

-- Location: LCCOMB_X116_Y10_N2
\inst|s_dado[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_dado[15]~feeder_combout\ = \dado[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[15]~input_o\,
	combout => \inst|s_dado[15]~feeder_combout\);

-- Location: FF_X116_Y10_N3
\inst|s_dado[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_dado[15]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(15));

-- Location: IOIBUF_X115_Y0_N1
\dado[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(14),
	o => \dado[14]~input_o\);

-- Location: FF_X116_Y6_N21
\inst|s_dado[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[14]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(14));

-- Location: IOIBUF_X117_Y6_N1
\centroid[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(14),
	o => \centroid[14]~input_o\);

-- Location: LCCOMB_X116_Y6_N16
\inst|s_centroid[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[14]~feeder_combout\ = \centroid[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[14]~input_o\,
	combout => \inst|s_centroid[14]~feeder_combout\);

-- Location: FF_X116_Y6_N17
\inst|s_centroid[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[14]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(14));

-- Location: LCCOMB_X116_Y6_N20
\inst|Equal6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal6~3_combout\ = (\inst|s_centroid\(15) & (\inst|s_dado\(15) & (\inst|s_dado\(14) $ (!\inst|s_centroid\(14))))) # (!\inst|s_centroid\(15) & (!\inst|s_dado\(15) & (\inst|s_dado\(14) $ (!\inst|s_centroid\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_centroid\(15),
	datab => \inst|s_dado\(15),
	datac => \inst|s_dado\(14),
	datad => \inst|s_centroid\(14),
	combout => \inst|Equal6~3_combout\);

-- Location: IOIBUF_X115_Y0_N8
\centroid[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(13),
	o => \centroid[13]~input_o\);

-- Location: LCCOMB_X116_Y6_N10
\inst|s_centroid[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[13]~feeder_combout\ = \centroid[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[13]~input_o\,
	combout => \inst|s_centroid[13]~feeder_combout\);

-- Location: FF_X116_Y6_N11
\inst|s_centroid[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[13]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(13));

-- Location: IOIBUF_X115_Y0_N22
\centroid[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(12),
	o => \centroid[12]~input_o\);

-- Location: FF_X116_Y6_N25
\inst|s_centroid[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \centroid[12]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(12));

-- Location: IOIBUF_X117_Y5_N8
\dado[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(12),
	o => \dado[12]~input_o\);

-- Location: FF_X116_Y6_N31
\inst|s_dado[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[12]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(12));

-- Location: IOIBUF_X117_Y7_N8
\dado[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(13),
	o => \dado[13]~input_o\);

-- Location: LCCOMB_X116_Y6_N28
\inst|s_dado[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_dado[13]~feeder_combout\ = \dado[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[13]~input_o\,
	combout => \inst|s_dado[13]~feeder_combout\);

-- Location: FF_X116_Y6_N29
\inst|s_dado[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_dado[13]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(13));

-- Location: LCCOMB_X116_Y6_N30
\inst|Equal6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal6~2_combout\ = (\inst|s_centroid\(13) & (\inst|s_dado\(13) & (\inst|s_centroid\(12) $ (!\inst|s_dado\(12))))) # (!\inst|s_centroid\(13) & (!\inst|s_dado\(13) & (\inst|s_centroid\(12) $ (!\inst|s_dado\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_centroid\(13),
	datab => \inst|s_centroid\(12),
	datac => \inst|s_dado\(12),
	datad => \inst|s_dado\(13),
	combout => \inst|Equal6~2_combout\);

-- Location: IOIBUF_X117_Y57_N8
\dado[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(9),
	o => \dado[9]~input_o\);

-- Location: LCCOMB_X106_Y25_N12
\inst|s_dado[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_dado[9]~feeder_combout\ = \dado[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[9]~input_o\,
	combout => \inst|s_dado[9]~feeder_combout\);

-- Location: FF_X106_Y25_N13
\inst|s_dado[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_dado[9]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(9));

-- Location: IOIBUF_X117_Y55_N1
\centroid[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(8),
	o => \centroid[8]~input_o\);

-- Location: LCCOMB_X106_Y25_N28
\inst|s_centroid[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[8]~feeder_combout\ = \centroid[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[8]~input_o\,
	combout => \inst|s_centroid[8]~feeder_combout\);

-- Location: FF_X106_Y25_N29
\inst|s_centroid[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[8]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(8));

-- Location: IOIBUF_X117_Y56_N8
\dado[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(8),
	o => \dado[8]~input_o\);

-- Location: FF_X106_Y25_N7
\inst|s_dado[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[8]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(8));

-- Location: IOIBUF_X117_Y59_N8
\centroid[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(9),
	o => \centroid[9]~input_o\);

-- Location: FF_X106_Y25_N19
\inst|s_centroid[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \centroid[9]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(9));

-- Location: LCCOMB_X106_Y25_N6
\inst|Equal6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal6~0_combout\ = (\inst|s_dado\(9) & (\inst|s_centroid\(9) & (\inst|s_centroid\(8) $ (!\inst|s_dado\(8))))) # (!\inst|s_dado\(9) & (!\inst|s_centroid\(9) & (\inst|s_centroid\(8) $ (!\inst|s_dado\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_dado\(9),
	datab => \inst|s_centroid\(8),
	datac => \inst|s_dado\(8),
	datad => \inst|s_centroid\(9),
	combout => \inst|Equal6~0_combout\);

-- Location: LCCOMB_X115_Y14_N26
\inst|Equal6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal6~4_combout\ = (((!\inst|Equal6~0_combout\) # (!\inst|Equal6~2_combout\)) # (!\inst|Equal6~3_combout\)) # (!\inst|Equal6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal6~1_combout\,
	datab => \inst|Equal6~3_combout\,
	datac => \inst|Equal6~2_combout\,
	datad => \inst|Equal6~0_combout\,
	combout => \inst|Equal6~4_combout\);

-- Location: FF_X115_Y14_N27
\inst|s_dist1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Equal6~4_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dist1~q\);

-- Location: IOIBUF_X117_Y38_N1
\centroid[35]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(35),
	o => \centroid[35]~input_o\);

-- Location: LCCOMB_X116_Y22_N22
\inst|s_centroid[35]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[35]~feeder_combout\ = \centroid[35]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[35]~input_o\,
	combout => \inst|s_centroid[35]~feeder_combout\);

-- Location: FF_X116_Y22_N23
\inst|s_centroid[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[35]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(35));

-- Location: IOIBUF_X117_Y38_N8
\centroid[34]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(34),
	o => \centroid[34]~input_o\);

-- Location: LCCOMB_X116_Y22_N4
\inst|s_centroid[34]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[34]~feeder_combout\ = \centroid[34]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[34]~input_o\,
	combout => \inst|s_centroid[34]~feeder_combout\);

-- Location: FF_X116_Y22_N5
\inst|s_centroid[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[34]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(34));

-- Location: IOIBUF_X117_Y46_N1
\dado[34]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(34),
	o => \dado[34]~input_o\);

-- Location: FF_X116_Y22_N7
\inst|s_dado[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[34]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(34));

-- Location: IOIBUF_X117_Y46_N8
\dado[35]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(35),
	o => \dado[35]~input_o\);

-- Location: FF_X116_Y22_N29
\inst|s_dado[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[35]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(35));

-- Location: LCCOMB_X116_Y22_N6
\inst|Equal3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal3~1_combout\ = (\inst|s_centroid\(35) & (\inst|s_dado\(35) & (\inst|s_centroid\(34) $ (!\inst|s_dado\(34))))) # (!\inst|s_centroid\(35) & (!\inst|s_dado\(35) & (\inst|s_centroid\(34) $ (!\inst|s_dado\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_centroid\(35),
	datab => \inst|s_centroid\(34),
	datac => \inst|s_dado\(34),
	datad => \inst|s_dado\(35),
	combout => \inst|Equal3~1_combout\);

-- Location: IOIBUF_X117_Y53_N8
\centroid[39]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(39),
	o => \centroid[39]~input_o\);

-- Location: LCCOMB_X116_Y22_N10
\inst|s_centroid[39]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[39]~feeder_combout\ = \centroid[39]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[39]~input_o\,
	combout => \inst|s_centroid[39]~feeder_combout\);

-- Location: FF_X116_Y22_N11
\inst|s_centroid[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[39]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(39));

-- Location: IOIBUF_X117_Y22_N1
\dado[39]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(39),
	o => \dado[39]~input_o\);

-- Location: FF_X116_Y22_N21
\inst|s_dado[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[39]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(39));

-- Location: IOIBUF_X117_Y62_N1
\dado[38]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(38),
	o => \dado[38]~input_o\);

-- Location: FF_X116_Y22_N15
\inst|s_dado[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[38]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(38));

-- Location: IOIBUF_X117_Y26_N8
\centroid[38]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(38),
	o => \centroid[38]~input_o\);

-- Location: LCCOMB_X116_Y22_N0
\inst|s_centroid[38]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[38]~feeder_combout\ = \centroid[38]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[38]~input_o\,
	combout => \inst|s_centroid[38]~feeder_combout\);

-- Location: FF_X116_Y22_N1
\inst|s_centroid[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[38]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(38));

-- Location: LCCOMB_X116_Y22_N14
\inst|Equal3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal3~3_combout\ = (\inst|s_centroid\(39) & (\inst|s_dado\(39) & (\inst|s_dado\(38) $ (!\inst|s_centroid\(38))))) # (!\inst|s_centroid\(39) & (!\inst|s_dado\(39) & (\inst|s_dado\(38) $ (!\inst|s_centroid\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_centroid\(39),
	datab => \inst|s_dado\(39),
	datac => \inst|s_dado\(38),
	datad => \inst|s_centroid\(38),
	combout => \inst|Equal3~3_combout\);

-- Location: IOIBUF_X117_Y54_N1
\centroid[33]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(33),
	o => \centroid[33]~input_o\);

-- Location: LCCOMB_X116_Y22_N26
\inst|s_centroid[33]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[33]~feeder_combout\ = \centroid[33]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[33]~input_o\,
	combout => \inst|s_centroid[33]~feeder_combout\);

-- Location: FF_X116_Y22_N27
\inst|s_centroid[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[33]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(33));

-- Location: IOIBUF_X117_Y29_N1
\centroid[32]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(32),
	o => \centroid[32]~input_o\);

-- Location: LCCOMB_X116_Y22_N8
\inst|s_centroid[32]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[32]~feeder_combout\ = \centroid[32]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[32]~input_o\,
	combout => \inst|s_centroid[32]~feeder_combout\);

-- Location: FF_X116_Y22_N9
\inst|s_centroid[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[32]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(32));

-- Location: IOIBUF_X117_Y74_N1
\dado[32]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(32),
	o => \dado[32]~input_o\);

-- Location: FF_X116_Y22_N19
\inst|s_dado[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[32]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(32));

-- Location: IOIBUF_X117_Y26_N1
\dado[33]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(33),
	o => \dado[33]~input_o\);

-- Location: LCCOMB_X116_Y22_N24
\inst|s_dado[33]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_dado[33]~feeder_combout\ = \dado[33]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[33]~input_o\,
	combout => \inst|s_dado[33]~feeder_combout\);

-- Location: FF_X116_Y22_N25
\inst|s_dado[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_dado[33]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(33));

-- Location: LCCOMB_X116_Y22_N18
\inst|Equal3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal3~0_combout\ = (\inst|s_centroid\(33) & (\inst|s_dado\(33) & (\inst|s_centroid\(32) $ (!\inst|s_dado\(32))))) # (!\inst|s_centroid\(33) & (!\inst|s_dado\(33) & (\inst|s_centroid\(32) $ (!\inst|s_dado\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_centroid\(33),
	datab => \inst|s_centroid\(32),
	datac => \inst|s_dado\(32),
	datad => \inst|s_dado\(33),
	combout => \inst|Equal3~0_combout\);

-- Location: IOIBUF_X117_Y54_N8
\dado[37]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(37),
	o => \dado[37]~input_o\);

-- Location: FF_X116_Y22_N13
\inst|s_dado[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[37]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(37));

-- Location: IOIBUF_X117_Y56_N1
\centroid[37]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(37),
	o => \centroid[37]~input_o\);

-- Location: LCCOMB_X116_Y22_N2
\inst|s_centroid[37]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|s_centroid[37]~feeder_combout\ = \centroid[37]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \centroid[37]~input_o\,
	combout => \inst|s_centroid[37]~feeder_combout\);

-- Location: FF_X116_Y22_N3
\inst|s_centroid[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_centroid[37]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(37));

-- Location: IOIBUF_X117_Y70_N8
\dado[36]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(36),
	o => \dado[36]~input_o\);

-- Location: FF_X116_Y22_N31
\inst|s_dado[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[36]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(36));

-- Location: IOIBUF_X117_Y55_N8
\centroid[36]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(36),
	o => \centroid[36]~input_o\);

-- Location: FF_X116_Y22_N17
\inst|s_centroid[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \centroid[36]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(36));

-- Location: LCCOMB_X116_Y22_N30
\inst|Equal3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal3~2_combout\ = (\inst|s_dado\(37) & (\inst|s_centroid\(37) & (\inst|s_dado\(36) $ (!\inst|s_centroid\(36))))) # (!\inst|s_dado\(37) & (!\inst|s_centroid\(37) & (\inst|s_dado\(36) $ (!\inst|s_centroid\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_dado\(37),
	datab => \inst|s_centroid\(37),
	datac => \inst|s_dado\(36),
	datad => \inst|s_centroid\(36),
	combout => \inst|Equal3~2_combout\);

-- Location: LCCOMB_X115_Y14_N20
\inst|Equal3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Equal3~4_combout\ = (((!\inst|Equal3~2_combout\) # (!\inst|Equal3~0_combout\)) # (!\inst|Equal3~3_combout\)) # (!\inst|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~1_combout\,
	datab => \inst|Equal3~3_combout\,
	datac => \inst|Equal3~0_combout\,
	datad => \inst|Equal3~2_combout\,
	combout => \inst|Equal3~4_combout\);

-- Location: FF_X115_Y14_N21
\inst|s_dist4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Equal3~4_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dist4~q\);

-- Location: LCCOMB_X116_Y14_N8
\inst3|parallel_add_component|auto_generated|op_6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|op_6~0_combout\ = \inst|s_dist6~q\ $ (\inst|s_dist2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_dist6~q\,
	datad => \inst|s_dist2~q\,
	combout => \inst3|parallel_add_component|auto_generated|op_6~0_combout\);

-- Location: LCCOMB_X115_Y14_N0
\inst3|parallel_add_component|auto_generated|op_2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|op_2~0_combout\ = (\inst|s_dist0~q\ & \inst|s_dist5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_dist0~q\,
	datad => \inst|s_dist5~q\,
	combout => \inst3|parallel_add_component|auto_generated|op_2~0_combout\);

-- Location: LCCOMB_X115_Y14_N22
\inst3|parallel_add_component|auto_generated|op_7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|op_7~0_combout\ = (\inst3|parallel_add_component|auto_generated|op_2~0_combout\ & ((\inst|s_dist1~q\ & ((\inst|s_dist4~q\) # (\inst3|parallel_add_component|auto_generated|op_6~0_combout\))) # (!\inst|s_dist1~q\ 
-- & (\inst|s_dist4~q\ & \inst3|parallel_add_component|auto_generated|op_6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_dist1~q\,
	datab => \inst|s_dist4~q\,
	datac => \inst3|parallel_add_component|auto_generated|op_6~0_combout\,
	datad => \inst3|parallel_add_component|auto_generated|op_2~0_combout\,
	combout => \inst3|parallel_add_component|auto_generated|op_7~0_combout\);

-- Location: LCCOMB_X115_Y14_N14
\inst3|parallel_add_component|auto_generated|op_7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|op_7~2_combout\ = \inst3|parallel_add_component|auto_generated|op_2~0_combout\ $ (((\inst|s_dist1~q\ & ((\inst|s_dist4~q\) # (\inst3|parallel_add_component|auto_generated|op_6~0_combout\))) # (!\inst|s_dist1~q\ 
-- & (\inst|s_dist4~q\ & \inst3|parallel_add_component|auto_generated|op_6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_dist1~q\,
	datab => \inst|s_dist4~q\,
	datac => \inst3|parallel_add_component|auto_generated|op_6~0_combout\,
	datad => \inst3|parallel_add_component|auto_generated|op_2~0_combout\,
	combout => \inst3|parallel_add_component|auto_generated|op_7~2_combout\);

-- Location: LCCOMB_X115_Y14_N8
\inst3|parallel_add_component|auto_generated|op_7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|op_7~1_combout\ = \inst|s_dist1~q\ $ (\inst|s_dist4~q\ $ (\inst|s_dist6~q\ $ (\inst|s_dist2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_dist1~q\,
	datab => \inst|s_dist4~q\,
	datac => \inst|s_dist6~q\,
	datad => \inst|s_dist2~q\,
	combout => \inst3|parallel_add_component|auto_generated|op_7~1_combout\);

-- Location: LCCOMB_X115_Y14_N30
\inst3|parallel_add_component|auto_generated|op_5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|op_5~0_combout\ = (\inst3|parallel_add_component|auto_generated|op_7~1_combout\ & (\inst|s_dist7~q\ $ (\inst|s_dist3~q\ $ (\inst3|parallel_add_component|auto_generated|op_2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_dist7~q\,
	datab => \inst|s_dist3~q\,
	datac => \inst3|parallel_add_component|auto_generated|op_7~1_combout\,
	datad => \inst3|parallel_add_component|auto_generated|op_2~1_combout\,
	combout => \inst3|parallel_add_component|auto_generated|op_5~0_combout\);

-- Location: LCCOMB_X115_Y14_N28
\inst3|parallel_add_component|auto_generated|op_4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|op_4~1_combout\ = \inst3|parallel_add_component|auto_generated|op_6~1_combout\ $ (((\inst|s_dist7~q\ & ((\inst|s_dist3~q\) # (\inst3|parallel_add_component|auto_generated|op_2~1_combout\))) # (!\inst|s_dist7~q\ 
-- & (\inst|s_dist3~q\ & \inst3|parallel_add_component|auto_generated|op_2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_dist7~q\,
	datab => \inst3|parallel_add_component|auto_generated|op_6~1_combout\,
	datac => \inst|s_dist3~q\,
	datad => \inst3|parallel_add_component|auto_generated|op_2~1_combout\,
	combout => \inst3|parallel_add_component|auto_generated|op_4~1_combout\);

-- Location: LCCOMB_X115_Y14_N16
\inst3|parallel_add_component|auto_generated|op_5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|op_5~1_combout\ = (\inst3|parallel_add_component|auto_generated|op_7~2_combout\ & ((\inst3|parallel_add_component|auto_generated|op_5~0_combout\) # 
-- (\inst3|parallel_add_component|auto_generated|op_4~1_combout\))) # (!\inst3|parallel_add_component|auto_generated|op_7~2_combout\ & (\inst3|parallel_add_component|auto_generated|op_5~0_combout\ & 
-- \inst3|parallel_add_component|auto_generated|op_4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|parallel_add_component|auto_generated|op_7~2_combout\,
	datac => \inst3|parallel_add_component|auto_generated|op_5~0_combout\,
	datad => \inst3|parallel_add_component|auto_generated|op_4~1_combout\,
	combout => \inst3|parallel_add_component|auto_generated|op_5~1_combout\);

-- Location: LCCOMB_X115_Y14_N18
\inst3|parallel_add_component|auto_generated|op_5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|op_5~2_combout\ = (\inst3|parallel_add_component|auto_generated|op_4~0_combout\ & ((\inst3|parallel_add_component|auto_generated|op_7~0_combout\) # 
-- (\inst3|parallel_add_component|auto_generated|op_5~1_combout\))) # (!\inst3|parallel_add_component|auto_generated|op_4~0_combout\ & (\inst3|parallel_add_component|auto_generated|op_7~0_combout\ & 
-- \inst3|parallel_add_component|auto_generated|op_5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|parallel_add_component|auto_generated|op_4~0_combout\,
	datac => \inst3|parallel_add_component|auto_generated|op_7~0_combout\,
	datad => \inst3|parallel_add_component|auto_generated|op_5~1_combout\,
	combout => \inst3|parallel_add_component|auto_generated|op_5~2_combout\);

-- Location: LCCOMB_X115_Y14_N4
\inst3|parallel_add_component|auto_generated|op_5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|op_5~3_combout\ = \inst3|parallel_add_component|auto_generated|op_4~0_combout\ $ (\inst3|parallel_add_component|auto_generated|op_7~0_combout\ $ (\inst3|parallel_add_component|auto_generated|op_5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|parallel_add_component|auto_generated|op_4~0_combout\,
	datac => \inst3|parallel_add_component|auto_generated|op_7~0_combout\,
	datad => \inst3|parallel_add_component|auto_generated|op_5~1_combout\,
	combout => \inst3|parallel_add_component|auto_generated|op_5~3_combout\);

-- Location: LCCOMB_X115_Y14_N6
\inst3|parallel_add_component|auto_generated|op_5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|op_5~4_combout\ = \inst3|parallel_add_component|auto_generated|op_5~0_combout\ $ (\inst3|parallel_add_component|auto_generated|op_7~2_combout\ $ (\inst3|parallel_add_component|auto_generated|op_4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|parallel_add_component|auto_generated|op_5~0_combout\,
	datab => \inst3|parallel_add_component|auto_generated|op_7~2_combout\,
	datad => \inst3|parallel_add_component|auto_generated|op_4~1_combout\,
	combout => \inst3|parallel_add_component|auto_generated|op_5~4_combout\);

-- Location: LCCOMB_X115_Y14_N24
\inst3|parallel_add_component|auto_generated|op_5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|op_5~5_combout\ = \inst|s_dist7~q\ $ (\inst|s_dist3~q\ $ (\inst3|parallel_add_component|auto_generated|op_7~1_combout\ $ (\inst3|parallel_add_component|auto_generated|op_2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_dist7~q\,
	datab => \inst|s_dist3~q\,
	datac => \inst3|parallel_add_component|auto_generated|op_7~1_combout\,
	datad => \inst3|parallel_add_component|auto_generated|op_2~1_combout\,
	combout => \inst3|parallel_add_component|auto_generated|op_5~5_combout\);

-- Location: FF_X85_Y6_N5
\inst2|estado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst2|s_countCentroid[5]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|estado\(3));

-- Location: FF_X86_Y6_N7
\inst2|estado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|WideOr13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|estado\(2));

-- Location: LCCOMB_X85_Y6_N24
\inst2|WideOr14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|WideOr14~combout\ = (\inst2|state.VERIFYDATA~q\) # ((\inst2|state.LOADDATA~q\) # ((\inst2|state.MINDISTANCE~q\) # (\inst2|state.ENDCENTROIDS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.VERIFYDATA~q\,
	datab => \inst2|state.LOADDATA~q\,
	datac => \inst2|state.MINDISTANCE~q\,
	datad => \inst2|state.ENDCENTROIDS~q\,
	combout => \inst2|WideOr14~combout\);

-- Location: FF_X85_Y6_N25
\inst2|estado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|estado\(1));

-- Location: LCCOMB_X85_Y6_N0
\inst2|WideOr15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|WideOr15~combout\ = (\inst2|state.IDLE~q\) # ((\inst2|state.LOADDATA~q\) # ((\inst2|state.ENDSTATE~q\) # (!\inst2|WideOr13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.IDLE~q\,
	datab => \inst2|state.LOADDATA~q\,
	datac => \inst2|state.ENDSTATE~q\,
	datad => \inst2|WideOr13~0_combout\,
	combout => \inst2|WideOr15~combout\);

-- Location: FF_X85_Y6_N1
\inst2|estado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|estado\(0));

-- Location: FF_X115_Y14_N19
\inst2|s_distanceMatch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|parallel_add_component|auto_generated|op_5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_distanceMatch\(3));

-- Location: FF_X115_Y14_N5
\inst2|s_distanceMatch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|parallel_add_component|auto_generated|op_5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_distanceMatch\(2));

-- Location: LCCOMB_X115_Y14_N2
\inst2|s_distanceMatch[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_distanceMatch[1]~feeder_combout\ = \inst3|parallel_add_component|auto_generated|op_5~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|parallel_add_component|auto_generated|op_5~4_combout\,
	combout => \inst2|s_distanceMatch[1]~feeder_combout\);

-- Location: FF_X115_Y14_N3
\inst2|s_distanceMatch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_distanceMatch[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_distanceMatch\(1));

-- Location: FF_X115_Y14_N25
\inst2|s_distanceMatch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|parallel_add_component|auto_generated|op_5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_distanceMatch\(0));

-- Location: LCCOMB_X80_Y6_N16
\inst2|Add4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add4~0_combout\ = (\inst2|s_distanceMatch\(0) & (\inst2|s_sumDistance\(0) $ (VCC))) # (!\inst2|s_distanceMatch\(0) & (\inst2|s_sumDistance\(0) & VCC))
-- \inst2|Add4~1\ = CARRY((\inst2|s_distanceMatch\(0) & \inst2|s_sumDistance\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_distanceMatch\(0),
	datab => \inst2|s_sumDistance\(0),
	datad => VCC,
	combout => \inst2|Add4~0_combout\,
	cout => \inst2|Add4~1\);

-- Location: LCCOMB_X80_Y6_N10
\inst2|WideOr7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|WideOr7~combout\ = ((\inst2|state.CALCDISTANCE~q\) # ((\inst2|state.STOREDATA~q\) # (\inst2|state.WAITCALCDISTANCE~2_combout\))) # (!\inst2|WideOr14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideOr14~0_combout\,
	datab => \inst2|state.CALCDISTANCE~q\,
	datac => \inst2|state.STOREDATA~q\,
	datad => \inst2|state.WAITCALCDISTANCE~2_combout\,
	combout => \inst2|WideOr7~combout\);

-- Location: LCCOMB_X80_Y6_N8
\inst2|Selector72~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector72~0_combout\ = (\inst2|state.VERIFYDIMENSION~q\ & ((\inst2|Add4~0_combout\) # ((\inst2|s_sumDistance\(0) & \inst2|WideOr7~combout\)))) # (!\inst2|state.VERIFYDIMENSION~q\ & (((\inst2|s_sumDistance\(0) & \inst2|WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.VERIFYDIMENSION~q\,
	datab => \inst2|Add4~0_combout\,
	datac => \inst2|s_sumDistance\(0),
	datad => \inst2|WideOr7~combout\,
	combout => \inst2|Selector72~0_combout\);

-- Location: FF_X80_Y6_N9
\inst2|s_sumDistance[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector72~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_sumDistance\(0));

-- Location: LCCOMB_X80_Y6_N18
\inst2|Add4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add4~2_combout\ = (\inst2|s_sumDistance\(1) & ((\inst2|s_distanceMatch\(1) & (\inst2|Add4~1\ & VCC)) # (!\inst2|s_distanceMatch\(1) & (!\inst2|Add4~1\)))) # (!\inst2|s_sumDistance\(1) & ((\inst2|s_distanceMatch\(1) & (!\inst2|Add4~1\)) # 
-- (!\inst2|s_distanceMatch\(1) & ((\inst2|Add4~1\) # (GND)))))
-- \inst2|Add4~3\ = CARRY((\inst2|s_sumDistance\(1) & (!\inst2|s_distanceMatch\(1) & !\inst2|Add4~1\)) # (!\inst2|s_sumDistance\(1) & ((!\inst2|Add4~1\) # (!\inst2|s_distanceMatch\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_sumDistance\(1),
	datab => \inst2|s_distanceMatch\(1),
	datad => VCC,
	cin => \inst2|Add4~1\,
	combout => \inst2|Add4~2_combout\,
	cout => \inst2|Add4~3\);

-- Location: LCCOMB_X80_Y6_N14
\inst2|Selector71~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector71~0_combout\ = (\inst2|state.VERIFYDIMENSION~q\ & ((\inst2|Add4~2_combout\) # ((\inst2|s_sumDistance\(1) & \inst2|WideOr7~combout\)))) # (!\inst2|state.VERIFYDIMENSION~q\ & (((\inst2|s_sumDistance\(1) & \inst2|WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.VERIFYDIMENSION~q\,
	datab => \inst2|Add4~2_combout\,
	datac => \inst2|s_sumDistance\(1),
	datad => \inst2|WideOr7~combout\,
	combout => \inst2|Selector71~0_combout\);

-- Location: FF_X80_Y6_N15
\inst2|s_sumDistance[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_sumDistance\(1));

-- Location: LCCOMB_X80_Y6_N20
\inst2|Add4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add4~4_combout\ = ((\inst2|s_distanceMatch\(2) $ (\inst2|s_sumDistance\(2) $ (!\inst2|Add4~3\)))) # (GND)
-- \inst2|Add4~5\ = CARRY((\inst2|s_distanceMatch\(2) & ((\inst2|s_sumDistance\(2)) # (!\inst2|Add4~3\))) # (!\inst2|s_distanceMatch\(2) & (\inst2|s_sumDistance\(2) & !\inst2|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_distanceMatch\(2),
	datab => \inst2|s_sumDistance\(2),
	datad => VCC,
	cin => \inst2|Add4~3\,
	combout => \inst2|Add4~4_combout\,
	cout => \inst2|Add4~5\);

-- Location: LCCOMB_X80_Y6_N4
\inst2|Selector70~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector70~0_combout\ = (\inst2|state.VERIFYDIMENSION~q\ & ((\inst2|Add4~4_combout\) # ((\inst2|s_sumDistance\(2) & \inst2|WideOr7~combout\)))) # (!\inst2|state.VERIFYDIMENSION~q\ & (((\inst2|s_sumDistance\(2) & \inst2|WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.VERIFYDIMENSION~q\,
	datab => \inst2|Add4~4_combout\,
	datac => \inst2|s_sumDistance\(2),
	datad => \inst2|WideOr7~combout\,
	combout => \inst2|Selector70~0_combout\);

-- Location: FF_X80_Y6_N5
\inst2|s_sumDistance[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector70~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_sumDistance\(2));

-- Location: LCCOMB_X80_Y6_N22
\inst2|Add4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add4~6_combout\ = (\inst2|s_sumDistance\(3) & ((\inst2|s_distanceMatch\(3) & (\inst2|Add4~5\ & VCC)) # (!\inst2|s_distanceMatch\(3) & (!\inst2|Add4~5\)))) # (!\inst2|s_sumDistance\(3) & ((\inst2|s_distanceMatch\(3) & (!\inst2|Add4~5\)) # 
-- (!\inst2|s_distanceMatch\(3) & ((\inst2|Add4~5\) # (GND)))))
-- \inst2|Add4~7\ = CARRY((\inst2|s_sumDistance\(3) & (!\inst2|s_distanceMatch\(3) & !\inst2|Add4~5\)) # (!\inst2|s_sumDistance\(3) & ((!\inst2|Add4~5\) # (!\inst2|s_distanceMatch\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_sumDistance\(3),
	datab => \inst2|s_distanceMatch\(3),
	datad => VCC,
	cin => \inst2|Add4~5\,
	combout => \inst2|Add4~6_combout\,
	cout => \inst2|Add4~7\);

-- Location: LCCOMB_X80_Y6_N30
\inst2|Selector69~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector69~0_combout\ = (\inst2|Add4~6_combout\ & ((\inst2|state.VERIFYDIMENSION~q\) # ((\inst2|s_sumDistance\(3) & \inst2|WideOr7~combout\)))) # (!\inst2|Add4~6_combout\ & (((\inst2|s_sumDistance\(3) & \inst2|WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add4~6_combout\,
	datab => \inst2|state.VERIFYDIMENSION~q\,
	datac => \inst2|s_sumDistance\(3),
	datad => \inst2|WideOr7~combout\,
	combout => \inst2|Selector69~0_combout\);

-- Location: FF_X80_Y6_N31
\inst2|s_sumDistance[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_sumDistance\(3));

-- Location: LCCOMB_X80_Y6_N24
\inst2|Add4~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add4~8_combout\ = (\inst2|s_sumDistance\(4) & (\inst2|Add4~7\ $ (GND))) # (!\inst2|s_sumDistance\(4) & (!\inst2|Add4~7\ & VCC))
-- \inst2|Add4~9\ = CARRY((\inst2|s_sumDistance\(4) & !\inst2|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_sumDistance\(4),
	datad => VCC,
	cin => \inst2|Add4~7\,
	combout => \inst2|Add4~8_combout\,
	cout => \inst2|Add4~9\);

-- Location: LCCOMB_X80_Y6_N0
\inst2|Selector68~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector68~0_combout\ = (\inst2|state.VERIFYDIMENSION~q\ & ((\inst2|Add4~8_combout\) # ((\inst2|s_sumDistance\(4) & \inst2|WideOr7~combout\)))) # (!\inst2|state.VERIFYDIMENSION~q\ & (((\inst2|s_sumDistance\(4) & \inst2|WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.VERIFYDIMENSION~q\,
	datab => \inst2|Add4~8_combout\,
	datac => \inst2|s_sumDistance\(4),
	datad => \inst2|WideOr7~combout\,
	combout => \inst2|Selector68~0_combout\);

-- Location: FF_X80_Y6_N1
\inst2|s_sumDistance[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector68~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_sumDistance\(4));

-- Location: LCCOMB_X80_Y6_N26
\inst2|Add4~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add4~10_combout\ = (\inst2|s_sumDistance\(5) & (!\inst2|Add4~9\)) # (!\inst2|s_sumDistance\(5) & ((\inst2|Add4~9\) # (GND)))
-- \inst2|Add4~11\ = CARRY((!\inst2|Add4~9\) # (!\inst2|s_sumDistance\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_sumDistance\(5),
	datad => VCC,
	cin => \inst2|Add4~9\,
	combout => \inst2|Add4~10_combout\,
	cout => \inst2|Add4~11\);

-- Location: LCCOMB_X80_Y6_N6
\inst2|Selector67~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector67~0_combout\ = (\inst2|state.VERIFYDIMENSION~q\ & ((\inst2|Add4~10_combout\) # ((\inst2|s_sumDistance\(5) & \inst2|WideOr7~combout\)))) # (!\inst2|state.VERIFYDIMENSION~q\ & (((\inst2|s_sumDistance\(5) & \inst2|WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.VERIFYDIMENSION~q\,
	datab => \inst2|Add4~10_combout\,
	datac => \inst2|s_sumDistance\(5),
	datad => \inst2|WideOr7~combout\,
	combout => \inst2|Selector67~0_combout\);

-- Location: FF_X80_Y6_N7
\inst2|s_sumDistance[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector67~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_sumDistance\(5));

-- Location: LCCOMB_X80_Y6_N28
\inst2|Add4~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Add4~12_combout\ = \inst2|Add4~11\ $ (!\inst2|s_sumDistance\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|s_sumDistance\(6),
	cin => \inst2|Add4~11\,
	combout => \inst2|Add4~12_combout\);

-- Location: LCCOMB_X80_Y6_N12
\inst2|Selector66~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Selector66~0_combout\ = (\inst2|state.VERIFYDIMENSION~q\ & ((\inst2|Add4~12_combout\) # ((\inst2|s_sumDistance\(6) & \inst2|WideOr7~combout\)))) # (!\inst2|state.VERIFYDIMENSION~q\ & (((\inst2|s_sumDistance\(6) & \inst2|WideOr7~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.VERIFYDIMENSION~q\,
	datab => \inst2|Add4~12_combout\,
	datac => \inst2|s_sumDistance\(6),
	datad => \inst2|WideOr7~combout\,
	combout => \inst2|Selector66~0_combout\);

-- Location: FF_X80_Y6_N13
\inst2|s_sumDistance[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|Selector66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_sumDistance\(6));

-- Location: LCCOMB_X82_Y6_N28
\inst2|s_blockState[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_blockState[3]~0_combout\ = !\inst2|state.ENDSTATE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|state.ENDSTATE~q\,
	combout => \inst2|s_blockState[3]~0_combout\);

-- Location: FF_X82_Y6_N29
\inst2|s_blockState[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_blockState[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_blockState\(3));

-- Location: LCCOMB_X82_Y6_N14
\inst2|s_blockState[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_blockState[2]~1_combout\ = !\inst2|state.ENDSTATE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|state.ENDSTATE~q\,
	combout => \inst2|s_blockState[2]~1_combout\);

-- Location: FF_X82_Y6_N15
\inst2|s_blockState[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_blockState[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_blockState\(2));

-- Location: LCCOMB_X82_Y6_N0
\inst2|s_blockState[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_blockState[1]~2_combout\ = !\inst2|state.ENDSTATE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|state.ENDSTATE~q\,
	combout => \inst2|s_blockState[1]~2_combout\);

-- Location: FF_X82_Y6_N1
\inst2|s_blockState[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_blockState[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_blockState\(1));

-- Location: FF_X86_Y6_N13
\inst2|s_blockState[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst2|state.ENDSTATE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_blockState\(0));

-- Location: LCCOMB_X79_Y4_N0
\inst1|s_countCentroid[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_countCentroid[9]~feeder_combout\ = \inst2|s_countCentroid\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_countCentroid\(9),
	combout => \inst1|s_countCentroid[9]~feeder_combout\);

-- Location: FF_X79_Y4_N1
\inst1|s_countCentroid[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_countCentroid[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_countCentroid\(9));

-- Location: LCCOMB_X79_Y4_N26
\inst1|s_countCentroid[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_countCentroid[0]~feeder_combout\ = \inst2|s_countCentroid\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|s_countCentroid\(0),
	combout => \inst1|s_countCentroid[0]~feeder_combout\);

-- Location: FF_X79_Y4_N27
\inst1|s_countCentroid[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_countCentroid[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_countCentroid\(0));

-- Location: LCCOMB_X79_Y4_N28
\inst1|s_countCentroid[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_countCentroid[1]~feeder_combout\ = \inst2|s_countCentroid\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_countCentroid\(1),
	combout => \inst1|s_countCentroid[1]~feeder_combout\);

-- Location: FF_X79_Y4_N29
\inst1|s_countCentroid[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_countCentroid[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_countCentroid\(1));

-- Location: FF_X79_Y4_N5
\inst1|s_countCentroid[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|s_countCentroid\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_countCentroid\(3));

-- Location: LCCOMB_X79_Y4_N2
\inst1|s_countCentroid[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_countCentroid[2]~feeder_combout\ = \inst2|s_countCentroid\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|s_countCentroid\(2),
	combout => \inst1|s_countCentroid[2]~feeder_combout\);

-- Location: FF_X79_Y4_N3
\inst1|s_countCentroid[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_countCentroid[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_countCentroid\(2));

-- Location: LCCOMB_X79_Y4_N4
\inst1|s_reg7[9]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_reg7[9]~0_combout\ = (!\inst1|s_countCentroid\(0) & (!\inst1|s_countCentroid\(1) & (!\inst1|s_countCentroid\(3) & !\inst1|s_countCentroid\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_countCentroid\(0),
	datab => \inst1|s_countCentroid\(1),
	datac => \inst1|s_countCentroid\(3),
	datad => \inst1|s_countCentroid\(2),
	combout => \inst1|s_reg7[9]~0_combout\);

-- Location: FF_X79_Y4_N31
\inst1|s_countCentroid[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|s_countCentroid\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_countCentroid\(8));

-- Location: LCCOMB_X78_Y4_N6
\inst1|s_countCentroid[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_countCentroid[5]~feeder_combout\ = \inst2|s_countCentroid\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|s_countCentroid\(5),
	combout => \inst1|s_countCentroid[5]~feeder_combout\);

-- Location: FF_X78_Y4_N7
\inst1|s_countCentroid[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_countCentroid[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_countCentroid\(5));

-- Location: LCCOMB_X78_Y4_N8
\inst1|s_countCentroid[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_countCentroid[6]~feeder_combout\ = \inst2|s_countCentroid\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_countCentroid\(6),
	combout => \inst1|s_countCentroid[6]~feeder_combout\);

-- Location: FF_X78_Y4_N9
\inst1|s_countCentroid[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_countCentroid[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_countCentroid\(6));

-- Location: FF_X78_Y4_N31
\inst1|s_countCentroid[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|s_countCentroid\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_countCentroid\(7));

-- Location: LCCOMB_X78_Y4_N0
\inst1|s_countCentroid[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_countCentroid[4]~feeder_combout\ = \inst2|s_countCentroid\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_countCentroid\(4),
	combout => \inst1|s_countCentroid[4]~feeder_combout\);

-- Location: FF_X78_Y4_N1
\inst1|s_countCentroid[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_countCentroid[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_countCentroid\(4));

-- Location: LCCOMB_X78_Y4_N30
\inst1|s_reg7[9]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_reg7[9]~1_combout\ = (!\inst1|s_countCentroid\(5) & (!\inst1|s_countCentroid\(6) & (!\inst1|s_countCentroid\(7) & !\inst1|s_countCentroid\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_countCentroid\(5),
	datab => \inst1|s_countCentroid\(6),
	datac => \inst1|s_countCentroid\(7),
	datad => \inst1|s_countCentroid\(4),
	combout => \inst1|s_reg7[9]~1_combout\);

-- Location: LCCOMB_X79_Y4_N30
\inst1|s_reg7[9]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_reg7[9]~2_combout\ = (!\inst1|s_countCentroid\(9) & (\inst1|s_reg7[9]~0_combout\ & (!\inst1|s_countCentroid\(8) & \inst1|s_reg7[9]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_countCentroid\(9),
	datab => \inst1|s_reg7[9]~0_combout\,
	datac => \inst1|s_countCentroid\(8),
	datad => \inst1|s_reg7[9]~1_combout\,
	combout => \inst1|s_reg7[9]~2_combout\);

-- Location: FF_X72_Y4_N17
\inst1|s_distanceMatch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|s_sumDistance\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_distanceMatch\(6));

-- Location: FF_X72_Y4_N27
\inst1|s_reg6[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|s_distanceMatch\(6),
	sload => VCC,
	ena => \inst1|s_reg7[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg6\(6));

-- Location: LCCOMB_X72_Y4_N6
\inst1|s_distanceMatch[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_distanceMatch[5]~feeder_combout\ = \inst2|s_sumDistance\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|s_sumDistance\(5),
	combout => \inst1|s_distanceMatch[5]~feeder_combout\);

-- Location: FF_X72_Y4_N7
\inst1|s_distanceMatch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_distanceMatch[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_distanceMatch\(5));

-- Location: FF_X72_Y4_N25
\inst1|s_reg6[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|s_distanceMatch\(5),
	sload => VCC,
	ena => \inst1|s_reg7[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg6\(5));

-- Location: LCCOMB_X72_Y4_N28
\inst1|s_distanceMatch[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_distanceMatch[4]~feeder_combout\ = \inst2|s_sumDistance\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|s_sumDistance\(4),
	combout => \inst1|s_distanceMatch[4]~feeder_combout\);

-- Location: FF_X72_Y4_N29
\inst1|s_distanceMatch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_distanceMatch[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_distanceMatch\(4));

-- Location: LCCOMB_X72_Y4_N10
\inst1|s_reg6[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_reg6[4]~feeder_combout\ = \inst1|s_distanceMatch\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_distanceMatch\(4),
	combout => \inst1|s_reg6[4]~feeder_combout\);

-- Location: FF_X72_Y4_N11
\inst1|s_reg6[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_reg6[4]~feeder_combout\,
	ena => \inst1|s_reg7[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg6\(4));

-- Location: LCCOMB_X72_Y4_N8
\inst1|s_distanceMatch[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_distanceMatch[3]~feeder_combout\ = \inst2|s_sumDistance\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|s_sumDistance\(3),
	combout => \inst1|s_distanceMatch[3]~feeder_combout\);

-- Location: FF_X72_Y4_N9
\inst1|s_distanceMatch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_distanceMatch[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_distanceMatch\(3));

-- Location: FF_X72_Y4_N23
\inst1|s_reg6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|s_distanceMatch\(3),
	sload => VCC,
	ena => \inst1|s_reg7[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg6\(3));

-- Location: LCCOMB_X72_Y4_N0
\inst1|s_distanceMatch[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_distanceMatch[2]~feeder_combout\ = \inst2|s_sumDistance\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|s_sumDistance\(2),
	combout => \inst1|s_distanceMatch[2]~feeder_combout\);

-- Location: FF_X72_Y4_N1
\inst1|s_distanceMatch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_distanceMatch[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_distanceMatch\(2));

-- Location: FF_X72_Y4_N19
\inst1|s_reg6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|s_distanceMatch\(2),
	sload => VCC,
	ena => \inst1|s_reg7[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg6\(2));

-- Location: LCCOMB_X72_Y4_N4
\inst1|s_distanceMatch[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_distanceMatch[1]~feeder_combout\ = \inst2|s_sumDistance\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|s_sumDistance\(1),
	combout => \inst1|s_distanceMatch[1]~feeder_combout\);

-- Location: FF_X72_Y4_N5
\inst1|s_distanceMatch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_distanceMatch[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_distanceMatch\(1));

-- Location: FF_X72_Y4_N13
\inst1|s_reg6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|s_distanceMatch\(1),
	sload => VCC,
	ena => \inst1|s_reg7[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg6\(1));

-- Location: LCCOMB_X72_Y4_N30
\inst1|s_distanceMatch[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_distanceMatch[0]~feeder_combout\ = \inst2|s_sumDistance\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|s_sumDistance\(0),
	combout => \inst1|s_distanceMatch[0]~feeder_combout\);

-- Location: FF_X72_Y4_N31
\inst1|s_distanceMatch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_distanceMatch[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_distanceMatch\(0));

-- Location: FF_X72_Y4_N15
\inst1|s_reg6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|s_distanceMatch\(0),
	sload => VCC,
	ena => \inst1|s_reg7[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg6\(0));

-- Location: LCCOMB_X72_Y4_N14
\inst1|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_cout\ = CARRY((!\inst1|s_distanceMatch\(0) & \inst1|s_reg6\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_distanceMatch\(0),
	datab => \inst1|s_reg6\(0),
	datad => VCC,
	cout => \inst1|LessThan0~1_cout\);

-- Location: LCCOMB_X72_Y4_N16
\inst1|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~3_cout\ = CARRY((\inst1|s_reg6\(1) & (\inst1|s_distanceMatch\(1) & !\inst1|LessThan0~1_cout\)) # (!\inst1|s_reg6\(1) & ((\inst1|s_distanceMatch\(1)) # (!\inst1|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_reg6\(1),
	datab => \inst1|s_distanceMatch\(1),
	datad => VCC,
	cin => \inst1|LessThan0~1_cout\,
	cout => \inst1|LessThan0~3_cout\);

-- Location: LCCOMB_X72_Y4_N18
\inst1|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~5_cout\ = CARRY((\inst1|s_reg6\(2) & ((!\inst1|LessThan0~3_cout\) # (!\inst1|s_distanceMatch\(2)))) # (!\inst1|s_reg6\(2) & (!\inst1|s_distanceMatch\(2) & !\inst1|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_reg6\(2),
	datab => \inst1|s_distanceMatch\(2),
	datad => VCC,
	cin => \inst1|LessThan0~3_cout\,
	cout => \inst1|LessThan0~5_cout\);

-- Location: LCCOMB_X72_Y4_N20
\inst1|LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~7_cout\ = CARRY((\inst1|s_reg6\(3) & (\inst1|s_distanceMatch\(3) & !\inst1|LessThan0~5_cout\)) # (!\inst1|s_reg6\(3) & ((\inst1|s_distanceMatch\(3)) # (!\inst1|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_reg6\(3),
	datab => \inst1|s_distanceMatch\(3),
	datad => VCC,
	cin => \inst1|LessThan0~5_cout\,
	cout => \inst1|LessThan0~7_cout\);

-- Location: LCCOMB_X72_Y4_N22
\inst1|LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~9_cout\ = CARRY((\inst1|s_reg6\(4) & ((!\inst1|LessThan0~7_cout\) # (!\inst1|s_distanceMatch\(4)))) # (!\inst1|s_reg6\(4) & (!\inst1|s_distanceMatch\(4) & !\inst1|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_reg6\(4),
	datab => \inst1|s_distanceMatch\(4),
	datad => VCC,
	cin => \inst1|LessThan0~7_cout\,
	cout => \inst1|LessThan0~9_cout\);

-- Location: LCCOMB_X72_Y4_N24
\inst1|LessThan0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~11_cout\ = CARRY((\inst1|s_distanceMatch\(5) & ((!\inst1|LessThan0~9_cout\) # (!\inst1|s_reg6\(5)))) # (!\inst1|s_distanceMatch\(5) & (!\inst1|s_reg6\(5) & !\inst1|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_distanceMatch\(5),
	datab => \inst1|s_reg6\(5),
	datad => VCC,
	cin => \inst1|LessThan0~9_cout\,
	cout => \inst1|LessThan0~11_cout\);

-- Location: LCCOMB_X72_Y4_N26
\inst1|LessThan0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~12_combout\ = (\inst1|s_reg6\(6) & ((!\inst1|LessThan0~11_cout\) # (!\inst1|s_distanceMatch\(6)))) # (!\inst1|s_reg6\(6) & (!\inst1|s_distanceMatch\(6) & !\inst1|LessThan0~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_reg6\(6),
	datab => \inst1|s_distanceMatch\(6),
	cin => \inst1|LessThan0~11_cout\,
	combout => \inst1|LessThan0~12_combout\);

-- Location: LCCOMB_X71_Y4_N26
\inst1|s_reg7[9]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_reg7[9]~3_combout\ = (\inst2|s_enMinDistanceMatch~q\ & ((\inst1|s_reg7[9]~2_combout\) # (\inst1|LessThan0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_reg7[9]~2_combout\,
	datab => \inst2|s_enMinDistanceMatch~q\,
	datad => \inst1|LessThan0~12_combout\,
	combout => \inst1|s_reg7[9]~3_combout\);

-- Location: FF_X71_Y4_N27
\inst1|s_reg7[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|s_countCentroid\(9),
	sload => VCC,
	ena => \inst1|s_reg7[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg7\(9));

-- Location: LCCOMB_X63_Y4_N26
\inst2|s_oDado[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_oDado[9]~feeder_combout\ = \inst1|s_reg7\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_reg7\(9),
	combout => \inst2|s_oDado[9]~feeder_combout\);

-- Location: FF_X63_Y4_N27
\inst2|s_oDado[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_oDado[9]~feeder_combout\,
	ena => \inst2|state.STOREDATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_oDado\(9));

-- Location: LCCOMB_X71_Y4_N24
\inst1|s_reg7[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_reg7[8]~feeder_combout\ = \inst1|s_countCentroid\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_countCentroid\(8),
	combout => \inst1|s_reg7[8]~feeder_combout\);

-- Location: FF_X71_Y4_N25
\inst1|s_reg7[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_reg7[8]~feeder_combout\,
	ena => \inst1|s_reg7[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg7\(8));

-- Location: LCCOMB_X63_Y4_N12
\inst2|s_oDado[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_oDado[8]~feeder_combout\ = \inst1|s_reg7\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_reg7\(8),
	combout => \inst2|s_oDado[8]~feeder_combout\);

-- Location: FF_X63_Y4_N13
\inst2|s_oDado[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_oDado[8]~feeder_combout\,
	ena => \inst2|state.STOREDATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_oDado\(8));

-- Location: LCCOMB_X71_Y4_N2
\inst1|s_reg7[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_reg7[7]~feeder_combout\ = \inst1|s_countCentroid\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_countCentroid\(7),
	combout => \inst1|s_reg7[7]~feeder_combout\);

-- Location: FF_X71_Y4_N3
\inst1|s_reg7[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_reg7[7]~feeder_combout\,
	ena => \inst1|s_reg7[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg7\(7));

-- Location: LCCOMB_X63_Y4_N22
\inst2|s_oDado[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_oDado[7]~feeder_combout\ = \inst1|s_reg7\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_reg7\(7),
	combout => \inst2|s_oDado[7]~feeder_combout\);

-- Location: FF_X63_Y4_N23
\inst2|s_oDado[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_oDado[7]~feeder_combout\,
	ena => \inst2|state.STOREDATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_oDado\(7));

-- Location: LCCOMB_X71_Y4_N16
\inst1|s_reg7[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_reg7[6]~feeder_combout\ = \inst1|s_countCentroid\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_countCentroid\(6),
	combout => \inst1|s_reg7[6]~feeder_combout\);

-- Location: FF_X71_Y4_N17
\inst1|s_reg7[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_reg7[6]~feeder_combout\,
	ena => \inst1|s_reg7[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg7\(6));

-- Location: LCCOMB_X63_Y4_N4
\inst2|s_oDado[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_oDado[6]~feeder_combout\ = \inst1|s_reg7\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_reg7\(6),
	combout => \inst2|s_oDado[6]~feeder_combout\);

-- Location: FF_X63_Y4_N5
\inst2|s_oDado[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_oDado[6]~feeder_combout\,
	ena => \inst2|state.STOREDATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_oDado\(6));

-- Location: LCCOMB_X71_Y4_N14
\inst1|s_reg7[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_reg7[5]~feeder_combout\ = \inst1|s_countCentroid\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_countCentroid\(5),
	combout => \inst1|s_reg7[5]~feeder_combout\);

-- Location: FF_X71_Y4_N15
\inst1|s_reg7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_reg7[5]~feeder_combout\,
	ena => \inst1|s_reg7[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg7\(5));

-- Location: LCCOMB_X63_Y4_N30
\inst2|s_oDado[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_oDado[5]~feeder_combout\ = \inst1|s_reg7\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_reg7\(5),
	combout => \inst2|s_oDado[5]~feeder_combout\);

-- Location: FF_X63_Y4_N31
\inst2|s_oDado[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_oDado[5]~feeder_combout\,
	ena => \inst2|state.STOREDATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_oDado\(5));

-- Location: LCCOMB_X71_Y4_N28
\inst1|s_reg7[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_reg7[4]~feeder_combout\ = \inst1|s_countCentroid\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_countCentroid\(4),
	combout => \inst1|s_reg7[4]~feeder_combout\);

-- Location: FF_X71_Y4_N29
\inst1|s_reg7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_reg7[4]~feeder_combout\,
	ena => \inst1|s_reg7[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg7\(4));

-- Location: LCCOMB_X63_Y4_N16
\inst2|s_oDado[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_oDado[4]~feeder_combout\ = \inst1|s_reg7\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_reg7\(4),
	combout => \inst2|s_oDado[4]~feeder_combout\);

-- Location: FF_X63_Y4_N17
\inst2|s_oDado[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_oDado[4]~feeder_combout\,
	ena => \inst2|state.STOREDATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_oDado\(4));

-- Location: LCCOMB_X72_Y4_N2
\inst1|s_reg7[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_reg7[3]~feeder_combout\ = \inst1|s_countCentroid\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_countCentroid\(3),
	combout => \inst1|s_reg7[3]~feeder_combout\);

-- Location: FF_X72_Y4_N3
\inst1|s_reg7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_reg7[3]~feeder_combout\,
	ena => \inst1|s_reg7[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg7\(3));

-- Location: LCCOMB_X63_Y4_N18
\inst2|s_oDado[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_oDado[3]~feeder_combout\ = \inst1|s_reg7\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_reg7\(3),
	combout => \inst2|s_oDado[3]~feeder_combout\);

-- Location: FF_X63_Y4_N19
\inst2|s_oDado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_oDado[3]~feeder_combout\,
	ena => \inst2|state.STOREDATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_oDado\(3));

-- Location: LCCOMB_X71_Y4_N30
\inst1|s_reg7[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_reg7[2]~feeder_combout\ = \inst1|s_countCentroid\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_countCentroid\(2),
	combout => \inst1|s_reg7[2]~feeder_combout\);

-- Location: FF_X71_Y4_N31
\inst1|s_reg7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_reg7[2]~feeder_combout\,
	ena => \inst1|s_reg7[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg7\(2));

-- Location: LCCOMB_X63_Y4_N28
\inst2|s_oDado[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_oDado[2]~feeder_combout\ = \inst1|s_reg7\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_reg7\(2),
	combout => \inst2|s_oDado[2]~feeder_combout\);

-- Location: FF_X63_Y4_N29
\inst2|s_oDado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_oDado[2]~feeder_combout\,
	ena => \inst2|state.STOREDATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_oDado\(2));

-- Location: LCCOMB_X71_Y4_N0
\inst1|s_reg7[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_reg7[1]~feeder_combout\ = \inst1|s_countCentroid\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_countCentroid\(1),
	combout => \inst1|s_reg7[1]~feeder_combout\);

-- Location: FF_X71_Y4_N1
\inst1|s_reg7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_reg7[1]~feeder_combout\,
	ena => \inst1|s_reg7[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg7\(1));

-- Location: LCCOMB_X63_Y4_N10
\inst2|s_oDado[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_oDado[1]~feeder_combout\ = \inst1|s_reg7\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_reg7\(1),
	combout => \inst2|s_oDado[1]~feeder_combout\);

-- Location: FF_X63_Y4_N11
\inst2|s_oDado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_oDado[1]~feeder_combout\,
	ena => \inst2|state.STOREDATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_oDado\(1));

-- Location: LCCOMB_X71_Y4_N6
\inst1|s_reg7[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|s_reg7[0]~feeder_combout\ = \inst1|s_countCentroid\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|s_countCentroid\(0),
	combout => \inst1|s_reg7[0]~feeder_combout\);

-- Location: FF_X71_Y4_N7
\inst1|s_reg7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|s_reg7[0]~feeder_combout\,
	ena => \inst1|s_reg7[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg7\(0));

-- Location: LCCOMB_X63_Y4_N24
\inst2|s_oDado[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|s_oDado[0]~feeder_combout\ = \inst1|s_reg7\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|s_reg7\(0),
	combout => \inst2|s_oDado[0]~feeder_combout\);

-- Location: FF_X63_Y4_N25
\inst2|s_oDado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst2|s_oDado[0]~feeder_combout\,
	ena => \inst2|state.STOREDATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_oDado\(0));

ww_wr_Ram <= \wr_Ram~output_o\;

ww_enMinDistMatch <= \enMinDistMatch~output_o\;

ww_enSimpleMatch <= \enSimpleMatch~output_o\;

ww_EndDistanceMatch <= \EndDistanceMatch~output_o\;

ww_addr_Ram_Centroid(13) <= \addr_Ram_Centroid[13]~output_o\;

ww_addr_Ram_Centroid(12) <= \addr_Ram_Centroid[12]~output_o\;

ww_addr_Ram_Centroid(11) <= \addr_Ram_Centroid[11]~output_o\;

ww_addr_Ram_Centroid(10) <= \addr_Ram_Centroid[10]~output_o\;

ww_addr_Ram_Centroid(9) <= \addr_Ram_Centroid[9]~output_o\;

ww_addr_Ram_Centroid(8) <= \addr_Ram_Centroid[8]~output_o\;

ww_addr_Ram_Centroid(7) <= \addr_Ram_Centroid[7]~output_o\;

ww_addr_Ram_Centroid(6) <= \addr_Ram_Centroid[6]~output_o\;

ww_addr_Ram_Centroid(5) <= \addr_Ram_Centroid[5]~output_o\;

ww_addr_Ram_Centroid(4) <= \addr_Ram_Centroid[4]~output_o\;

ww_addr_Ram_Centroid(3) <= \addr_Ram_Centroid[3]~output_o\;

ww_addr_Ram_Centroid(2) <= \addr_Ram_Centroid[2]~output_o\;

ww_addr_Ram_Centroid(1) <= \addr_Ram_Centroid[1]~output_o\;

ww_addr_Ram_Centroid(0) <= \addr_Ram_Centroid[0]~output_o\;

ww_addr_Ram_Dado(13) <= \addr_Ram_Dado[13]~output_o\;

ww_addr_Ram_Dado(12) <= \addr_Ram_Dado[12]~output_o\;

ww_addr_Ram_Dado(11) <= \addr_Ram_Dado[11]~output_o\;

ww_addr_Ram_Dado(10) <= \addr_Ram_Dado[10]~output_o\;

ww_addr_Ram_Dado(9) <= \addr_Ram_Dado[9]~output_o\;

ww_addr_Ram_Dado(8) <= \addr_Ram_Dado[8]~output_o\;

ww_addr_Ram_Dado(7) <= \addr_Ram_Dado[7]~output_o\;

ww_addr_Ram_Dado(6) <= \addr_Ram_Dado[6]~output_o\;

ww_addr_Ram_Dado(5) <= \addr_Ram_Dado[5]~output_o\;

ww_addr_Ram_Dado(4) <= \addr_Ram_Dado[4]~output_o\;

ww_addr_Ram_Dado(3) <= \addr_Ram_Dado[3]~output_o\;

ww_addr_Ram_Dado(2) <= \addr_Ram_Dado[2]~output_o\;

ww_addr_Ram_Dado(1) <= \addr_Ram_Dado[1]~output_o\;

ww_addr_Ram_Dado(0) <= \addr_Ram_Dado[0]~output_o\;

ww_DistanceMatch(3) <= \DistanceMatch[3]~output_o\;

ww_DistanceMatch(2) <= \DistanceMatch[2]~output_o\;

ww_DistanceMatch(1) <= \DistanceMatch[1]~output_o\;

ww_DistanceMatch(0) <= \DistanceMatch[0]~output_o\;

ww_KmodesEstatoMap(3) <= \KmodesEstatoMap[3]~output_o\;

ww_KmodesEstatoMap(2) <= \KmodesEstatoMap[2]~output_o\;

ww_KmodesEstatoMap(1) <= \KmodesEstatoMap[1]~output_o\;

ww_KmodesEstatoMap(0) <= \KmodesEstatoMap[0]~output_o\;

ww_KmodesSumDist(6) <= \KmodesSumDist[6]~output_o\;

ww_KmodesSumDist(5) <= \KmodesSumDist[5]~output_o\;

ww_KmodesSumDist(4) <= \KmodesSumDist[4]~output_o\;

ww_KmodesSumDist(3) <= \KmodesSumDist[3]~output_o\;

ww_KmodesSumDist(2) <= \KmodesSumDist[2]~output_o\;

ww_KmodesSumDist(1) <= \KmodesSumDist[1]~output_o\;

ww_KmodesSumDist(0) <= \KmodesSumDist[0]~output_o\;

ww_next_State(3) <= \next_State[3]~output_o\;

ww_next_State(2) <= \next_State[2]~output_o\;

ww_next_State(1) <= \next_State[1]~output_o\;

ww_next_State(0) <= \next_State[0]~output_o\;

ww_o_dado(9) <= \o_dado[9]~output_o\;

ww_o_dado(8) <= \o_dado[8]~output_o\;

ww_o_dado(7) <= \o_dado[7]~output_o\;

ww_o_dado(6) <= \o_dado[6]~output_o\;

ww_o_dado(5) <= \o_dado[5]~output_o\;

ww_o_dado(4) <= \o_dado[4]~output_o\;

ww_o_dado(3) <= \o_dado[3]~output_o\;

ww_o_dado(2) <= \o_dado[2]~output_o\;

ww_o_dado(1) <= \o_dado[1]~output_o\;

ww_o_dado(0) <= \o_dado[0]~output_o\;

ww_oReg7(9) <= \oReg7[9]~output_o\;

ww_oReg7(8) <= \oReg7[8]~output_o\;

ww_oReg7(7) <= \oReg7[7]~output_o\;

ww_oReg7(6) <= \oReg7[6]~output_o\;

ww_oReg7(5) <= \oReg7[5]~output_o\;

ww_oReg7(4) <= \oReg7[4]~output_o\;

ww_oReg7(3) <= \oReg7[3]~output_o\;

ww_oReg7(2) <= \oReg7[2]~output_o\;

ww_oReg7(1) <= \oReg7[1]~output_o\;

ww_oReg7(0) <= \oReg7[0]~output_o\;
END structure;


