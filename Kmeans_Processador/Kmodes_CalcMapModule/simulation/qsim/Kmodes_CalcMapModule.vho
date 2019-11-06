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

-- DATE "04/28/2018 11:40:27"

-- 
-- Device: Altera 5CSXFC6D6F31I7ES Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
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
-- wr_Ram	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enMinDistMatch	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enSimpleMatch	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EndDistanceMatch	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[13]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[12]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[11]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[10]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[9]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[8]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[7]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[6]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[4]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[3]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[2]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[1]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Centroid[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[13]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[12]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[11]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[10]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[8]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[7]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[6]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[5]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[3]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[2]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram_Dado[0]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DistanceMatch[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DistanceMatch[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DistanceMatch[1]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DistanceMatch[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KmodesEstatoMap[3]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KmodesEstatoMap[2]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KmodesEstatoMap[1]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KmodesEstatoMap[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KmodesSumDist[6]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KmodesSumDist[5]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KmodesSumDist[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KmodesSumDist[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KmodesSumDist[2]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KmodesSumDist[1]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KmodesSumDist[0]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_State[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_State[2]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_State[1]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_State[0]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_dado[9]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_dado[8]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_dado[7]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_dado[6]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_dado[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_dado[4]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_dado[3]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_dado[2]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_dado[1]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_dado[0]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oReg7[9]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oReg7[8]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oReg7[7]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oReg7[6]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oReg7[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oReg7[4]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oReg7[3]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oReg7[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oReg7[1]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oReg7[0]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nrst	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg8[0]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg8[1]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg8[2]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[7]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[6]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[5]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[4]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[0]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[2]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[9]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[8]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[7]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[6]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[5]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[4]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[3]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[2]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[14]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[13]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[12]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[11]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[9]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[10]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[8]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[1]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[2]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[4]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[5]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[6]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[7]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[8]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[9]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[10]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[11]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[12]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[13]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_KmodesControlCalcMap	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[5]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[0]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[0]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[1]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[2]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[2]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[3]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[4]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[6]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[6]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[7]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[7]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[61]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[61]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[56]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[56]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[57]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[57]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[58]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[58]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[59]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[59]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[60]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[60]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[62]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[62]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[63]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[63]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[13]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[13]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[8]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[8]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[9]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[9]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[10]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[10]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[11]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[11]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[12]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[12]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[14]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[14]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[15]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[15]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[45]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[45]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[40]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[40]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[41]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[41]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[42]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[42]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[43]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[43]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[44]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[44]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[46]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[46]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[47]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[47]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[53]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[53]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[48]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[48]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[49]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[49]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[50]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[50]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[51]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[51]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[52]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[52]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[54]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[54]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[55]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[55]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[21]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[21]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[16]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[16]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[17]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[17]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[18]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[18]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[19]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[19]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[20]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[20]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[22]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[22]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[23]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[23]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[29]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[29]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[24]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[24]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[25]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[25]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[26]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[26]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[27]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[27]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[28]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[28]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[30]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[30]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[31]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[31]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[37]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[37]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[32]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[32]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[33]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[33]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[34]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[34]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[35]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[35]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[36]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[36]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[38]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[38]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centroid[39]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[39]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \inst2|Mult1~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|Mult1~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|Mult1~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|Mult1~mac_AX_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|Mult1~mac_AY_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|Mult1~mac_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst2|Mult1~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst2|Mult1~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst2|Mult0~mac_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|Mult0~mac_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|Mult0~mac_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|Mult0~mac_AX_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|Mult0~mac_AY_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst2|Mult0~mac_BX_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst2|Mult0~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst2|Mult0~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst2|Mult1~339\ : std_logic;
SIGNAL \inst2|Mult1~8\ : std_logic;
SIGNAL \inst2|Mult1~9\ : std_logic;
SIGNAL \inst2|Mult1~10\ : std_logic;
SIGNAL \inst2|Mult1~11\ : std_logic;
SIGNAL \inst2|Mult1~12\ : std_logic;
SIGNAL \inst2|Mult1~13\ : std_logic;
SIGNAL \inst2|Mult1~14\ : std_logic;
SIGNAL \inst2|Mult1~15\ : std_logic;
SIGNAL \inst2|Mult1~16\ : std_logic;
SIGNAL \inst2|Mult1~17\ : std_logic;
SIGNAL \inst2|Mult1~18\ : std_logic;
SIGNAL \inst2|Mult1~19\ : std_logic;
SIGNAL \inst2|Mult1~20\ : std_logic;
SIGNAL \inst2|Mult1~21\ : std_logic;
SIGNAL \inst2|Mult1~22\ : std_logic;
SIGNAL \inst2|Mult1~23\ : std_logic;
SIGNAL \inst2|Mult1~24\ : std_logic;
SIGNAL \inst2|Mult1~25\ : std_logic;
SIGNAL \inst2|Mult1~26\ : std_logic;
SIGNAL \inst2|Mult1~27\ : std_logic;
SIGNAL \inst2|Mult1~28\ : std_logic;
SIGNAL \inst2|Mult1~29\ : std_logic;
SIGNAL \inst2|Mult1~30\ : std_logic;
SIGNAL \inst2|Mult1~31\ : std_logic;
SIGNAL \inst2|Mult1~32\ : std_logic;
SIGNAL \inst2|Mult1~33\ : std_logic;
SIGNAL \inst2|Mult1~34\ : std_logic;
SIGNAL \inst2|Mult1~35\ : std_logic;
SIGNAL \inst2|Mult1~36\ : std_logic;
SIGNAL \inst2|Mult1~37\ : std_logic;
SIGNAL \inst2|Mult1~38\ : std_logic;
SIGNAL \inst2|Mult1~39\ : std_logic;
SIGNAL \inst2|Mult1~40\ : std_logic;
SIGNAL \inst2|Mult1~41\ : std_logic;
SIGNAL \inst2|Mult1~42\ : std_logic;
SIGNAL \inst2|Mult1~43\ : std_logic;
SIGNAL \inst2|Mult1~44\ : std_logic;
SIGNAL \inst2|Mult1~45\ : std_logic;
SIGNAL \inst2|Mult1~46\ : std_logic;
SIGNAL \inst2|Mult1~47\ : std_logic;
SIGNAL \inst2|Mult1~48\ : std_logic;
SIGNAL \inst2|Mult1~49\ : std_logic;
SIGNAL \inst2|Mult1~50\ : std_logic;
SIGNAL \inst2|Mult1~51\ : std_logic;
SIGNAL \inst2|Mult1~52\ : std_logic;
SIGNAL \inst2|Mult1~53\ : std_logic;
SIGNAL \inst2|Mult1~54\ : std_logic;
SIGNAL \inst2|Mult1~55\ : std_logic;
SIGNAL \inst2|Mult1~56\ : std_logic;
SIGNAL \inst2|Mult0~336\ : std_logic;
SIGNAL \inst2|Mult0~337\ : std_logic;
SIGNAL \inst2|Mult0~338\ : std_logic;
SIGNAL \inst2|Mult0~339\ : std_logic;
SIGNAL \inst2|Mult0~8\ : std_logic;
SIGNAL \inst2|Mult0~9\ : std_logic;
SIGNAL \inst2|Mult0~10\ : std_logic;
SIGNAL \inst2|Mult0~11\ : std_logic;
SIGNAL \inst2|Mult0~12\ : std_logic;
SIGNAL \inst2|Mult0~13\ : std_logic;
SIGNAL \inst2|Mult0~14\ : std_logic;
SIGNAL \inst2|Mult0~15\ : std_logic;
SIGNAL \inst2|Mult0~16\ : std_logic;
SIGNAL \inst2|Mult0~17\ : std_logic;
SIGNAL \inst2|Mult0~18\ : std_logic;
SIGNAL \inst2|Mult0~19\ : std_logic;
SIGNAL \inst2|Mult0~20\ : std_logic;
SIGNAL \inst2|Mult0~21\ : std_logic;
SIGNAL \inst2|Mult0~22\ : std_logic;
SIGNAL \inst2|Mult0~23\ : std_logic;
SIGNAL \inst2|Mult0~24\ : std_logic;
SIGNAL \inst2|Mult0~25\ : std_logic;
SIGNAL \inst2|Mult0~26\ : std_logic;
SIGNAL \inst2|Mult0~27\ : std_logic;
SIGNAL \inst2|Mult0~28\ : std_logic;
SIGNAL \inst2|Mult0~29\ : std_logic;
SIGNAL \inst2|Mult0~30\ : std_logic;
SIGNAL \inst2|Mult0~31\ : std_logic;
SIGNAL \inst2|Mult0~32\ : std_logic;
SIGNAL \inst2|Mult0~33\ : std_logic;
SIGNAL \inst2|Mult0~34\ : std_logic;
SIGNAL \inst2|Mult0~35\ : std_logic;
SIGNAL \inst2|Mult0~36\ : std_logic;
SIGNAL \inst2|Mult0~37\ : std_logic;
SIGNAL \inst2|Mult0~38\ : std_logic;
SIGNAL \inst2|Mult0~39\ : std_logic;
SIGNAL \inst2|Mult0~40\ : std_logic;
SIGNAL \inst2|Mult0~41\ : std_logic;
SIGNAL \inst2|Mult0~42\ : std_logic;
SIGNAL \inst2|Mult0~43\ : std_logic;
SIGNAL \inst2|Mult0~44\ : std_logic;
SIGNAL \inst2|Mult0~45\ : std_logic;
SIGNAL \inst2|Mult0~46\ : std_logic;
SIGNAL \inst2|Mult0~47\ : std_logic;
SIGNAL \inst2|Mult0~48\ : std_logic;
SIGNAL \inst2|Mult0~49\ : std_logic;
SIGNAL \inst2|Mult0~50\ : std_logic;
SIGNAL \inst2|Mult0~51\ : std_logic;
SIGNAL \inst2|Mult0~52\ : std_logic;
SIGNAL \inst2|Mult0~53\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst2|Add7~1_sumout\ : std_logic;
SIGNAL \inst2|s_countCentroid[0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \reg1[5]~input_o\ : std_logic;
SIGNAL \reg1[4]~input_o\ : std_logic;
SIGNAL \reg1[3]~input_o\ : std_logic;
SIGNAL \reg1[2]~input_o\ : std_logic;
SIGNAL \reg1[1]~input_o\ : std_logic;
SIGNAL \reg1[0]~input_o\ : std_logic;
SIGNAL \inst2|Add6~18\ : std_logic;
SIGNAL \inst2|Add6~14\ : std_logic;
SIGNAL \inst2|Add6~10\ : std_logic;
SIGNAL \inst2|Add6~6\ : std_logic;
SIGNAL \inst2|Add6~2\ : std_logic;
SIGNAL \inst2|Add6~29_sumout\ : std_logic;
SIGNAL \reg1[6]~input_o\ : std_logic;
SIGNAL \inst2|Add6~30\ : std_logic;
SIGNAL \inst2|Add6~25_sumout\ : std_logic;
SIGNAL \inst2|Add7~22\ : std_logic;
SIGNAL \inst2|Add7~25_sumout\ : std_logic;
SIGNAL \inst2|s_countCentroid[6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countCentroid[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add7~26\ : std_logic;
SIGNAL \inst2|Add7~29_sumout\ : std_logic;
SIGNAL \inst2|s_countCentroid[7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countCentroid[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg1[7]~input_o\ : std_logic;
SIGNAL \inst2|Add6~26\ : std_logic;
SIGNAL \inst2|Add6~21_sumout\ : std_logic;
SIGNAL \inst2|LessThan3~4_combout\ : std_logic;
SIGNAL \inst2|Add6~1_sumout\ : std_logic;
SIGNAL \inst2|Add6~5_sumout\ : std_logic;
SIGNAL \inst2|LessThan3~7_combout\ : std_logic;
SIGNAL \inst2|LessThan3~3_combout\ : std_logic;
SIGNAL \inst2|LessThan3~8_combout\ : std_logic;
SIGNAL \inst2|Add6~13_sumout\ : std_logic;
SIGNAL \inst2|Add6~17_sumout\ : std_logic;
SIGNAL \inst2|Add6~9_sumout\ : std_logic;
SIGNAL \inst2|LessThan3~0_combout\ : std_logic;
SIGNAL \inst2|LessThan3~1_combout\ : std_logic;
SIGNAL \inst2|LessThan3~9_combout\ : std_logic;
SIGNAL \reg1[9]~input_o\ : std_logic;
SIGNAL \reg1[8]~input_o\ : std_logic;
SIGNAL \inst2|Add6~22\ : std_logic;
SIGNAL \inst2|Add6~38\ : std_logic;
SIGNAL \inst2|Add6~33_sumout\ : std_logic;
SIGNAL \inst2|Add6~37_sumout\ : std_logic;
SIGNAL \inst2|Add7~30\ : std_logic;
SIGNAL \inst2|Add7~33_sumout\ : std_logic;
SIGNAL \inst2|s_countCentroid[8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countCentroid[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add7~34\ : std_logic;
SIGNAL \inst2|Add7~37_sumout\ : std_logic;
SIGNAL \inst2|s_countCentroid[9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countCentroid[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|LessThan3~5_combout\ : std_logic;
SIGNAL \inst2|LessThan3~6_combout\ : std_logic;
SIGNAL \en_KmodesControlCalcMap~input_o\ : std_logic;
SIGNAL \nrst~input_o\ : std_logic;
SIGNAL \inst2|state_fut.RESET~feeder_combout\ : std_logic;
SIGNAL \inst2|state_fut.RESET~q\ : std_logic;
SIGNAL \inst2|LessThan1~9_combout\ : std_logic;
SIGNAL \inst2|LessThan1~10_combout\ : std_logic;
SIGNAL \inst2|LessThan1~4_combout\ : std_logic;
SIGNAL \inst2|LessThan1~2_combout\ : std_logic;
SIGNAL \inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|LessThan1~5_combout\ : std_logic;
SIGNAL \inst2|LessThan1~1_combout\ : std_logic;
SIGNAL \inst2|LessThan1~3_combout\ : std_logic;
SIGNAL \inst2|LessThan1~6_combout\ : std_logic;
SIGNAL \inst2|state.WAITCALCDISTANCE~1_combout\ : std_logic;
SIGNAL \inst2|state.WAITCALCDISTANCE~0_combout\ : std_logic;
SIGNAL \inst2|state.WAITCALCDISTANCE~_emulated_q\ : std_logic;
SIGNAL \inst2|state.WAITCALCDISTANCE~2_combout\ : std_logic;
SIGNAL \inst2|state_fut.VERIFYDIMENSION~feeder_combout\ : std_logic;
SIGNAL \inst2|state_fut.VERIFYDIMENSION~q\ : std_logic;
SIGNAL \inst2|state.IDLE~0_combout\ : std_logic;
SIGNAL \inst2|state.VERIFYDIMENSION~q\ : std_logic;
SIGNAL \inst2|s_countDimensions[5]~0_combout\ : std_logic;
SIGNAL \inst2|Add5~1_sumout\ : std_logic;
SIGNAL \inst2|s_countDimensions[0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \reg8[1]~input_o\ : std_logic;
SIGNAL \reg8[0]~input_o\ : std_logic;
SIGNAL \reg8[2]~input_o\ : std_logic;
SIGNAL \inst2|LessThan2~0_combout\ : std_logic;
SIGNAL \inst2|Add5~34\ : std_logic;
SIGNAL \inst2|Add5~37_sumout\ : std_logic;
SIGNAL \inst2|s_countDimensions[9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add5~38\ : std_logic;
SIGNAL \inst2|Add5~41_sumout\ : std_logic;
SIGNAL \inst2|s_countDimensions[10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add5~42\ : std_logic;
SIGNAL \inst2|Add5~45_sumout\ : std_logic;
SIGNAL \inst2|s_countDimensions[11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add5~46\ : std_logic;
SIGNAL \inst2|Add5~49_sumout\ : std_logic;
SIGNAL \inst2|s_countDimensions[12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|LessThan2~2_combout\ : std_logic;
SIGNAL \inst2|LessThan2~1_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[5]~1_combout\ : std_logic;
SIGNAL \inst2|state_fut~14_combout\ : std_logic;
SIGNAL \inst2|state_fut.MINDISTANCE~q\ : std_logic;
SIGNAL \inst2|state.MINDISTANCE~q\ : std_logic;
SIGNAL \inst2|WideOr7~0_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[5]~2_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add5~2\ : std_logic;
SIGNAL \inst2|Add5~5_sumout\ : std_logic;
SIGNAL \inst2|s_countDimensions[1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add5~6\ : std_logic;
SIGNAL \inst2|Add5~9_sumout\ : std_logic;
SIGNAL \inst2|s_countDimensions[2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add5~10\ : std_logic;
SIGNAL \inst2|Add5~13_sumout\ : std_logic;
SIGNAL \inst2|s_countDimensions[3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add5~14\ : std_logic;
SIGNAL \inst2|Add5~17_sumout\ : std_logic;
SIGNAL \inst2|s_countDimensions[4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add5~18\ : std_logic;
SIGNAL \inst2|Add5~21_sumout\ : std_logic;
SIGNAL \inst2|s_countDimensions[5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add5~22\ : std_logic;
SIGNAL \inst2|Add5~25_sumout\ : std_logic;
SIGNAL \inst2|s_countDimensions[6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add5~26\ : std_logic;
SIGNAL \inst2|Add5~29_sumout\ : std_logic;
SIGNAL \inst2|s_countDimensions[7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add5~30\ : std_logic;
SIGNAL \inst2|Add5~33_sumout\ : std_logic;
SIGNAL \inst2|s_countDimensions[8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDimensions[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Selector75~0_combout\ : std_logic;
SIGNAL \reg3[12]~input_o\ : std_logic;
SIGNAL \inst2|Add8~53_sumout\ : std_logic;
SIGNAL \inst2|s_countDado[0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|WideOr13~0_combout\ : std_logic;
SIGNAL \inst2|s_countDado[7]~0_combout\ : std_logic;
SIGNAL \inst2|s_countDado[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add8~54\ : std_logic;
SIGNAL \inst2|Add8~49_sumout\ : std_logic;
SIGNAL \inst2|s_countDado[1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDado[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add8~50\ : std_logic;
SIGNAL \inst2|Add8~45_sumout\ : std_logic;
SIGNAL \inst2|s_countDado[2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDado[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add8~46\ : std_logic;
SIGNAL \inst2|Add8~41_sumout\ : std_logic;
SIGNAL \inst2|s_countDado[3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDado[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add8~42\ : std_logic;
SIGNAL \inst2|Add8~37_sumout\ : std_logic;
SIGNAL \inst2|s_countDado[4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDado[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add8~38\ : std_logic;
SIGNAL \inst2|Add8~33_sumout\ : std_logic;
SIGNAL \inst2|s_countDado[5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDado[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add8~34\ : std_logic;
SIGNAL \inst2|Add8~29_sumout\ : std_logic;
SIGNAL \inst2|s_countDado[6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDado[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add8~30\ : std_logic;
SIGNAL \inst2|Add8~25_sumout\ : std_logic;
SIGNAL \inst2|s_countDado[7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDado[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add8~26\ : std_logic;
SIGNAL \inst2|Add8~21_sumout\ : std_logic;
SIGNAL \inst2|s_countDado[8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDado[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add8~22\ : std_logic;
SIGNAL \inst2|Add8~17_sumout\ : std_logic;
SIGNAL \inst2|s_countDado[9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDado[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add8~18\ : std_logic;
SIGNAL \inst2|Add8~13_sumout\ : std_logic;
SIGNAL \inst2|s_countDado[10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDado[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add8~14\ : std_logic;
SIGNAL \inst2|Add8~9_sumout\ : std_logic;
SIGNAL \inst2|s_countDado[11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDado[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add8~10\ : std_logic;
SIGNAL \inst2|Add8~5_sumout\ : std_logic;
SIGNAL \inst2|s_countDado[12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDado[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add8~6\ : std_logic;
SIGNAL \inst2|Add8~1_sumout\ : std_logic;
SIGNAL \inst2|s_countDado[13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDado[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add8~2\ : std_logic;
SIGNAL \inst2|Add8~57_sumout\ : std_logic;
SIGNAL \inst2|s_countDado[14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countDado[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \reg3[13]~input_o\ : std_logic;
SIGNAL \reg3[14]~input_o\ : std_logic;
SIGNAL \inst2|LessThan0~9_combout\ : std_logic;
SIGNAL \reg3[9]~input_o\ : std_logic;
SIGNAL \reg3[11]~input_o\ : std_logic;
SIGNAL \inst2|LessThan0~10_combout\ : std_logic;
SIGNAL \reg3[10]~input_o\ : std_logic;
SIGNAL \inst2|LessThan0~11_combout\ : std_logic;
SIGNAL \reg3[8]~input_o\ : std_logic;
SIGNAL \inst2|LessThan0~12_combout\ : std_logic;
SIGNAL \inst2|LessThan0~13_combout\ : std_logic;
SIGNAL \reg3[7]~input_o\ : std_logic;
SIGNAL \reg3[6]~input_o\ : std_logic;
SIGNAL \inst2|LessThan0~7_combout\ : std_logic;
SIGNAL \reg3[5]~input_o\ : std_logic;
SIGNAL \reg3[4]~input_o\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~8_combout\ : std_logic;
SIGNAL \reg3[3]~input_o\ : std_logic;
SIGNAL \reg3[2]~input_o\ : std_logic;
SIGNAL \inst2|LessThan0~5_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|LessThan0~4_combout\ : std_logic;
SIGNAL \reg3[1]~input_o\ : std_logic;
SIGNAL \reg3[0]~input_o\ : std_logic;
SIGNAL \inst2|LessThan0~3_combout\ : std_logic;
SIGNAL \inst2|LessThan0~6_combout\ : std_logic;
SIGNAL \inst2|LessThan0~16_combout\ : std_logic;
SIGNAL \inst2|LessThan0~17_combout\ : std_logic;
SIGNAL \inst2|LessThan0~14_combout\ : std_logic;
SIGNAL \inst2|LessThan0~15_combout\ : std_logic;
SIGNAL \inst2|Selector75~1_combout\ : std_logic;
SIGNAL \inst2|Selector75~2_combout\ : std_logic;
SIGNAL \inst2|state_fut.LOADDATA~q\ : std_logic;
SIGNAL \inst2|state.LOADDATA~q\ : std_logic;
SIGNAL \inst2|Selector77~0_combout\ : std_logic;
SIGNAL \inst2|state_fut.CALCDISTANCE~q\ : std_logic;
SIGNAL \inst2|state.CALCDISTANCE~q\ : std_logic;
SIGNAL \inst2|s_en_SimpleMatch~feeder_combout\ : std_logic;
SIGNAL \inst2|s_en_SimpleMatch~q\ : std_logic;
SIGNAL \inst|s_endDistanceMatch~q\ : std_logic;
SIGNAL \inst2|state.RESET~5_combout\ : std_logic;
SIGNAL \inst2|state.RESET~1_combout\ : std_logic;
SIGNAL \inst2|state.RESET~3_combout\ : std_logic;
SIGNAL \inst2|state.RESET~0_combout\ : std_logic;
SIGNAL \inst2|state.RESET~_emulated_q\ : std_logic;
SIGNAL \inst2|state.RESET~2_combout\ : std_logic;
SIGNAL \inst2|Selector73~0_combout\ : std_logic;
SIGNAL \inst2|state_fut.IDLE~q\ : std_logic;
SIGNAL \inst2|state.IDLE~q\ : std_logic;
SIGNAL \inst2|Selector74~0_combout\ : std_logic;
SIGNAL \inst2|state_fut.VERIFYDATA~q\ : std_logic;
SIGNAL \inst2|state.VERIFYDATA~q\ : std_logic;
SIGNAL \inst2|state_fut~15_combout\ : std_logic;
SIGNAL \inst2|state_fut.ENDSTATE~q\ : std_logic;
SIGNAL \inst2|state.ENDSTATE~q\ : std_logic;
SIGNAL \inst2|s_countCentroid[7]~0_combout\ : std_logic;
SIGNAL \inst2|s_countCentroid[7]~1_combout\ : std_logic;
SIGNAL \inst2|s_countCentroid[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add7~2\ : std_logic;
SIGNAL \inst2|Add7~5_sumout\ : std_logic;
SIGNAL \inst2|s_countCentroid[1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countCentroid[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add7~6\ : std_logic;
SIGNAL \inst2|Add7~9_sumout\ : std_logic;
SIGNAL \inst2|s_countCentroid[2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countCentroid[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add7~10\ : std_logic;
SIGNAL \inst2|Add7~13_sumout\ : std_logic;
SIGNAL \inst2|s_countCentroid[3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countCentroid[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add7~14\ : std_logic;
SIGNAL \inst2|Add7~17_sumout\ : std_logic;
SIGNAL \inst2|s_countCentroid[4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countCentroid[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|Add7~18\ : std_logic;
SIGNAL \inst2|Add7~21_sumout\ : std_logic;
SIGNAL \inst2|s_countCentroid[5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \inst2|s_countCentroid[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|LessThan1~7_combout\ : std_logic;
SIGNAL \inst2|LessThan1~8_combout\ : std_logic;
SIGNAL \inst2|Selector76~0_combout\ : std_logic;
SIGNAL \inst2|state_fut.ENDCENTROIDS~q\ : std_logic;
SIGNAL \inst2|state.ENDCENTROIDS~q\ : std_logic;
SIGNAL \inst2|LessThan3~2_combout\ : std_logic;
SIGNAL \inst2|state_fut~13_combout\ : std_logic;
SIGNAL \inst2|state_fut.STOREDATA~q\ : std_logic;
SIGNAL \inst2|state.STOREDATA~q\ : std_logic;
SIGNAL \inst2|s_wrRam~q\ : std_logic;
SIGNAL \inst2|s_enMinDistanceMatch~q\ : std_logic;
SIGNAL \inst2|WideOr5~combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~1_combout\ : std_logic;
SIGNAL \reg5[0]~input_o\ : std_logic;
SIGNAL \inst2|Add2~1_sumout\ : std_logic;
SIGNAL \reg5[1]~input_o\ : std_logic;
SIGNAL \inst2|Add2~2\ : std_logic;
SIGNAL \inst2|Add2~5_sumout\ : std_logic;
SIGNAL \reg5[2]~input_o\ : std_logic;
SIGNAL \inst2|Add2~6\ : std_logic;
SIGNAL \inst2|Add2~9_sumout\ : std_logic;
SIGNAL \reg5[3]~input_o\ : std_logic;
SIGNAL \inst2|Add2~10\ : std_logic;
SIGNAL \inst2|Add2~13_sumout\ : std_logic;
SIGNAL \reg5[4]~input_o\ : std_logic;
SIGNAL \inst2|Add2~14\ : std_logic;
SIGNAL \inst2|Add2~17_sumout\ : std_logic;
SIGNAL \reg5[5]~input_o\ : std_logic;
SIGNAL \inst2|Add2~18\ : std_logic;
SIGNAL \inst2|Add2~21_sumout\ : std_logic;
SIGNAL \reg5[6]~input_o\ : std_logic;
SIGNAL \inst2|Add2~22\ : std_logic;
SIGNAL \inst2|Add2~25_sumout\ : std_logic;
SIGNAL \reg5[7]~input_o\ : std_logic;
SIGNAL \inst2|Add2~26\ : std_logic;
SIGNAL \inst2|Add2~29_sumout\ : std_logic;
SIGNAL \reg5[8]~input_o\ : std_logic;
SIGNAL \inst2|Add2~30\ : std_logic;
SIGNAL \inst2|Add2~33_sumout\ : std_logic;
SIGNAL \reg5[9]~input_o\ : std_logic;
SIGNAL \inst2|Add2~34\ : std_logic;
SIGNAL \inst2|Add2~37_sumout\ : std_logic;
SIGNAL \reg5[10]~input_o\ : std_logic;
SIGNAL \inst2|Add2~38\ : std_logic;
SIGNAL \inst2|Add2~41_sumout\ : std_logic;
SIGNAL \reg5[11]~input_o\ : std_logic;
SIGNAL \inst2|Add2~42\ : std_logic;
SIGNAL \inst2|Add2~45_sumout\ : std_logic;
SIGNAL \reg5[12]~input_o\ : std_logic;
SIGNAL \inst2|Add2~46\ : std_logic;
SIGNAL \inst2|Add2~49_sumout\ : std_logic;
SIGNAL \reg5[13]~input_o\ : std_logic;
SIGNAL \inst2|Add2~50\ : std_logic;
SIGNAL \inst2|Add2~53_sumout\ : std_logic;
SIGNAL \inst2|Add2~54\ : std_logic;
SIGNAL \inst2|Add2~57_sumout\ : std_logic;
SIGNAL \inst2|Mult1~338\ : std_logic;
SIGNAL \inst2|Selector52~0_combout\ : std_logic;
SIGNAL \inst2|Mult1~337\ : std_logic;
SIGNAL \inst2|Selector53~0_combout\ : std_logic;
SIGNAL \inst2|Mult1~336\ : std_logic;
SIGNAL \inst2|Selector54~0_combout\ : std_logic;
SIGNAL \inst2|Mult1~335\ : std_logic;
SIGNAL \inst2|Selector55~0_combout\ : std_logic;
SIGNAL \inst2|Mult1~334\ : std_logic;
SIGNAL \inst2|Selector56~0_combout\ : std_logic;
SIGNAL \inst2|Mult1~333\ : std_logic;
SIGNAL \inst2|Selector57~0_combout\ : std_logic;
SIGNAL \inst2|Mult1~332\ : std_logic;
SIGNAL \inst2|Selector58~0_combout\ : std_logic;
SIGNAL \inst2|Mult1~331\ : std_logic;
SIGNAL \inst2|Selector59~0_combout\ : std_logic;
SIGNAL \inst2|Mult1~330\ : std_logic;
SIGNAL \inst2|Selector60~0_combout\ : std_logic;
SIGNAL \inst2|Mult1~329\ : std_logic;
SIGNAL \inst2|Selector61~0_combout\ : std_logic;
SIGNAL \inst2|Mult1~328\ : std_logic;
SIGNAL \inst2|Selector62~0_combout\ : std_logic;
SIGNAL \inst2|Mult1~327\ : std_logic;
SIGNAL \inst2|Selector63~0_combout\ : std_logic;
SIGNAL \inst2|Mult1~326\ : std_logic;
SIGNAL \inst2|Selector64~0_combout\ : std_logic;
SIGNAL \inst2|Mult1~mac_resulta\ : std_logic;
SIGNAL \inst2|Selector65~0_combout\ : std_logic;
SIGNAL \inst2|Mult0~335\ : std_logic;
SIGNAL \inst2|s_addrRamDado[13]~feeder_combout\ : std_logic;
SIGNAL \inst2|s_addrRamDado[8]~0_combout\ : std_logic;
SIGNAL \inst2|WideOr4~combout\ : std_logic;
SIGNAL \inst2|Mult0~334\ : std_logic;
SIGNAL \inst2|s_addrRamDado[12]~feeder_combout\ : std_logic;
SIGNAL \inst2|Mult0~333\ : std_logic;
SIGNAL \inst2|s_addrRamDado[11]~feeder_combout\ : std_logic;
SIGNAL \inst2|Mult0~332\ : std_logic;
SIGNAL \inst2|s_addrRamDado[10]~feeder_combout\ : std_logic;
SIGNAL \inst2|Mult0~331\ : std_logic;
SIGNAL \inst2|s_addrRamDado[9]~feeder_combout\ : std_logic;
SIGNAL \inst2|Mult0~330\ : std_logic;
SIGNAL \inst2|s_addrRamDado[8]~feeder_combout\ : std_logic;
SIGNAL \inst2|Mult0~329\ : std_logic;
SIGNAL \inst2|s_addrRamDado[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|Mult0~328\ : std_logic;
SIGNAL \inst2|s_addrRamDado[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|Mult0~327\ : std_logic;
SIGNAL \inst2|s_addrRamDado[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|Mult0~326\ : std_logic;
SIGNAL \inst2|s_addrRamDado[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|Mult0~325\ : std_logic;
SIGNAL \inst2|s_addrRamDado[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|Mult0~324\ : std_logic;
SIGNAL \inst2|s_addrRamDado[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|Mult0~323\ : std_logic;
SIGNAL \inst2|s_addrRamDado[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|Mult0~mac_resulta\ : std_logic;
SIGNAL \inst2|s_addrRamDado[0]~feeder_combout\ : std_logic;
SIGNAL \centroid[62]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[62]~feeder_combout\ : std_logic;
SIGNAL \centroid[63]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[63]~feeder_combout\ : std_logic;
SIGNAL \dado[63]~input_o\ : std_logic;
SIGNAL \dado[62]~input_o\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \centroid[57]~input_o\ : std_logic;
SIGNAL \centroid[56]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[56]~feeder_combout\ : std_logic;
SIGNAL \dado[57]~input_o\ : std_logic;
SIGNAL \centroid[58]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[58]~feeder_combout\ : std_logic;
SIGNAL \dado[58]~input_o\ : std_logic;
SIGNAL \dado[56]~input_o\ : std_logic;
SIGNAL \inst|s_dado[56]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \centroid[61]~input_o\ : std_logic;
SIGNAL \centroid[60]~input_o\ : std_logic;
SIGNAL \dado[60]~input_o\ : std_logic;
SIGNAL \centroid[59]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[59]~feeder_combout\ : std_logic;
SIGNAL \dado[59]~input_o\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \dado[61]~input_o\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|s_dist7~q\ : std_logic;
SIGNAL \centroid[5]~input_o\ : std_logic;
SIGNAL \centroid[7]~input_o\ : std_logic;
SIGNAL \centroid[6]~input_o\ : std_logic;
SIGNAL \dado[7]~input_o\ : std_logic;
SIGNAL \dado[6]~input_o\ : std_logic;
SIGNAL \inst|s_dado[6]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal7~2_combout\ : std_logic;
SIGNAL \centroid[3]~input_o\ : std_logic;
SIGNAL \dado[4]~input_o\ : std_logic;
SIGNAL \dado[3]~input_o\ : std_logic;
SIGNAL \centroid[4]~input_o\ : std_logic;
SIGNAL \inst|Equal7~1_combout\ : std_logic;
SIGNAL \centroid[2]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[2]~feeder_combout\ : std_logic;
SIGNAL \dado[0]~input_o\ : std_logic;
SIGNAL \dado[1]~input_o\ : std_logic;
SIGNAL \inst|s_dado[1]~feeder_combout\ : std_logic;
SIGNAL \centroid[0]~input_o\ : std_logic;
SIGNAL \dado[2]~input_o\ : std_logic;
SIGNAL \centroid[1]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[1]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal7~0_combout\ : std_logic;
SIGNAL \dado[5]~input_o\ : std_logic;
SIGNAL \inst|s_dado[5]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal7~3_combout\ : std_logic;
SIGNAL \inst|s_dist0~q\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \dado[17]~input_o\ : std_logic;
SIGNAL \centroid[16]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[16]~feeder_combout\ : std_logic;
SIGNAL \centroid[18]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[18]~feeder_combout\ : std_logic;
SIGNAL \dado[16]~input_o\ : std_logic;
SIGNAL \inst|s_dado[16]~feeder_combout\ : std_logic;
SIGNAL \dado[18]~input_o\ : std_logic;
SIGNAL \centroid[17]~input_o\ : std_logic;
SIGNAL \inst|Equal5~0_combout\ : std_logic;
SIGNAL \centroid[20]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[20]~feeder_combout\ : std_logic;
SIGNAL \dado[20]~input_o\ : std_logic;
SIGNAL \dado[19]~input_o\ : std_logic;
SIGNAL \centroid[19]~input_o\ : std_logic;
SIGNAL \inst|Equal5~1_combout\ : std_logic;
SIGNAL \centroid[21]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[21]~feeder_combout\ : std_logic;
SIGNAL \dado[22]~input_o\ : std_logic;
SIGNAL \inst|s_dado[22]~feeder_combout\ : std_logic;
SIGNAL \centroid[23]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[23]~feeder_combout\ : std_logic;
SIGNAL \dado[23]~input_o\ : std_logic;
SIGNAL \centroid[22]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[22]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal5~2_combout\ : std_logic;
SIGNAL \dado[21]~input_o\ : std_logic;
SIGNAL \inst|Equal5~3_combout\ : std_logic;
SIGNAL \inst|s_dist2~q\ : std_logic;
SIGNAL \dado[33]~input_o\ : std_logic;
SIGNAL \inst|s_dado[33]~feeder_combout\ : std_logic;
SIGNAL \dado[32]~input_o\ : std_logic;
SIGNAL \centroid[34]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[34]~feeder_combout\ : std_logic;
SIGNAL \centroid[32]~input_o\ : std_logic;
SIGNAL \dado[34]~input_o\ : std_logic;
SIGNAL \centroid[33]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[33]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal3~0_combout\ : std_logic;
SIGNAL \centroid[36]~input_o\ : std_logic;
SIGNAL \centroid[35]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[35]~feeder_combout\ : std_logic;
SIGNAL \dado[35]~input_o\ : std_logic;
SIGNAL \dado[36]~input_o\ : std_logic;
SIGNAL \inst|s_dado[36]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal3~1_combout\ : std_logic;
SIGNAL \dado[37]~input_o\ : std_logic;
SIGNAL \centroid[39]~input_o\ : std_logic;
SIGNAL \centroid[38]~input_o\ : std_logic;
SIGNAL \dado[39]~input_o\ : std_logic;
SIGNAL \dado[38]~input_o\ : std_logic;
SIGNAL \inst|s_dado[38]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal3~2_combout\ : std_logic;
SIGNAL \centroid[37]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[37]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal3~3_combout\ : std_logic;
SIGNAL \inst|s_dist4~q\ : std_logic;
SIGNAL \centroid[30]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[30]~feeder_combout\ : std_logic;
SIGNAL \centroid[31]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[31]~feeder_combout\ : std_logic;
SIGNAL \dado[31]~input_o\ : std_logic;
SIGNAL \dado[30]~input_o\ : std_logic;
SIGNAL \inst|Equal4~2_combout\ : std_logic;
SIGNAL \centroid[29]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[29]~feeder_combout\ : std_logic;
SIGNAL \centroid[28]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[28]~feeder_combout\ : std_logic;
SIGNAL \centroid[27]~input_o\ : std_logic;
SIGNAL \dado[27]~input_o\ : std_logic;
SIGNAL \dado[28]~input_o\ : std_logic;
SIGNAL \inst|s_dado[28]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal4~1_combout\ : std_logic;
SIGNAL \centroid[24]~input_o\ : std_logic;
SIGNAL \dado[24]~input_o\ : std_logic;
SIGNAL \centroid[26]~input_o\ : std_logic;
SIGNAL \centroid[25]~input_o\ : std_logic;
SIGNAL \dado[26]~input_o\ : std_logic;
SIGNAL \dado[25]~input_o\ : std_logic;
SIGNAL \inst|Equal4~0_combout\ : std_logic;
SIGNAL \dado[29]~input_o\ : std_logic;
SIGNAL \inst|Equal4~3_combout\ : std_logic;
SIGNAL \inst|s_dist3~q\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \centroid[53]~input_o\ : std_logic;
SIGNAL \dado[54]~input_o\ : std_logic;
SIGNAL \centroid[55]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[55]~feeder_combout\ : std_logic;
SIGNAL \dado[55]~input_o\ : std_logic;
SIGNAL \centroid[54]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[54]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal1~2_combout\ : std_logic;
SIGNAL \dado[49]~input_o\ : std_logic;
SIGNAL \centroid[50]~input_o\ : std_logic;
SIGNAL \centroid[49]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[49]~feeder_combout\ : std_logic;
SIGNAL \centroid[48]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[48]~feeder_combout\ : std_logic;
SIGNAL \dado[50]~input_o\ : std_logic;
SIGNAL \dado[48]~input_o\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \centroid[51]~input_o\ : std_logic;
SIGNAL \centroid[52]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[52]~feeder_combout\ : std_logic;
SIGNAL \dado[51]~input_o\ : std_logic;
SIGNAL \dado[52]~input_o\ : std_logic;
SIGNAL \inst|s_dado[52]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \dado[53]~input_o\ : std_logic;
SIGNAL \inst|Equal1~3_combout\ : std_logic;
SIGNAL \inst|s_dist6~q\ : std_logic;
SIGNAL \centroid[43]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[43]~feeder_combout\ : std_logic;
SIGNAL \centroid[44]~input_o\ : std_logic;
SIGNAL \dado[43]~input_o\ : std_logic;
SIGNAL \dado[44]~input_o\ : std_logic;
SIGNAL \inst|Equal2~1_combout\ : std_logic;
SIGNAL \centroid[45]~input_o\ : std_logic;
SIGNAL \dado[46]~input_o\ : std_logic;
SIGNAL \centroid[47]~input_o\ : std_logic;
SIGNAL \dado[47]~input_o\ : std_logic;
SIGNAL \centroid[46]~input_o\ : std_logic;
SIGNAL \inst|Equal2~2_combout\ : std_logic;
SIGNAL \dado[45]~input_o\ : std_logic;
SIGNAL \inst|s_dado[45]~feeder_combout\ : std_logic;
SIGNAL \dado[41]~input_o\ : std_logic;
SIGNAL \inst|s_dado[41]~feeder_combout\ : std_logic;
SIGNAL \centroid[42]~input_o\ : std_logic;
SIGNAL \centroid[41]~input_o\ : std_logic;
SIGNAL \centroid[40]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[40]~feeder_combout\ : std_logic;
SIGNAL \dado[42]~input_o\ : std_logic;
SIGNAL \dado[40]~input_o\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|Equal2~3_combout\ : std_logic;
SIGNAL \inst|s_dist5~q\ : std_logic;
SIGNAL \centroid[11]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[11]~feeder_combout\ : std_logic;
SIGNAL \dado[12]~input_o\ : std_logic;
SIGNAL \inst|s_dado[12]~feeder_combout\ : std_logic;
SIGNAL \dado[11]~input_o\ : std_logic;
SIGNAL \centroid[12]~input_o\ : std_logic;
SIGNAL \inst|Equal6~1_combout\ : std_logic;
SIGNAL \dado[13]~input_o\ : std_logic;
SIGNAL \inst|s_dado[13]~feeder_combout\ : std_logic;
SIGNAL \centroid[14]~input_o\ : std_logic;
SIGNAL \dado[14]~input_o\ : std_logic;
SIGNAL \dado[15]~input_o\ : std_logic;
SIGNAL \centroid[15]~input_o\ : std_logic;
SIGNAL \inst|Equal6~2_combout\ : std_logic;
SIGNAL \centroid[8]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[8]~feeder_combout\ : std_logic;
SIGNAL \dado[8]~input_o\ : std_logic;
SIGNAL \inst|s_dado[8]~feeder_combout\ : std_logic;
SIGNAL \centroid[10]~input_o\ : std_logic;
SIGNAL \dado[9]~input_o\ : std_logic;
SIGNAL \dado[10]~input_o\ : std_logic;
SIGNAL \centroid[9]~input_o\ : std_logic;
SIGNAL \inst|s_centroid[9]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal6~0_combout\ : std_logic;
SIGNAL \centroid[13]~input_o\ : std_logic;
SIGNAL \inst|Equal6~3_combout\ : std_logic;
SIGNAL \inst|s_dist1~q\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|op_8~0_combout\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|op_8~1_combout\ : std_logic;
SIGNAL \inst|s_dist7~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|op_3~1_combout\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|op_2~1_combout\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|add16_result[0]~14\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|add16_result[0]~15\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|add16_result[1]~10\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|add16_result[1]~11\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|add16_result[2]~6\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|add16_result[2]~7\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|add16_result[3]~1_sumout\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|add16_result[2]~5_sumout\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|add16_result[1]~9_sumout\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|add16_result[0]~13_sumout\ : std_logic;
SIGNAL \inst2|WideOr13~1_combout\ : std_logic;
SIGNAL \inst2|WideOr14~combout\ : std_logic;
SIGNAL \inst2|WideOr15~combout\ : std_logic;
SIGNAL \inst2|WideOr7~combout\ : std_logic;
SIGNAL \inst2|Add4~25_sumout\ : std_logic;
SIGNAL \inst2|Selector72~0_combout\ : std_logic;
SIGNAL \inst2|Add4~26\ : std_logic;
SIGNAL \inst2|Add4~21_sumout\ : std_logic;
SIGNAL \inst2|Selector71~0_combout\ : std_logic;
SIGNAL \inst2|Add4~22\ : std_logic;
SIGNAL \inst2|Add4~17_sumout\ : std_logic;
SIGNAL \inst2|Selector70~0_combout\ : std_logic;
SIGNAL \inst2|Add4~18\ : std_logic;
SIGNAL \inst2|Add4~13_sumout\ : std_logic;
SIGNAL \inst2|Selector69~0_combout\ : std_logic;
SIGNAL \inst2|Add4~14\ : std_logic;
SIGNAL \inst2|Add4~9_sumout\ : std_logic;
SIGNAL \inst2|Selector68~0_combout\ : std_logic;
SIGNAL \inst2|Add4~10\ : std_logic;
SIGNAL \inst2|Add4~5_sumout\ : std_logic;
SIGNAL \inst2|Selector67~0_combout\ : std_logic;
SIGNAL \inst2|Add4~6\ : std_logic;
SIGNAL \inst2|Add4~1_sumout\ : std_logic;
SIGNAL \inst2|Selector66~0_combout\ : std_logic;
SIGNAL \inst2|s_blockState[3]~0_combout\ : std_logic;
SIGNAL \inst2|s_blockState[2]~1_combout\ : std_logic;
SIGNAL \inst2|s_blockState[1]~2_combout\ : std_logic;
SIGNAL \inst2|s_blockState[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_distanceMatch[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_reg6[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|process_0~3_combout\ : std_logic;
SIGNAL \inst1|s_distanceMatch[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst1|process_0~1_combout\ : std_logic;
SIGNAL \inst1|process_0~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|s_reg7[9]~0_combout\ : std_logic;
SIGNAL \inst2|s_oDado[9]~feeder_combout\ : std_logic;
SIGNAL \inst2|s_oDado[8]~feeder_combout\ : std_logic;
SIGNAL \inst2|s_oDado[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_reg7[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|s_reg7[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|s_oDado[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|s_oDado[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|s_oDado[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|s_oDado[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|s_oDado[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|s_oDado[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|s_distanceMatch\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|s_addrRamDado\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst2|s_addrRamCentroid\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst2|estado\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|s_sumDistance\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst2|s_blockState\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|s_countCentroid\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|s_oDado\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|s_dado\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst1|s_reg7\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|s_centroid\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst1|s_reg6\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst1|s_distanceMatch\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst2|ALT_INV_Mult0~335\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult0~334\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult0~333\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult0~332\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult0~331\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult0~330\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult0~329\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult0~328\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult0~327\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult0~326\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult0~325\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult0~324\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult0~323\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult0~mac_resulta\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult1~338\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult1~337\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult1~336\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult1~335\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult1~334\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult1~333\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult1~332\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult1~331\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult1~330\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult1~329\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult1~328\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult1~327\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult1~326\ : std_logic;
SIGNAL \inst2|ALT_INV_Mult1~mac_resulta\ : std_logic;
SIGNAL \inst2|ALT_INV_Add7~5_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add7~1_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add6~37_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add6~33_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add6~29_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add6~25_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add6~21_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add6~17_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add6~13_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add8~53_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add8~49_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add8~45_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add8~41_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add8~37_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add8~33_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add8~29_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add8~25_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add8~21_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add8~17_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add8~13_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add8~9_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add8~5_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add8~1_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDimensions[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDimensions[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDimensions[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDimensions[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDimensions[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDimensions[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDimensions[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDimensions[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDimensions[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDimensions[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDimensions[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDimensions[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDimensions[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDado[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countCentroid[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countCentroid[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countCentroid[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countCentroid[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countCentroid[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countCentroid[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countCentroid[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countCentroid[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countCentroid[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countCentroid[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDado[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDado[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDado[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDado[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDado[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDado[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDado[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDado[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDado[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDado[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDado[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDado[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDado[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDado[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|ALT_INV_WideOr5~combout\ : std_logic;
SIGNAL \inst2|ALT_INV_WideOr13~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_state.VERIFYDIMENSION~q\ : std_logic;
SIGNAL \inst2|ALT_INV_state.ENDCENTROIDS~q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countCentroid[7]~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_state.ENDSTATE~q\ : std_logic;
SIGNAL \inst2|ALT_INV_state.VERIFYDATA~q\ : std_logic;
SIGNAL \inst2|ALT_INV_state.IDLE~q\ : std_logic;
SIGNAL \inst2|ALT_INV_state.LOADDATA~q\ : std_logic;
SIGNAL \inst2|ALT_INV_state.CALCDISTANCE~q\ : std_logic;
SIGNAL \inst2|ALT_INV_state.MINDISTANCE~q\ : std_logic;
SIGNAL \inst2|ALT_INV_state.STOREDATA~q\ : std_logic;
SIGNAL \inst1|ALT_INV_s_reg7\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|ALT_INV_s_blockState\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \inst2|ALT_INV_s_sumDistance\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst2|ALT_INV_s_addrRamCentroid\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst|ALT_INV_s_endDistanceMatch~q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_enMinDistanceMatch~q\ : std_logic;
SIGNAL \inst2|ALT_INV_Add5~49_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add5~45_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add5~41_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add5~37_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add5~33_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add8~57_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add7~37_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add7~33_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add7~29_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add7~25_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add7~21_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add7~17_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add7~13_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add7~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_s_dado\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst|ALT_INV_s_centroid\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst|ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal7~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_state.WAITCALCDISTANCE~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_state.WAITCALCDISTANCE~_emulated_q\ : std_logic;
SIGNAL \inst2|ALT_INV_state.IDLE~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_s_countCentroid\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_s_distanceMatch\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst1|ALT_INV_s_reg6\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_WideOr7~combout\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|ALT_INV_op_2~1_combout\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|ALT_INV_op_8~1_combout\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|ALT_INV_op_3~1_combout\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|ALT_INV_op_2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_s_dist4~q\ : std_logic;
SIGNAL \inst|ALT_INV_s_dist3~q\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|ALT_INV_op_8~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_s_dist2~q\ : std_logic;
SIGNAL \inst|ALT_INV_s_dist6~q\ : std_logic;
SIGNAL \inst|ALT_INV_s_dist5~q\ : std_logic;
SIGNAL \inst3|parallel_add_component|auto_generated|ALT_INV_op_3~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_s_dist1~q\ : std_logic;
SIGNAL \inst|ALT_INV_s_dist7~q\ : std_logic;
SIGNAL \inst|ALT_INV_s_dist0~q\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Selector75~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan3~9_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan3~8_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan3~7_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan1~10_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan1~9_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan1~8_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan1~7_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan1~6_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan1~5_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_s_distanceMatch\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal4~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal5~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal6~2_combout\ : std_logic;
SIGNAL \ALT_INV_centroid[43]~input_o\ : std_logic;
SIGNAL \ALT_INV_dado[41]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[40]~input_o\ : std_logic;
SIGNAL \ALT_INV_dado[45]~input_o\ : std_logic;
SIGNAL \ALT_INV_dado[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_dado[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_dado[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[63]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[62]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[59]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[58]~input_o\ : std_logic;
SIGNAL \ALT_INV_dado[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[56]~input_o\ : std_logic;
SIGNAL \ALT_INV_dado[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_dado[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_dado[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_en_KmodesControlCalcMap~input_o\ : std_logic;
SIGNAL \ALT_INV_reg5[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg5[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg5[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg5[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg5[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg5[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg5[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg5[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg5[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg5[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg5[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg5[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg5[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg5[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg3[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg3[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg3[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg3[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg3[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg3[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg3[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg3[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg3[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg3[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg3[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg3[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg3[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg3[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg3[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg1[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg1[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg1[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg1[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg1[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg1[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg8[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg8[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_reg8[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_nrst~input_o\ : std_logic;
SIGNAL \inst2|ALT_INV_state.RESET~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_state.WAITCALCDISTANCE~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_state.RESET~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_state_fut.RESET~q\ : std_logic;
SIGNAL \inst2|ALT_INV_state.RESET~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_state.RESET~_emulated_q\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDimensions[5]~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_WideOr7~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_s_countDimensions[5]~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_state.RESET~5_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_state.WAITCALCDISTANCE~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Selector75~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~17_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~16_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~15_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~13_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_dado[38]~input_o\ : std_logic;
SIGNAL \ALT_INV_dado[36]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[35]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[34]~input_o\ : std_logic;
SIGNAL \ALT_INV_dado[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[33]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[37]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_dado[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_dado[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_dado[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[55]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[54]~input_o\ : std_logic;
SIGNAL \ALT_INV_dado[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[52]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[49]~input_o\ : std_logic;
SIGNAL \ALT_INV_centroid[48]~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_s_dist7~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_s_reg7[5]~DUPLICATE_q\ : std_logic;

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

\inst2|Mult1~mac_ACLR_bus\ <= (gnd & gnd);

\inst2|Mult1~mac_CLK_bus\ <= (gnd & gnd & NOT \clk~inputCLKENA0_outclk\);

\inst2|Mult1~mac_ENA_bus\ <= (vcc & vcc & \inst2|s_countCentroid[7]~1_combout\);

\inst2|Mult1~mac_AX_bus\ <= (\inst2|Add0~1_combout\ & \inst2|Add0~0_combout\ & NOT \reg8[0]~input_o\);

\inst2|Mult1~mac_AY_bus\ <= (\inst2|s_countCentroid[9]~SCLR_LUT_combout\ & \inst2|s_countCentroid[8]~SCLR_LUT_combout\ & \inst2|s_countCentroid[7]~SCLR_LUT_combout\ & \inst2|s_countCentroid[6]~SCLR_LUT_combout\ & 
\inst2|s_countCentroid[5]~SCLR_LUT_combout\ & \inst2|s_countCentroid[4]~SCLR_LUT_combout\ & \inst2|s_countCentroid[3]~SCLR_LUT_combout\ & \inst2|s_countCentroid[2]~SCLR_LUT_combout\ & \inst2|s_countCentroid[1]~SCLR_LUT_combout\ & 
\inst2|s_countCentroid[0]~SCLR_LUT_combout\);

\inst2|Mult1~mac_BX_bus\ <= (\inst2|Add2~57_sumout\ & \inst2|Add2~57_sumout\ & \inst2|Add2~57_sumout\ & \inst2|Add2~57_sumout\ & \inst2|Add2~57_sumout\ & \inst2|Add2~57_sumout\ & \inst2|Add2~57_sumout\ & \inst2|Add2~57_sumout\ & \inst2|Add2~57_sumout\ & 
\inst2|Add2~57_sumout\ & \inst2|Add2~57_sumout\ & \inst2|Add2~57_sumout\ & \inst2|Add2~57_sumout\ & \inst2|Add2~57_sumout\ & \inst2|Add2~57_sumout\ & \inst2|Add2~57_sumout\ & \inst2|Add2~57_sumout\ & \inst2|Add2~57_sumout\);

\inst2|Mult1~mac_BY_bus\ <= (\inst2|Add2~57_sumout\ & \inst2|Add2~57_sumout\ & \inst2|Add2~57_sumout\ & \inst2|Add2~57_sumout\ & \inst2|Add2~53_sumout\ & \inst2|Add2~49_sumout\ & \inst2|Add2~45_sumout\ & \inst2|Add2~41_sumout\ & \inst2|Add2~37_sumout\ & 
\inst2|Add2~33_sumout\ & \inst2|Add2~29_sumout\ & \inst2|Add2~25_sumout\ & \inst2|Add2~21_sumout\ & \inst2|Add2~17_sumout\ & \inst2|Add2~13_sumout\ & \inst2|Add2~9_sumout\ & \inst2|Add2~5_sumout\ & \inst2|Add2~1_sumout\);

\inst2|Mult1~mac_resulta\ <= \inst2|Mult1~mac_RESULTA_bus\(0);
\inst2|Mult1~326\ <= \inst2|Mult1~mac_RESULTA_bus\(1);
\inst2|Mult1~327\ <= \inst2|Mult1~mac_RESULTA_bus\(2);
\inst2|Mult1~328\ <= \inst2|Mult1~mac_RESULTA_bus\(3);
\inst2|Mult1~329\ <= \inst2|Mult1~mac_RESULTA_bus\(4);
\inst2|Mult1~330\ <= \inst2|Mult1~mac_RESULTA_bus\(5);
\inst2|Mult1~331\ <= \inst2|Mult1~mac_RESULTA_bus\(6);
\inst2|Mult1~332\ <= \inst2|Mult1~mac_RESULTA_bus\(7);
\inst2|Mult1~333\ <= \inst2|Mult1~mac_RESULTA_bus\(8);
\inst2|Mult1~334\ <= \inst2|Mult1~mac_RESULTA_bus\(9);
\inst2|Mult1~335\ <= \inst2|Mult1~mac_RESULTA_bus\(10);
\inst2|Mult1~336\ <= \inst2|Mult1~mac_RESULTA_bus\(11);
\inst2|Mult1~337\ <= \inst2|Mult1~mac_RESULTA_bus\(12);
\inst2|Mult1~338\ <= \inst2|Mult1~mac_RESULTA_bus\(13);
\inst2|Mult1~339\ <= \inst2|Mult1~mac_RESULTA_bus\(14);
\inst2|Mult1~8\ <= \inst2|Mult1~mac_RESULTA_bus\(15);
\inst2|Mult1~9\ <= \inst2|Mult1~mac_RESULTA_bus\(16);
\inst2|Mult1~10\ <= \inst2|Mult1~mac_RESULTA_bus\(17);
\inst2|Mult1~11\ <= \inst2|Mult1~mac_RESULTA_bus\(18);
\inst2|Mult1~12\ <= \inst2|Mult1~mac_RESULTA_bus\(19);
\inst2|Mult1~13\ <= \inst2|Mult1~mac_RESULTA_bus\(20);
\inst2|Mult1~14\ <= \inst2|Mult1~mac_RESULTA_bus\(21);
\inst2|Mult1~15\ <= \inst2|Mult1~mac_RESULTA_bus\(22);
\inst2|Mult1~16\ <= \inst2|Mult1~mac_RESULTA_bus\(23);
\inst2|Mult1~17\ <= \inst2|Mult1~mac_RESULTA_bus\(24);
\inst2|Mult1~18\ <= \inst2|Mult1~mac_RESULTA_bus\(25);
\inst2|Mult1~19\ <= \inst2|Mult1~mac_RESULTA_bus\(26);
\inst2|Mult1~20\ <= \inst2|Mult1~mac_RESULTA_bus\(27);
\inst2|Mult1~21\ <= \inst2|Mult1~mac_RESULTA_bus\(28);
\inst2|Mult1~22\ <= \inst2|Mult1~mac_RESULTA_bus\(29);
\inst2|Mult1~23\ <= \inst2|Mult1~mac_RESULTA_bus\(30);
\inst2|Mult1~24\ <= \inst2|Mult1~mac_RESULTA_bus\(31);
\inst2|Mult1~25\ <= \inst2|Mult1~mac_RESULTA_bus\(32);
\inst2|Mult1~26\ <= \inst2|Mult1~mac_RESULTA_bus\(33);
\inst2|Mult1~27\ <= \inst2|Mult1~mac_RESULTA_bus\(34);
\inst2|Mult1~28\ <= \inst2|Mult1~mac_RESULTA_bus\(35);
\inst2|Mult1~29\ <= \inst2|Mult1~mac_RESULTA_bus\(36);
\inst2|Mult1~30\ <= \inst2|Mult1~mac_RESULTA_bus\(37);
\inst2|Mult1~31\ <= \inst2|Mult1~mac_RESULTA_bus\(38);
\inst2|Mult1~32\ <= \inst2|Mult1~mac_RESULTA_bus\(39);
\inst2|Mult1~33\ <= \inst2|Mult1~mac_RESULTA_bus\(40);
\inst2|Mult1~34\ <= \inst2|Mult1~mac_RESULTA_bus\(41);
\inst2|Mult1~35\ <= \inst2|Mult1~mac_RESULTA_bus\(42);
\inst2|Mult1~36\ <= \inst2|Mult1~mac_RESULTA_bus\(43);
\inst2|Mult1~37\ <= \inst2|Mult1~mac_RESULTA_bus\(44);
\inst2|Mult1~38\ <= \inst2|Mult1~mac_RESULTA_bus\(45);
\inst2|Mult1~39\ <= \inst2|Mult1~mac_RESULTA_bus\(46);
\inst2|Mult1~40\ <= \inst2|Mult1~mac_RESULTA_bus\(47);
\inst2|Mult1~41\ <= \inst2|Mult1~mac_RESULTA_bus\(48);
\inst2|Mult1~42\ <= \inst2|Mult1~mac_RESULTA_bus\(49);
\inst2|Mult1~43\ <= \inst2|Mult1~mac_RESULTA_bus\(50);
\inst2|Mult1~44\ <= \inst2|Mult1~mac_RESULTA_bus\(51);
\inst2|Mult1~45\ <= \inst2|Mult1~mac_RESULTA_bus\(52);
\inst2|Mult1~46\ <= \inst2|Mult1~mac_RESULTA_bus\(53);
\inst2|Mult1~47\ <= \inst2|Mult1~mac_RESULTA_bus\(54);
\inst2|Mult1~48\ <= \inst2|Mult1~mac_RESULTA_bus\(55);
\inst2|Mult1~49\ <= \inst2|Mult1~mac_RESULTA_bus\(56);
\inst2|Mult1~50\ <= \inst2|Mult1~mac_RESULTA_bus\(57);
\inst2|Mult1~51\ <= \inst2|Mult1~mac_RESULTA_bus\(58);
\inst2|Mult1~52\ <= \inst2|Mult1~mac_RESULTA_bus\(59);
\inst2|Mult1~53\ <= \inst2|Mult1~mac_RESULTA_bus\(60);
\inst2|Mult1~54\ <= \inst2|Mult1~mac_RESULTA_bus\(61);
\inst2|Mult1~55\ <= \inst2|Mult1~mac_RESULTA_bus\(62);
\inst2|Mult1~56\ <= \inst2|Mult1~mac_RESULTA_bus\(63);

\inst2|Mult0~mac_ACLR_bus\ <= (gnd & gnd);

\inst2|Mult0~mac_CLK_bus\ <= (gnd & NOT \clk~inputCLKENA0_outclk\ & NOT \clk~inputCLKENA0_outclk\);

\inst2|Mult0~mac_ENA_bus\ <= (vcc & \inst2|s_countDimensions[5]~2_combout\ & \inst2|s_countDado[7]~0_combout\);

\inst2|Mult0~mac_AX_bus\ <= (\inst2|Add0~1_combout\ & \inst2|Add0~0_combout\ & NOT \reg8[0]~input_o\);

\inst2|Mult0~mac_AY_bus\ <= (\inst2|s_countDado[14]~SCLR_LUT_combout\ & \inst2|s_countDado[13]~SCLR_LUT_combout\ & \inst2|s_countDado[12]~SCLR_LUT_combout\ & \inst2|s_countDado[11]~SCLR_LUT_combout\ & \inst2|s_countDado[10]~SCLR_LUT_combout\ & 
\inst2|s_countDado[9]~SCLR_LUT_combout\ & \inst2|s_countDado[8]~SCLR_LUT_combout\ & \inst2|s_countDado[7]~SCLR_LUT_combout\ & \inst2|s_countDado[6]~SCLR_LUT_combout\ & \inst2|s_countDado[5]~SCLR_LUT_combout\ & \inst2|s_countDado[4]~SCLR_LUT_combout\ & 
\inst2|s_countDado[3]~SCLR_LUT_combout\ & \inst2|s_countDado[2]~SCLR_LUT_combout\ & \inst2|s_countDado[1]~SCLR_LUT_combout\ & \inst2|s_countDado[0]~SCLR_LUT_combout\);

\inst2|Mult0~mac_BX_bus\(0) <= gnd;

\inst2|Mult0~mac_BY_bus\ <= (gnd & gnd & gnd & gnd & gnd & \inst2|s_countDimensions[12]~SCLR_LUT_combout\ & \inst2|s_countDimensions[11]~SCLR_LUT_combout\ & \inst2|s_countDimensions[10]~SCLR_LUT_combout\ & \inst2|s_countDimensions[9]~SCLR_LUT_combout\ & 
\inst2|s_countDimensions[8]~SCLR_LUT_combout\ & \inst2|s_countDimensions[7]~SCLR_LUT_combout\ & \inst2|s_countDimensions[6]~SCLR_LUT_combout\ & \inst2|s_countDimensions[5]~SCLR_LUT_combout\ & \inst2|s_countDimensions[4]~SCLR_LUT_combout\ & 
\inst2|s_countDimensions[3]~SCLR_LUT_combout\ & \inst2|s_countDimensions[2]~SCLR_LUT_combout\ & \inst2|s_countDimensions[1]~SCLR_LUT_combout\ & \inst2|s_countDimensions[0]~SCLR_LUT_combout\);

\inst2|Mult0~mac_resulta\ <= \inst2|Mult0~mac_RESULTA_bus\(0);
\inst2|Mult0~323\ <= \inst2|Mult0~mac_RESULTA_bus\(1);
\inst2|Mult0~324\ <= \inst2|Mult0~mac_RESULTA_bus\(2);
\inst2|Mult0~325\ <= \inst2|Mult0~mac_RESULTA_bus\(3);
\inst2|Mult0~326\ <= \inst2|Mult0~mac_RESULTA_bus\(4);
\inst2|Mult0~327\ <= \inst2|Mult0~mac_RESULTA_bus\(5);
\inst2|Mult0~328\ <= \inst2|Mult0~mac_RESULTA_bus\(6);
\inst2|Mult0~329\ <= \inst2|Mult0~mac_RESULTA_bus\(7);
\inst2|Mult0~330\ <= \inst2|Mult0~mac_RESULTA_bus\(8);
\inst2|Mult0~331\ <= \inst2|Mult0~mac_RESULTA_bus\(9);
\inst2|Mult0~332\ <= \inst2|Mult0~mac_RESULTA_bus\(10);
\inst2|Mult0~333\ <= \inst2|Mult0~mac_RESULTA_bus\(11);
\inst2|Mult0~334\ <= \inst2|Mult0~mac_RESULTA_bus\(12);
\inst2|Mult0~335\ <= \inst2|Mult0~mac_RESULTA_bus\(13);
\inst2|Mult0~336\ <= \inst2|Mult0~mac_RESULTA_bus\(14);
\inst2|Mult0~337\ <= \inst2|Mult0~mac_RESULTA_bus\(15);
\inst2|Mult0~338\ <= \inst2|Mult0~mac_RESULTA_bus\(16);
\inst2|Mult0~339\ <= \inst2|Mult0~mac_RESULTA_bus\(17);
\inst2|Mult0~8\ <= \inst2|Mult0~mac_RESULTA_bus\(18);
\inst2|Mult0~9\ <= \inst2|Mult0~mac_RESULTA_bus\(19);
\inst2|Mult0~10\ <= \inst2|Mult0~mac_RESULTA_bus\(20);
\inst2|Mult0~11\ <= \inst2|Mult0~mac_RESULTA_bus\(21);
\inst2|Mult0~12\ <= \inst2|Mult0~mac_RESULTA_bus\(22);
\inst2|Mult0~13\ <= \inst2|Mult0~mac_RESULTA_bus\(23);
\inst2|Mult0~14\ <= \inst2|Mult0~mac_RESULTA_bus\(24);
\inst2|Mult0~15\ <= \inst2|Mult0~mac_RESULTA_bus\(25);
\inst2|Mult0~16\ <= \inst2|Mult0~mac_RESULTA_bus\(26);
\inst2|Mult0~17\ <= \inst2|Mult0~mac_RESULTA_bus\(27);
\inst2|Mult0~18\ <= \inst2|Mult0~mac_RESULTA_bus\(28);
\inst2|Mult0~19\ <= \inst2|Mult0~mac_RESULTA_bus\(29);
\inst2|Mult0~20\ <= \inst2|Mult0~mac_RESULTA_bus\(30);
\inst2|Mult0~21\ <= \inst2|Mult0~mac_RESULTA_bus\(31);
\inst2|Mult0~22\ <= \inst2|Mult0~mac_RESULTA_bus\(32);
\inst2|Mult0~23\ <= \inst2|Mult0~mac_RESULTA_bus\(33);
\inst2|Mult0~24\ <= \inst2|Mult0~mac_RESULTA_bus\(34);
\inst2|Mult0~25\ <= \inst2|Mult0~mac_RESULTA_bus\(35);
\inst2|Mult0~26\ <= \inst2|Mult0~mac_RESULTA_bus\(36);
\inst2|Mult0~27\ <= \inst2|Mult0~mac_RESULTA_bus\(37);
\inst2|Mult0~28\ <= \inst2|Mult0~mac_RESULTA_bus\(38);
\inst2|Mult0~29\ <= \inst2|Mult0~mac_RESULTA_bus\(39);
\inst2|Mult0~30\ <= \inst2|Mult0~mac_RESULTA_bus\(40);
\inst2|Mult0~31\ <= \inst2|Mult0~mac_RESULTA_bus\(41);
\inst2|Mult0~32\ <= \inst2|Mult0~mac_RESULTA_bus\(42);
\inst2|Mult0~33\ <= \inst2|Mult0~mac_RESULTA_bus\(43);
\inst2|Mult0~34\ <= \inst2|Mult0~mac_RESULTA_bus\(44);
\inst2|Mult0~35\ <= \inst2|Mult0~mac_RESULTA_bus\(45);
\inst2|Mult0~36\ <= \inst2|Mult0~mac_RESULTA_bus\(46);
\inst2|Mult0~37\ <= \inst2|Mult0~mac_RESULTA_bus\(47);
\inst2|Mult0~38\ <= \inst2|Mult0~mac_RESULTA_bus\(48);
\inst2|Mult0~39\ <= \inst2|Mult0~mac_RESULTA_bus\(49);
\inst2|Mult0~40\ <= \inst2|Mult0~mac_RESULTA_bus\(50);
\inst2|Mult0~41\ <= \inst2|Mult0~mac_RESULTA_bus\(51);
\inst2|Mult0~42\ <= \inst2|Mult0~mac_RESULTA_bus\(52);
\inst2|Mult0~43\ <= \inst2|Mult0~mac_RESULTA_bus\(53);
\inst2|Mult0~44\ <= \inst2|Mult0~mac_RESULTA_bus\(54);
\inst2|Mult0~45\ <= \inst2|Mult0~mac_RESULTA_bus\(55);
\inst2|Mult0~46\ <= \inst2|Mult0~mac_RESULTA_bus\(56);
\inst2|Mult0~47\ <= \inst2|Mult0~mac_RESULTA_bus\(57);
\inst2|Mult0~48\ <= \inst2|Mult0~mac_RESULTA_bus\(58);
\inst2|Mult0~49\ <= \inst2|Mult0~mac_RESULTA_bus\(59);
\inst2|Mult0~50\ <= \inst2|Mult0~mac_RESULTA_bus\(60);
\inst2|Mult0~51\ <= \inst2|Mult0~mac_RESULTA_bus\(61);
\inst2|Mult0~52\ <= \inst2|Mult0~mac_RESULTA_bus\(62);
\inst2|Mult0~53\ <= \inst2|Mult0~mac_RESULTA_bus\(63);
\inst2|ALT_INV_Mult0~335\ <= NOT \inst2|Mult0~335\;
\inst2|ALT_INV_Mult0~334\ <= NOT \inst2|Mult0~334\;
\inst2|ALT_INV_Mult0~333\ <= NOT \inst2|Mult0~333\;
\inst2|ALT_INV_Mult0~332\ <= NOT \inst2|Mult0~332\;
\inst2|ALT_INV_Mult0~331\ <= NOT \inst2|Mult0~331\;
\inst2|ALT_INV_Mult0~330\ <= NOT \inst2|Mult0~330\;
\inst2|ALT_INV_Mult0~329\ <= NOT \inst2|Mult0~329\;
\inst2|ALT_INV_Mult0~328\ <= NOT \inst2|Mult0~328\;
\inst2|ALT_INV_Mult0~327\ <= NOT \inst2|Mult0~327\;
\inst2|ALT_INV_Mult0~326\ <= NOT \inst2|Mult0~326\;
\inst2|ALT_INV_Mult0~325\ <= NOT \inst2|Mult0~325\;
\inst2|ALT_INV_Mult0~324\ <= NOT \inst2|Mult0~324\;
\inst2|ALT_INV_Mult0~323\ <= NOT \inst2|Mult0~323\;
\inst2|ALT_INV_Mult0~mac_resulta\ <= NOT \inst2|Mult0~mac_resulta\;
\inst2|ALT_INV_Mult1~338\ <= NOT \inst2|Mult1~338\;
\inst2|ALT_INV_Mult1~337\ <= NOT \inst2|Mult1~337\;
\inst2|ALT_INV_Mult1~336\ <= NOT \inst2|Mult1~336\;
\inst2|ALT_INV_Mult1~335\ <= NOT \inst2|Mult1~335\;
\inst2|ALT_INV_Mult1~334\ <= NOT \inst2|Mult1~334\;
\inst2|ALT_INV_Mult1~333\ <= NOT \inst2|Mult1~333\;
\inst2|ALT_INV_Mult1~332\ <= NOT \inst2|Mult1~332\;
\inst2|ALT_INV_Mult1~331\ <= NOT \inst2|Mult1~331\;
\inst2|ALT_INV_Mult1~330\ <= NOT \inst2|Mult1~330\;
\inst2|ALT_INV_Mult1~329\ <= NOT \inst2|Mult1~329\;
\inst2|ALT_INV_Mult1~328\ <= NOT \inst2|Mult1~328\;
\inst2|ALT_INV_Mult1~327\ <= NOT \inst2|Mult1~327\;
\inst2|ALT_INV_Mult1~326\ <= NOT \inst2|Mult1~326\;
\inst2|ALT_INV_Mult1~mac_resulta\ <= NOT \inst2|Mult1~mac_resulta\;
\inst2|ALT_INV_Add7~5_sumout\ <= NOT \inst2|Add7~5_sumout\;
\inst2|ALT_INV_Add7~1_sumout\ <= NOT \inst2|Add7~1_sumout\;
\inst2|ALT_INV_Add6~37_sumout\ <= NOT \inst2|Add6~37_sumout\;
\inst2|ALT_INV_Add6~33_sumout\ <= NOT \inst2|Add6~33_sumout\;
\inst2|ALT_INV_Add6~29_sumout\ <= NOT \inst2|Add6~29_sumout\;
\inst2|ALT_INV_Add6~25_sumout\ <= NOT \inst2|Add6~25_sumout\;
\inst2|ALT_INV_Add6~21_sumout\ <= NOT \inst2|Add6~21_sumout\;
\inst2|ALT_INV_Add6~17_sumout\ <= NOT \inst2|Add6~17_sumout\;
\inst2|ALT_INV_Add6~13_sumout\ <= NOT \inst2|Add6~13_sumout\;
\inst2|ALT_INV_Add6~9_sumout\ <= NOT \inst2|Add6~9_sumout\;
\inst2|ALT_INV_Add6~5_sumout\ <= NOT \inst2|Add6~5_sumout\;
\inst2|ALT_INV_Add6~1_sumout\ <= NOT \inst2|Add6~1_sumout\;
\inst2|ALT_INV_Add8~53_sumout\ <= NOT \inst2|Add8~53_sumout\;
\inst2|ALT_INV_Add8~49_sumout\ <= NOT \inst2|Add8~49_sumout\;
\inst2|ALT_INV_Add8~45_sumout\ <= NOT \inst2|Add8~45_sumout\;
\inst2|ALT_INV_Add8~41_sumout\ <= NOT \inst2|Add8~41_sumout\;
\inst2|ALT_INV_Add8~37_sumout\ <= NOT \inst2|Add8~37_sumout\;
\inst2|ALT_INV_Add8~33_sumout\ <= NOT \inst2|Add8~33_sumout\;
\inst2|ALT_INV_Add8~29_sumout\ <= NOT \inst2|Add8~29_sumout\;
\inst2|ALT_INV_Add8~25_sumout\ <= NOT \inst2|Add8~25_sumout\;
\inst2|ALT_INV_Add8~21_sumout\ <= NOT \inst2|Add8~21_sumout\;
\inst2|ALT_INV_Add8~17_sumout\ <= NOT \inst2|Add8~17_sumout\;
\inst2|ALT_INV_Add8~13_sumout\ <= NOT \inst2|Add8~13_sumout\;
\inst2|ALT_INV_Add8~9_sumout\ <= NOT \inst2|Add8~9_sumout\;
\inst2|ALT_INV_Add8~5_sumout\ <= NOT \inst2|Add8~5_sumout\;
\inst2|ALT_INV_Add8~1_sumout\ <= NOT \inst2|Add8~1_sumout\;
\inst2|ALT_INV_s_countDimensions[12]~_Duplicate_1_q\ <= NOT \inst2|s_countDimensions[12]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDimensions[11]~_Duplicate_1_q\ <= NOT \inst2|s_countDimensions[11]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDimensions[10]~_Duplicate_1_q\ <= NOT \inst2|s_countDimensions[10]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDimensions[9]~_Duplicate_1_q\ <= NOT \inst2|s_countDimensions[9]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDimensions[8]~_Duplicate_1_q\ <= NOT \inst2|s_countDimensions[8]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDimensions[7]~_Duplicate_1_q\ <= NOT \inst2|s_countDimensions[7]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDimensions[6]~_Duplicate_1_q\ <= NOT \inst2|s_countDimensions[6]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDimensions[5]~_Duplicate_1_q\ <= NOT \inst2|s_countDimensions[5]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDimensions[4]~_Duplicate_1_q\ <= NOT \inst2|s_countDimensions[4]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDimensions[3]~_Duplicate_1_q\ <= NOT \inst2|s_countDimensions[3]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDimensions[2]~_Duplicate_1_q\ <= NOT \inst2|s_countDimensions[2]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDimensions[1]~_Duplicate_1_q\ <= NOT \inst2|s_countDimensions[1]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDimensions[0]~_Duplicate_1_q\ <= NOT \inst2|s_countDimensions[0]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDado[14]~_Duplicate_1_q\ <= NOT \inst2|s_countDado[14]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countCentroid[9]~_Duplicate_1_q\ <= NOT \inst2|s_countCentroid[9]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countCentroid[8]~_Duplicate_1_q\ <= NOT \inst2|s_countCentroid[8]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countCentroid[7]~_Duplicate_1_q\ <= NOT \inst2|s_countCentroid[7]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countCentroid[6]~_Duplicate_1_q\ <= NOT \inst2|s_countCentroid[6]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countCentroid[5]~_Duplicate_1_q\ <= NOT \inst2|s_countCentroid[5]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countCentroid[4]~_Duplicate_1_q\ <= NOT \inst2|s_countCentroid[4]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countCentroid[3]~_Duplicate_1_q\ <= NOT \inst2|s_countCentroid[3]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countCentroid[2]~_Duplicate_1_q\ <= NOT \inst2|s_countCentroid[2]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countCentroid[1]~_Duplicate_1_q\ <= NOT \inst2|s_countCentroid[1]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countCentroid[0]~_Duplicate_1_q\ <= NOT \inst2|s_countCentroid[0]~_Duplicate_1_q\;
\inst2|ALT_INV_Add4~25_sumout\ <= NOT \inst2|Add4~25_sumout\;
\inst2|ALT_INV_Add4~21_sumout\ <= NOT \inst2|Add4~21_sumout\;
\inst2|ALT_INV_Add4~17_sumout\ <= NOT \inst2|Add4~17_sumout\;
\inst2|ALT_INV_Add4~13_sumout\ <= NOT \inst2|Add4~13_sumout\;
\inst2|ALT_INV_Add4~9_sumout\ <= NOT \inst2|Add4~9_sumout\;
\inst2|ALT_INV_Add4~5_sumout\ <= NOT \inst2|Add4~5_sumout\;
\inst2|ALT_INV_Add4~1_sumout\ <= NOT \inst2|Add4~1_sumout\;
\inst2|ALT_INV_s_countDado[0]~_Duplicate_1_q\ <= NOT \inst2|s_countDado[0]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDado[1]~_Duplicate_1_q\ <= NOT \inst2|s_countDado[1]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDado[2]~_Duplicate_1_q\ <= NOT \inst2|s_countDado[2]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDado[3]~_Duplicate_1_q\ <= NOT \inst2|s_countDado[3]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDado[4]~_Duplicate_1_q\ <= NOT \inst2|s_countDado[4]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDado[5]~_Duplicate_1_q\ <= NOT \inst2|s_countDado[5]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDado[6]~_Duplicate_1_q\ <= NOT \inst2|s_countDado[6]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDado[7]~_Duplicate_1_q\ <= NOT \inst2|s_countDado[7]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDado[8]~_Duplicate_1_q\ <= NOT \inst2|s_countDado[8]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDado[9]~_Duplicate_1_q\ <= NOT \inst2|s_countDado[9]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDado[10]~_Duplicate_1_q\ <= NOT \inst2|s_countDado[10]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDado[11]~_Duplicate_1_q\ <= NOT \inst2|s_countDado[11]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDado[12]~_Duplicate_1_q\ <= NOT \inst2|s_countDado[12]~_Duplicate_1_q\;
\inst2|ALT_INV_s_countDado[13]~_Duplicate_1_q\ <= NOT \inst2|s_countDado[13]~_Duplicate_1_q\;
\inst2|ALT_INV_WideOr5~combout\ <= NOT \inst2|WideOr5~combout\;
\inst2|ALT_INV_WideOr13~0_combout\ <= NOT \inst2|WideOr13~0_combout\;
\inst2|ALT_INV_state.VERIFYDIMENSION~q\ <= NOT \inst2|state.VERIFYDIMENSION~q\;
\inst2|ALT_INV_state.ENDCENTROIDS~q\ <= NOT \inst2|state.ENDCENTROIDS~q\;
\inst2|ALT_INV_s_countCentroid[7]~0_combout\ <= NOT \inst2|s_countCentroid[7]~0_combout\;
\inst2|ALT_INV_state.ENDSTATE~q\ <= NOT \inst2|state.ENDSTATE~q\;
\inst2|ALT_INV_state.VERIFYDATA~q\ <= NOT \inst2|state.VERIFYDATA~q\;
\inst2|ALT_INV_state.IDLE~q\ <= NOT \inst2|state.IDLE~q\;
\inst2|ALT_INV_state.LOADDATA~q\ <= NOT \inst2|state.LOADDATA~q\;
\inst2|ALT_INV_state.CALCDISTANCE~q\ <= NOT \inst2|state.CALCDISTANCE~q\;
\inst2|ALT_INV_state.MINDISTANCE~q\ <= NOT \inst2|state.MINDISTANCE~q\;
\inst2|ALT_INV_state.STOREDATA~q\ <= NOT \inst2|state.STOREDATA~q\;
\inst1|ALT_INV_s_reg7\(0) <= NOT \inst1|s_reg7\(0);
\inst1|ALT_INV_s_reg7\(1) <= NOT \inst1|s_reg7\(1);
\inst1|ALT_INV_s_reg7\(2) <= NOT \inst1|s_reg7\(2);
\inst1|ALT_INV_s_reg7\(3) <= NOT \inst1|s_reg7\(3);
\inst1|ALT_INV_s_reg7\(4) <= NOT \inst1|s_reg7\(4);
\inst1|ALT_INV_s_reg7\(6) <= NOT \inst1|s_reg7\(6);
\inst1|ALT_INV_s_reg7\(8) <= NOT \inst1|s_reg7\(8);
\inst1|ALT_INV_s_reg7\(9) <= NOT \inst1|s_reg7\(9);
\inst2|ALT_INV_s_blockState\(2) <= NOT \inst2|s_blockState\(2);
\inst2|ALT_INV_s_sumDistance\(0) <= NOT \inst2|s_sumDistance\(0);
\inst2|ALT_INV_s_sumDistance\(1) <= NOT \inst2|s_sumDistance\(1);
\inst2|ALT_INV_s_sumDistance\(2) <= NOT \inst2|s_sumDistance\(2);
\inst2|ALT_INV_s_sumDistance\(3) <= NOT \inst2|s_sumDistance\(3);
\inst2|ALT_INV_s_sumDistance\(4) <= NOT \inst2|s_sumDistance\(4);
\inst2|ALT_INV_s_sumDistance\(5) <= NOT \inst2|s_sumDistance\(5);
\inst2|ALT_INV_s_sumDistance\(6) <= NOT \inst2|s_sumDistance\(6);
\inst2|ALT_INV_s_addrRamCentroid\(0) <= NOT \inst2|s_addrRamCentroid\(0);
\inst2|ALT_INV_s_addrRamCentroid\(1) <= NOT \inst2|s_addrRamCentroid\(1);
\inst2|ALT_INV_s_addrRamCentroid\(2) <= NOT \inst2|s_addrRamCentroid\(2);
\inst2|ALT_INV_s_addrRamCentroid\(3) <= NOT \inst2|s_addrRamCentroid\(3);
\inst2|ALT_INV_s_addrRamCentroid\(4) <= NOT \inst2|s_addrRamCentroid\(4);
\inst2|ALT_INV_s_addrRamCentroid\(5) <= NOT \inst2|s_addrRamCentroid\(5);
\inst2|ALT_INV_s_addrRamCentroid\(6) <= NOT \inst2|s_addrRamCentroid\(6);
\inst2|ALT_INV_s_addrRamCentroid\(7) <= NOT \inst2|s_addrRamCentroid\(7);
\inst2|ALT_INV_s_addrRamCentroid\(8) <= NOT \inst2|s_addrRamCentroid\(8);
\inst2|ALT_INV_s_addrRamCentroid\(9) <= NOT \inst2|s_addrRamCentroid\(9);
\inst2|ALT_INV_s_addrRamCentroid\(10) <= NOT \inst2|s_addrRamCentroid\(10);
\inst2|ALT_INV_s_addrRamCentroid\(11) <= NOT \inst2|s_addrRamCentroid\(11);
\inst2|ALT_INV_s_addrRamCentroid\(12) <= NOT \inst2|s_addrRamCentroid\(12);
\inst2|ALT_INV_s_addrRamCentroid\(13) <= NOT \inst2|s_addrRamCentroid\(13);
\inst|ALT_INV_s_endDistanceMatch~q\ <= NOT \inst|s_endDistanceMatch~q\;
\inst2|ALT_INV_s_enMinDistanceMatch~q\ <= NOT \inst2|s_enMinDistanceMatch~q\;
\inst2|ALT_INV_Add5~49_sumout\ <= NOT \inst2|Add5~49_sumout\;
\inst2|ALT_INV_Add5~45_sumout\ <= NOT \inst2|Add5~45_sumout\;
\inst2|ALT_INV_Add5~41_sumout\ <= NOT \inst2|Add5~41_sumout\;
\inst2|ALT_INV_Add5~37_sumout\ <= NOT \inst2|Add5~37_sumout\;
\inst2|ALT_INV_Add5~33_sumout\ <= NOT \inst2|Add5~33_sumout\;
\inst2|ALT_INV_Add5~29_sumout\ <= NOT \inst2|Add5~29_sumout\;
\inst2|ALT_INV_Add5~25_sumout\ <= NOT \inst2|Add5~25_sumout\;
\inst2|ALT_INV_Add5~21_sumout\ <= NOT \inst2|Add5~21_sumout\;
\inst2|ALT_INV_Add5~17_sumout\ <= NOT \inst2|Add5~17_sumout\;
\inst2|ALT_INV_Add5~13_sumout\ <= NOT \inst2|Add5~13_sumout\;
\inst2|ALT_INV_Add5~9_sumout\ <= NOT \inst2|Add5~9_sumout\;
\inst2|ALT_INV_Add5~5_sumout\ <= NOT \inst2|Add5~5_sumout\;
\inst2|ALT_INV_Add5~1_sumout\ <= NOT \inst2|Add5~1_sumout\;
\inst2|ALT_INV_Add8~57_sumout\ <= NOT \inst2|Add8~57_sumout\;
\inst2|ALT_INV_Add7~37_sumout\ <= NOT \inst2|Add7~37_sumout\;
\inst2|ALT_INV_Add7~33_sumout\ <= NOT \inst2|Add7~33_sumout\;
\inst2|ALT_INV_Add7~29_sumout\ <= NOT \inst2|Add7~29_sumout\;
\inst2|ALT_INV_Add7~25_sumout\ <= NOT \inst2|Add7~25_sumout\;
\inst2|ALT_INV_Add7~21_sumout\ <= NOT \inst2|Add7~21_sumout\;
\inst2|ALT_INV_Add7~17_sumout\ <= NOT \inst2|Add7~17_sumout\;
\inst2|ALT_INV_Add7~13_sumout\ <= NOT \inst2|Add7~13_sumout\;
\inst2|ALT_INV_Add7~9_sumout\ <= NOT \inst2|Add7~9_sumout\;
\inst|ALT_INV_s_dado\(15) <= NOT \inst|s_dado\(15);
\inst|ALT_INV_s_centroid\(15) <= NOT \inst|s_centroid\(15);
\inst|ALT_INV_s_dado\(14) <= NOT \inst|s_dado\(14);
\inst|ALT_INV_s_centroid\(14) <= NOT \inst|s_centroid\(14);
\inst|ALT_INV_Equal6~1_combout\ <= NOT \inst|Equal6~1_combout\;
\inst|ALT_INV_s_dado\(12) <= NOT \inst|s_dado\(12);
\inst|ALT_INV_s_centroid\(12) <= NOT \inst|s_centroid\(12);
\inst|ALT_INV_s_dado\(11) <= NOT \inst|s_dado\(11);
\inst|ALT_INV_s_centroid\(11) <= NOT \inst|s_centroid\(11);
\inst|ALT_INV_Equal6~0_combout\ <= NOT \inst|Equal6~0_combout\;
\inst|ALT_INV_s_dado\(10) <= NOT \inst|s_dado\(10);
\inst|ALT_INV_s_centroid\(10) <= NOT \inst|s_centroid\(10);
\inst|ALT_INV_s_dado\(9) <= NOT \inst|s_dado\(9);
\inst|ALT_INV_s_centroid\(9) <= NOT \inst|s_centroid\(9);
\inst|ALT_INV_s_dado\(8) <= NOT \inst|s_dado\(8);
\inst|ALT_INV_s_centroid\(8) <= NOT \inst|s_centroid\(8);
\inst|ALT_INV_s_dado\(13) <= NOT \inst|s_dado\(13);
\inst|ALT_INV_s_centroid\(13) <= NOT \inst|s_centroid\(13);
\inst|ALT_INV_Equal0~2_combout\ <= NOT \inst|Equal0~2_combout\;
\inst|ALT_INV_s_dado\(63) <= NOT \inst|s_dado\(63);
\inst|ALT_INV_s_centroid\(63) <= NOT \inst|s_centroid\(63);
\inst|ALT_INV_s_dado\(62) <= NOT \inst|s_dado\(62);
\inst|ALT_INV_s_centroid\(62) <= NOT \inst|s_centroid\(62);
\inst|ALT_INV_Equal0~1_combout\ <= NOT \inst|Equal0~1_combout\;
\inst|ALT_INV_s_dado\(60) <= NOT \inst|s_dado\(60);
\inst|ALT_INV_s_centroid\(60) <= NOT \inst|s_centroid\(60);
\inst|ALT_INV_s_dado\(59) <= NOT \inst|s_dado\(59);
\inst|ALT_INV_s_centroid\(59) <= NOT \inst|s_centroid\(59);
\inst|ALT_INV_Equal0~0_combout\ <= NOT \inst|Equal0~0_combout\;
\inst|ALT_INV_s_dado\(58) <= NOT \inst|s_dado\(58);
\inst|ALT_INV_s_centroid\(58) <= NOT \inst|s_centroid\(58);
\inst|ALT_INV_s_dado\(57) <= NOT \inst|s_dado\(57);
\inst|ALT_INV_s_centroid\(57) <= NOT \inst|s_centroid\(57);
\inst|ALT_INV_s_dado\(56) <= NOT \inst|s_dado\(56);
\inst|ALT_INV_s_centroid\(56) <= NOT \inst|s_centroid\(56);
\inst|ALT_INV_s_dado\(61) <= NOT \inst|s_dado\(61);
\inst|ALT_INV_s_centroid\(61) <= NOT \inst|s_centroid\(61);
\inst|ALT_INV_Equal7~2_combout\ <= NOT \inst|Equal7~2_combout\;
\inst|ALT_INV_s_dado\(7) <= NOT \inst|s_dado\(7);
\inst|ALT_INV_s_centroid\(7) <= NOT \inst|s_centroid\(7);
\inst|ALT_INV_s_dado\(6) <= NOT \inst|s_dado\(6);
\inst|ALT_INV_s_centroid\(6) <= NOT \inst|s_centroid\(6);
\inst|ALT_INV_Equal7~1_combout\ <= NOT \inst|Equal7~1_combout\;
\inst|ALT_INV_s_dado\(4) <= NOT \inst|s_dado\(4);
\inst|ALT_INV_s_centroid\(4) <= NOT \inst|s_centroid\(4);
\inst|ALT_INV_s_dado\(3) <= NOT \inst|s_dado\(3);
\inst|ALT_INV_s_centroid\(3) <= NOT \inst|s_centroid\(3);
\inst|ALT_INV_Equal7~0_combout\ <= NOT \inst|Equal7~0_combout\;
\inst|ALT_INV_s_dado\(2) <= NOT \inst|s_dado\(2);
\inst|ALT_INV_s_centroid\(2) <= NOT \inst|s_centroid\(2);
\inst|ALT_INV_s_dado\(1) <= NOT \inst|s_dado\(1);
\inst|ALT_INV_s_centroid\(1) <= NOT \inst|s_centroid\(1);
\inst|ALT_INV_s_dado\(0) <= NOT \inst|s_dado\(0);
\inst|ALT_INV_s_centroid\(0) <= NOT \inst|s_centroid\(0);
\inst|ALT_INV_s_dado\(5) <= NOT \inst|s_dado\(5);
\inst|ALT_INV_s_centroid\(5) <= NOT \inst|s_centroid\(5);
\inst2|ALT_INV_state.WAITCALCDISTANCE~2_combout\ <= NOT \inst2|state.WAITCALCDISTANCE~2_combout\;
\inst2|ALT_INV_state.WAITCALCDISTANCE~_emulated_q\ <= NOT \inst2|state.WAITCALCDISTANCE~_emulated_q\;
\inst2|ALT_INV_state.IDLE~0_combout\ <= NOT \inst2|state.IDLE~0_combout\;
\inst1|ALT_INV_Equal0~2_combout\ <= NOT \inst1|Equal0~2_combout\;
\inst1|ALT_INV_Equal0~1_combout\ <= NOT \inst1|Equal0~1_combout\;
\inst1|ALT_INV_s_countCentroid\(8) <= NOT \inst1|s_countCentroid\(8);
\inst1|ALT_INV_s_countCentroid\(7) <= NOT \inst1|s_countCentroid\(7);
\inst1|ALT_INV_s_countCentroid\(6) <= NOT \inst1|s_countCentroid\(6);
\inst1|ALT_INV_Equal0~0_combout\ <= NOT \inst1|Equal0~0_combout\;
\inst1|ALT_INV_s_countCentroid\(3) <= NOT \inst1|s_countCentroid\(3);
\inst1|ALT_INV_s_countCentroid\(2) <= NOT \inst1|s_countCentroid\(2);
\inst1|ALT_INV_s_countCentroid\(1) <= NOT \inst1|s_countCentroid\(1);
\inst1|ALT_INV_s_countCentroid\(0) <= NOT \inst1|s_countCentroid\(0);
\inst1|ALT_INV_s_countCentroid\(5) <= NOT \inst1|s_countCentroid\(5);
\inst1|ALT_INV_s_countCentroid\(4) <= NOT \inst1|s_countCentroid\(4);
\inst1|ALT_INV_process_0~3_combout\ <= NOT \inst1|process_0~3_combout\;
\inst1|ALT_INV_process_0~2_combout\ <= NOT \inst1|process_0~2_combout\;
\inst1|ALT_INV_process_0~1_combout\ <= NOT \inst1|process_0~1_combout\;
\inst1|ALT_INV_s_distanceMatch\(4) <= NOT \inst1|s_distanceMatch\(4);
\inst1|ALT_INV_s_reg6\(4) <= NOT \inst1|s_reg6\(4);
\inst1|ALT_INV_s_distanceMatch\(5) <= NOT \inst1|s_distanceMatch\(5);
\inst1|ALT_INV_s_reg6\(5) <= NOT \inst1|s_reg6\(5);
\inst1|ALT_INV_process_0~0_combout\ <= NOT \inst1|process_0~0_combout\;
\inst1|ALT_INV_s_distanceMatch\(0) <= NOT \inst1|s_distanceMatch\(0);
\inst1|ALT_INV_s_reg6\(0) <= NOT \inst1|s_reg6\(0);
\inst1|ALT_INV_s_distanceMatch\(1) <= NOT \inst1|s_distanceMatch\(1);
\inst1|ALT_INV_s_reg6\(1) <= NOT \inst1|s_reg6\(1);
\inst1|ALT_INV_s_distanceMatch\(2) <= NOT \inst1|s_distanceMatch\(2);
\inst1|ALT_INV_s_reg6\(2) <= NOT \inst1|s_reg6\(2);
\inst1|ALT_INV_s_distanceMatch\(3) <= NOT \inst1|s_distanceMatch\(3);
\inst1|ALT_INV_s_reg6\(3) <= NOT \inst1|s_reg6\(3);
\inst1|ALT_INV_s_distanceMatch\(6) <= NOT \inst1|s_distanceMatch\(6);
\inst1|ALT_INV_s_reg6\(6) <= NOT \inst1|s_reg6\(6);
\inst1|ALT_INV_s_countCentroid\(9) <= NOT \inst1|s_countCentroid\(9);
\inst2|ALT_INV_WideOr7~combout\ <= NOT \inst2|WideOr7~combout\;
\inst3|parallel_add_component|auto_generated|ALT_INV_op_2~1_combout\ <= NOT \inst3|parallel_add_component|auto_generated|op_2~1_combout\;
\inst3|parallel_add_component|auto_generated|ALT_INV_op_8~1_combout\ <= NOT \inst3|parallel_add_component|auto_generated|op_8~1_combout\;
\inst3|parallel_add_component|auto_generated|ALT_INV_op_3~1_combout\ <= NOT \inst3|parallel_add_component|auto_generated|op_3~1_combout\;
\inst3|parallel_add_component|auto_generated|ALT_INV_op_2~0_combout\ <= NOT \inst3|parallel_add_component|auto_generated|op_2~0_combout\;
\inst|ALT_INV_s_dist4~q\ <= NOT \inst|s_dist4~q\;
\inst|ALT_INV_s_dist3~q\ <= NOT \inst|s_dist3~q\;
\inst3|parallel_add_component|auto_generated|ALT_INV_op_8~0_combout\ <= NOT \inst3|parallel_add_component|auto_generated|op_8~0_combout\;
\inst|ALT_INV_s_dist2~q\ <= NOT \inst|s_dist2~q\;
\inst|ALT_INV_s_dist6~q\ <= NOT \inst|s_dist6~q\;
\inst|ALT_INV_s_dist5~q\ <= NOT \inst|s_dist5~q\;
\inst3|parallel_add_component|auto_generated|ALT_INV_op_3~0_combout\ <= NOT \inst3|parallel_add_component|auto_generated|op_3~0_combout\;
\inst|ALT_INV_s_dist1~q\ <= NOT \inst|s_dist1~q\;
\inst|ALT_INV_s_dist7~q\ <= NOT \inst|s_dist7~q\;
\inst|ALT_INV_s_dist0~q\ <= NOT \inst|s_dist0~q\;
\inst2|ALT_INV_LessThan0~6_combout\ <= NOT \inst2|LessThan0~6_combout\;
\inst2|ALT_INV_LessThan0~5_combout\ <= NOT \inst2|LessThan0~5_combout\;
\inst2|ALT_INV_LessThan0~4_combout\ <= NOT \inst2|LessThan0~4_combout\;
\inst2|ALT_INV_LessThan0~3_combout\ <= NOT \inst2|LessThan0~3_combout\;
\inst2|ALT_INV_LessThan0~2_combout\ <= NOT \inst2|LessThan0~2_combout\;
\inst2|ALT_INV_LessThan0~1_combout\ <= NOT \inst2|LessThan0~1_combout\;
\inst2|ALT_INV_LessThan0~0_combout\ <= NOT \inst2|LessThan0~0_combout\;
\inst2|ALT_INV_Selector75~0_combout\ <= NOT \inst2|Selector75~0_combout\;
\inst2|ALT_INV_LessThan3~9_combout\ <= NOT \inst2|LessThan3~9_combout\;
\inst2|ALT_INV_LessThan3~8_combout\ <= NOT \inst2|LessThan3~8_combout\;
\inst2|ALT_INV_LessThan3~7_combout\ <= NOT \inst2|LessThan3~7_combout\;
\inst2|ALT_INV_LessThan1~10_combout\ <= NOT \inst2|LessThan1~10_combout\;
\inst2|ALT_INV_LessThan1~9_combout\ <= NOT \inst2|LessThan1~9_combout\;
\inst2|ALT_INV_LessThan1~8_combout\ <= NOT \inst2|LessThan1~8_combout\;
\inst2|ALT_INV_LessThan1~7_combout\ <= NOT \inst2|LessThan1~7_combout\;
\inst2|ALT_INV_LessThan1~6_combout\ <= NOT \inst2|LessThan1~6_combout\;
\inst2|ALT_INV_LessThan1~5_combout\ <= NOT \inst2|LessThan1~5_combout\;
\inst2|ALT_INV_LessThan1~4_combout\ <= NOT \inst2|LessThan1~4_combout\;
\inst2|ALT_INV_LessThan1~3_combout\ <= NOT \inst2|LessThan1~3_combout\;
\inst2|ALT_INV_LessThan1~2_combout\ <= NOT \inst2|LessThan1~2_combout\;
\inst2|ALT_INV_LessThan1~1_combout\ <= NOT \inst2|LessThan1~1_combout\;
\inst2|ALT_INV_LessThan1~0_combout\ <= NOT \inst2|LessThan1~0_combout\;
\inst2|ALT_INV_LessThan2~2_combout\ <= NOT \inst2|LessThan2~2_combout\;
\inst2|ALT_INV_LessThan2~1_combout\ <= NOT \inst2|LessThan2~1_combout\;
\inst2|ALT_INV_LessThan2~0_combout\ <= NOT \inst2|LessThan2~0_combout\;
\inst2|ALT_INV_LessThan3~6_combout\ <= NOT \inst2|LessThan3~6_combout\;
\inst2|ALT_INV_LessThan3~5_combout\ <= NOT \inst2|LessThan3~5_combout\;
\inst2|ALT_INV_LessThan3~4_combout\ <= NOT \inst2|LessThan3~4_combout\;
\inst2|ALT_INV_LessThan3~3_combout\ <= NOT \inst2|LessThan3~3_combout\;
\inst2|ALT_INV_LessThan3~2_combout\ <= NOT \inst2|LessThan3~2_combout\;
\inst2|ALT_INV_LessThan3~1_combout\ <= NOT \inst2|LessThan3~1_combout\;
\inst2|ALT_INV_LessThan3~0_combout\ <= NOT \inst2|LessThan3~0_combout\;
\inst2|ALT_INV_s_distanceMatch\(0) <= NOT \inst2|s_distanceMatch\(0);
\inst2|ALT_INV_s_distanceMatch\(1) <= NOT \inst2|s_distanceMatch\(1);
\inst2|ALT_INV_s_distanceMatch\(2) <= NOT \inst2|s_distanceMatch\(2);
\inst2|ALT_INV_s_distanceMatch\(3) <= NOT \inst2|s_distanceMatch\(3);
\inst|ALT_INV_Equal3~2_combout\ <= NOT \inst|Equal3~2_combout\;
\inst|ALT_INV_s_dado\(39) <= NOT \inst|s_dado\(39);
\inst|ALT_INV_s_centroid\(39) <= NOT \inst|s_centroid\(39);
\inst|ALT_INV_s_dado\(38) <= NOT \inst|s_dado\(38);
\inst|ALT_INV_s_centroid\(38) <= NOT \inst|s_centroid\(38);
\inst|ALT_INV_Equal3~1_combout\ <= NOT \inst|Equal3~1_combout\;
\inst|ALT_INV_s_dado\(36) <= NOT \inst|s_dado\(36);
\inst|ALT_INV_s_centroid\(36) <= NOT \inst|s_centroid\(36);
\inst|ALT_INV_s_dado\(35) <= NOT \inst|s_dado\(35);
\inst|ALT_INV_s_centroid\(35) <= NOT \inst|s_centroid\(35);
\inst|ALT_INV_Equal3~0_combout\ <= NOT \inst|Equal3~0_combout\;
\inst|ALT_INV_s_dado\(34) <= NOT \inst|s_dado\(34);
\inst|ALT_INV_s_centroid\(34) <= NOT \inst|s_centroid\(34);
\inst|ALT_INV_s_dado\(33) <= NOT \inst|s_dado\(33);
\inst|ALT_INV_s_centroid\(33) <= NOT \inst|s_centroid\(33);
\inst|ALT_INV_s_dado\(32) <= NOT \inst|s_dado\(32);
\inst|ALT_INV_s_centroid\(32) <= NOT \inst|s_centroid\(32);
\inst|ALT_INV_s_dado\(37) <= NOT \inst|s_dado\(37);
\inst|ALT_INV_s_centroid\(37) <= NOT \inst|s_centroid\(37);
\inst|ALT_INV_Equal4~2_combout\ <= NOT \inst|Equal4~2_combout\;
\inst|ALT_INV_s_dado\(31) <= NOT \inst|s_dado\(31);
\inst|ALT_INV_s_centroid\(31) <= NOT \inst|s_centroid\(31);
\inst|ALT_INV_s_dado\(30) <= NOT \inst|s_dado\(30);
\inst|ALT_INV_s_centroid\(30) <= NOT \inst|s_centroid\(30);
\inst|ALT_INV_Equal4~1_combout\ <= NOT \inst|Equal4~1_combout\;
\inst|ALT_INV_s_dado\(28) <= NOT \inst|s_dado\(28);
\inst|ALT_INV_s_centroid\(28) <= NOT \inst|s_centroid\(28);
\inst|ALT_INV_s_dado\(27) <= NOT \inst|s_dado\(27);
\inst|ALT_INV_s_centroid\(27) <= NOT \inst|s_centroid\(27);
\inst|ALT_INV_Equal4~0_combout\ <= NOT \inst|Equal4~0_combout\;
\inst|ALT_INV_s_dado\(26) <= NOT \inst|s_dado\(26);
\inst|ALT_INV_s_centroid\(26) <= NOT \inst|s_centroid\(26);
\inst|ALT_INV_s_dado\(25) <= NOT \inst|s_dado\(25);
\inst|ALT_INV_s_centroid\(25) <= NOT \inst|s_centroid\(25);
\inst|ALT_INV_s_dado\(24) <= NOT \inst|s_dado\(24);
\inst|ALT_INV_s_centroid\(24) <= NOT \inst|s_centroid\(24);
\inst|ALT_INV_s_dado\(29) <= NOT \inst|s_dado\(29);
\inst|ALT_INV_s_centroid\(29) <= NOT \inst|s_centroid\(29);
\inst|ALT_INV_Equal5~2_combout\ <= NOT \inst|Equal5~2_combout\;
\inst|ALT_INV_s_dado\(23) <= NOT \inst|s_dado\(23);
\inst|ALT_INV_s_centroid\(23) <= NOT \inst|s_centroid\(23);
\inst|ALT_INV_s_dado\(22) <= NOT \inst|s_dado\(22);
\inst|ALT_INV_s_centroid\(22) <= NOT \inst|s_centroid\(22);
\inst|ALT_INV_Equal5~1_combout\ <= NOT \inst|Equal5~1_combout\;
\inst|ALT_INV_s_dado\(20) <= NOT \inst|s_dado\(20);
\inst|ALT_INV_s_centroid\(20) <= NOT \inst|s_centroid\(20);
\inst|ALT_INV_s_dado\(19) <= NOT \inst|s_dado\(19);
\inst|ALT_INV_s_centroid\(19) <= NOT \inst|s_centroid\(19);
\inst|ALT_INV_Equal5~0_combout\ <= NOT \inst|Equal5~0_combout\;
\inst|ALT_INV_s_dado\(18) <= NOT \inst|s_dado\(18);
\inst|ALT_INV_s_centroid\(18) <= NOT \inst|s_centroid\(18);
\inst|ALT_INV_s_dado\(17) <= NOT \inst|s_dado\(17);
\inst|ALT_INV_s_centroid\(17) <= NOT \inst|s_centroid\(17);
\inst|ALT_INV_s_dado\(16) <= NOT \inst|s_dado\(16);
\inst|ALT_INV_s_centroid\(16) <= NOT \inst|s_centroid\(16);
\inst|ALT_INV_s_dado\(21) <= NOT \inst|s_dado\(21);
\inst|ALT_INV_s_centroid\(21) <= NOT \inst|s_centroid\(21);
\inst|ALT_INV_Equal1~2_combout\ <= NOT \inst|Equal1~2_combout\;
\inst|ALT_INV_s_dado\(55) <= NOT \inst|s_dado\(55);
\inst|ALT_INV_s_centroid\(55) <= NOT \inst|s_centroid\(55);
\inst|ALT_INV_s_dado\(54) <= NOT \inst|s_dado\(54);
\inst|ALT_INV_s_centroid\(54) <= NOT \inst|s_centroid\(54);
\inst|ALT_INV_Equal1~1_combout\ <= NOT \inst|Equal1~1_combout\;
\inst|ALT_INV_s_dado\(52) <= NOT \inst|s_dado\(52);
\inst|ALT_INV_s_centroid\(52) <= NOT \inst|s_centroid\(52);
\inst|ALT_INV_s_dado\(51) <= NOT \inst|s_dado\(51);
\inst|ALT_INV_s_centroid\(51) <= NOT \inst|s_centroid\(51);
\inst|ALT_INV_Equal1~0_combout\ <= NOT \inst|Equal1~0_combout\;
\inst|ALT_INV_s_dado\(50) <= NOT \inst|s_dado\(50);
\inst|ALT_INV_s_centroid\(50) <= NOT \inst|s_centroid\(50);
\inst|ALT_INV_s_dado\(49) <= NOT \inst|s_dado\(49);
\inst|ALT_INV_s_centroid\(49) <= NOT \inst|s_centroid\(49);
\inst|ALT_INV_s_dado\(48) <= NOT \inst|s_dado\(48);
\inst|ALT_INV_s_centroid\(48) <= NOT \inst|s_centroid\(48);
\inst|ALT_INV_s_dado\(53) <= NOT \inst|s_dado\(53);
\inst|ALT_INV_s_centroid\(53) <= NOT \inst|s_centroid\(53);
\inst|ALT_INV_Equal2~2_combout\ <= NOT \inst|Equal2~2_combout\;
\inst|ALT_INV_s_dado\(47) <= NOT \inst|s_dado\(47);
\inst|ALT_INV_s_centroid\(47) <= NOT \inst|s_centroid\(47);
\inst|ALT_INV_s_dado\(46) <= NOT \inst|s_dado\(46);
\inst|ALT_INV_s_centroid\(46) <= NOT \inst|s_centroid\(46);
\inst|ALT_INV_Equal2~1_combout\ <= NOT \inst|Equal2~1_combout\;
\inst|ALT_INV_s_dado\(44) <= NOT \inst|s_dado\(44);
\inst|ALT_INV_s_centroid\(44) <= NOT \inst|s_centroid\(44);
\inst|ALT_INV_s_dado\(43) <= NOT \inst|s_dado\(43);
\inst|ALT_INV_s_centroid\(43) <= NOT \inst|s_centroid\(43);
\inst|ALT_INV_Equal2~0_combout\ <= NOT \inst|Equal2~0_combout\;
\inst|ALT_INV_s_dado\(42) <= NOT \inst|s_dado\(42);
\inst|ALT_INV_s_centroid\(42) <= NOT \inst|s_centroid\(42);
\inst|ALT_INV_s_dado\(41) <= NOT \inst|s_dado\(41);
\inst|ALT_INV_s_centroid\(41) <= NOT \inst|s_centroid\(41);
\inst|ALT_INV_s_dado\(40) <= NOT \inst|s_dado\(40);
\inst|ALT_INV_s_centroid\(40) <= NOT \inst|s_centroid\(40);
\inst|ALT_INV_s_dado\(45) <= NOT \inst|s_dado\(45);
\inst|ALT_INV_s_centroid\(45) <= NOT \inst|s_centroid\(45);
\inst|ALT_INV_Equal6~2_combout\ <= NOT \inst|Equal6~2_combout\;
\ALT_INV_centroid[43]~input_o\ <= NOT \centroid[43]~input_o\;
\ALT_INV_dado[41]~input_o\ <= NOT \dado[41]~input_o\;
\ALT_INV_centroid[40]~input_o\ <= NOT \centroid[40]~input_o\;
\ALT_INV_dado[45]~input_o\ <= NOT \dado[45]~input_o\;
\ALT_INV_dado[12]~input_o\ <= NOT \dado[12]~input_o\;
\ALT_INV_centroid[11]~input_o\ <= NOT \centroid[11]~input_o\;
\ALT_INV_centroid[9]~input_o\ <= NOT \centroid[9]~input_o\;
\ALT_INV_dado[8]~input_o\ <= NOT \dado[8]~input_o\;
\ALT_INV_centroid[8]~input_o\ <= NOT \centroid[8]~input_o\;
\ALT_INV_dado[13]~input_o\ <= NOT \dado[13]~input_o\;
\ALT_INV_centroid[63]~input_o\ <= NOT \centroid[63]~input_o\;
\ALT_INV_centroid[62]~input_o\ <= NOT \centroid[62]~input_o\;
\ALT_INV_centroid[59]~input_o\ <= NOT \centroid[59]~input_o\;
\ALT_INV_centroid[58]~input_o\ <= NOT \centroid[58]~input_o\;
\ALT_INV_dado[56]~input_o\ <= NOT \dado[56]~input_o\;
\ALT_INV_centroid[56]~input_o\ <= NOT \centroid[56]~input_o\;
\ALT_INV_dado[6]~input_o\ <= NOT \dado[6]~input_o\;
\ALT_INV_centroid[2]~input_o\ <= NOT \centroid[2]~input_o\;
\ALT_INV_dado[1]~input_o\ <= NOT \dado[1]~input_o\;
\ALT_INV_centroid[1]~input_o\ <= NOT \centroid[1]~input_o\;
\ALT_INV_dado[5]~input_o\ <= NOT \dado[5]~input_o\;
\ALT_INV_en_KmodesControlCalcMap~input_o\ <= NOT \en_KmodesControlCalcMap~input_o\;
\ALT_INV_reg5[13]~input_o\ <= NOT \reg5[13]~input_o\;
\ALT_INV_reg5[12]~input_o\ <= NOT \reg5[12]~input_o\;
\ALT_INV_reg5[11]~input_o\ <= NOT \reg5[11]~input_o\;
\ALT_INV_reg5[10]~input_o\ <= NOT \reg5[10]~input_o\;
\ALT_INV_reg5[9]~input_o\ <= NOT \reg5[9]~input_o\;
\ALT_INV_reg5[8]~input_o\ <= NOT \reg5[8]~input_o\;
\ALT_INV_reg5[7]~input_o\ <= NOT \reg5[7]~input_o\;
\ALT_INV_reg5[6]~input_o\ <= NOT \reg5[6]~input_o\;
\ALT_INV_reg5[5]~input_o\ <= NOT \reg5[5]~input_o\;
\ALT_INV_reg5[4]~input_o\ <= NOT \reg5[4]~input_o\;
\ALT_INV_reg5[3]~input_o\ <= NOT \reg5[3]~input_o\;
\ALT_INV_reg5[2]~input_o\ <= NOT \reg5[2]~input_o\;
\ALT_INV_reg5[1]~input_o\ <= NOT \reg5[1]~input_o\;
\ALT_INV_reg5[0]~input_o\ <= NOT \reg5[0]~input_o\;
\ALT_INV_reg3[8]~input_o\ <= NOT \reg3[8]~input_o\;
\ALT_INV_reg3[10]~input_o\ <= NOT \reg3[10]~input_o\;
\ALT_INV_reg3[9]~input_o\ <= NOT \reg3[9]~input_o\;
\ALT_INV_reg3[11]~input_o\ <= NOT \reg3[11]~input_o\;
\ALT_INV_reg3[12]~input_o\ <= NOT \reg3[12]~input_o\;
\ALT_INV_reg3[13]~input_o\ <= NOT \reg3[13]~input_o\;
\ALT_INV_reg3[14]~input_o\ <= NOT \reg3[14]~input_o\;
\ALT_INV_reg3[2]~input_o\ <= NOT \reg3[2]~input_o\;
\ALT_INV_reg3[3]~input_o\ <= NOT \reg3[3]~input_o\;
\ALT_INV_reg3[0]~input_o\ <= NOT \reg3[0]~input_o\;
\ALT_INV_reg3[1]~input_o\ <= NOT \reg3[1]~input_o\;
\ALT_INV_reg3[4]~input_o\ <= NOT \reg3[4]~input_o\;
\ALT_INV_reg3[5]~input_o\ <= NOT \reg3[5]~input_o\;
\ALT_INV_reg3[6]~input_o\ <= NOT \reg3[6]~input_o\;
\ALT_INV_reg3[7]~input_o\ <= NOT \reg3[7]~input_o\;
\ALT_INV_reg1[8]~input_o\ <= NOT \reg1[8]~input_o\;
\ALT_INV_reg1[9]~input_o\ <= NOT \reg1[9]~input_o\;
\ALT_INV_reg1[2]~input_o\ <= NOT \reg1[2]~input_o\;
\ALT_INV_reg1[3]~input_o\ <= NOT \reg1[3]~input_o\;
\ALT_INV_reg1[0]~input_o\ <= NOT \reg1[0]~input_o\;
\ALT_INV_reg1[1]~input_o\ <= NOT \reg1[1]~input_o\;
\ALT_INV_reg1[4]~input_o\ <= NOT \reg1[4]~input_o\;
\ALT_INV_reg1[5]~input_o\ <= NOT \reg1[5]~input_o\;
\ALT_INV_reg1[6]~input_o\ <= NOT \reg1[6]~input_o\;
\ALT_INV_reg1[7]~input_o\ <= NOT \reg1[7]~input_o\;
\ALT_INV_reg8[2]~input_o\ <= NOT \reg8[2]~input_o\;
\ALT_INV_reg8[1]~input_o\ <= NOT \reg8[1]~input_o\;
\ALT_INV_reg8[0]~input_o\ <= NOT \reg8[0]~input_o\;
\ALT_INV_nrst~input_o\ <= NOT \nrst~input_o\;
\inst2|ALT_INV_state.RESET~1_combout\ <= NOT \inst2|state.RESET~1_combout\;
\inst2|ALT_INV_state.WAITCALCDISTANCE~1_combout\ <= NOT \inst2|state.WAITCALCDISTANCE~1_combout\;
\inst2|ALT_INV_state.RESET~0_combout\ <= NOT \inst2|state.RESET~0_combout\;
\inst2|ALT_INV_state_fut.RESET~q\ <= NOT \inst2|state_fut.RESET~q\;
\inst2|ALT_INV_state.RESET~2_combout\ <= NOT \inst2|state.RESET~2_combout\;
\inst2|ALT_INV_state.RESET~_emulated_q\ <= NOT \inst2|state.RESET~_emulated_q\;
\inst2|ALT_INV_s_countDimensions[5]~1_combout\ <= NOT \inst2|s_countDimensions[5]~1_combout\;
\inst2|ALT_INV_WideOr7~0_combout\ <= NOT \inst2|WideOr7~0_combout\;
\inst2|ALT_INV_s_countDimensions[5]~0_combout\ <= NOT \inst2|s_countDimensions[5]~0_combout\;
\inst2|ALT_INV_state.RESET~5_combout\ <= NOT \inst2|state.RESET~5_combout\;
\inst2|ALT_INV_state.WAITCALCDISTANCE~0_combout\ <= NOT \inst2|state.WAITCALCDISTANCE~0_combout\;
\inst2|ALT_INV_Selector75~1_combout\ <= NOT \inst2|Selector75~1_combout\;
\inst2|ALT_INV_LessThan0~17_combout\ <= NOT \inst2|LessThan0~17_combout\;
\inst2|ALT_INV_LessThan0~16_combout\ <= NOT \inst2|LessThan0~16_combout\;
\inst2|ALT_INV_LessThan0~15_combout\ <= NOT \inst2|LessThan0~15_combout\;
\inst2|ALT_INV_LessThan0~14_combout\ <= NOT \inst2|LessThan0~14_combout\;
\inst2|ALT_INV_LessThan0~13_combout\ <= NOT \inst2|LessThan0~13_combout\;
\inst2|ALT_INV_LessThan0~12_combout\ <= NOT \inst2|LessThan0~12_combout\;
\inst2|ALT_INV_LessThan0~11_combout\ <= NOT \inst2|LessThan0~11_combout\;
\inst2|ALT_INV_LessThan0~10_combout\ <= NOT \inst2|LessThan0~10_combout\;
\inst2|ALT_INV_LessThan0~9_combout\ <= NOT \inst2|LessThan0~9_combout\;
\inst2|ALT_INV_LessThan0~8_combout\ <= NOT \inst2|LessThan0~8_combout\;
\inst2|ALT_INV_LessThan0~7_combout\ <= NOT \inst2|LessThan0~7_combout\;
\ALT_INV_clk~inputCLKENA0_outclk\ <= NOT \clk~inputCLKENA0_outclk\;
\ALT_INV_dado[38]~input_o\ <= NOT \dado[38]~input_o\;
\ALT_INV_dado[36]~input_o\ <= NOT \dado[36]~input_o\;
\ALT_INV_centroid[35]~input_o\ <= NOT \centroid[35]~input_o\;
\ALT_INV_centroid[34]~input_o\ <= NOT \centroid[34]~input_o\;
\ALT_INV_dado[33]~input_o\ <= NOT \dado[33]~input_o\;
\ALT_INV_centroid[33]~input_o\ <= NOT \centroid[33]~input_o\;
\ALT_INV_centroid[37]~input_o\ <= NOT \centroid[37]~input_o\;
\ALT_INV_centroid[31]~input_o\ <= NOT \centroid[31]~input_o\;
\ALT_INV_centroid[30]~input_o\ <= NOT \centroid[30]~input_o\;
\ALT_INV_dado[28]~input_o\ <= NOT \dado[28]~input_o\;
\ALT_INV_centroid[28]~input_o\ <= NOT \centroid[28]~input_o\;
\ALT_INV_centroid[29]~input_o\ <= NOT \centroid[29]~input_o\;
\ALT_INV_centroid[23]~input_o\ <= NOT \centroid[23]~input_o\;
\ALT_INV_dado[22]~input_o\ <= NOT \dado[22]~input_o\;
\ALT_INV_centroid[22]~input_o\ <= NOT \centroid[22]~input_o\;
\ALT_INV_centroid[20]~input_o\ <= NOT \centroid[20]~input_o\;
\ALT_INV_centroid[18]~input_o\ <= NOT \centroid[18]~input_o\;
\ALT_INV_dado[16]~input_o\ <= NOT \dado[16]~input_o\;
\ALT_INV_centroid[16]~input_o\ <= NOT \centroid[16]~input_o\;
\ALT_INV_centroid[21]~input_o\ <= NOT \centroid[21]~input_o\;
\ALT_INV_centroid[55]~input_o\ <= NOT \centroid[55]~input_o\;
\ALT_INV_centroid[54]~input_o\ <= NOT \centroid[54]~input_o\;
\ALT_INV_dado[52]~input_o\ <= NOT \dado[52]~input_o\;
\ALT_INV_centroid[52]~input_o\ <= NOT \centroid[52]~input_o\;
\ALT_INV_centroid[49]~input_o\ <= NOT \centroid[49]~input_o\;
\ALT_INV_centroid[48]~input_o\ <= NOT \centroid[48]~input_o\;
\inst|ALT_INV_s_dist7~DUPLICATE_q\ <= NOT \inst|s_dist7~DUPLICATE_q\;
\inst1|ALT_INV_s_reg7[5]~DUPLICATE_q\ <= NOT \inst1|s_reg7[5]~DUPLICATE_q\;

-- Location: IOOBUF_X72_Y0_N53
\wr_Ram~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_wrRam~q\,
	devoe => ww_devoe,
	o => ww_wr_Ram);

-- Location: IOOBUF_X76_Y0_N53
\enMinDistMatch~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_enMinDistanceMatch~q\,
	devoe => ww_devoe,
	o => ww_enMinDistMatch);

-- Location: IOOBUF_X64_Y0_N2
\enSimpleMatch~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_en_SimpleMatch~q\,
	devoe => ww_devoe,
	o => ww_enSimpleMatch);

-- Location: IOOBUF_X86_Y0_N2
\EndDistanceMatch~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_endDistanceMatch~q\,
	devoe => ww_devoe,
	o => ww_EndDistanceMatch);

-- Location: IOOBUF_X89_Y13_N5
\addr_Ram_Centroid[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(13),
	devoe => ww_devoe,
	o => ww_addr_Ram_Centroid(13));

-- Location: IOOBUF_X84_Y0_N19
\addr_Ram_Centroid[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(12),
	devoe => ww_devoe,
	o => ww_addr_Ram_Centroid(12));

-- Location: IOOBUF_X89_Y4_N62
\addr_Ram_Centroid[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(11),
	devoe => ww_devoe,
	o => ww_addr_Ram_Centroid(11));

-- Location: IOOBUF_X89_Y23_N39
\addr_Ram_Centroid[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(10),
	devoe => ww_devoe,
	o => ww_addr_Ram_Centroid(10));

-- Location: IOOBUF_X89_Y15_N22
\addr_Ram_Centroid[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(9),
	devoe => ww_devoe,
	o => ww_addr_Ram_Centroid(9));

-- Location: IOOBUF_X89_Y9_N56
\addr_Ram_Centroid[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(8),
	devoe => ww_devoe,
	o => ww_addr_Ram_Centroid(8));

-- Location: IOOBUF_X89_Y11_N62
\addr_Ram_Centroid[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(7),
	devoe => ww_devoe,
	o => ww_addr_Ram_Centroid(7));

-- Location: IOOBUF_X12_Y81_N36
\addr_Ram_Centroid[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(6),
	devoe => ww_devoe,
	o => ww_addr_Ram_Centroid(6));

-- Location: IOOBUF_X89_Y20_N96
\addr_Ram_Centroid[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(5),
	devoe => ww_devoe,
	o => ww_addr_Ram_Centroid(5));

-- Location: IOOBUF_X89_Y16_N56
\addr_Ram_Centroid[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(4),
	devoe => ww_devoe,
	o => ww_addr_Ram_Centroid(4));

-- Location: IOOBUF_X89_Y13_N56
\addr_Ram_Centroid[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(3),
	devoe => ww_devoe,
	o => ww_addr_Ram_Centroid(3));

-- Location: IOOBUF_X89_Y21_N5
\addr_Ram_Centroid[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(2),
	devoe => ww_devoe,
	o => ww_addr_Ram_Centroid(2));

-- Location: IOOBUF_X89_Y16_N39
\addr_Ram_Centroid[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(1),
	devoe => ww_devoe,
	o => ww_addr_Ram_Centroid(1));

-- Location: IOOBUF_X89_Y20_N62
\addr_Ram_Centroid[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamCentroid\(0),
	devoe => ww_devoe,
	o => ww_addr_Ram_Centroid(0));

-- Location: IOOBUF_X38_Y81_N2
\addr_Ram_Dado[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(13),
	devoe => ww_devoe,
	o => ww_addr_Ram_Dado(13));

-- Location: IOOBUF_X84_Y0_N36
\addr_Ram_Dado[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(12),
	devoe => ww_devoe,
	o => ww_addr_Ram_Dado(12));

-- Location: IOOBUF_X30_Y81_N2
\addr_Ram_Dado[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(11),
	devoe => ww_devoe,
	o => ww_addr_Ram_Dado(11));

-- Location: IOOBUF_X89_Y4_N96
\addr_Ram_Dado[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(10),
	devoe => ww_devoe,
	o => ww_addr_Ram_Dado(10));

-- Location: IOOBUF_X89_Y6_N22
\addr_Ram_Dado[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(9),
	devoe => ww_devoe,
	o => ww_addr_Ram_Dado(9));

-- Location: IOOBUF_X89_Y4_N45
\addr_Ram_Dado[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(8),
	devoe => ww_devoe,
	o => ww_addr_Ram_Dado(8));

-- Location: IOOBUF_X80_Y0_N36
\addr_Ram_Dado[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(7),
	devoe => ww_devoe,
	o => ww_addr_Ram_Dado(7));

-- Location: IOOBUF_X88_Y0_N3
\addr_Ram_Dado[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(6),
	devoe => ww_devoe,
	o => ww_addr_Ram_Dado(6));

-- Location: IOOBUF_X88_Y0_N37
\addr_Ram_Dado[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(5),
	devoe => ww_devoe,
	o => ww_addr_Ram_Dado(5));

-- Location: IOOBUF_X36_Y81_N19
\addr_Ram_Dado[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(4),
	devoe => ww_devoe,
	o => ww_addr_Ram_Dado(4));

-- Location: IOOBUF_X89_Y6_N56
\addr_Ram_Dado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(3),
	devoe => ww_devoe,
	o => ww_addr_Ram_Dado(3));

-- Location: IOOBUF_X89_Y6_N39
\addr_Ram_Dado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(2),
	devoe => ww_devoe,
	o => ww_addr_Ram_Dado(2));

-- Location: IOOBUF_X84_Y0_N2
\addr_Ram_Dado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(1),
	devoe => ww_devoe,
	o => ww_addr_Ram_Dado(1));

-- Location: IOOBUF_X80_Y0_N53
\addr_Ram_Dado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_addrRamDado\(0),
	devoe => ww_devoe,
	o => ww_addr_Ram_Dado(0));

-- Location: IOOBUF_X30_Y81_N36
\DistanceMatch[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|parallel_add_component|auto_generated|add16_result[3]~1_sumout\,
	devoe => ww_devoe,
	o => ww_DistanceMatch(3));

-- Location: IOOBUF_X24_Y81_N53
\DistanceMatch[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|parallel_add_component|auto_generated|add16_result[2]~5_sumout\,
	devoe => ww_devoe,
	o => ww_DistanceMatch(2));

-- Location: IOOBUF_X10_Y0_N42
\DistanceMatch[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|parallel_add_component|auto_generated|add16_result[1]~9_sumout\,
	devoe => ww_devoe,
	o => ww_DistanceMatch(1));

-- Location: IOOBUF_X24_Y81_N19
\DistanceMatch[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|parallel_add_component|auto_generated|add16_result[0]~13_sumout\,
	devoe => ww_devoe,
	o => ww_DistanceMatch(0));

-- Location: IOOBUF_X88_Y0_N54
\KmodesEstatoMap[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|estado\(3),
	devoe => ww_devoe,
	o => ww_KmodesEstatoMap(3));

-- Location: IOOBUF_X89_Y6_N5
\KmodesEstatoMap[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|estado\(2),
	devoe => ww_devoe,
	o => ww_KmodesEstatoMap(2));

-- Location: IOOBUF_X89_Y9_N5
\KmodesEstatoMap[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|estado\(1),
	devoe => ww_devoe,
	o => ww_KmodesEstatoMap(1));

-- Location: IOOBUF_X80_Y0_N19
\KmodesEstatoMap[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|estado\(0),
	devoe => ww_devoe,
	o => ww_KmodesEstatoMap(0));

-- Location: IOOBUF_X76_Y0_N2
\KmodesSumDist[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_sumDistance\(6),
	devoe => ww_devoe,
	o => ww_KmodesSumDist(6));

-- Location: IOOBUF_X89_Y9_N39
\KmodesSumDist[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_sumDistance\(5),
	devoe => ww_devoe,
	o => ww_KmodesSumDist(5));

-- Location: IOOBUF_X38_Y81_N36
\KmodesSumDist[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_sumDistance\(4),
	devoe => ww_devoe,
	o => ww_KmodesSumDist(4));

-- Location: IOOBUF_X40_Y81_N36
\KmodesSumDist[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_sumDistance\(3),
	devoe => ww_devoe,
	o => ww_KmodesSumDist(3));

-- Location: IOOBUF_X60_Y0_N36
\KmodesSumDist[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_sumDistance\(2),
	devoe => ww_devoe,
	o => ww_KmodesSumDist(2));

-- Location: IOOBUF_X74_Y0_N42
\KmodesSumDist[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_sumDistance\(1),
	devoe => ww_devoe,
	o => ww_KmodesSumDist(1));

-- Location: IOOBUF_X80_Y0_N2
\KmodesSumDist[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_sumDistance\(0),
	devoe => ww_devoe,
	o => ww_KmodesSumDist(0));

-- Location: IOOBUF_X68_Y0_N2
\next_State[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_blockState\(3),
	devoe => ww_devoe,
	o => ww_next_State(3));

-- Location: IOOBUF_X68_Y0_N36
\next_State[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_s_blockState\(2),
	devoe => ww_devoe,
	o => ww_next_State(2));

-- Location: IOOBUF_X68_Y0_N53
\next_State[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_blockState\(1),
	devoe => ww_devoe,
	o => ww_next_State(1));

-- Location: IOOBUF_X70_Y0_N36
\next_State[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_blockState\(0),
	devoe => ww_devoe,
	o => ww_next_State(0));

-- Location: IOOBUF_X66_Y0_N59
\o_dado[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_oDado\(9),
	devoe => ww_devoe,
	o => ww_o_dado(9));

-- Location: IOOBUF_X74_Y0_N59
\o_dado[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_oDado\(8),
	devoe => ww_devoe,
	o => ww_o_dado(8));

-- Location: IOOBUF_X70_Y0_N19
\o_dado[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_oDado\(7),
	devoe => ww_devoe,
	o => ww_o_dado(7));

-- Location: IOOBUF_X89_Y15_N39
\o_dado[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_oDado\(6),
	devoe => ww_devoe,
	o => ww_o_dado(6));

-- Location: IOOBUF_X62_Y0_N2
\o_dado[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_oDado\(5),
	devoe => ww_devoe,
	o => ww_o_dado(5));

-- Location: IOOBUF_X62_Y0_N53
\o_dado[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_oDado\(4),
	devoe => ww_devoe,
	o => ww_o_dado(4));

-- Location: IOOBUF_X66_Y0_N93
\o_dado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_oDado\(3),
	devoe => ww_devoe,
	o => ww_o_dado(3));

-- Location: IOOBUF_X89_Y25_N56
\o_dado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_oDado\(2),
	devoe => ww_devoe,
	o => ww_o_dado(2));

-- Location: IOOBUF_X78_Y0_N36
\o_dado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_oDado\(1),
	devoe => ww_devoe,
	o => ww_o_dado(1));

-- Location: IOOBUF_X72_Y0_N2
\o_dado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_oDado\(0),
	devoe => ww_devoe,
	o => ww_o_dado(0));

-- Location: IOOBUF_X66_Y0_N42
\oReg7[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_reg7\(9),
	devoe => ww_devoe,
	o => ww_oReg7(9));

-- Location: IOOBUF_X70_Y0_N53
\oReg7[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_reg7\(8),
	devoe => ww_devoe,
	o => ww_oReg7(8));

-- Location: IOOBUF_X78_Y0_N2
\oReg7[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_reg7\(7),
	devoe => ww_devoe,
	o => ww_oReg7(7));

-- Location: IOOBUF_X89_Y11_N45
\oReg7[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_reg7\(6),
	devoe => ww_devoe,
	o => ww_oReg7(6));

-- Location: IOOBUF_X40_Y81_N53
\oReg7[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_reg7\(5),
	devoe => ww_devoe,
	o => ww_oReg7(5));

-- Location: IOOBUF_X38_Y81_N19
\oReg7[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_reg7\(4),
	devoe => ww_devoe,
	o => ww_oReg7(4));

-- Location: IOOBUF_X74_Y0_N76
\oReg7[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_reg7\(3),
	devoe => ww_devoe,
	o => ww_oReg7(3));

-- Location: IOOBUF_X36_Y81_N2
\oReg7[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_reg7\(2),
	devoe => ww_devoe,
	o => ww_oReg7(2));

-- Location: IOOBUF_X78_Y0_N53
\oReg7[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_reg7\(1),
	devoe => ww_devoe,
	o => ww_oReg7(1));

-- Location: IOOBUF_X64_Y0_N53
\oReg7[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s_reg7\(0),
	devoe => ww_devoe,
	o => ww_oReg7(0));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X81_Y7_N30
\inst2|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add7~1_sumout\ = SUM(( \inst2|s_countCentroid[0]~_Duplicate_1_q\ ) + ( VCC ) + ( !VCC ))
-- \inst2|Add7~2\ = CARRY(( \inst2|s_countCentroid[0]~_Duplicate_1_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countCentroid[0]~_Duplicate_1_q\,
	cin => GND,
	sumout => \inst2|Add7~1_sumout\,
	cout => \inst2|Add7~2\);

-- Location: LABCELL_X81_Y7_N0
\inst2|s_countCentroid[0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[0]~SCLR_LUT_combout\ = ( \inst2|Add7~1_sumout\ & ( \inst2|state.ENDCENTROIDS~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	dataf => \inst2|ALT_INV_Add7~1_sumout\,
	combout => \inst2|s_countCentroid[0]~SCLR_LUT_combout\);

-- Location: IOIBUF_X68_Y0_N18
\reg1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg1(5),
	o => \reg1[5]~input_o\);

-- Location: IOIBUF_X74_Y0_N92
\reg1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg1(4),
	o => \reg1[4]~input_o\);

-- Location: IOIBUF_X32_Y81_N18
\reg1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg1(3),
	o => \reg1[3]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\reg1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg1(2),
	o => \reg1[2]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\reg1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg1(1),
	o => \reg1[1]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\reg1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg1(0),
	o => \reg1[0]~input_o\);

-- Location: MLABCELL_X78_Y7_N30
\inst2|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add6~17_sumout\ = SUM(( \reg1[0]~input_o\ ) + ( VCC ) + ( !VCC ))
-- \inst2|Add6~18\ = CARRY(( \reg1[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reg1[0]~input_o\,
	cin => GND,
	sumout => \inst2|Add6~17_sumout\,
	cout => \inst2|Add6~18\);

-- Location: MLABCELL_X78_Y7_N33
\inst2|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add6~13_sumout\ = SUM(( \reg1[1]~input_o\ ) + ( VCC ) + ( \inst2|Add6~18\ ))
-- \inst2|Add6~14\ = CARRY(( \reg1[1]~input_o\ ) + ( VCC ) + ( \inst2|Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reg1[1]~input_o\,
	cin => \inst2|Add6~18\,
	sumout => \inst2|Add6~13_sumout\,
	cout => \inst2|Add6~14\);

-- Location: MLABCELL_X78_Y7_N36
\inst2|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add6~9_sumout\ = SUM(( \reg1[2]~input_o\ ) + ( VCC ) + ( \inst2|Add6~14\ ))
-- \inst2|Add6~10\ = CARRY(( \reg1[2]~input_o\ ) + ( VCC ) + ( \inst2|Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reg1[2]~input_o\,
	cin => \inst2|Add6~14\,
	sumout => \inst2|Add6~9_sumout\,
	cout => \inst2|Add6~10\);

-- Location: MLABCELL_X78_Y7_N39
\inst2|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add6~5_sumout\ = SUM(( \reg1[3]~input_o\ ) + ( VCC ) + ( \inst2|Add6~10\ ))
-- \inst2|Add6~6\ = CARRY(( \reg1[3]~input_o\ ) + ( VCC ) + ( \inst2|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg1[3]~input_o\,
	cin => \inst2|Add6~10\,
	sumout => \inst2|Add6~5_sumout\,
	cout => \inst2|Add6~6\);

-- Location: MLABCELL_X78_Y7_N42
\inst2|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add6~1_sumout\ = SUM(( \reg1[4]~input_o\ ) + ( VCC ) + ( \inst2|Add6~6\ ))
-- \inst2|Add6~2\ = CARRY(( \reg1[4]~input_o\ ) + ( VCC ) + ( \inst2|Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reg1[4]~input_o\,
	cin => \inst2|Add6~6\,
	sumout => \inst2|Add6~1_sumout\,
	cout => \inst2|Add6~2\);

-- Location: MLABCELL_X78_Y7_N45
\inst2|Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add6~29_sumout\ = SUM(( \reg1[5]~input_o\ ) + ( VCC ) + ( \inst2|Add6~2\ ))
-- \inst2|Add6~30\ = CARRY(( \reg1[5]~input_o\ ) + ( VCC ) + ( \inst2|Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reg1[5]~input_o\,
	cin => \inst2|Add6~2\,
	sumout => \inst2|Add6~29_sumout\,
	cout => \inst2|Add6~30\);

-- Location: IOIBUF_X76_Y0_N18
\reg1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg1(6),
	o => \reg1[6]~input_o\);

-- Location: MLABCELL_X78_Y7_N48
\inst2|Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add6~25_sumout\ = SUM(( \reg1[6]~input_o\ ) + ( VCC ) + ( \inst2|Add6~30\ ))
-- \inst2|Add6~26\ = CARRY(( \reg1[6]~input_o\ ) + ( VCC ) + ( \inst2|Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reg1[6]~input_o\,
	cin => \inst2|Add6~30\,
	sumout => \inst2|Add6~25_sumout\,
	cout => \inst2|Add6~26\);

-- Location: LABCELL_X81_Y7_N45
\inst2|Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add7~21_sumout\ = SUM(( \inst2|s_countCentroid[5]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add7~18\ ))
-- \inst2|Add7~22\ = CARRY(( \inst2|s_countCentroid[5]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countCentroid[5]~_Duplicate_1_q\,
	cin => \inst2|Add7~18\,
	sumout => \inst2|Add7~21_sumout\,
	cout => \inst2|Add7~22\);

-- Location: LABCELL_X81_Y7_N48
\inst2|Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add7~25_sumout\ = SUM(( \inst2|s_countCentroid[6]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add7~22\ ))
-- \inst2|Add7~26\ = CARRY(( \inst2|s_countCentroid[6]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_s_countCentroid[6]~_Duplicate_1_q\,
	cin => \inst2|Add7~22\,
	sumout => \inst2|Add7~25_sumout\,
	cout => \inst2|Add7~26\);

-- Location: LABCELL_X81_Y7_N6
\inst2|s_countCentroid[6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[6]~SCLR_LUT_combout\ = (\inst2|state.ENDCENTROIDS~q\ & \inst2|Add7~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	datac => \inst2|ALT_INV_Add7~25_sumout\,
	combout => \inst2|s_countCentroid[6]~SCLR_LUT_combout\);

-- Location: FF_X81_Y7_N8
\inst2|s_countCentroid[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countCentroid[6]~SCLR_LUT_combout\,
	ena => \inst2|s_countCentroid[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countCentroid[6]~_Duplicate_1_q\);

-- Location: LABCELL_X81_Y7_N51
\inst2|Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add7~29_sumout\ = SUM(( \inst2|s_countCentroid[7]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add7~26\ ))
-- \inst2|Add7~30\ = CARRY(( \inst2|s_countCentroid[7]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countCentroid[7]~_Duplicate_1_q\,
	cin => \inst2|Add7~26\,
	sumout => \inst2|Add7~29_sumout\,
	cout => \inst2|Add7~30\);

-- Location: LABCELL_X81_Y7_N9
\inst2|s_countCentroid[7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[7]~SCLR_LUT_combout\ = (\inst2|state.ENDCENTROIDS~q\ & \inst2|Add7~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	datad => \inst2|ALT_INV_Add7~29_sumout\,
	combout => \inst2|s_countCentroid[7]~SCLR_LUT_combout\);

-- Location: FF_X81_Y7_N11
\inst2|s_countCentroid[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countCentroid[7]~SCLR_LUT_combout\,
	ena => \inst2|s_countCentroid[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countCentroid[7]~_Duplicate_1_q\);

-- Location: IOIBUF_X64_Y0_N35
\reg1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg1(7),
	o => \reg1[7]~input_o\);

-- Location: MLABCELL_X78_Y7_N51
\inst2|Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add6~21_sumout\ = SUM(( \reg1[7]~input_o\ ) + ( VCC ) + ( \inst2|Add6~26\ ))
-- \inst2|Add6~22\ = CARRY(( \reg1[7]~input_o\ ) + ( VCC ) + ( \inst2|Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reg1[7]~input_o\,
	cin => \inst2|Add6~26\,
	sumout => \inst2|Add6~21_sumout\,
	cout => \inst2|Add6~22\);

-- Location: LABCELL_X79_Y7_N0
\inst2|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~4_combout\ = ( \inst2|s_countCentroid[7]~_Duplicate_1_q\ & ( \inst2|Add6~21_sumout\ & ( (!\inst2|Add6~25_sumout\ & (\inst2|Add6~29_sumout\ & (!\inst2|s_countCentroid[5]~_Duplicate_1_q\ & !\inst2|s_countCentroid[6]~_Duplicate_1_q\))) # 
-- (\inst2|Add6~25_sumout\ & ((!\inst2|s_countCentroid[6]~_Duplicate_1_q\) # ((\inst2|Add6~29_sumout\ & !\inst2|s_countCentroid[5]~_Duplicate_1_q\)))) ) ) ) # ( !\inst2|s_countCentroid[7]~_Duplicate_1_q\ & ( \inst2|Add6~21_sumout\ ) ) # ( 
-- !\inst2|s_countCentroid[7]~_Duplicate_1_q\ & ( !\inst2|Add6~21_sumout\ & ( (!\inst2|Add6~25_sumout\ & (\inst2|Add6~29_sumout\ & (!\inst2|s_countCentroid[5]~_Duplicate_1_q\ & !\inst2|s_countCentroid[6]~_Duplicate_1_q\))) # (\inst2|Add6~25_sumout\ & 
-- ((!\inst2|s_countCentroid[6]~_Duplicate_1_q\) # ((\inst2|Add6~29_sumout\ & !\inst2|s_countCentroid[5]~_Duplicate_1_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100010000000000000000000011111111111111110111001100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add6~29_sumout\,
	datab => \inst2|ALT_INV_Add6~25_sumout\,
	datac => \inst2|ALT_INV_s_countCentroid[5]~_Duplicate_1_q\,
	datad => \inst2|ALT_INV_s_countCentroid[6]~_Duplicate_1_q\,
	datae => \inst2|ALT_INV_s_countCentroid[7]~_Duplicate_1_q\,
	dataf => \inst2|ALT_INV_Add6~21_sumout\,
	combout => \inst2|LessThan3~4_combout\);

-- Location: LABCELL_X79_Y7_N12
\inst2|LessThan3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~7_combout\ = ( \inst2|s_countCentroid[4]~_Duplicate_1_q\ & ( (\inst2|Add6~1_sumout\ & (!\inst2|s_countCentroid[3]~_Duplicate_1_q\ $ (\inst2|Add6~5_sumout\))) ) ) # ( !\inst2|s_countCentroid[4]~_Duplicate_1_q\ & ( (!\inst2|Add6~1_sumout\ & 
-- (!\inst2|s_countCentroid[3]~_Duplicate_1_q\ $ (\inst2|Add6~5_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100001000010010000110000100100001000010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_s_countCentroid[3]~_Duplicate_1_q\,
	datab => \inst2|ALT_INV_Add6~1_sumout\,
	datac => \inst2|ALT_INV_Add6~5_sumout\,
	datae => \inst2|ALT_INV_s_countCentroid[4]~_Duplicate_1_q\,
	combout => \inst2|LessThan3~7_combout\);

-- Location: LABCELL_X79_Y7_N30
\inst2|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~3_combout\ = ( \inst2|s_countCentroid[7]~_Duplicate_1_q\ & ( \inst2|Add6~21_sumout\ & ( (!\inst2|Add6~29_sumout\ & (!\inst2|s_countCentroid[5]~_Duplicate_1_q\ & (!\inst2|Add6~25_sumout\ $ (\inst2|s_countCentroid[6]~_Duplicate_1_q\)))) # 
-- (\inst2|Add6~29_sumout\ & (\inst2|s_countCentroid[5]~_Duplicate_1_q\ & (!\inst2|Add6~25_sumout\ $ (\inst2|s_countCentroid[6]~_Duplicate_1_q\)))) ) ) ) # ( !\inst2|s_countCentroid[7]~_Duplicate_1_q\ & ( !\inst2|Add6~21_sumout\ & ( (!\inst2|Add6~29_sumout\ 
-- & (!\inst2|s_countCentroid[5]~_Duplicate_1_q\ & (!\inst2|Add6~25_sumout\ $ (\inst2|s_countCentroid[6]~_Duplicate_1_q\)))) # (\inst2|Add6~29_sumout\ & (\inst2|s_countCentroid[5]~_Duplicate_1_q\ & (!\inst2|Add6~25_sumout\ $ 
-- (\inst2|s_countCentroid[6]~_Duplicate_1_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add6~29_sumout\,
	datab => \inst2|ALT_INV_Add6~25_sumout\,
	datac => \inst2|ALT_INV_s_countCentroid[5]~_Duplicate_1_q\,
	datad => \inst2|ALT_INV_s_countCentroid[6]~_Duplicate_1_q\,
	datae => \inst2|ALT_INV_s_countCentroid[7]~_Duplicate_1_q\,
	dataf => \inst2|ALT_INV_Add6~21_sumout\,
	combout => \inst2|LessThan3~3_combout\);

-- Location: LABCELL_X79_Y7_N9
\inst2|LessThan3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~8_combout\ = ( \inst2|s_countCentroid[3]~_Duplicate_1_q\ & ( (\inst2|Add6~1_sumout\ & !\inst2|s_countCentroid[4]~_Duplicate_1_q\) ) ) # ( !\inst2|s_countCentroid[3]~_Duplicate_1_q\ & ( (!\inst2|Add6~5_sumout\ & (\inst2|Add6~1_sumout\ & 
-- !\inst2|s_countCentroid[4]~_Duplicate_1_q\)) # (\inst2|Add6~5_sumout\ & ((!\inst2|s_countCentroid[4]~_Duplicate_1_q\) # (\inst2|Add6~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000101010111110000010100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add6~5_sumout\,
	datac => \inst2|ALT_INV_Add6~1_sumout\,
	datad => \inst2|ALT_INV_s_countCentroid[4]~_Duplicate_1_q\,
	dataf => \inst2|ALT_INV_s_countCentroid[3]~_Duplicate_1_q\,
	combout => \inst2|LessThan3~8_combout\);

-- Location: MLABCELL_X78_Y7_N12
\inst2|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~0_combout\ = ( \inst2|s_countCentroid[0]~_Duplicate_1_q\ & ( \inst2|s_countCentroid[2]~_Duplicate_1_q\ & ( (\inst2|Add6~13_sumout\ & (\inst2|Add6~9_sumout\ & !\inst2|s_countCentroid[1]~_Duplicate_1_q\)) ) ) ) # ( 
-- !\inst2|s_countCentroid[0]~_Duplicate_1_q\ & ( \inst2|s_countCentroid[2]~_Duplicate_1_q\ & ( (\inst2|Add6~9_sumout\ & ((!\inst2|Add6~13_sumout\ & (\inst2|Add6~17_sumout\ & !\inst2|s_countCentroid[1]~_Duplicate_1_q\)) # (\inst2|Add6~13_sumout\ & 
-- ((!\inst2|s_countCentroid[1]~_Duplicate_1_q\) # (\inst2|Add6~17_sumout\))))) ) ) ) # ( \inst2|s_countCentroid[0]~_Duplicate_1_q\ & ( !\inst2|s_countCentroid[2]~_Duplicate_1_q\ & ( (\inst2|Add6~13_sumout\ & (!\inst2|Add6~9_sumout\ & 
-- !\inst2|s_countCentroid[1]~_Duplicate_1_q\)) ) ) ) # ( !\inst2|s_countCentroid[0]~_Duplicate_1_q\ & ( !\inst2|s_countCentroid[2]~_Duplicate_1_q\ & ( (!\inst2|Add6~9_sumout\ & ((!\inst2|Add6~13_sumout\ & (\inst2|Add6~17_sumout\ & 
-- !\inst2|s_countCentroid[1]~_Duplicate_1_q\)) # (\inst2|Add6~13_sumout\ & ((!\inst2|s_countCentroid[1]~_Duplicate_1_q\) # (\inst2|Add6~17_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000010000010100000000000000000111000000010000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add6~13_sumout\,
	datab => \inst2|ALT_INV_Add6~17_sumout\,
	datac => \inst2|ALT_INV_Add6~9_sumout\,
	datad => \inst2|ALT_INV_s_countCentroid[1]~_Duplicate_1_q\,
	datae => \inst2|ALT_INV_s_countCentroid[0]~_Duplicate_1_q\,
	dataf => \inst2|ALT_INV_s_countCentroid[2]~_Duplicate_1_q\,
	combout => \inst2|LessThan3~0_combout\);

-- Location: LABCELL_X79_Y7_N6
\inst2|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~1_combout\ = ( !\inst2|s_countCentroid[2]~_Duplicate_1_q\ & ( \inst2|Add6~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add6~9_sumout\,
	dataf => \inst2|ALT_INV_s_countCentroid[2]~_Duplicate_1_q\,
	combout => \inst2|LessThan3~1_combout\);

-- Location: LABCELL_X79_Y7_N42
\inst2|LessThan3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~9_combout\ = ( \inst2|LessThan3~0_combout\ & ( \inst2|LessThan3~1_combout\ & ( (!\inst2|LessThan3~4_combout\ & ((!\inst2|LessThan3~3_combout\) # ((!\inst2|LessThan3~7_combout\ & !\inst2|LessThan3~8_combout\)))) ) ) ) # ( 
-- !\inst2|LessThan3~0_combout\ & ( \inst2|LessThan3~1_combout\ & ( (!\inst2|LessThan3~4_combout\ & ((!\inst2|LessThan3~3_combout\) # ((!\inst2|LessThan3~7_combout\ & !\inst2|LessThan3~8_combout\)))) ) ) ) # ( \inst2|LessThan3~0_combout\ & ( 
-- !\inst2|LessThan3~1_combout\ & ( (!\inst2|LessThan3~4_combout\ & ((!\inst2|LessThan3~3_combout\) # ((!\inst2|LessThan3~7_combout\ & !\inst2|LessThan3~8_combout\)))) ) ) ) # ( !\inst2|LessThan3~0_combout\ & ( !\inst2|LessThan3~1_combout\ & ( 
-- (!\inst2|LessThan3~4_combout\ & ((!\inst2|LessThan3~3_combout\) # (!\inst2|LessThan3~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010001010000010101000101000001010100010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_LessThan3~4_combout\,
	datab => \inst2|ALT_INV_LessThan3~7_combout\,
	datac => \inst2|ALT_INV_LessThan3~3_combout\,
	datad => \inst2|ALT_INV_LessThan3~8_combout\,
	datae => \inst2|ALT_INV_LessThan3~0_combout\,
	dataf => \inst2|ALT_INV_LessThan3~1_combout\,
	combout => \inst2|LessThan3~9_combout\);

-- Location: IOIBUF_X89_Y15_N4
\reg1[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg1(9),
	o => \reg1[9]~input_o\);

-- Location: IOIBUF_X76_Y0_N35
\reg1[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg1(8),
	o => \reg1[8]~input_o\);

-- Location: MLABCELL_X78_Y7_N54
\inst2|Add6~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add6~37_sumout\ = SUM(( \reg1[8]~input_o\ ) + ( VCC ) + ( \inst2|Add6~22\ ))
-- \inst2|Add6~38\ = CARRY(( \reg1[8]~input_o\ ) + ( VCC ) + ( \inst2|Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reg1[8]~input_o\,
	cin => \inst2|Add6~22\,
	sumout => \inst2|Add6~37_sumout\,
	cout => \inst2|Add6~38\);

-- Location: MLABCELL_X78_Y7_N57
\inst2|Add6~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add6~33_sumout\ = SUM(( \reg1[9]~input_o\ ) + ( VCC ) + ( \inst2|Add6~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg1[9]~input_o\,
	cin => \inst2|Add6~38\,
	sumout => \inst2|Add6~33_sumout\);

-- Location: LABCELL_X81_Y7_N54
\inst2|Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add7~33_sumout\ = SUM(( \inst2|s_countCentroid[8]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add7~30\ ))
-- \inst2|Add7~34\ = CARRY(( \inst2|s_countCentroid[8]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countCentroid[8]~_Duplicate_1_q\,
	cin => \inst2|Add7~30\,
	sumout => \inst2|Add7~33_sumout\,
	cout => \inst2|Add7~34\);

-- Location: LABCELL_X81_Y7_N24
\inst2|s_countCentroid[8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[8]~SCLR_LUT_combout\ = (\inst2|state.ENDCENTROIDS~q\ & \inst2|Add7~33_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	datac => \inst2|ALT_INV_Add7~33_sumout\,
	combout => \inst2|s_countCentroid[8]~SCLR_LUT_combout\);

-- Location: FF_X81_Y7_N26
\inst2|s_countCentroid[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countCentroid[8]~SCLR_LUT_combout\,
	ena => \inst2|s_countCentroid[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countCentroid[8]~_Duplicate_1_q\);

-- Location: LABCELL_X81_Y7_N57
\inst2|Add7~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add7~37_sumout\ = SUM(( \inst2|s_countCentroid[9]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_s_countCentroid[9]~_Duplicate_1_q\,
	cin => \inst2|Add7~34\,
	sumout => \inst2|Add7~37_sumout\);

-- Location: LABCELL_X81_Y7_N27
\inst2|s_countCentroid[9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[9]~SCLR_LUT_combout\ = ( \inst2|Add7~37_sumout\ & ( \inst2|state.ENDCENTROIDS~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	dataf => \inst2|ALT_INV_Add7~37_sumout\,
	combout => \inst2|s_countCentroid[9]~SCLR_LUT_combout\);

-- Location: FF_X81_Y7_N29
\inst2|s_countCentroid[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countCentroid[9]~SCLR_LUT_combout\,
	ena => \inst2|s_countCentroid[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countCentroid[9]~_Duplicate_1_q\);

-- Location: MLABCELL_X82_Y7_N27
\inst2|LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~5_combout\ = ( \inst2|s_countCentroid[9]~_Duplicate_1_q\ & ( (\inst2|Add6~33_sumout\ & (!\inst2|Add6~37_sumout\ $ (\inst2|s_countCentroid[8]~_Duplicate_1_q\))) ) ) # ( !\inst2|s_countCentroid[9]~_Duplicate_1_q\ & ( 
-- (!\inst2|Add6~33_sumout\ & (!\inst2|Add6~37_sumout\ $ (\inst2|s_countCentroid[8]~_Duplicate_1_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add6~33_sumout\,
	datac => \inst2|ALT_INV_Add6~37_sumout\,
	datad => \inst2|ALT_INV_s_countCentroid[8]~_Duplicate_1_q\,
	dataf => \inst2|ALT_INV_s_countCentroid[9]~_Duplicate_1_q\,
	combout => \inst2|LessThan3~5_combout\);

-- Location: MLABCELL_X82_Y7_N18
\inst2|LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~6_combout\ = ( \inst2|s_countCentroid[9]~_Duplicate_1_q\ & ( (\inst2|Add6~37_sumout\ & (\inst2|Add6~33_sumout\ & !\inst2|s_countCentroid[8]~_Duplicate_1_q\)) ) ) # ( !\inst2|s_countCentroid[9]~_Duplicate_1_q\ & ( ((\inst2|Add6~37_sumout\ 
-- & !\inst2|s_countCentroid[8]~_Duplicate_1_q\)) # (\inst2|Add6~33_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001111001111110000111100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_Add6~37_sumout\,
	datac => \inst2|ALT_INV_Add6~33_sumout\,
	datad => \inst2|ALT_INV_s_countCentroid[8]~_Duplicate_1_q\,
	dataf => \inst2|ALT_INV_s_countCentroid[9]~_Duplicate_1_q\,
	combout => \inst2|LessThan3~6_combout\);

-- Location: IOIBUF_X82_Y0_N92
\en_KmodesControlCalcMap~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_KmodesControlCalcMap,
	o => \en_KmodesControlCalcMap~input_o\);

-- Location: IOIBUF_X82_Y0_N75
\nrst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nrst,
	o => \nrst~input_o\);

-- Location: LABCELL_X88_Y7_N0
\inst2|state_fut.RESET~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|state_fut.RESET~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \inst2|state_fut.RESET~feeder_combout\);

-- Location: FF_X88_Y7_N1
\inst2|state_fut.RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|state_fut.RESET~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state_fut.RESET~q\);

-- Location: MLABCELL_X82_Y7_N45
\inst2|LessThan1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~9_combout\ = (!\reg1[8]~input_o\ & (!\inst2|s_countCentroid[8]~_Duplicate_1_q\ & (!\inst2|s_countCentroid[9]~_Duplicate_1_q\ $ (\reg1[9]~input_o\)))) # (\reg1[8]~input_o\ & (\inst2|s_countCentroid[8]~_Duplicate_1_q\ & 
-- (!\inst2|s_countCentroid[9]~_Duplicate_1_q\ $ (\reg1[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001001000001100000100100000110000010010000011000001001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg1[8]~input_o\,
	datab => \inst2|ALT_INV_s_countCentroid[9]~_Duplicate_1_q\,
	datac => \ALT_INV_reg1[9]~input_o\,
	datad => \inst2|ALT_INV_s_countCentroid[8]~_Duplicate_1_q\,
	combout => \inst2|LessThan1~9_combout\);

-- Location: MLABCELL_X82_Y7_N48
\inst2|LessThan1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~10_combout\ = ( \reg1[9]~input_o\ & ( \inst2|s_countCentroid[9]~_Duplicate_1_q\ & ( (\reg1[8]~input_o\ & !\inst2|s_countCentroid[8]~_Duplicate_1_q\) ) ) ) # ( \reg1[9]~input_o\ & ( !\inst2|s_countCentroid[9]~_Duplicate_1_q\ ) ) # ( 
-- !\reg1[9]~input_o\ & ( !\inst2|s_countCentroid[9]~_Duplicate_1_q\ & ( (\reg1[8]~input_o\ & !\inst2|s_countCentroid[8]~_Duplicate_1_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111111111111111100000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg1[8]~input_o\,
	datac => \inst2|ALT_INV_s_countCentroid[8]~_Duplicate_1_q\,
	datae => \ALT_INV_reg1[9]~input_o\,
	dataf => \inst2|ALT_INV_s_countCentroid[9]~_Duplicate_1_q\,
	combout => \inst2|LessThan1~10_combout\);

-- Location: MLABCELL_X78_Y7_N27
\inst2|LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~4_combout\ = ( \inst2|s_countCentroid[2]~_Duplicate_1_q\ & ( (\reg1[2]~input_o\ & (!\reg1[3]~input_o\ $ (\inst2|s_countCentroid[3]~_Duplicate_1_q\))) ) ) # ( !\inst2|s_countCentroid[2]~_Duplicate_1_q\ & ( (!\reg1[2]~input_o\ & 
-- (!\reg1[3]~input_o\ $ (\inst2|s_countCentroid[3]~_Duplicate_1_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg1[3]~input_o\,
	datac => \ALT_INV_reg1[2]~input_o\,
	datad => \inst2|ALT_INV_s_countCentroid[3]~_Duplicate_1_q\,
	dataf => \inst2|ALT_INV_s_countCentroid[2]~_Duplicate_1_q\,
	combout => \inst2|LessThan1~4_combout\);

-- Location: LABCELL_X79_Y7_N48
\inst2|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~2_combout\ = !\inst2|s_countCentroid[4]~_Duplicate_1_q\ $ (!\reg1[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countCentroid[4]~_Duplicate_1_q\,
	datad => \ALT_INV_reg1[4]~input_o\,
	combout => \inst2|LessThan1~2_combout\);

-- Location: LABCELL_X79_Y7_N57
\inst2|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~0_combout\ = ( \inst2|s_countCentroid[7]~_Duplicate_1_q\ & ( (\reg1[7]~input_o\ & (!\reg1[6]~input_o\ $ (\inst2|s_countCentroid[6]~_Duplicate_1_q\))) ) ) # ( !\inst2|s_countCentroid[7]~_Duplicate_1_q\ & ( (!\reg1[7]~input_o\ & 
-- (!\reg1[6]~input_o\ $ (\inst2|s_countCentroid[6]~_Duplicate_1_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100001000010010000110000100100001000010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg1[6]~input_o\,
	datab => \ALT_INV_reg1[7]~input_o\,
	datac => \inst2|ALT_INV_s_countCentroid[6]~_Duplicate_1_q\,
	datae => \inst2|ALT_INV_s_countCentroid[7]~_Duplicate_1_q\,
	combout => \inst2|LessThan1~0_combout\);

-- Location: MLABCELL_X78_Y7_N18
\inst2|LessThan1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~5_combout\ = ( \inst2|s_countCentroid[2]~_Duplicate_1_q\ & ( (\reg1[3]~input_o\ & !\inst2|s_countCentroid[3]~_Duplicate_1_q\) ) ) # ( !\inst2|s_countCentroid[2]~_Duplicate_1_q\ & ( (!\reg1[3]~input_o\ & (\reg1[2]~input_o\ & 
-- !\inst2|s_countCentroid[3]~_Duplicate_1_q\)) # (\reg1[3]~input_o\ & ((!\inst2|s_countCentroid[3]~_Duplicate_1_q\) # (\reg1[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg1[3]~input_o\,
	datab => \ALT_INV_reg1[2]~input_o\,
	datac => \inst2|ALT_INV_s_countCentroid[3]~_Duplicate_1_q\,
	dataf => \inst2|ALT_INV_s_countCentroid[2]~_Duplicate_1_q\,
	combout => \inst2|LessThan1~5_combout\);

-- Location: MLABCELL_X78_Y7_N21
\inst2|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~1_combout\ = !\reg1[5]~input_o\ $ (!\inst2|s_countCentroid[5]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reg1[5]~input_o\,
	datad => \inst2|ALT_INV_s_countCentroid[5]~_Duplicate_1_q\,
	combout => \inst2|LessThan1~1_combout\);

-- Location: MLABCELL_X78_Y7_N24
\inst2|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~3_combout\ = ( \inst2|s_countCentroid[1]~_Duplicate_1_q\ & ( (\reg1[1]~input_o\ & (!\inst2|s_countCentroid[0]~_Duplicate_1_q\ & \reg1[0]~input_o\)) ) ) # ( !\inst2|s_countCentroid[1]~_Duplicate_1_q\ & ( 
-- ((!\inst2|s_countCentroid[0]~_Duplicate_1_q\ & \reg1[0]~input_o\)) # (\reg1[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110011001100111111001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reg1[1]~input_o\,
	datac => \inst2|ALT_INV_s_countCentroid[0]~_Duplicate_1_q\,
	datad => \ALT_INV_reg1[0]~input_o\,
	dataf => \inst2|ALT_INV_s_countCentroid[1]~_Duplicate_1_q\,
	combout => \inst2|LessThan1~3_combout\);

-- Location: MLABCELL_X78_Y7_N9
\inst2|LessThan1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~6_combout\ = ( !\inst2|LessThan1~1_combout\ & ( \inst2|LessThan1~3_combout\ & ( (!\inst2|LessThan1~2_combout\ & (\inst2|LessThan1~0_combout\ & ((\inst2|LessThan1~5_combout\) # (\inst2|LessThan1~4_combout\)))) ) ) ) # ( 
-- !\inst2|LessThan1~1_combout\ & ( !\inst2|LessThan1~3_combout\ & ( (!\inst2|LessThan1~2_combout\ & (\inst2|LessThan1~0_combout\ & \inst2|LessThan1~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000000000000100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_LessThan1~4_combout\,
	datab => \inst2|ALT_INV_LessThan1~2_combout\,
	datac => \inst2|ALT_INV_LessThan1~0_combout\,
	datad => \inst2|ALT_INV_LessThan1~5_combout\,
	datae => \inst2|ALT_INV_LessThan1~1_combout\,
	dataf => \inst2|ALT_INV_LessThan1~3_combout\,
	combout => \inst2|LessThan1~6_combout\);

-- Location: MLABCELL_X82_Y7_N21
\inst2|state.WAITCALCDISTANCE~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|state.WAITCALCDISTANCE~1_combout\ = ( \inst2|state.WAITCALCDISTANCE~1_combout\ & ( \nrst~input_o\ ) ) # ( !\inst2|state.WAITCALCDISTANCE~1_combout\ & ( (\nrst~input_o\ & \inst2|state.RESET~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nrst~input_o\,
	datac => \inst2|ALT_INV_state.RESET~5_combout\,
	dataf => \inst2|ALT_INV_state.WAITCALCDISTANCE~1_combout\,
	combout => \inst2|state.WAITCALCDISTANCE~1_combout\);

-- Location: MLABCELL_X82_Y7_N42
\inst2|state.WAITCALCDISTANCE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|state.WAITCALCDISTANCE~0_combout\ = ( \inst2|state.RESET~5_combout\ ) # ( !\inst2|state.RESET~5_combout\ & ( !\nrst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_nrst~input_o\,
	dataf => \inst2|ALT_INV_state.RESET~5_combout\,
	combout => \inst2|state.WAITCALCDISTANCE~0_combout\);

-- Location: FF_X82_Y7_N43
\inst2|state.WAITCALCDISTANCE~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|state.WAITCALCDISTANCE~1_combout\,
	clrn => \inst2|ALT_INV_state.WAITCALCDISTANCE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.WAITCALCDISTANCE~_emulated_q\);

-- Location: LABCELL_X83_Y7_N3
\inst2|state.WAITCALCDISTANCE~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|state.WAITCALCDISTANCE~2_combout\ = ( \inst2|state.RESET~5_combout\ & ( \nrst~input_o\ ) ) # ( !\inst2|state.RESET~5_combout\ & ( (\nrst~input_o\ & (!\inst2|state.WAITCALCDISTANCE~1_combout\ $ (!\inst2|state.WAITCALCDISTANCE~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.WAITCALCDISTANCE~1_combout\,
	datac => \ALT_INV_nrst~input_o\,
	datad => \inst2|ALT_INV_state.WAITCALCDISTANCE~_emulated_q\,
	dataf => \inst2|ALT_INV_state.RESET~5_combout\,
	combout => \inst2|state.WAITCALCDISTANCE~2_combout\);

-- Location: MLABCELL_X82_Y6_N51
\inst2|state_fut.VERIFYDIMENSION~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|state_fut.VERIFYDIMENSION~feeder_combout\ = ( \inst2|state.WAITCALCDISTANCE~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_state.WAITCALCDISTANCE~2_combout\,
	combout => \inst2|state_fut.VERIFYDIMENSION~feeder_combout\);

-- Location: FF_X82_Y6_N53
\inst2|state_fut.VERIFYDIMENSION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|state_fut.VERIFYDIMENSION~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state_fut.VERIFYDIMENSION~q\);

-- Location: LABCELL_X83_Y7_N48
\inst2|state.IDLE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|state.IDLE~0_combout\ = ( \inst|s_endDistanceMatch~q\ ) # ( !\inst|s_endDistanceMatch~q\ & ( !\nrst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_nrst~input_o\,
	dataf => \inst|ALT_INV_s_endDistanceMatch~q\,
	combout => \inst2|state.IDLE~0_combout\);

-- Location: FF_X84_Y6_N2
\inst2|state.VERIFYDIMENSION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|state_fut.VERIFYDIMENSION~q\,
	clrn => \inst2|ALT_INV_state.IDLE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.VERIFYDIMENSION~q\);

-- Location: MLABCELL_X84_Y7_N3
\inst2|s_countDimensions[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[5]~0_combout\ = ( \inst2|state.VERIFYDIMENSION~q\ & ( \inst2|state.ENDCENTROIDS~q\ ) ) # ( !\inst2|state.VERIFYDIMENSION~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	dataf => \inst2|ALT_INV_state.VERIFYDIMENSION~q\,
	combout => \inst2|s_countDimensions[5]~0_combout\);

-- Location: LABCELL_X85_Y7_N0
\inst2|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add5~1_sumout\ = SUM(( \inst2|s_countDimensions[0]~_Duplicate_1_q\ ) + ( VCC ) + ( !VCC ))
-- \inst2|Add5~2\ = CARRY(( \inst2|s_countDimensions[0]~_Duplicate_1_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDimensions[0]~_Duplicate_1_q\,
	cin => GND,
	sumout => \inst2|Add5~1_sumout\,
	cout => \inst2|Add5~2\);

-- Location: MLABCELL_X84_Y7_N6
\inst2|s_countDimensions[0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[0]~SCLR_LUT_combout\ = (\inst2|Add5~1_sumout\ & !\inst2|s_countDimensions[5]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add5~1_sumout\,
	datad => \inst2|ALT_INV_s_countDimensions[5]~0_combout\,
	combout => \inst2|s_countDimensions[0]~SCLR_LUT_combout\);

-- Location: IOIBUF_X89_Y8_N21
\reg8[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg8(1),
	o => \reg8[1]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\reg8[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg8(0),
	o => \reg8[0]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\reg8[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg8(2),
	o => \reg8[2]~input_o\);

-- Location: MLABCELL_X87_Y8_N24
\inst2|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~0_combout\ = ( \inst2|s_countDimensions[1]~_Duplicate_1_q\ & ( \inst2|s_countDimensions[0]~_Duplicate_1_q\ & ( (!\inst2|s_countDimensions[2]~_Duplicate_1_q\ & \reg8[2]~input_o\) ) ) ) # ( !\inst2|s_countDimensions[1]~_Duplicate_1_q\ & ( 
-- \inst2|s_countDimensions[0]~_Duplicate_1_q\ & ( (!\reg8[1]~input_o\ & (!\inst2|s_countDimensions[2]~_Duplicate_1_q\ & \reg8[2]~input_o\)) # (\reg8[1]~input_o\ & ((!\inst2|s_countDimensions[2]~_Duplicate_1_q\) # (\reg8[2]~input_o\))) ) ) ) # ( 
-- \inst2|s_countDimensions[1]~_Duplicate_1_q\ & ( !\inst2|s_countDimensions[0]~_Duplicate_1_q\ & ( (!\inst2|s_countDimensions[2]~_Duplicate_1_q\ & (((\reg8[1]~input_o\ & \reg8[0]~input_o\)) # (\reg8[2]~input_o\))) # 
-- (\inst2|s_countDimensions[2]~_Duplicate_1_q\ & (\reg8[1]~input_o\ & (\reg8[0]~input_o\ & \reg8[2]~input_o\))) ) ) ) # ( !\inst2|s_countDimensions[1]~_Duplicate_1_q\ & ( !\inst2|s_countDimensions[0]~_Duplicate_1_q\ & ( 
-- (!\inst2|s_countDimensions[2]~_Duplicate_1_q\ & (((\reg8[2]~input_o\) # (\reg8[0]~input_o\)) # (\reg8[1]~input_o\))) # (\inst2|s_countDimensions[2]~_Duplicate_1_q\ & (\reg8[2]~input_o\ & ((\reg8[0]~input_o\) # (\reg8[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011110111000100001111000101010000111101010000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg8[1]~input_o\,
	datab => \ALT_INV_reg8[0]~input_o\,
	datac => \inst2|ALT_INV_s_countDimensions[2]~_Duplicate_1_q\,
	datad => \ALT_INV_reg8[2]~input_o\,
	datae => \inst2|ALT_INV_s_countDimensions[1]~_Duplicate_1_q\,
	dataf => \inst2|ALT_INV_s_countDimensions[0]~_Duplicate_1_q\,
	combout => \inst2|LessThan2~0_combout\);

-- Location: LABCELL_X85_Y7_N24
\inst2|Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add5~33_sumout\ = SUM(( \inst2|s_countDimensions[8]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~30\ ))
-- \inst2|Add5~34\ = CARRY(( \inst2|s_countDimensions[8]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_s_countDimensions[8]~_Duplicate_1_q\,
	cin => \inst2|Add5~30\,
	sumout => \inst2|Add5~33_sumout\,
	cout => \inst2|Add5~34\);

-- Location: LABCELL_X85_Y7_N27
\inst2|Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add5~37_sumout\ = SUM(( \inst2|s_countDimensions[9]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~34\ ))
-- \inst2|Add5~38\ = CARRY(( \inst2|s_countDimensions[9]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_s_countDimensions[9]~_Duplicate_1_q\,
	cin => \inst2|Add5~34\,
	sumout => \inst2|Add5~37_sumout\,
	cout => \inst2|Add5~38\);

-- Location: MLABCELL_X84_Y7_N36
\inst2|s_countDimensions[9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[9]~SCLR_LUT_combout\ = (!\inst2|s_countDimensions[5]~0_combout\ & \inst2|Add5~37_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_s_countDimensions[5]~0_combout\,
	datac => \inst2|ALT_INV_Add5~37_sumout\,
	combout => \inst2|s_countDimensions[9]~SCLR_LUT_combout\);

-- Location: FF_X84_Y7_N38
\inst2|s_countDimensions[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countDimensions[9]~SCLR_LUT_combout\,
	ena => \inst2|s_countDimensions[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions[9]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y7_N30
\inst2|Add5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add5~41_sumout\ = SUM(( \inst2|s_countDimensions[10]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~38\ ))
-- \inst2|Add5~42\ = CARRY(( \inst2|s_countDimensions[10]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDimensions[10]~_Duplicate_1_q\,
	cin => \inst2|Add5~38\,
	sumout => \inst2|Add5~41_sumout\,
	cout => \inst2|Add5~42\);

-- Location: LABCELL_X85_Y7_N42
\inst2|s_countDimensions[10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[10]~SCLR_LUT_combout\ = ( !\inst2|s_countDimensions[5]~0_combout\ & ( \inst2|Add5~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_Add5~41_sumout\,
	dataf => \inst2|ALT_INV_s_countDimensions[5]~0_combout\,
	combout => \inst2|s_countDimensions[10]~SCLR_LUT_combout\);

-- Location: FF_X85_Y8_N5
\inst2|s_countDimensions[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_countDimensions[10]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \inst2|s_countDimensions[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions[10]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y7_N33
\inst2|Add5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add5~45_sumout\ = SUM(( \inst2|s_countDimensions[11]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~42\ ))
-- \inst2|Add5~46\ = CARRY(( \inst2|s_countDimensions[11]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDimensions[11]~_Duplicate_1_q\,
	cin => \inst2|Add5~42\,
	sumout => \inst2|Add5~45_sumout\,
	cout => \inst2|Add5~46\);

-- Location: LABCELL_X85_Y7_N57
\inst2|s_countDimensions[11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[11]~SCLR_LUT_combout\ = ( \inst2|Add5~45_sumout\ & ( !\inst2|s_countDimensions[5]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDimensions[5]~0_combout\,
	dataf => \inst2|ALT_INV_Add5~45_sumout\,
	combout => \inst2|s_countDimensions[11]~SCLR_LUT_combout\);

-- Location: FF_X84_Y7_N14
\inst2|s_countDimensions[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_countDimensions[11]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \inst2|s_countDimensions[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions[11]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y7_N36
\inst2|Add5~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add5~49_sumout\ = SUM(( \inst2|s_countDimensions[12]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDimensions[12]~_Duplicate_1_q\,
	cin => \inst2|Add5~46\,
	sumout => \inst2|Add5~49_sumout\);

-- Location: MLABCELL_X84_Y7_N0
\inst2|s_countDimensions[12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[12]~SCLR_LUT_combout\ = ( \inst2|Add5~49_sumout\ & ( !\inst2|s_countDimensions[5]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDimensions[5]~0_combout\,
	dataf => \inst2|ALT_INV_Add5~49_sumout\,
	combout => \inst2|s_countDimensions[12]~SCLR_LUT_combout\);

-- Location: FF_X84_Y7_N2
\inst2|s_countDimensions[12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countDimensions[12]~SCLR_LUT_combout\,
	ena => \inst2|s_countDimensions[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions[12]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y7_N54
\inst2|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~2_combout\ = ( !\inst2|s_countDimensions[9]~_Duplicate_1_q\ & ( (!\inst2|s_countDimensions[10]~_Duplicate_1_q\ & (!\inst2|s_countDimensions[11]~_Duplicate_1_q\ & (!\inst2|s_countDimensions[5]~_Duplicate_1_q\ & 
-- !\inst2|s_countDimensions[12]~_Duplicate_1_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_s_countDimensions[10]~_Duplicate_1_q\,
	datab => \inst2|ALT_INV_s_countDimensions[11]~_Duplicate_1_q\,
	datac => \inst2|ALT_INV_s_countDimensions[5]~_Duplicate_1_q\,
	datad => \inst2|ALT_INV_s_countDimensions[12]~_Duplicate_1_q\,
	dataf => \inst2|ALT_INV_s_countDimensions[9]~_Duplicate_1_q\,
	combout => \inst2|LessThan2~2_combout\);

-- Location: MLABCELL_X84_Y7_N12
\inst2|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~1_combout\ = ( !\inst2|s_countDimensions[4]~_Duplicate_1_q\ & ( (!\inst2|s_countDimensions[6]~_Duplicate_1_q\ & (!\inst2|s_countDimensions[7]~_Duplicate_1_q\ & !\inst2|s_countDimensions[3]~_Duplicate_1_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_s_countDimensions[6]~_Duplicate_1_q\,
	datab => \inst2|ALT_INV_s_countDimensions[7]~_Duplicate_1_q\,
	datac => \inst2|ALT_INV_s_countDimensions[3]~_Duplicate_1_q\,
	dataf => \inst2|ALT_INV_s_countDimensions[4]~_Duplicate_1_q\,
	combout => \inst2|LessThan2~1_combout\);

-- Location: MLABCELL_X84_Y6_N21
\inst2|s_countDimensions[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[5]~1_combout\ = ( \inst2|state.VERIFYDIMENSION~q\ & ( !\inst2|state.IDLE~q\ & ( (!\inst2|s_countDimensions[8]~_Duplicate_1_q\ & (\inst2|LessThan2~0_combout\ & (\inst2|LessThan2~2_combout\ & \inst2|LessThan2~1_combout\))) ) ) ) # ( 
-- !\inst2|state.VERIFYDIMENSION~q\ & ( !\inst2|state.IDLE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_s_countDimensions[8]~_Duplicate_1_q\,
	datab => \inst2|ALT_INV_LessThan2~0_combout\,
	datac => \inst2|ALT_INV_LessThan2~2_combout\,
	datad => \inst2|ALT_INV_LessThan2~1_combout\,
	datae => \inst2|ALT_INV_state.VERIFYDIMENSION~q\,
	dataf => \inst2|ALT_INV_state.IDLE~q\,
	combout => \inst2|s_countDimensions[5]~1_combout\);

-- Location: MLABCELL_X84_Y6_N30
\inst2|state_fut~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|state_fut~14_combout\ = ( \inst2|LessThan2~2_combout\ & ( (\inst2|state.VERIFYDIMENSION~q\ & ((!\inst2|LessThan2~1_combout\) # ((!\inst2|LessThan2~0_combout\) # (\inst2|s_countDimensions[8]~_Duplicate_1_q\)))) ) ) # ( !\inst2|LessThan2~2_combout\ & 
-- ( \inst2|state.VERIFYDIMENSION~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111011110000000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_LessThan2~1_combout\,
	datab => \inst2|ALT_INV_LessThan2~0_combout\,
	datac => \inst2|ALT_INV_s_countDimensions[8]~_Duplicate_1_q\,
	datad => \inst2|ALT_INV_state.VERIFYDIMENSION~q\,
	dataf => \inst2|ALT_INV_LessThan2~2_combout\,
	combout => \inst2|state_fut~14_combout\);

-- Location: FF_X84_Y6_N31
\inst2|state_fut.MINDISTANCE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|state_fut~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state_fut.MINDISTANCE~q\);

-- Location: FF_X83_Y7_N14
\inst2|state.MINDISTANCE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|state_fut.MINDISTANCE~q\,
	clrn => \inst2|ALT_INV_state.IDLE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.MINDISTANCE~q\);

-- Location: MLABCELL_X84_Y7_N9
\inst2|WideOr7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|WideOr7~0_combout\ = ( !\inst2|state.WAITCALCDISTANCE~2_combout\ & ( (!\inst2|state.LOADDATA~q\ & (!\inst2|state.CALCDISTANCE~q\ & (!\inst2|state.VERIFYDATA~q\ & !\inst2|state.MINDISTANCE~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.LOADDATA~q\,
	datab => \inst2|ALT_INV_state.CALCDISTANCE~q\,
	datac => \inst2|ALT_INV_state.VERIFYDATA~q\,
	datad => \inst2|ALT_INV_state.MINDISTANCE~q\,
	dataf => \inst2|ALT_INV_state.WAITCALCDISTANCE~2_combout\,
	combout => \inst2|WideOr7~0_combout\);

-- Location: MLABCELL_X84_Y7_N18
\inst2|s_countDimensions[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[5]~2_combout\ = ( \inst2|s_countDimensions[5]~1_combout\ & ( \inst2|WideOr7~0_combout\ & ( ((!\inst2|state.ENDCENTROIDS~q\) # ((!\inst2|LessThan3~9_combout\ & \inst2|LessThan3~5_combout\))) # (\inst2|LessThan3~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_LessThan3~6_combout\,
	datab => \inst2|ALT_INV_LessThan3~9_combout\,
	datac => \inst2|ALT_INV_LessThan3~5_combout\,
	datad => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	datae => \inst2|ALT_INV_s_countDimensions[5]~1_combout\,
	dataf => \inst2|ALT_INV_WideOr7~0_combout\,
	combout => \inst2|s_countDimensions[5]~2_combout\);

-- Location: FF_X84_Y7_N8
\inst2|s_countDimensions[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countDimensions[0]~SCLR_LUT_combout\,
	ena => \inst2|s_countDimensions[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions[0]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y7_N3
\inst2|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add5~5_sumout\ = SUM(( \inst2|s_countDimensions[1]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~2\ ))
-- \inst2|Add5~6\ = CARRY(( \inst2|s_countDimensions[1]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDimensions[1]~_Duplicate_1_q\,
	cin => \inst2|Add5~2\,
	sumout => \inst2|Add5~5_sumout\,
	cout => \inst2|Add5~6\);

-- Location: MLABCELL_X84_Y7_N15
\inst2|s_countDimensions[1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[1]~SCLR_LUT_combout\ = ( !\inst2|s_countDimensions[5]~0_combout\ & ( \inst2|Add5~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add5~5_sumout\,
	dataf => \inst2|ALT_INV_s_countDimensions[5]~0_combout\,
	combout => \inst2|s_countDimensions[1]~SCLR_LUT_combout\);

-- Location: FF_X84_Y7_N11
\inst2|s_countDimensions[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_countDimensions[1]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \inst2|s_countDimensions[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions[1]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y7_N6
\inst2|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add5~9_sumout\ = SUM(( \inst2|s_countDimensions[2]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~6\ ))
-- \inst2|Add5~10\ = CARRY(( \inst2|s_countDimensions[2]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDimensions[2]~_Duplicate_1_q\,
	cin => \inst2|Add5~6\,
	sumout => \inst2|Add5~9_sumout\,
	cout => \inst2|Add5~10\);

-- Location: MLABCELL_X84_Y7_N39
\inst2|s_countDimensions[2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[2]~SCLR_LUT_combout\ = ( \inst2|Add5~9_sumout\ & ( !\inst2|s_countDimensions[5]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_s_countDimensions[5]~0_combout\,
	dataf => \inst2|ALT_INV_Add5~9_sumout\,
	combout => \inst2|s_countDimensions[2]~SCLR_LUT_combout\);

-- Location: FF_X84_Y7_N17
\inst2|s_countDimensions[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_countDimensions[2]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \inst2|s_countDimensions[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions[2]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y7_N9
\inst2|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add5~13_sumout\ = SUM(( \inst2|s_countDimensions[3]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~10\ ))
-- \inst2|Add5~14\ = CARRY(( \inst2|s_countDimensions[3]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_s_countDimensions[3]~_Duplicate_1_q\,
	cin => \inst2|Add5~10\,
	sumout => \inst2|Add5~13_sumout\,
	cout => \inst2|Add5~14\);

-- Location: MLABCELL_X84_Y7_N48
\inst2|s_countDimensions[3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[3]~SCLR_LUT_combout\ = ( \inst2|Add5~13_sumout\ & ( !\inst2|s_countDimensions[5]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_s_countDimensions[5]~0_combout\,
	dataf => \inst2|ALT_INV_Add5~13_sumout\,
	combout => \inst2|s_countDimensions[3]~SCLR_LUT_combout\);

-- Location: FF_X84_Y7_N50
\inst2|s_countDimensions[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countDimensions[3]~SCLR_LUT_combout\,
	ena => \inst2|s_countDimensions[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions[3]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y7_N12
\inst2|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add5~17_sumout\ = SUM(( \inst2|s_countDimensions[4]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~14\ ))
-- \inst2|Add5~18\ = CARRY(( \inst2|s_countDimensions[4]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDimensions[4]~_Duplicate_1_q\,
	cin => \inst2|Add5~14\,
	sumout => \inst2|Add5~17_sumout\,
	cout => \inst2|Add5~18\);

-- Location: MLABCELL_X84_Y7_N42
\inst2|s_countDimensions[4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[4]~SCLR_LUT_combout\ = (\inst2|Add5~17_sumout\ & !\inst2|s_countDimensions[5]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_Add5~17_sumout\,
	datac => \inst2|ALT_INV_s_countDimensions[5]~0_combout\,
	combout => \inst2|s_countDimensions[4]~SCLR_LUT_combout\);

-- Location: FF_X84_Y7_N41
\inst2|s_countDimensions[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_countDimensions[4]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \inst2|s_countDimensions[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions[4]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y7_N15
\inst2|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add5~21_sumout\ = SUM(( \inst2|s_countDimensions[5]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~18\ ))
-- \inst2|Add5~22\ = CARRY(( \inst2|s_countDimensions[5]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_s_countDimensions[5]~_Duplicate_1_q\,
	cin => \inst2|Add5~18\,
	sumout => \inst2|Add5~21_sumout\,
	cout => \inst2|Add5~22\);

-- Location: LABCELL_X85_Y7_N48
\inst2|s_countDimensions[5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[5]~SCLR_LUT_combout\ = ( !\inst2|s_countDimensions[5]~0_combout\ & ( \inst2|Add5~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_Add5~21_sumout\,
	dataf => \inst2|ALT_INV_s_countDimensions[5]~0_combout\,
	combout => \inst2|s_countDimensions[5]~SCLR_LUT_combout\);

-- Location: FF_X84_Y7_N5
\inst2|s_countDimensions[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_countDimensions[5]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \inst2|s_countDimensions[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions[5]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y7_N18
\inst2|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add5~25_sumout\ = SUM(( \inst2|s_countDimensions[6]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~22\ ))
-- \inst2|Add5~26\ = CARRY(( \inst2|s_countDimensions[6]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDimensions[6]~_Duplicate_1_q\,
	cin => \inst2|Add5~22\,
	sumout => \inst2|Add5~25_sumout\,
	cout => \inst2|Add5~26\);

-- Location: MLABCELL_X84_Y7_N24
\inst2|s_countDimensions[6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[6]~SCLR_LUT_combout\ = ( !\inst2|s_countDimensions[5]~0_combout\ & ( \inst2|Add5~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_Add5~25_sumout\,
	datae => \inst2|ALT_INV_s_countDimensions[5]~0_combout\,
	combout => \inst2|s_countDimensions[6]~SCLR_LUT_combout\);

-- Location: FF_X84_Y7_N26
\inst2|s_countDimensions[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countDimensions[6]~SCLR_LUT_combout\,
	ena => \inst2|s_countDimensions[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions[6]~_Duplicate_1_q\);

-- Location: LABCELL_X85_Y7_N21
\inst2|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add5~29_sumout\ = SUM(( \inst2|s_countDimensions[7]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~26\ ))
-- \inst2|Add5~30\ = CARRY(( \inst2|s_countDimensions[7]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_s_countDimensions[7]~_Duplicate_1_q\,
	cin => \inst2|Add5~26\,
	sumout => \inst2|Add5~29_sumout\,
	cout => \inst2|Add5~30\);

-- Location: MLABCELL_X84_Y7_N51
\inst2|s_countDimensions[7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[7]~SCLR_LUT_combout\ = (!\inst2|s_countDimensions[5]~0_combout\ & \inst2|Add5~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_s_countDimensions[5]~0_combout\,
	datad => \inst2|ALT_INV_Add5~29_sumout\,
	combout => \inst2|s_countDimensions[7]~SCLR_LUT_combout\);

-- Location: FF_X84_Y7_N53
\inst2|s_countDimensions[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countDimensions[7]~SCLR_LUT_combout\,
	ena => \inst2|s_countDimensions[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions[7]~_Duplicate_1_q\);

-- Location: MLABCELL_X84_Y7_N30
\inst2|s_countDimensions[8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDimensions[8]~SCLR_LUT_combout\ = ( !\inst2|s_countDimensions[5]~0_combout\ & ( \inst2|Add5~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add5~33_sumout\,
	datae => \inst2|ALT_INV_s_countDimensions[5]~0_combout\,
	combout => \inst2|s_countDimensions[8]~SCLR_LUT_combout\);

-- Location: FF_X84_Y7_N29
\inst2|s_countDimensions[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_countDimensions[8]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \inst2|s_countDimensions[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDimensions[8]~_Duplicate_1_q\);

-- Location: MLABCELL_X84_Y6_N57
\inst2|Selector75~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector75~0_combout\ = ( \inst2|LessThan2~2_combout\ & ( (!\inst2|s_countDimensions[8]~_Duplicate_1_q\ & (\inst2|LessThan2~1_combout\ & (\inst2|LessThan2~0_combout\ & \inst2|state.VERIFYDIMENSION~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_s_countDimensions[8]~_Duplicate_1_q\,
	datab => \inst2|ALT_INV_LessThan2~1_combout\,
	datac => \inst2|ALT_INV_LessThan2~0_combout\,
	datad => \inst2|ALT_INV_state.VERIFYDIMENSION~q\,
	dataf => \inst2|ALT_INV_LessThan2~2_combout\,
	combout => \inst2|Selector75~0_combout\);

-- Location: IOIBUF_X86_Y0_N35
\reg3[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(12),
	o => \reg3[12]~input_o\);

-- Location: MLABCELL_X82_Y6_N0
\inst2|Add8~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add8~53_sumout\ = SUM(( \inst2|s_countDado[0]~_Duplicate_1_q\ ) + ( VCC ) + ( !VCC ))
-- \inst2|Add8~54\ = CARRY(( \inst2|s_countDado[0]~_Duplicate_1_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDado[0]~_Duplicate_1_q\,
	cin => GND,
	sumout => \inst2|Add8~53_sumout\,
	cout => \inst2|Add8~54\);

-- Location: LABCELL_X83_Y7_N0
\inst2|s_countDado[0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDado[0]~SCLR_LUT_combout\ = ( \inst2|state.STOREDATA~q\ & ( \inst2|Add8~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_Add8~53_sumout\,
	dataf => \inst2|ALT_INV_state.STOREDATA~q\,
	combout => \inst2|s_countDado[0]~SCLR_LUT_combout\);

-- Location: LABCELL_X83_Y7_N51
\inst2|WideOr13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|WideOr13~0_combout\ = ( !\inst2|state.VERIFYDIMENSION~q\ & ( (!\inst2|state.ENDCENTROIDS~q\ & !\inst2|state.MINDISTANCE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	datac => \inst2|ALT_INV_state.MINDISTANCE~q\,
	dataf => \inst2|ALT_INV_state.VERIFYDIMENSION~q\,
	combout => \inst2|WideOr13~0_combout\);

-- Location: LABCELL_X83_Y7_N33
\inst2|s_countDado[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDado[7]~0_combout\ = ( !\inst2|state.WAITCALCDISTANCE~2_combout\ & ( !\inst2|state.LOADDATA~q\ & ( (!\inst2|state.VERIFYDATA~q\ & (!\inst2|state.CALCDISTANCE~q\ & (!\inst2|state.IDLE~q\ & \inst2|WideOr13~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.VERIFYDATA~q\,
	datab => \inst2|ALT_INV_state.CALCDISTANCE~q\,
	datac => \inst2|ALT_INV_state.IDLE~q\,
	datad => \inst2|ALT_INV_WideOr13~0_combout\,
	datae => \inst2|ALT_INV_state.WAITCALCDISTANCE~2_combout\,
	dataf => \inst2|ALT_INV_state.LOADDATA~q\,
	combout => \inst2|s_countDado[7]~0_combout\);

-- Location: FF_X83_Y7_N50
\inst2|s_countDado[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_countDado[0]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \inst2|s_countDado[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado[0]~_Duplicate_1_q\);

-- Location: MLABCELL_X82_Y6_N3
\inst2|Add8~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add8~49_sumout\ = SUM(( \inst2|s_countDado[1]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~54\ ))
-- \inst2|Add8~50\ = CARRY(( \inst2|s_countDado[1]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDado[1]~_Duplicate_1_q\,
	cin => \inst2|Add8~54\,
	sumout => \inst2|Add8~49_sumout\,
	cout => \inst2|Add8~50\);

-- Location: LABCELL_X83_Y7_N12
\inst2|s_countDado[1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDado[1]~SCLR_LUT_combout\ = ( \inst2|state.STOREDATA~q\ & ( \inst2|Add8~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add8~49_sumout\,
	dataf => \inst2|ALT_INV_state.STOREDATA~q\,
	combout => \inst2|s_countDado[1]~SCLR_LUT_combout\);

-- Location: FF_X83_Y7_N53
\inst2|s_countDado[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_countDado[1]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \inst2|s_countDado[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado[1]~_Duplicate_1_q\);

-- Location: MLABCELL_X82_Y6_N6
\inst2|Add8~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add8~45_sumout\ = SUM(( \inst2|s_countDado[2]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~50\ ))
-- \inst2|Add8~46\ = CARRY(( \inst2|s_countDado[2]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_s_countDado[2]~_Duplicate_1_q\,
	cin => \inst2|Add8~50\,
	sumout => \inst2|Add8~45_sumout\,
	cout => \inst2|Add8~46\);

-- Location: LABCELL_X83_Y6_N54
\inst2|s_countDado[2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDado[2]~SCLR_LUT_combout\ = ( \inst2|state.STOREDATA~q\ & ( \inst2|Add8~45_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add8~45_sumout\,
	dataf => \inst2|ALT_INV_state.STOREDATA~q\,
	combout => \inst2|s_countDado[2]~SCLR_LUT_combout\);

-- Location: FF_X83_Y6_N56
\inst2|s_countDado[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countDado[2]~SCLR_LUT_combout\,
	ena => \inst2|s_countDado[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado[2]~_Duplicate_1_q\);

-- Location: MLABCELL_X82_Y6_N9
\inst2|Add8~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add8~41_sumout\ = SUM(( \inst2|s_countDado[3]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~46\ ))
-- \inst2|Add8~42\ = CARRY(( \inst2|s_countDado[3]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDado[3]~_Duplicate_1_q\,
	cin => \inst2|Add8~46\,
	sumout => \inst2|Add8~41_sumout\,
	cout => \inst2|Add8~42\);

-- Location: LABCELL_X83_Y6_N57
\inst2|s_countDado[3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDado[3]~SCLR_LUT_combout\ = ( \inst2|state.STOREDATA~q\ & ( \inst2|Add8~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add8~41_sumout\,
	dataf => \inst2|ALT_INV_state.STOREDATA~q\,
	combout => \inst2|s_countDado[3]~SCLR_LUT_combout\);

-- Location: FF_X83_Y6_N59
\inst2|s_countDado[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countDado[3]~SCLR_LUT_combout\,
	ena => \inst2|s_countDado[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado[3]~_Duplicate_1_q\);

-- Location: MLABCELL_X82_Y6_N12
\inst2|Add8~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add8~37_sumout\ = SUM(( \inst2|s_countDado[4]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~42\ ))
-- \inst2|Add8~38\ = CARRY(( \inst2|s_countDado[4]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDado[4]~_Duplicate_1_q\,
	cin => \inst2|Add8~42\,
	sumout => \inst2|Add8~37_sumout\,
	cout => \inst2|Add8~38\);

-- Location: LABCELL_X83_Y6_N51
\inst2|s_countDado[4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDado[4]~SCLR_LUT_combout\ = ( \inst2|state.STOREDATA~q\ & ( \inst2|Add8~37_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_Add8~37_sumout\,
	dataf => \inst2|ALT_INV_state.STOREDATA~q\,
	combout => \inst2|s_countDado[4]~SCLR_LUT_combout\);

-- Location: FF_X83_Y6_N53
\inst2|s_countDado[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countDado[4]~SCLR_LUT_combout\,
	ena => \inst2|s_countDado[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado[4]~_Duplicate_1_q\);

-- Location: MLABCELL_X82_Y6_N15
\inst2|Add8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add8~33_sumout\ = SUM(( \inst2|s_countDado[5]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~38\ ))
-- \inst2|Add8~34\ = CARRY(( \inst2|s_countDado[5]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDado[5]~_Duplicate_1_q\,
	cin => \inst2|Add8~38\,
	sumout => \inst2|Add8~33_sumout\,
	cout => \inst2|Add8~34\);

-- Location: LABCELL_X83_Y6_N48
\inst2|s_countDado[5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDado[5]~SCLR_LUT_combout\ = ( \inst2|Add8~33_sumout\ & ( \inst2|state.STOREDATA~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.STOREDATA~q\,
	dataf => \inst2|ALT_INV_Add8~33_sumout\,
	combout => \inst2|s_countDado[5]~SCLR_LUT_combout\);

-- Location: FF_X83_Y6_N50
\inst2|s_countDado[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countDado[5]~SCLR_LUT_combout\,
	ena => \inst2|s_countDado[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado[5]~_Duplicate_1_q\);

-- Location: MLABCELL_X82_Y6_N18
\inst2|Add8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add8~29_sumout\ = SUM(( \inst2|s_countDado[6]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~34\ ))
-- \inst2|Add8~30\ = CARRY(( \inst2|s_countDado[6]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDado[6]~_Duplicate_1_q\,
	cin => \inst2|Add8~34\,
	sumout => \inst2|Add8~29_sumout\,
	cout => \inst2|Add8~30\);

-- Location: LABCELL_X83_Y6_N15
\inst2|s_countDado[6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDado[6]~SCLR_LUT_combout\ = ( \inst2|state.STOREDATA~q\ & ( \inst2|Add8~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add8~29_sumout\,
	dataf => \inst2|ALT_INV_state.STOREDATA~q\,
	combout => \inst2|s_countDado[6]~SCLR_LUT_combout\);

-- Location: FF_X83_Y6_N17
\inst2|s_countDado[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countDado[6]~SCLR_LUT_combout\,
	ena => \inst2|s_countDado[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado[6]~_Duplicate_1_q\);

-- Location: MLABCELL_X82_Y6_N21
\inst2|Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add8~25_sumout\ = SUM(( \inst2|s_countDado[7]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~30\ ))
-- \inst2|Add8~26\ = CARRY(( \inst2|s_countDado[7]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_s_countDado[7]~_Duplicate_1_q\,
	cin => \inst2|Add8~30\,
	sumout => \inst2|Add8~25_sumout\,
	cout => \inst2|Add8~26\);

-- Location: LABCELL_X83_Y6_N30
\inst2|s_countDado[7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDado[7]~SCLR_LUT_combout\ = ( \inst2|state.STOREDATA~q\ & ( \inst2|Add8~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add8~25_sumout\,
	dataf => \inst2|ALT_INV_state.STOREDATA~q\,
	combout => \inst2|s_countDado[7]~SCLR_LUT_combout\);

-- Location: FF_X83_Y6_N32
\inst2|s_countDado[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countDado[7]~SCLR_LUT_combout\,
	ena => \inst2|s_countDado[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado[7]~_Duplicate_1_q\);

-- Location: MLABCELL_X82_Y6_N24
\inst2|Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add8~21_sumout\ = SUM(( \inst2|s_countDado[8]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~26\ ))
-- \inst2|Add8~22\ = CARRY(( \inst2|s_countDado[8]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDado[8]~_Duplicate_1_q\,
	cin => \inst2|Add8~26\,
	sumout => \inst2|Add8~21_sumout\,
	cout => \inst2|Add8~22\);

-- Location: LABCELL_X83_Y6_N33
\inst2|s_countDado[8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDado[8]~SCLR_LUT_combout\ = ( \inst2|state.STOREDATA~q\ & ( \inst2|Add8~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add8~21_sumout\,
	dataf => \inst2|ALT_INV_state.STOREDATA~q\,
	combout => \inst2|s_countDado[8]~SCLR_LUT_combout\);

-- Location: FF_X83_Y6_N35
\inst2|s_countDado[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countDado[8]~SCLR_LUT_combout\,
	ena => \inst2|s_countDado[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado[8]~_Duplicate_1_q\);

-- Location: MLABCELL_X82_Y6_N27
\inst2|Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add8~17_sumout\ = SUM(( \inst2|s_countDado[9]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~22\ ))
-- \inst2|Add8~18\ = CARRY(( \inst2|s_countDado[9]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDado[9]~_Duplicate_1_q\,
	cin => \inst2|Add8~22\,
	sumout => \inst2|Add8~17_sumout\,
	cout => \inst2|Add8~18\);

-- Location: LABCELL_X83_Y6_N24
\inst2|s_countDado[9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDado[9]~SCLR_LUT_combout\ = ( \inst2|state.STOREDATA~q\ & ( \inst2|Add8~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add8~17_sumout\,
	dataf => \inst2|ALT_INV_state.STOREDATA~q\,
	combout => \inst2|s_countDado[9]~SCLR_LUT_combout\);

-- Location: FF_X83_Y6_N26
\inst2|s_countDado[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countDado[9]~SCLR_LUT_combout\,
	ena => \inst2|s_countDado[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado[9]~_Duplicate_1_q\);

-- Location: MLABCELL_X82_Y6_N30
\inst2|Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add8~13_sumout\ = SUM(( \inst2|s_countDado[10]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~18\ ))
-- \inst2|Add8~14\ = CARRY(( \inst2|s_countDado[10]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDado[10]~_Duplicate_1_q\,
	cin => \inst2|Add8~18\,
	sumout => \inst2|Add8~13_sumout\,
	cout => \inst2|Add8~14\);

-- Location: LABCELL_X83_Y6_N27
\inst2|s_countDado[10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDado[10]~SCLR_LUT_combout\ = ( \inst2|Add8~13_sumout\ & ( \inst2|state.STOREDATA~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.STOREDATA~q\,
	dataf => \inst2|ALT_INV_Add8~13_sumout\,
	combout => \inst2|s_countDado[10]~SCLR_LUT_combout\);

-- Location: FF_X83_Y6_N29
\inst2|s_countDado[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countDado[10]~SCLR_LUT_combout\,
	ena => \inst2|s_countDado[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado[10]~_Duplicate_1_q\);

-- Location: MLABCELL_X82_Y6_N33
\inst2|Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add8~9_sumout\ = SUM(( \inst2|s_countDado[11]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~14\ ))
-- \inst2|Add8~10\ = CARRY(( \inst2|s_countDado[11]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDado[11]~_Duplicate_1_q\,
	cin => \inst2|Add8~14\,
	sumout => \inst2|Add8~9_sumout\,
	cout => \inst2|Add8~10\);

-- Location: LABCELL_X83_Y6_N42
\inst2|s_countDado[11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDado[11]~SCLR_LUT_combout\ = ( \inst2|state.STOREDATA~q\ & ( \inst2|Add8~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_Add8~9_sumout\,
	dataf => \inst2|ALT_INV_state.STOREDATA~q\,
	combout => \inst2|s_countDado[11]~SCLR_LUT_combout\);

-- Location: FF_X83_Y6_N44
\inst2|s_countDado[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countDado[11]~SCLR_LUT_combout\,
	ena => \inst2|s_countDado[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado[11]~_Duplicate_1_q\);

-- Location: MLABCELL_X82_Y6_N36
\inst2|Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add8~5_sumout\ = SUM(( \inst2|s_countDado[12]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~10\ ))
-- \inst2|Add8~6\ = CARRY(( \inst2|s_countDado[12]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_s_countDado[12]~_Duplicate_1_q\,
	cin => \inst2|Add8~10\,
	sumout => \inst2|Add8~5_sumout\,
	cout => \inst2|Add8~6\);

-- Location: LABCELL_X83_Y6_N12
\inst2|s_countDado[12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDado[12]~SCLR_LUT_combout\ = ( \inst2|state.STOREDATA~q\ & ( \inst2|Add8~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add8~5_sumout\,
	dataf => \inst2|ALT_INV_state.STOREDATA~q\,
	combout => \inst2|s_countDado[12]~SCLR_LUT_combout\);

-- Location: FF_X83_Y6_N14
\inst2|s_countDado[12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countDado[12]~SCLR_LUT_combout\,
	ena => \inst2|s_countDado[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado[12]~_Duplicate_1_q\);

-- Location: MLABCELL_X82_Y6_N39
\inst2|Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add8~1_sumout\ = SUM(( \inst2|s_countDado[13]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~6\ ))
-- \inst2|Add8~2\ = CARRY(( \inst2|s_countDado[13]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDado[13]~_Duplicate_1_q\,
	cin => \inst2|Add8~6\,
	sumout => \inst2|Add8~1_sumout\,
	cout => \inst2|Add8~2\);

-- Location: LABCELL_X83_Y6_N18
\inst2|s_countDado[13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDado[13]~SCLR_LUT_combout\ = ( \inst2|Add8~1_sumout\ & ( \inst2|state.STOREDATA~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.STOREDATA~q\,
	dataf => \inst2|ALT_INV_Add8~1_sumout\,
	combout => \inst2|s_countDado[13]~SCLR_LUT_combout\);

-- Location: FF_X83_Y6_N20
\inst2|s_countDado[13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countDado[13]~SCLR_LUT_combout\,
	ena => \inst2|s_countDado[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado[13]~_Duplicate_1_q\);

-- Location: MLABCELL_X82_Y6_N42
\inst2|Add8~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add8~57_sumout\ = SUM(( \inst2|s_countDado[14]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDado[14]~_Duplicate_1_q\,
	cin => \inst2|Add8~2\,
	sumout => \inst2|Add8~57_sumout\);

-- Location: LABCELL_X83_Y6_N21
\inst2|s_countDado[14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countDado[14]~SCLR_LUT_combout\ = ( \inst2|state.STOREDATA~q\ & ( \inst2|Add8~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add8~57_sumout\,
	dataf => \inst2|ALT_INV_state.STOREDATA~q\,
	combout => \inst2|s_countDado[14]~SCLR_LUT_combout\);

-- Location: FF_X83_Y6_N23
\inst2|s_countDado[14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countDado[14]~SCLR_LUT_combout\,
	ena => \inst2|s_countDado[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countDado[14]~_Duplicate_1_q\);

-- Location: IOIBUF_X86_Y0_N18
\reg3[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(13),
	o => \reg3[13]~input_o\);

-- Location: IOIBUF_X78_Y0_N18
\reg3[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(14),
	o => \reg3[14]~input_o\);

-- Location: LABCELL_X85_Y6_N0
\inst2|LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~9_combout\ = ( \inst2|s_countDado[13]~_Duplicate_1_q\ & ( \inst2|s_countDado[12]~_Duplicate_1_q\ & ( (\reg3[12]~input_o\ & (\reg3[13]~input_o\ & (!\inst2|s_countDado[14]~_Duplicate_1_q\ $ (\reg3[14]~input_o\)))) ) ) ) # ( 
-- !\inst2|s_countDado[13]~_Duplicate_1_q\ & ( \inst2|s_countDado[12]~_Duplicate_1_q\ & ( (\reg3[12]~input_o\ & (!\reg3[13]~input_o\ & (!\inst2|s_countDado[14]~_Duplicate_1_q\ $ (\reg3[14]~input_o\)))) ) ) ) # ( \inst2|s_countDado[13]~_Duplicate_1_q\ & ( 
-- !\inst2|s_countDado[12]~_Duplicate_1_q\ & ( (!\reg3[12]~input_o\ & (\reg3[13]~input_o\ & (!\inst2|s_countDado[14]~_Duplicate_1_q\ $ (\reg3[14]~input_o\)))) ) ) ) # ( !\inst2|s_countDado[13]~_Duplicate_1_q\ & ( !\inst2|s_countDado[12]~_Duplicate_1_q\ & ( 
-- (!\reg3[12]~input_o\ & (!\reg3[13]~input_o\ & (!\inst2|s_countDado[14]~_Duplicate_1_q\ $ (\reg3[14]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg3[12]~input_o\,
	datab => \inst2|ALT_INV_s_countDado[14]~_Duplicate_1_q\,
	datac => \ALT_INV_reg3[13]~input_o\,
	datad => \ALT_INV_reg3[14]~input_o\,
	datae => \inst2|ALT_INV_s_countDado[13]~_Duplicate_1_q\,
	dataf => \inst2|ALT_INV_s_countDado[12]~_Duplicate_1_q\,
	combout => \inst2|LessThan0~9_combout\);

-- Location: IOIBUF_X82_Y0_N41
\reg3[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(9),
	o => \reg3[9]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\reg3[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(11),
	o => \reg3[11]~input_o\);

-- Location: MLABCELL_X82_Y7_N54
\inst2|LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~10_combout\ = ( \inst2|s_countDado[11]~_Duplicate_1_q\ & ( !\reg3[11]~input_o\ ) ) # ( !\inst2|s_countDado[11]~_Duplicate_1_q\ & ( \reg3[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reg3[11]~input_o\,
	dataf => \inst2|ALT_INV_s_countDado[11]~_Duplicate_1_q\,
	combout => \inst2|LessThan0~10_combout\);

-- Location: IOIBUF_X60_Y0_N18
\reg3[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(10),
	o => \reg3[10]~input_o\);

-- Location: MLABCELL_X82_Y7_N9
\inst2|LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~11_combout\ = ( \reg3[10]~input_o\ & ( !\inst2|s_countDado[10]~_Duplicate_1_q\ ) ) # ( !\reg3[10]~input_o\ & ( \inst2|s_countDado[10]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDado[10]~_Duplicate_1_q\,
	dataf => \ALT_INV_reg3[10]~input_o\,
	combout => \inst2|LessThan0~11_combout\);

-- Location: IOIBUF_X89_Y11_N95
\reg3[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(8),
	o => \reg3[8]~input_o\);

-- Location: MLABCELL_X82_Y7_N0
\inst2|LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~12_combout\ = ( \inst2|s_countDado[8]~_Duplicate_1_q\ & ( !\reg3[8]~input_o\ ) ) # ( !\inst2|s_countDado[8]~_Duplicate_1_q\ & ( \reg3[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reg3[8]~input_o\,
	dataf => \inst2|ALT_INV_s_countDado[8]~_Duplicate_1_q\,
	combout => \inst2|LessThan0~12_combout\);

-- Location: MLABCELL_X82_Y7_N30
\inst2|LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~13_combout\ = ( !\inst2|LessThan0~12_combout\ & ( \inst2|s_countDado[9]~_Duplicate_1_q\ & ( (\inst2|LessThan0~9_combout\ & (\reg3[9]~input_o\ & (!\inst2|LessThan0~10_combout\ & !\inst2|LessThan0~11_combout\))) ) ) ) # ( 
-- !\inst2|LessThan0~12_combout\ & ( !\inst2|s_countDado[9]~_Duplicate_1_q\ & ( (\inst2|LessThan0~9_combout\ & (!\reg3[9]~input_o\ & (!\inst2|LessThan0~10_combout\ & !\inst2|LessThan0~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_LessThan0~9_combout\,
	datab => \ALT_INV_reg3[9]~input_o\,
	datac => \inst2|ALT_INV_LessThan0~10_combout\,
	datad => \inst2|ALT_INV_LessThan0~11_combout\,
	datae => \inst2|ALT_INV_LessThan0~12_combout\,
	dataf => \inst2|ALT_INV_s_countDado[9]~_Duplicate_1_q\,
	combout => \inst2|LessThan0~13_combout\);

-- Location: IOIBUF_X86_Y0_N52
\reg3[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(7),
	o => \reg3[7]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\reg3[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(6),
	o => \reg3[6]~input_o\);

-- Location: LABCELL_X83_Y8_N51
\inst2|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~7_combout\ = ( \inst2|s_countDado[7]~_Duplicate_1_q\ & ( (\reg3[7]~input_o\ & (!\inst2|s_countDado[6]~_Duplicate_1_q\ & \reg3[6]~input_o\)) ) ) # ( !\inst2|s_countDado[7]~_Duplicate_1_q\ & ( ((!\inst2|s_countDado[6]~_Duplicate_1_q\ & 
-- \reg3[6]~input_o\)) # (\reg3[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg3[7]~input_o\,
	datab => \inst2|ALT_INV_s_countDado[6]~_Duplicate_1_q\,
	datac => \ALT_INV_reg3[6]~input_o\,
	dataf => \inst2|ALT_INV_s_countDado[7]~_Duplicate_1_q\,
	combout => \inst2|LessThan0~7_combout\);

-- Location: IOIBUF_X84_Y0_N52
\reg3[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(5),
	o => \reg3[5]~input_o\);

-- Location: IOIBUF_X82_Y0_N58
\reg3[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(4),
	o => \reg3[4]~input_o\);

-- Location: LABCELL_X83_Y8_N48
\inst2|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = ( \reg3[6]~input_o\ & ( (\inst2|s_countDado[6]~_Duplicate_1_q\ & (!\reg3[7]~input_o\ $ (\inst2|s_countDado[7]~_Duplicate_1_q\))) ) ) # ( !\reg3[6]~input_o\ & ( (!\inst2|s_countDado[6]~_Duplicate_1_q\ & (!\reg3[7]~input_o\ $ 
-- (\inst2|s_countDado[7]~_Duplicate_1_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010000100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg3[7]~input_o\,
	datab => \inst2|ALT_INV_s_countDado[6]~_Duplicate_1_q\,
	datac => \inst2|ALT_INV_s_countDado[7]~_Duplicate_1_q\,
	dataf => \ALT_INV_reg3[6]~input_o\,
	combout => \inst2|LessThan0~0_combout\);

-- Location: LABCELL_X83_Y8_N24
\inst2|LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~8_combout\ = ( \reg3[4]~input_o\ & ( \inst2|LessThan0~0_combout\ & ( (!\inst2|LessThan0~7_combout\ & ((!\inst2|s_countDado[4]~_Duplicate_1_q\ & (!\reg3[5]~input_o\ & \inst2|s_countDado[5]~_Duplicate_1_q\)) # 
-- (\inst2|s_countDado[4]~_Duplicate_1_q\ & ((!\reg3[5]~input_o\) # (\inst2|s_countDado[5]~_Duplicate_1_q\))))) ) ) ) # ( !\reg3[4]~input_o\ & ( \inst2|LessThan0~0_combout\ & ( (!\inst2|LessThan0~7_combout\ & ((!\reg3[5]~input_o\) # 
-- (\inst2|s_countDado[5]~_Duplicate_1_q\))) ) ) ) # ( \reg3[4]~input_o\ & ( !\inst2|LessThan0~0_combout\ & ( !\inst2|LessThan0~7_combout\ ) ) ) # ( !\reg3[4]~input_o\ & ( !\inst2|LessThan0~0_combout\ & ( !\inst2|LessThan0~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010100000101010100010000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_LessThan0~7_combout\,
	datab => \inst2|ALT_INV_s_countDado[4]~_Duplicate_1_q\,
	datac => \ALT_INV_reg3[5]~input_o\,
	datad => \inst2|ALT_INV_s_countDado[5]~_Duplicate_1_q\,
	datae => \ALT_INV_reg3[4]~input_o\,
	dataf => \inst2|ALT_INV_LessThan0~0_combout\,
	combout => \inst2|LessThan0~8_combout\);

-- Location: IOIBUF_X89_Y16_N21
\reg3[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(3),
	o => \reg3[3]~input_o\);

-- Location: IOIBUF_X89_Y13_N38
\reg3[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(2),
	o => \reg3[2]~input_o\);

-- Location: MLABCELL_X84_Y8_N0
\inst2|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~5_combout\ = ( \reg3[2]~input_o\ & ( \inst2|s_countDado[3]~_Duplicate_1_q\ & ( (\reg3[3]~input_o\ & !\inst2|s_countDado[2]~_Duplicate_1_q\) ) ) ) # ( \reg3[2]~input_o\ & ( !\inst2|s_countDado[3]~_Duplicate_1_q\ & ( 
-- (!\inst2|s_countDado[2]~_Duplicate_1_q\) # (\reg3[3]~input_o\) ) ) ) # ( !\reg3[2]~input_o\ & ( !\inst2|s_countDado[3]~_Duplicate_1_q\ & ( \reg3[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111101011111010100000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg3[3]~input_o\,
	datac => \inst2|ALT_INV_s_countDado[2]~_Duplicate_1_q\,
	datae => \ALT_INV_reg3[2]~input_o\,
	dataf => \inst2|ALT_INV_s_countDado[3]~_Duplicate_1_q\,
	combout => \inst2|LessThan0~5_combout\);

-- Location: LABCELL_X83_Y8_N6
\inst2|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = ( \reg3[5]~input_o\ & ( !\inst2|s_countDado[5]~_Duplicate_1_q\ ) ) # ( !\reg3[5]~input_o\ & ( \inst2|s_countDado[5]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_s_countDado[5]~_Duplicate_1_q\,
	datae => \ALT_INV_reg3[5]~input_o\,
	combout => \inst2|LessThan0~1_combout\);

-- Location: LABCELL_X83_Y8_N15
\inst2|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~2_combout\ = ( \reg3[4]~input_o\ & ( !\inst2|s_countDado[4]~_Duplicate_1_q\ ) ) # ( !\reg3[4]~input_o\ & ( \inst2|s_countDado[4]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDado[4]~_Duplicate_1_q\,
	datae => \ALT_INV_reg3[4]~input_o\,
	combout => \inst2|LessThan0~2_combout\);

-- Location: MLABCELL_X84_Y8_N57
\inst2|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~4_combout\ = ( \inst2|s_countDado[2]~_Duplicate_1_q\ & ( \inst2|s_countDado[3]~_Duplicate_1_q\ & ( (\reg3[3]~input_o\ & \reg3[2]~input_o\) ) ) ) # ( !\inst2|s_countDado[2]~_Duplicate_1_q\ & ( \inst2|s_countDado[3]~_Duplicate_1_q\ & ( 
-- (\reg3[3]~input_o\ & !\reg3[2]~input_o\) ) ) ) # ( \inst2|s_countDado[2]~_Duplicate_1_q\ & ( !\inst2|s_countDado[3]~_Duplicate_1_q\ & ( (!\reg3[3]~input_o\ & \reg3[2]~input_o\) ) ) ) # ( !\inst2|s_countDado[2]~_Duplicate_1_q\ & ( 
-- !\inst2|s_countDado[3]~_Duplicate_1_q\ & ( (!\reg3[3]~input_o\ & !\reg3[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000010100000101001010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg3[3]~input_o\,
	datac => \ALT_INV_reg3[2]~input_o\,
	datae => \inst2|ALT_INV_s_countDado[2]~_Duplicate_1_q\,
	dataf => \inst2|ALT_INV_s_countDado[3]~_Duplicate_1_q\,
	combout => \inst2|LessThan0~4_combout\);

-- Location: IOIBUF_X89_Y21_N55
\reg3[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(1),
	o => \reg3[1]~input_o\);

-- Location: IOIBUF_X34_Y81_N75
\reg3[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg3(0),
	o => \reg3[0]~input_o\);

-- Location: MLABCELL_X82_Y8_N36
\inst2|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~3_combout\ = ( !\inst2|s_countDado[1]~_Duplicate_1_q\ & ( \inst2|s_countDado[0]~_Duplicate_1_q\ & ( \reg3[1]~input_o\ ) ) ) # ( \inst2|s_countDado[1]~_Duplicate_1_q\ & ( !\inst2|s_countDado[0]~_Duplicate_1_q\ & ( (\reg3[1]~input_o\ & 
-- \reg3[0]~input_o\) ) ) ) # ( !\inst2|s_countDado[1]~_Duplicate_1_q\ & ( !\inst2|s_countDado[0]~_Duplicate_1_q\ & ( (\reg3[0]~input_o\) # (\reg3[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111000100010001000101010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg3[1]~input_o\,
	datab => \ALT_INV_reg3[0]~input_o\,
	datae => \inst2|ALT_INV_s_countDado[1]~_Duplicate_1_q\,
	dataf => \inst2|ALT_INV_s_countDado[0]~_Duplicate_1_q\,
	combout => \inst2|LessThan0~3_combout\);

-- Location: LABCELL_X83_Y8_N18
\inst2|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~6_combout\ = ( \inst2|LessThan0~4_combout\ & ( \inst2|LessThan0~3_combout\ & ( (!\inst2|LessThan0~1_combout\ & (\inst2|LessThan0~0_combout\ & !\inst2|LessThan0~2_combout\)) ) ) ) # ( !\inst2|LessThan0~4_combout\ & ( 
-- \inst2|LessThan0~3_combout\ & ( (\inst2|LessThan0~5_combout\ & (!\inst2|LessThan0~1_combout\ & (\inst2|LessThan0~0_combout\ & !\inst2|LessThan0~2_combout\))) ) ) ) # ( \inst2|LessThan0~4_combout\ & ( !\inst2|LessThan0~3_combout\ & ( 
-- (\inst2|LessThan0~5_combout\ & (!\inst2|LessThan0~1_combout\ & (\inst2|LessThan0~0_combout\ & !\inst2|LessThan0~2_combout\))) ) ) ) # ( !\inst2|LessThan0~4_combout\ & ( !\inst2|LessThan0~3_combout\ & ( (\inst2|LessThan0~5_combout\ & 
-- (!\inst2|LessThan0~1_combout\ & (\inst2|LessThan0~0_combout\ & !\inst2|LessThan0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_LessThan0~5_combout\,
	datab => \inst2|ALT_INV_LessThan0~1_combout\,
	datac => \inst2|ALT_INV_LessThan0~0_combout\,
	datad => \inst2|ALT_INV_LessThan0~2_combout\,
	datae => \inst2|ALT_INV_LessThan0~4_combout\,
	dataf => \inst2|ALT_INV_LessThan0~3_combout\,
	combout => \inst2|LessThan0~6_combout\);

-- Location: MLABCELL_X82_Y7_N57
\inst2|LessThan0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~16_combout\ = ( !\inst2|s_countDado[8]~_Duplicate_1_q\ & ( \reg3[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg3[8]~input_o\,
	dataf => \inst2|ALT_INV_s_countDado[8]~_Duplicate_1_q\,
	combout => \inst2|LessThan0~16_combout\);

-- Location: MLABCELL_X82_Y7_N36
\inst2|LessThan0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~17_combout\ = ( \inst2|LessThan0~16_combout\ & ( !\inst2|LessThan0~11_combout\ & ( (!\inst2|LessThan0~10_combout\ & (\inst2|LessThan0~9_combout\ & ((!\inst2|s_countDado[9]~_Duplicate_1_q\) # (\reg3[9]~input_o\)))) ) ) ) # ( 
-- !\inst2|LessThan0~16_combout\ & ( !\inst2|LessThan0~11_combout\ & ( (!\inst2|LessThan0~10_combout\ & (\reg3[9]~input_o\ & (\inst2|LessThan0~9_combout\ & !\inst2|s_countDado[9]~_Duplicate_1_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000010100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_LessThan0~10_combout\,
	datab => \ALT_INV_reg3[9]~input_o\,
	datac => \inst2|ALT_INV_LessThan0~9_combout\,
	datad => \inst2|ALT_INV_s_countDado[9]~_Duplicate_1_q\,
	datae => \inst2|ALT_INV_LessThan0~16_combout\,
	dataf => \inst2|ALT_INV_LessThan0~11_combout\,
	combout => \inst2|LessThan0~17_combout\);

-- Location: LABCELL_X85_Y6_N21
\inst2|LessThan0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~14_combout\ = ( \inst2|s_countDado[13]~_Duplicate_1_q\ & ( \inst2|s_countDado[12]~_Duplicate_1_q\ & ( (\reg3[14]~input_o\ & !\inst2|s_countDado[14]~_Duplicate_1_q\) ) ) ) # ( !\inst2|s_countDado[13]~_Duplicate_1_q\ & ( 
-- \inst2|s_countDado[12]~_Duplicate_1_q\ & ( (!\reg3[13]~input_o\ & (\reg3[14]~input_o\ & !\inst2|s_countDado[14]~_Duplicate_1_q\)) # (\reg3[13]~input_o\ & ((!\inst2|s_countDado[14]~_Duplicate_1_q\) # (\reg3[14]~input_o\))) ) ) ) # ( 
-- \inst2|s_countDado[13]~_Duplicate_1_q\ & ( !\inst2|s_countDado[12]~_Duplicate_1_q\ & ( (!\reg3[14]~input_o\ & (\reg3[13]~input_o\ & (!\inst2|s_countDado[14]~_Duplicate_1_q\ & \reg3[12]~input_o\))) # (\reg3[14]~input_o\ & 
-- ((!\inst2|s_countDado[14]~_Duplicate_1_q\) # ((\reg3[13]~input_o\ & \reg3[12]~input_o\)))) ) ) ) # ( !\inst2|s_countDado[13]~_Duplicate_1_q\ & ( !\inst2|s_countDado[12]~_Duplicate_1_q\ & ( (!\reg3[14]~input_o\ & (!\inst2|s_countDado[14]~_Duplicate_1_q\ & 
-- ((\reg3[12]~input_o\) # (\reg3[13]~input_o\)))) # (\reg3[14]~input_o\ & (((!\inst2|s_countDado[14]~_Duplicate_1_q\) # (\reg3[12]~input_o\)) # (\reg3[13]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000111110011001100000111000101110001011100010011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg3[13]~input_o\,
	datab => \ALT_INV_reg3[14]~input_o\,
	datac => \inst2|ALT_INV_s_countDado[14]~_Duplicate_1_q\,
	datad => \ALT_INV_reg3[12]~input_o\,
	datae => \inst2|ALT_INV_s_countDado[13]~_Duplicate_1_q\,
	dataf => \inst2|ALT_INV_s_countDado[12]~_Duplicate_1_q\,
	combout => \inst2|LessThan0~14_combout\);

-- Location: MLABCELL_X82_Y7_N12
\inst2|LessThan0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~15_combout\ = ( !\inst2|LessThan0~14_combout\ & ( \reg3[10]~input_o\ & ( (!\inst2|LessThan0~9_combout\) # ((!\reg3[11]~input_o\ & ((\inst2|s_countDado[11]~_Duplicate_1_q\) # (\inst2|s_countDado[10]~_Duplicate_1_q\))) # (\reg3[11]~input_o\ 
-- & (\inst2|s_countDado[10]~_Duplicate_1_q\ & \inst2|s_countDado[11]~_Duplicate_1_q\))) ) ) ) # ( !\inst2|LessThan0~14_combout\ & ( !\reg3[10]~input_o\ & ( (!\reg3[11]~input_o\) # ((!\inst2|LessThan0~9_combout\) # (\inst2|s_countDado[11]~_Duplicate_1_q\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111111000000000000000011110010111110110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg3[11]~input_o\,
	datab => \inst2|ALT_INV_s_countDado[10]~_Duplicate_1_q\,
	datac => \inst2|ALT_INV_LessThan0~9_combout\,
	datad => \inst2|ALT_INV_s_countDado[11]~_Duplicate_1_q\,
	datae => \inst2|ALT_INV_LessThan0~14_combout\,
	dataf => \ALT_INV_reg3[10]~input_o\,
	combout => \inst2|LessThan0~15_combout\);

-- Location: MLABCELL_X84_Y8_N33
\inst2|Selector75~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector75~1_combout\ = ( \inst2|LessThan0~15_combout\ & ( \inst2|state.VERIFYDATA~q\ & ( ((\inst2|LessThan0~13_combout\ & ((!\inst2|LessThan0~8_combout\) # (\inst2|LessThan0~6_combout\)))) # (\inst2|LessThan0~17_combout\) ) ) ) # ( 
-- !\inst2|LessThan0~15_combout\ & ( \inst2|state.VERIFYDATA~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110100010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_LessThan0~13_combout\,
	datab => \inst2|ALT_INV_LessThan0~8_combout\,
	datac => \inst2|ALT_INV_LessThan0~6_combout\,
	datad => \inst2|ALT_INV_LessThan0~17_combout\,
	datae => \inst2|ALT_INV_LessThan0~15_combout\,
	dataf => \inst2|ALT_INV_state.VERIFYDATA~q\,
	combout => \inst2|Selector75~1_combout\);

-- Location: LABCELL_X83_Y7_N27
\inst2|Selector75~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector75~2_combout\ = ( \inst2|Selector75~0_combout\ & ( \inst2|Selector75~1_combout\ ) ) # ( !\inst2|Selector75~0_combout\ & ( \inst2|Selector75~1_combout\ ) ) # ( \inst2|Selector75~0_combout\ & ( !\inst2|Selector75~1_combout\ ) ) # ( 
-- !\inst2|Selector75~0_combout\ & ( !\inst2|Selector75~1_combout\ & ( (\inst2|state.ENDCENTROIDS~q\ & (((!\inst2|LessThan3~9_combout\ & \inst2|LessThan3~5_combout\)) # (\inst2|LessThan3~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_LessThan3~9_combout\,
	datab => \inst2|ALT_INV_LessThan3~5_combout\,
	datac => \inst2|ALT_INV_LessThan3~6_combout\,
	datad => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	datae => \inst2|ALT_INV_Selector75~0_combout\,
	dataf => \inst2|ALT_INV_Selector75~1_combout\,
	combout => \inst2|Selector75~2_combout\);

-- Location: FF_X83_Y7_N29
\inst2|state_fut.LOADDATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector75~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state_fut.LOADDATA~q\);

-- Location: FF_X83_Y7_N41
\inst2|state.LOADDATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|state_fut.LOADDATA~q\,
	clrn => \inst2|ALT_INV_state.IDLE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.LOADDATA~q\);

-- Location: LABCELL_X83_Y7_N54
\inst2|Selector77~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector77~0_combout\ = ( \inst2|state.CALCDISTANCE~q\ & ( \inst2|state.LOADDATA~q\ ) ) # ( !\inst2|state.CALCDISTANCE~q\ & ( \inst2|state.LOADDATA~q\ & ( ((\inst2|LessThan1~9_combout\ & ((!\inst2|LessThan1~8_combout\) # 
-- (\inst2|LessThan1~6_combout\)))) # (\inst2|LessThan1~10_combout\) ) ) ) # ( \inst2|state.CALCDISTANCE~q\ & ( !\inst2|state.LOADDATA~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101110011011101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_LessThan1~9_combout\,
	datab => \inst2|ALT_INV_LessThan1~10_combout\,
	datac => \inst2|ALT_INV_LessThan1~8_combout\,
	datad => \inst2|ALT_INV_LessThan1~6_combout\,
	datae => \inst2|ALT_INV_state.CALCDISTANCE~q\,
	dataf => \inst2|ALT_INV_state.LOADDATA~q\,
	combout => \inst2|Selector77~0_combout\);

-- Location: FF_X83_Y7_N56
\inst2|state_fut.CALCDISTANCE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector77~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state_fut.CALCDISTANCE~q\);

-- Location: FF_X84_Y7_N44
\inst2|state.CALCDISTANCE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|state_fut.CALCDISTANCE~q\,
	clrn => \inst2|ALT_INV_state.IDLE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.CALCDISTANCE~q\);

-- Location: LABCELL_X37_Y4_N30
\inst2|s_en_SimpleMatch~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_en_SimpleMatch~feeder_combout\ = ( \inst2|state.CALCDISTANCE~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_state.CALCDISTANCE~q\,
	combout => \inst2|s_en_SimpleMatch~feeder_combout\);

-- Location: FF_X37_Y4_N32
\inst2|s_en_SimpleMatch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_en_SimpleMatch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_en_SimpleMatch~q\);

-- Location: FF_X83_Y7_N8
\inst|s_endDistanceMatch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_en_SimpleMatch~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_endDistanceMatch~q\);

-- Location: LABCELL_X83_Y7_N45
\inst2|state.RESET~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|state.RESET~5_combout\ = ( \inst|s_endDistanceMatch~q\ & ( \nrst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_nrst~input_o\,
	dataf => \inst|ALT_INV_s_endDistanceMatch~q\,
	combout => \inst2|state.RESET~5_combout\);

-- Location: MLABCELL_X82_Y7_N6
\inst2|state.RESET~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|state.RESET~1_combout\ = ( \inst2|state.RESET~1_combout\ & ( !\inst2|state.RESET~5_combout\ ) ) # ( !\inst2|state.RESET~1_combout\ & ( (!\inst2|state.RESET~5_combout\ & !\nrst~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.RESET~5_combout\,
	datac => \ALT_INV_nrst~input_o\,
	dataf => \inst2|ALT_INV_state.RESET~1_combout\,
	combout => \inst2|state.RESET~1_combout\);

-- Location: MLABCELL_X82_Y7_N3
\inst2|state.RESET~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|state.RESET~3_combout\ = ( \inst2|state.RESET~1_combout\ & ( \inst2|state_fut.RESET~q\ ) ) # ( !\inst2|state.RESET~1_combout\ & ( !\inst2|state_fut.RESET~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state_fut.RESET~q\,
	dataf => \inst2|ALT_INV_state.RESET~1_combout\,
	combout => \inst2|state.RESET~3_combout\);

-- Location: MLABCELL_X82_Y7_N24
\inst2|state.RESET~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|state.RESET~0_combout\ = ( \inst2|state.RESET~5_combout\ ) # ( !\inst2|state.RESET~5_combout\ & ( !\nrst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_nrst~input_o\,
	dataf => \inst2|ALT_INV_state.RESET~5_combout\,
	combout => \inst2|state.RESET~0_combout\);

-- Location: FF_X82_Y7_N4
\inst2|state.RESET~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst2|state.RESET~3_combout\,
	clrn => \inst2|ALT_INV_state.RESET~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.RESET~_emulated_q\);

-- Location: LABCELL_X83_Y7_N15
\inst2|state.RESET~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|state.RESET~2_combout\ = ( !\inst2|state.RESET~5_combout\ & ( (!\nrst~input_o\) # (!\inst2|state.RESET~_emulated_q\ $ (!\inst2|state.RESET~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111111100110011111111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_nrst~input_o\,
	datac => \inst2|ALT_INV_state.RESET~_emulated_q\,
	datad => \inst2|ALT_INV_state.RESET~1_combout\,
	dataf => \inst2|ALT_INV_state.RESET~5_combout\,
	combout => \inst2|state.RESET~2_combout\);

-- Location: MLABCELL_X84_Y6_N48
\inst2|Selector73~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector73~0_combout\ = ( \inst2|state.IDLE~q\ & ( (!\en_KmodesControlCalcMap~input_o\) # ((\inst2|state.ENDSTATE~q\) # (\inst2|state.RESET~2_combout\)) ) ) # ( !\inst2|state.IDLE~q\ & ( (\inst2|state.ENDSTATE~q\) # (\inst2|state.RESET~2_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_en_KmodesControlCalcMap~input_o\,
	datac => \inst2|ALT_INV_state.RESET~2_combout\,
	datad => \inst2|ALT_INV_state.ENDSTATE~q\,
	dataf => \inst2|ALT_INV_state.IDLE~q\,
	combout => \inst2|Selector73~0_combout\);

-- Location: FF_X84_Y6_N49
\inst2|state_fut.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector73~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state_fut.IDLE~q\);

-- Location: FF_X84_Y6_N20
\inst2|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|state_fut.IDLE~q\,
	clrn => \inst2|ALT_INV_state.IDLE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.IDLE~q\);

-- Location: MLABCELL_X84_Y6_N51
\inst2|Selector74~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector74~0_combout\ = ( \inst2|state.STOREDATA~q\ ) # ( !\inst2|state.STOREDATA~q\ & ( (\inst2|state.IDLE~q\ & \en_KmodesControlCalcMap~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.IDLE~q\,
	datab => \ALT_INV_en_KmodesControlCalcMap~input_o\,
	dataf => \inst2|ALT_INV_state.STOREDATA~q\,
	combout => \inst2|Selector74~0_combout\);

-- Location: FF_X84_Y6_N52
\inst2|state_fut.VERIFYDATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector74~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state_fut.VERIFYDATA~q\);

-- Location: FF_X84_Y7_N32
\inst2|state.VERIFYDATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|state_fut.VERIFYDATA~q\,
	clrn => \inst2|ALT_INV_state.IDLE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.VERIFYDATA~q\);

-- Location: MLABCELL_X84_Y8_N48
\inst2|state_fut~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|state_fut~15_combout\ = ( !\inst2|LessThan0~17_combout\ & ( \inst2|LessThan0~8_combout\ & ( (\inst2|state.VERIFYDATA~q\ & (\inst2|LessThan0~15_combout\ & ((!\inst2|LessThan0~13_combout\) # (!\inst2|LessThan0~6_combout\)))) ) ) ) # ( 
-- !\inst2|LessThan0~17_combout\ & ( !\inst2|LessThan0~8_combout\ & ( (\inst2|state.VERIFYDATA~q\ & (\inst2|LessThan0~15_combout\ & !\inst2|LessThan0~13_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000000000000000000010001000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.VERIFYDATA~q\,
	datab => \inst2|ALT_INV_LessThan0~15_combout\,
	datac => \inst2|ALT_INV_LessThan0~13_combout\,
	datad => \inst2|ALT_INV_LessThan0~6_combout\,
	datae => \inst2|ALT_INV_LessThan0~17_combout\,
	dataf => \inst2|ALT_INV_LessThan0~8_combout\,
	combout => \inst2|state_fut~15_combout\);

-- Location: FF_X84_Y8_N50
\inst2|state_fut.ENDSTATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|state_fut~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state_fut.ENDSTATE~q\);

-- Location: FF_X84_Y7_N35
\inst2|state.ENDSTATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|state_fut.ENDSTATE~q\,
	clrn => \inst2|ALT_INV_state.IDLE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.ENDSTATE~q\);

-- Location: MLABCELL_X84_Y7_N54
\inst2|s_countCentroid[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[7]~0_combout\ = ( \inst2|state.ENDSTATE~q\ ) # ( !\inst2|state.ENDSTATE~q\ & ( \inst2|state.STOREDATA~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_state.STOREDATA~q\,
	dataf => \inst2|ALT_INV_state.ENDSTATE~q\,
	combout => \inst2|s_countCentroid[7]~0_combout\);

-- Location: LABCELL_X83_Y7_N24
\inst2|s_countCentroid[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[7]~1_combout\ = ( \inst2|s_countCentroid[7]~0_combout\ & ( \inst2|state.RESET~2_combout\ ) ) # ( !\inst2|s_countCentroid[7]~0_combout\ & ( \inst2|state.RESET~2_combout\ ) ) # ( \inst2|s_countCentroid[7]~0_combout\ & ( 
-- !\inst2|state.RESET~2_combout\ ) ) # ( !\inst2|s_countCentroid[7]~0_combout\ & ( !\inst2|state.RESET~2_combout\ & ( (\inst2|state.ENDCENTROIDS~q\ & (((!\inst2|LessThan3~9_combout\ & \inst2|LessThan3~5_combout\)) # (\inst2|LessThan3~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_LessThan3~9_combout\,
	datab => \inst2|ALT_INV_LessThan3~5_combout\,
	datac => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	datad => \inst2|ALT_INV_LessThan3~6_combout\,
	datae => \inst2|ALT_INV_s_countCentroid[7]~0_combout\,
	dataf => \inst2|ALT_INV_state.RESET~2_combout\,
	combout => \inst2|s_countCentroid[7]~1_combout\);

-- Location: FF_X81_Y7_N2
\inst2|s_countCentroid[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countCentroid[0]~SCLR_LUT_combout\,
	ena => \inst2|s_countCentroid[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countCentroid[0]~_Duplicate_1_q\);

-- Location: LABCELL_X81_Y7_N33
\inst2|Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add7~5_sumout\ = SUM(( \inst2|s_countCentroid[1]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add7~2\ ))
-- \inst2|Add7~6\ = CARRY(( \inst2|s_countCentroid[1]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_s_countCentroid[1]~_Duplicate_1_q\,
	cin => \inst2|Add7~2\,
	sumout => \inst2|Add7~5_sumout\,
	cout => \inst2|Add7~6\);

-- Location: LABCELL_X81_Y7_N3
\inst2|s_countCentroid[1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[1]~SCLR_LUT_combout\ = ( \inst2|Add7~5_sumout\ & ( \inst2|state.ENDCENTROIDS~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	dataf => \inst2|ALT_INV_Add7~5_sumout\,
	combout => \inst2|s_countCentroid[1]~SCLR_LUT_combout\);

-- Location: FF_X81_Y7_N5
\inst2|s_countCentroid[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countCentroid[1]~SCLR_LUT_combout\,
	ena => \inst2|s_countCentroid[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countCentroid[1]~_Duplicate_1_q\);

-- Location: LABCELL_X81_Y7_N36
\inst2|Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add7~9_sumout\ = SUM(( \inst2|s_countCentroid[2]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add7~6\ ))
-- \inst2|Add7~10\ = CARRY(( \inst2|s_countCentroid[2]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countCentroid[2]~_Duplicate_1_q\,
	cin => \inst2|Add7~6\,
	sumout => \inst2|Add7~9_sumout\,
	cout => \inst2|Add7~10\);

-- Location: LABCELL_X81_Y7_N18
\inst2|s_countCentroid[2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[2]~SCLR_LUT_combout\ = (\inst2|state.ENDCENTROIDS~q\ & \inst2|Add7~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	datac => \inst2|ALT_INV_Add7~9_sumout\,
	combout => \inst2|s_countCentroid[2]~SCLR_LUT_combout\);

-- Location: FF_X81_Y7_N20
\inst2|s_countCentroid[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countCentroid[2]~SCLR_LUT_combout\,
	ena => \inst2|s_countCentroid[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countCentroid[2]~_Duplicate_1_q\);

-- Location: LABCELL_X81_Y7_N39
\inst2|Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add7~13_sumout\ = SUM(( \inst2|s_countCentroid[3]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add7~10\ ))
-- \inst2|Add7~14\ = CARRY(( \inst2|s_countCentroid[3]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_s_countCentroid[3]~_Duplicate_1_q\,
	cin => \inst2|Add7~10\,
	sumout => \inst2|Add7~13_sumout\,
	cout => \inst2|Add7~14\);

-- Location: LABCELL_X81_Y7_N21
\inst2|s_countCentroid[3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[3]~SCLR_LUT_combout\ = (\inst2|state.ENDCENTROIDS~q\ & \inst2|Add7~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	datac => \inst2|ALT_INV_Add7~13_sumout\,
	combout => \inst2|s_countCentroid[3]~SCLR_LUT_combout\);

-- Location: FF_X81_Y7_N23
\inst2|s_countCentroid[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countCentroid[3]~SCLR_LUT_combout\,
	ena => \inst2|s_countCentroid[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countCentroid[3]~_Duplicate_1_q\);

-- Location: LABCELL_X81_Y7_N42
\inst2|Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add7~17_sumout\ = SUM(( \inst2|s_countCentroid[4]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add7~14\ ))
-- \inst2|Add7~18\ = CARRY(( \inst2|s_countCentroid[4]~_Duplicate_1_q\ ) + ( GND ) + ( \inst2|Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_s_countCentroid[4]~_Duplicate_1_q\,
	cin => \inst2|Add7~14\,
	sumout => \inst2|Add7~17_sumout\,
	cout => \inst2|Add7~18\);

-- Location: LABCELL_X81_Y7_N12
\inst2|s_countCentroid[4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[4]~SCLR_LUT_combout\ = ( \inst2|Add7~17_sumout\ & ( \inst2|state.ENDCENTROIDS~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	dataf => \inst2|ALT_INV_Add7~17_sumout\,
	combout => \inst2|s_countCentroid[4]~SCLR_LUT_combout\);

-- Location: FF_X81_Y7_N14
\inst2|s_countCentroid[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countCentroid[4]~SCLR_LUT_combout\,
	ena => \inst2|s_countCentroid[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countCentroid[4]~_Duplicate_1_q\);

-- Location: LABCELL_X81_Y7_N15
\inst2|s_countCentroid[5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_countCentroid[5]~SCLR_LUT_combout\ = (\inst2|state.ENDCENTROIDS~q\ & \inst2|Add7~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	datac => \inst2|ALT_INV_Add7~21_sumout\,
	combout => \inst2|s_countCentroid[5]~SCLR_LUT_combout\);

-- Location: FF_X81_Y7_N17
\inst2|s_countCentroid[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_countCentroid[5]~SCLR_LUT_combout\,
	ena => \inst2|s_countCentroid[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_countCentroid[5]~_Duplicate_1_q\);

-- Location: LABCELL_X79_Y7_N18
\inst2|LessThan1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~7_combout\ = ( !\inst2|s_countCentroid[7]~_Duplicate_1_q\ & ( \inst2|s_countCentroid[6]~_Duplicate_1_q\ & ( \reg1[7]~input_o\ ) ) ) # ( \inst2|s_countCentroid[7]~_Duplicate_1_q\ & ( !\inst2|s_countCentroid[6]~_Duplicate_1_q\ & ( 
-- (\reg1[7]~input_o\ & \reg1[6]~input_o\) ) ) ) # ( !\inst2|s_countCentroid[7]~_Duplicate_1_q\ & ( !\inst2|s_countCentroid[6]~_Duplicate_1_q\ & ( (\reg1[6]~input_o\) # (\reg1[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000000110000001100110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reg1[7]~input_o\,
	datac => \ALT_INV_reg1[6]~input_o\,
	datae => \inst2|ALT_INV_s_countCentroid[7]~_Duplicate_1_q\,
	dataf => \inst2|ALT_INV_s_countCentroid[6]~_Duplicate_1_q\,
	combout => \inst2|LessThan1~7_combout\);

-- Location: MLABCELL_X78_Y7_N0
\inst2|LessThan1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~8_combout\ = ( \inst2|s_countCentroid[4]~_Duplicate_1_q\ & ( !\inst2|LessThan1~7_combout\ & ( ((!\inst2|LessThan1~0_combout\) # (!\reg1[5]~input_o\)) # (\inst2|s_countCentroid[5]~_Duplicate_1_q\) ) ) ) # ( 
-- !\inst2|s_countCentroid[4]~_Duplicate_1_q\ & ( !\inst2|LessThan1~7_combout\ & ( (!\inst2|LessThan1~0_combout\) # ((!\inst2|s_countCentroid[5]~_Duplicate_1_q\ & (!\reg1[5]~input_o\ & !\reg1[4]~input_o\)) # (\inst2|s_countCentroid[5]~_Duplicate_1_q\ & 
-- ((!\reg1[5]~input_o\) # (!\reg1[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111011100111111011111110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_s_countCentroid[5]~_Duplicate_1_q\,
	datab => \inst2|ALT_INV_LessThan1~0_combout\,
	datac => \ALT_INV_reg1[5]~input_o\,
	datad => \ALT_INV_reg1[4]~input_o\,
	datae => \inst2|ALT_INV_s_countCentroid[4]~_Duplicate_1_q\,
	dataf => \inst2|ALT_INV_LessThan1~7_combout\,
	combout => \inst2|LessThan1~8_combout\);

-- Location: LABCELL_X83_Y7_N36
\inst2|Selector76~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector76~0_combout\ = ( \inst2|LessThan1~6_combout\ & ( \inst2|state.MINDISTANCE~q\ ) ) # ( !\inst2|LessThan1~6_combout\ & ( \inst2|state.MINDISTANCE~q\ ) ) # ( \inst2|LessThan1~6_combout\ & ( !\inst2|state.MINDISTANCE~q\ & ( 
-- (!\inst2|LessThan1~10_combout\ & (!\inst2|LessThan1~9_combout\ & \inst2|state.LOADDATA~q\)) ) ) ) # ( !\inst2|LessThan1~6_combout\ & ( !\inst2|state.MINDISTANCE~q\ & ( (!\inst2|LessThan1~10_combout\ & (\inst2|state.LOADDATA~q\ & 
-- ((!\inst2|LessThan1~9_combout\) # (\inst2|LessThan1~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000100000000001100000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_LessThan1~8_combout\,
	datab => \inst2|ALT_INV_LessThan1~10_combout\,
	datac => \inst2|ALT_INV_LessThan1~9_combout\,
	datad => \inst2|ALT_INV_state.LOADDATA~q\,
	datae => \inst2|ALT_INV_LessThan1~6_combout\,
	dataf => \inst2|ALT_INV_state.MINDISTANCE~q\,
	combout => \inst2|Selector76~0_combout\);

-- Location: FF_X83_Y7_N59
\inst2|state_fut.ENDCENTROIDS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst2|Selector76~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state_fut.ENDCENTROIDS~q\);

-- Location: FF_X83_Y7_N38
\inst2|state.ENDCENTROIDS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|state_fut.ENDCENTROIDS~q\,
	clrn => \inst2|ALT_INV_state.IDLE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.ENDCENTROIDS~q\);

-- Location: LABCELL_X79_Y7_N27
\inst2|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~2_combout\ = ( \inst2|s_countCentroid[4]~_Duplicate_1_q\ & ( \inst2|s_countCentroid[3]~_Duplicate_1_q\ & ( (!\inst2|Add6~1_sumout\) # ((!\inst2|Add6~5_sumout\) # ((!\inst2|LessThan3~0_combout\ & !\inst2|LessThan3~1_combout\))) ) ) ) # ( 
-- !\inst2|s_countCentroid[4]~_Duplicate_1_q\ & ( \inst2|s_countCentroid[3]~_Duplicate_1_q\ & ( (!\inst2|Add6~1_sumout\ & ((!\inst2|Add6~5_sumout\) # ((!\inst2|LessThan3~0_combout\ & !\inst2|LessThan3~1_combout\)))) ) ) ) # ( 
-- \inst2|s_countCentroid[4]~_Duplicate_1_q\ & ( !\inst2|s_countCentroid[3]~_Duplicate_1_q\ & ( (!\inst2|Add6~1_sumout\) # ((!\inst2|LessThan3~0_combout\ & (!\inst2|LessThan3~1_combout\ & !\inst2|Add6~5_sumout\))) ) ) ) # ( 
-- !\inst2|s_countCentroid[4]~_Duplicate_1_q\ & ( !\inst2|s_countCentroid[3]~_Duplicate_1_q\ & ( (!\inst2|LessThan3~0_combout\ & (!\inst2|Add6~1_sumout\ & (!\inst2|LessThan3~1_combout\ & !\inst2|Add6~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000111011001100110011001100100000001111111111101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_LessThan3~0_combout\,
	datab => \inst2|ALT_INV_Add6~1_sumout\,
	datac => \inst2|ALT_INV_LessThan3~1_combout\,
	datad => \inst2|ALT_INV_Add6~5_sumout\,
	datae => \inst2|ALT_INV_s_countCentroid[4]~_Duplicate_1_q\,
	dataf => \inst2|ALT_INV_s_countCentroid[3]~_Duplicate_1_q\,
	combout => \inst2|LessThan3~2_combout\);

-- Location: LABCELL_X79_Y7_N36
\inst2|state_fut~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|state_fut~13_combout\ = ( \inst2|LessThan3~4_combout\ & ( \inst2|LessThan3~2_combout\ & ( (\inst2|state.ENDCENTROIDS~q\ & (!\inst2|LessThan3~6_combout\ & !\inst2|LessThan3~5_combout\)) ) ) ) # ( !\inst2|LessThan3~4_combout\ & ( 
-- \inst2|LessThan3~2_combout\ & ( (\inst2|state.ENDCENTROIDS~q\ & !\inst2|LessThan3~6_combout\) ) ) ) # ( \inst2|LessThan3~4_combout\ & ( !\inst2|LessThan3~2_combout\ & ( (\inst2|state.ENDCENTROIDS~q\ & (!\inst2|LessThan3~6_combout\ & 
-- !\inst2|LessThan3~5_combout\)) ) ) ) # ( !\inst2|LessThan3~4_combout\ & ( !\inst2|LessThan3~2_combout\ & ( (\inst2|state.ENDCENTROIDS~q\ & (!\inst2|LessThan3~6_combout\ & ((!\inst2|LessThan3~5_combout\) # (!\inst2|LessThan3~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000000010000000100000001000100010001000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	datab => \inst2|ALT_INV_LessThan3~6_combout\,
	datac => \inst2|ALT_INV_LessThan3~5_combout\,
	datad => \inst2|ALT_INV_LessThan3~3_combout\,
	datae => \inst2|ALT_INV_LessThan3~4_combout\,
	dataf => \inst2|ALT_INV_LessThan3~2_combout\,
	combout => \inst2|state_fut~13_combout\);

-- Location: FF_X79_Y7_N37
\inst2|state_fut.STOREDATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|state_fut~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state_fut.STOREDATA~q\);

-- Location: FF_X84_Y7_N47
\inst2|state.STOREDATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|state_fut.STOREDATA~q\,
	clrn => \inst2|ALT_INV_state.IDLE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.STOREDATA~q\);

-- Location: FF_X78_Y4_N25
\inst2|s_wrRam\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst2|state.STOREDATA~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_wrRam~q\);

-- Location: FF_X79_Y7_N40
\inst2|s_enMinDistanceMatch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst2|state.MINDISTANCE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_enMinDistanceMatch~q\);

-- Location: LABCELL_X83_Y7_N30
\inst2|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|WideOr5~combout\ = ( !\inst2|s_countCentroid[7]~0_combout\ & ( !\inst2|state.WAITCALCDISTANCE~2_combout\ & ( (!\inst2|state.VERIFYDATA~q\ & (!\inst2|state.CALCDISTANCE~q\ & (\inst2|WideOr13~0_combout\ & !\inst2|state.IDLE~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.VERIFYDATA~q\,
	datab => \inst2|ALT_INV_state.CALCDISTANCE~q\,
	datac => \inst2|ALT_INV_WideOr13~0_combout\,
	datad => \inst2|ALT_INV_state.IDLE~q\,
	datae => \inst2|ALT_INV_s_countCentroid[7]~0_combout\,
	dataf => \inst2|ALT_INV_state.WAITCALCDISTANCE~2_combout\,
	combout => \inst2|WideOr5~combout\);

-- Location: MLABCELL_X84_Y8_N24
\inst2|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = ( !\reg8[1]~input_o\ & ( \reg8[0]~input_o\ ) ) # ( \reg8[1]~input_o\ & ( !\reg8[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_reg8[1]~input_o\,
	dataf => \ALT_INV_reg8[0]~input_o\,
	combout => \inst2|Add0~0_combout\);

-- Location: MLABCELL_X84_Y8_N18
\inst2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~1_combout\ = ( \reg8[1]~input_o\ & ( \reg8[0]~input_o\ & ( !\reg8[2]~input_o\ ) ) ) # ( !\reg8[1]~input_o\ & ( \reg8[0]~input_o\ & ( \reg8[2]~input_o\ ) ) ) # ( \reg8[1]~input_o\ & ( !\reg8[0]~input_o\ & ( \reg8[2]~input_o\ ) ) ) # ( 
-- !\reg8[1]~input_o\ & ( !\reg8[0]~input_o\ & ( \reg8[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reg8[2]~input_o\,
	datae => \ALT_INV_reg8[1]~input_o\,
	dataf => \ALT_INV_reg8[0]~input_o\,
	combout => \inst2|Add0~1_combout\);

-- Location: IOIBUF_X89_Y9_N21
\reg5[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(0),
	o => \reg5[0]~input_o\);

-- Location: LABCELL_X85_Y8_N0
\inst2|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~1_sumout\ = SUM(( \inst2|s_countDimensions[0]~_Duplicate_1_q\ ) + ( \reg5[0]~input_o\ ) + ( !VCC ))
-- \inst2|Add2~2\ = CARRY(( \inst2|s_countDimensions[0]~_Duplicate_1_q\ ) + ( \reg5[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg5[0]~input_o\,
	datad => \inst2|ALT_INV_s_countDimensions[0]~_Duplicate_1_q\,
	cin => GND,
	sumout => \inst2|Add2~1_sumout\,
	cout => \inst2|Add2~2\);

-- Location: IOIBUF_X89_Y16_N4
\reg5[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(1),
	o => \reg5[1]~input_o\);

-- Location: LABCELL_X85_Y8_N3
\inst2|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~5_sumout\ = SUM(( \inst2|s_countDimensions[1]~_Duplicate_1_q\ ) + ( \reg5[1]~input_o\ ) + ( \inst2|Add2~2\ ))
-- \inst2|Add2~6\ = CARRY(( \inst2|s_countDimensions[1]~_Duplicate_1_q\ ) + ( \reg5[1]~input_o\ ) + ( \inst2|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reg5[1]~input_o\,
	datad => \inst2|ALT_INV_s_countDimensions[1]~_Duplicate_1_q\,
	cin => \inst2|Add2~2\,
	sumout => \inst2|Add2~5_sumout\,
	cout => \inst2|Add2~6\);

-- Location: IOIBUF_X89_Y23_N21
\reg5[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(2),
	o => \reg5[2]~input_o\);

-- Location: LABCELL_X85_Y8_N6
\inst2|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~9_sumout\ = SUM(( \inst2|s_countDimensions[2]~_Duplicate_1_q\ ) + ( \reg5[2]~input_o\ ) + ( \inst2|Add2~6\ ))
-- \inst2|Add2~10\ = CARRY(( \inst2|s_countDimensions[2]~_Duplicate_1_q\ ) + ( \reg5[2]~input_o\ ) + ( \inst2|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg5[2]~input_o\,
	datad => \inst2|ALT_INV_s_countDimensions[2]~_Duplicate_1_q\,
	cin => \inst2|Add2~6\,
	sumout => \inst2|Add2~9_sumout\,
	cout => \inst2|Add2~10\);

-- Location: IOIBUF_X88_Y0_N19
\reg5[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(3),
	o => \reg5[3]~input_o\);

-- Location: LABCELL_X85_Y8_N9
\inst2|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~13_sumout\ = SUM(( \reg5[3]~input_o\ ) + ( \inst2|s_countDimensions[3]~_Duplicate_1_q\ ) + ( \inst2|Add2~10\ ))
-- \inst2|Add2~14\ = CARRY(( \reg5[3]~input_o\ ) + ( \inst2|s_countDimensions[3]~_Duplicate_1_q\ ) + ( \inst2|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDimensions[3]~_Duplicate_1_q\,
	datad => \ALT_INV_reg5[3]~input_o\,
	cin => \inst2|Add2~10\,
	sumout => \inst2|Add2~13_sumout\,
	cout => \inst2|Add2~14\);

-- Location: IOIBUF_X89_Y11_N78
\reg5[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(4),
	o => \reg5[4]~input_o\);

-- Location: LABCELL_X85_Y8_N12
\inst2|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~17_sumout\ = SUM(( \inst2|s_countDimensions[4]~_Duplicate_1_q\ ) + ( \reg5[4]~input_o\ ) + ( \inst2|Add2~14\ ))
-- \inst2|Add2~18\ = CARRY(( \inst2|s_countDimensions[4]~_Duplicate_1_q\ ) + ( \reg5[4]~input_o\ ) + ( \inst2|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDimensions[4]~_Duplicate_1_q\,
	dataf => \ALT_INV_reg5[4]~input_o\,
	cin => \inst2|Add2~14\,
	sumout => \inst2|Add2~17_sumout\,
	cout => \inst2|Add2~18\);

-- Location: IOIBUF_X89_Y8_N38
\reg5[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(5),
	o => \reg5[5]~input_o\);

-- Location: LABCELL_X85_Y8_N15
\inst2|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~21_sumout\ = SUM(( \inst2|s_countDimensions[5]~_Duplicate_1_q\ ) + ( \reg5[5]~input_o\ ) + ( \inst2|Add2~18\ ))
-- \inst2|Add2~22\ = CARRY(( \inst2|s_countDimensions[5]~_Duplicate_1_q\ ) + ( \reg5[5]~input_o\ ) + ( \inst2|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg5[5]~input_o\,
	datac => \inst2|ALT_INV_s_countDimensions[5]~_Duplicate_1_q\,
	cin => \inst2|Add2~18\,
	sumout => \inst2|Add2~21_sumout\,
	cout => \inst2|Add2~22\);

-- Location: IOIBUF_X89_Y13_N21
\reg5[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(6),
	o => \reg5[6]~input_o\);

-- Location: LABCELL_X85_Y8_N18
\inst2|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~25_sumout\ = SUM(( \inst2|s_countDimensions[6]~_Duplicate_1_q\ ) + ( \reg5[6]~input_o\ ) + ( \inst2|Add2~22\ ))
-- \inst2|Add2~26\ = CARRY(( \inst2|s_countDimensions[6]~_Duplicate_1_q\ ) + ( \reg5[6]~input_o\ ) + ( \inst2|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDimensions[6]~_Duplicate_1_q\,
	dataf => \ALT_INV_reg5[6]~input_o\,
	cin => \inst2|Add2~22\,
	sumout => \inst2|Add2~25_sumout\,
	cout => \inst2|Add2~26\);

-- Location: IOIBUF_X89_Y8_N4
\reg5[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(7),
	o => \reg5[7]~input_o\);

-- Location: LABCELL_X85_Y8_N21
\inst2|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~29_sumout\ = SUM(( \inst2|s_countDimensions[7]~_Duplicate_1_q\ ) + ( \reg5[7]~input_o\ ) + ( \inst2|Add2~26\ ))
-- \inst2|Add2~30\ = CARRY(( \inst2|s_countDimensions[7]~_Duplicate_1_q\ ) + ( \reg5[7]~input_o\ ) + ( \inst2|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reg5[7]~input_o\,
	datad => \inst2|ALT_INV_s_countDimensions[7]~_Duplicate_1_q\,
	cin => \inst2|Add2~26\,
	sumout => \inst2|Add2~29_sumout\,
	cout => \inst2|Add2~30\);

-- Location: IOIBUF_X89_Y23_N4
\reg5[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(8),
	o => \reg5[8]~input_o\);

-- Location: LABCELL_X85_Y8_N24
\inst2|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~33_sumout\ = SUM(( \inst2|s_countDimensions[8]~_Duplicate_1_q\ ) + ( \reg5[8]~input_o\ ) + ( \inst2|Add2~30\ ))
-- \inst2|Add2~34\ = CARRY(( \inst2|s_countDimensions[8]~_Duplicate_1_q\ ) + ( \reg5[8]~input_o\ ) + ( \inst2|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg5[8]~input_o\,
	datad => \inst2|ALT_INV_s_countDimensions[8]~_Duplicate_1_q\,
	cin => \inst2|Add2~30\,
	sumout => \inst2|Add2~33_sumout\,
	cout => \inst2|Add2~34\);

-- Location: IOIBUF_X89_Y21_N21
\reg5[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(9),
	o => \reg5[9]~input_o\);

-- Location: LABCELL_X85_Y8_N27
\inst2|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~37_sumout\ = SUM(( \inst2|s_countDimensions[9]~_Duplicate_1_q\ ) + ( \reg5[9]~input_o\ ) + ( \inst2|Add2~34\ ))
-- \inst2|Add2~38\ = CARRY(( \inst2|s_countDimensions[9]~_Duplicate_1_q\ ) + ( \reg5[9]~input_o\ ) + ( \inst2|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reg5[9]~input_o\,
	datad => \inst2|ALT_INV_s_countDimensions[9]~_Duplicate_1_q\,
	cin => \inst2|Add2~34\,
	sumout => \inst2|Add2~37_sumout\,
	cout => \inst2|Add2~38\);

-- Location: IOIBUF_X89_Y20_N44
\reg5[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(10),
	o => \reg5[10]~input_o\);

-- Location: LABCELL_X85_Y8_N30
\inst2|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~41_sumout\ = SUM(( \inst2|s_countDimensions[10]~_Duplicate_1_q\ ) + ( \reg5[10]~input_o\ ) + ( \inst2|Add2~38\ ))
-- \inst2|Add2~42\ = CARRY(( \inst2|s_countDimensions[10]~_Duplicate_1_q\ ) + ( \reg5[10]~input_o\ ) + ( \inst2|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reg5[10]~input_o\,
	datac => \inst2|ALT_INV_s_countDimensions[10]~_Duplicate_1_q\,
	cin => \inst2|Add2~38\,
	sumout => \inst2|Add2~41_sumout\,
	cout => \inst2|Add2~42\);

-- Location: IOIBUF_X89_Y20_N78
\reg5[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(11),
	o => \reg5[11]~input_o\);

-- Location: LABCELL_X85_Y8_N33
\inst2|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~45_sumout\ = SUM(( \inst2|s_countDimensions[11]~_Duplicate_1_q\ ) + ( \reg5[11]~input_o\ ) + ( \inst2|Add2~42\ ))
-- \inst2|Add2~46\ = CARRY(( \inst2|s_countDimensions[11]~_Duplicate_1_q\ ) + ( \reg5[11]~input_o\ ) + ( \inst2|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg5[11]~input_o\,
	datac => \inst2|ALT_INV_s_countDimensions[11]~_Duplicate_1_q\,
	cin => \inst2|Add2~42\,
	sumout => \inst2|Add2~45_sumout\,
	cout => \inst2|Add2~46\);

-- Location: IOIBUF_X89_Y25_N4
\reg5[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(12),
	o => \reg5[12]~input_o\);

-- Location: LABCELL_X85_Y8_N36
\inst2|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~49_sumout\ = SUM(( \reg5[12]~input_o\ ) + ( \inst2|s_countDimensions[12]~_Duplicate_1_q\ ) + ( \inst2|Add2~46\ ))
-- \inst2|Add2~50\ = CARRY(( \reg5[12]~input_o\ ) + ( \inst2|s_countDimensions[12]~_Duplicate_1_q\ ) + ( \inst2|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_countDimensions[12]~_Duplicate_1_q\,
	datad => \ALT_INV_reg5[12]~input_o\,
	cin => \inst2|Add2~46\,
	sumout => \inst2|Add2~49_sumout\,
	cout => \inst2|Add2~50\);

-- Location: IOIBUF_X89_Y15_N55
\reg5[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg5(13),
	o => \reg5[13]~input_o\);

-- Location: LABCELL_X85_Y8_N39
\inst2|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~53_sumout\ = SUM(( \reg5[13]~input_o\ ) + ( GND ) + ( \inst2|Add2~50\ ))
-- \inst2|Add2~54\ = CARRY(( \reg5[13]~input_o\ ) + ( GND ) + ( \inst2|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reg5[13]~input_o\,
	cin => \inst2|Add2~50\,
	sumout => \inst2|Add2~53_sumout\,
	cout => \inst2|Add2~54\);

-- Location: LABCELL_X85_Y8_N42
\inst2|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add2~57_sumout\ = SUM(( GND ) + ( GND ) + ( \inst2|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Add2~54\,
	sumout => \inst2|Add2~57_sumout\);

-- Location: DSP_X86_Y8_N0
\inst2|Mult1~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 3,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 10,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "true",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst2|Mult1~mac_ACLR_bus\,
	clk => \inst2|Mult1~mac_CLK_bus\,
	ena => \inst2|Mult1~mac_ENA_bus\,
	ax => \inst2|Mult1~mac_AX_bus\,
	ay => \inst2|Mult1~mac_AY_bus\,
	bx => \inst2|Mult1~mac_BX_bus\,
	by => \inst2|Mult1~mac_BY_bus\,
	resulta => \inst2|Mult1~mac_RESULTA_bus\);

-- Location: MLABCELL_X84_Y8_N36
\inst2|Selector52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector52~0_combout\ = ( \inst2|s_addrRamCentroid\(13) & ( \inst2|Mult1~338\ & ( (!\inst2|WideOr5~combout\) # (\inst2|state.LOADDATA~q\) ) ) ) # ( !\inst2|s_addrRamCentroid\(13) & ( \inst2|Mult1~338\ & ( \inst2|state.LOADDATA~q\ ) ) ) # ( 
-- \inst2|s_addrRamCentroid\(13) & ( !\inst2|Mult1~338\ & ( !\inst2|WideOr5~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000001010101010101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.LOADDATA~q\,
	datac => \inst2|ALT_INV_WideOr5~combout\,
	datae => \inst2|ALT_INV_s_addrRamCentroid\(13),
	dataf => \inst2|ALT_INV_Mult1~338\,
	combout => \inst2|Selector52~0_combout\);

-- Location: FF_X84_Y8_N37
\inst2|s_addrRamCentroid[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector52~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(13));

-- Location: LABCELL_X85_Y8_N48
\inst2|Selector53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector53~0_combout\ = ( \inst2|Mult1~337\ & ( ((!\inst2|WideOr5~combout\ & \inst2|s_addrRamCentroid\(12))) # (\inst2|state.LOADDATA~q\) ) ) # ( !\inst2|Mult1~337\ & ( (!\inst2|WideOr5~combout\ & \inst2|s_addrRamCentroid\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001010101110111010101010111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.LOADDATA~q\,
	datab => \inst2|ALT_INV_WideOr5~combout\,
	datad => \inst2|ALT_INV_s_addrRamCentroid\(12),
	dataf => \inst2|ALT_INV_Mult1~337\,
	combout => \inst2|Selector53~0_combout\);

-- Location: FF_X85_Y8_N49
\inst2|s_addrRamCentroid[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector53~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(12));

-- Location: LABCELL_X85_Y8_N54
\inst2|Selector54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector54~0_combout\ = ( \inst2|Mult1~336\ & ( ((!\inst2|WideOr5~combout\ & \inst2|s_addrRamCentroid\(11))) # (\inst2|state.LOADDATA~q\) ) ) # ( !\inst2|Mult1~336\ & ( (!\inst2|WideOr5~combout\ & \inst2|s_addrRamCentroid\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001010101110111010101010111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.LOADDATA~q\,
	datab => \inst2|ALT_INV_WideOr5~combout\,
	datad => \inst2|ALT_INV_s_addrRamCentroid\(11),
	dataf => \inst2|ALT_INV_Mult1~336\,
	combout => \inst2|Selector54~0_combout\);

-- Location: FF_X85_Y8_N55
\inst2|s_addrRamCentroid[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector54~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(11));

-- Location: MLABCELL_X84_Y8_N9
\inst2|Selector55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector55~0_combout\ = ( \inst2|s_addrRamCentroid\(10) & ( \inst2|Mult1~335\ & ( (!\inst2|WideOr5~combout\) # (\inst2|state.LOADDATA~q\) ) ) ) # ( !\inst2|s_addrRamCentroid\(10) & ( \inst2|Mult1~335\ & ( \inst2|state.LOADDATA~q\ ) ) ) # ( 
-- \inst2|s_addrRamCentroid\(10) & ( !\inst2|Mult1~335\ & ( !\inst2|WideOr5~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000001010101010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.LOADDATA~q\,
	datad => \inst2|ALT_INV_WideOr5~combout\,
	datae => \inst2|ALT_INV_s_addrRamCentroid\(10),
	dataf => \inst2|ALT_INV_Mult1~335\,
	combout => \inst2|Selector55~0_combout\);

-- Location: FF_X84_Y8_N10
\inst2|s_addrRamCentroid[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(10));

-- Location: MLABCELL_X87_Y8_N36
\inst2|Selector56~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector56~0_combout\ = ( \inst2|s_addrRamCentroid\(9) & ( \inst2|Mult1~334\ & ( (!\inst2|WideOr5~combout\) # (\inst2|state.LOADDATA~q\) ) ) ) # ( !\inst2|s_addrRamCentroid\(9) & ( \inst2|Mult1~334\ & ( \inst2|state.LOADDATA~q\ ) ) ) # ( 
-- \inst2|s_addrRamCentroid\(9) & ( !\inst2|Mult1~334\ & ( !\inst2|WideOr5~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000110011001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_state.LOADDATA~q\,
	datad => \inst2|ALT_INV_WideOr5~combout\,
	datae => \inst2|ALT_INV_s_addrRamCentroid\(9),
	dataf => \inst2|ALT_INV_Mult1~334\,
	combout => \inst2|Selector56~0_combout\);

-- Location: FF_X87_Y8_N37
\inst2|s_addrRamCentroid[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector56~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(9));

-- Location: MLABCELL_X87_Y8_N57
\inst2|Selector57~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector57~0_combout\ = ( \inst2|s_addrRamCentroid\(8) & ( \inst2|Mult1~333\ & ( (!\inst2|WideOr5~combout\) # (\inst2|state.LOADDATA~q\) ) ) ) # ( !\inst2|s_addrRamCentroid\(8) & ( \inst2|Mult1~333\ & ( \inst2|state.LOADDATA~q\ ) ) ) # ( 
-- \inst2|s_addrRamCentroid\(8) & ( !\inst2|Mult1~333\ & ( !\inst2|WideOr5~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000110011001100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_state.LOADDATA~q\,
	datac => \inst2|ALT_INV_WideOr5~combout\,
	datae => \inst2|ALT_INV_s_addrRamCentroid\(8),
	dataf => \inst2|ALT_INV_Mult1~333\,
	combout => \inst2|Selector57~0_combout\);

-- Location: FF_X87_Y8_N58
\inst2|s_addrRamCentroid[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(8));

-- Location: MLABCELL_X87_Y8_N12
\inst2|Selector58~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector58~0_combout\ = ( \inst2|s_addrRamCentroid\(7) & ( \inst2|Mult1~332\ & ( (!\inst2|WideOr5~combout\) # (\inst2|state.LOADDATA~q\) ) ) ) # ( !\inst2|s_addrRamCentroid\(7) & ( \inst2|Mult1~332\ & ( \inst2|state.LOADDATA~q\ ) ) ) # ( 
-- \inst2|s_addrRamCentroid\(7) & ( !\inst2|Mult1~332\ & ( !\inst2|WideOr5~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000110011001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_state.LOADDATA~q\,
	datad => \inst2|ALT_INV_WideOr5~combout\,
	datae => \inst2|ALT_INV_s_addrRamCentroid\(7),
	dataf => \inst2|ALT_INV_Mult1~332\,
	combout => \inst2|Selector58~0_combout\);

-- Location: FF_X87_Y8_N13
\inst2|s_addrRamCentroid[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector58~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(7));

-- Location: MLABCELL_X87_Y8_N9
\inst2|Selector59~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector59~0_combout\ = ( \inst2|s_addrRamCentroid\(6) & ( \inst2|Mult1~331\ & ( (!\inst2|WideOr5~combout\) # (\inst2|state.LOADDATA~q\) ) ) ) # ( !\inst2|s_addrRamCentroid\(6) & ( \inst2|Mult1~331\ & ( \inst2|state.LOADDATA~q\ ) ) ) # ( 
-- \inst2|s_addrRamCentroid\(6) & ( !\inst2|Mult1~331\ & ( !\inst2|WideOr5~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000110011001100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_state.LOADDATA~q\,
	datac => \inst2|ALT_INV_WideOr5~combout\,
	datae => \inst2|ALT_INV_s_addrRamCentroid\(6),
	dataf => \inst2|ALT_INV_Mult1~331\,
	combout => \inst2|Selector59~0_combout\);

-- Location: FF_X87_Y8_N11
\inst2|s_addrRamCentroid[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector59~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(6));

-- Location: LABCELL_X85_Y8_N51
\inst2|Selector60~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector60~0_combout\ = ( \inst2|Mult1~330\ & ( ((!\inst2|WideOr5~combout\ & \inst2|s_addrRamCentroid\(5))) # (\inst2|state.LOADDATA~q\) ) ) # ( !\inst2|Mult1~330\ & ( (!\inst2|WideOr5~combout\ & \inst2|s_addrRamCentroid\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010101111101010101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.LOADDATA~q\,
	datac => \inst2|ALT_INV_WideOr5~combout\,
	datad => \inst2|ALT_INV_s_addrRamCentroid\(5),
	dataf => \inst2|ALT_INV_Mult1~330\,
	combout => \inst2|Selector60~0_combout\);

-- Location: FF_X85_Y8_N53
\inst2|s_addrRamCentroid[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector60~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(5));

-- Location: MLABCELL_X84_Y8_N15
\inst2|Selector61~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector61~0_combout\ = ( \inst2|s_addrRamCentroid\(4) & ( \inst2|Mult1~329\ & ( (!\inst2|WideOr5~combout\) # (\inst2|state.LOADDATA~q\) ) ) ) # ( !\inst2|s_addrRamCentroid\(4) & ( \inst2|Mult1~329\ & ( \inst2|state.LOADDATA~q\ ) ) ) # ( 
-- \inst2|s_addrRamCentroid\(4) & ( !\inst2|Mult1~329\ & ( !\inst2|WideOr5~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000001010101010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.LOADDATA~q\,
	datad => \inst2|ALT_INV_WideOr5~combout\,
	datae => \inst2|ALT_INV_s_addrRamCentroid\(4),
	dataf => \inst2|ALT_INV_Mult1~329\,
	combout => \inst2|Selector61~0_combout\);

-- Location: FF_X84_Y8_N16
\inst2|s_addrRamCentroid[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector61~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(4));

-- Location: MLABCELL_X87_Y8_N51
\inst2|Selector62~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector62~0_combout\ = ( \inst2|s_addrRamCentroid\(3) & ( \inst2|Mult1~328\ & ( (!\inst2|WideOr5~combout\) # (\inst2|state.LOADDATA~q\) ) ) ) # ( !\inst2|s_addrRamCentroid\(3) & ( \inst2|Mult1~328\ & ( \inst2|state.LOADDATA~q\ ) ) ) # ( 
-- \inst2|s_addrRamCentroid\(3) & ( !\inst2|Mult1~328\ & ( !\inst2|WideOr5~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000110011001100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_state.LOADDATA~q\,
	datac => \inst2|ALT_INV_WideOr5~combout\,
	datae => \inst2|ALT_INV_s_addrRamCentroid\(3),
	dataf => \inst2|ALT_INV_Mult1~328\,
	combout => \inst2|Selector62~0_combout\);

-- Location: FF_X87_Y8_N52
\inst2|s_addrRamCentroid[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector62~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(3));

-- Location: LABCELL_X85_Y8_N57
\inst2|Selector63~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector63~0_combout\ = ( \inst2|Mult1~327\ & ( ((!\inst2|WideOr5~combout\ & \inst2|s_addrRamCentroid\(2))) # (\inst2|state.LOADDATA~q\) ) ) # ( !\inst2|Mult1~327\ & ( (!\inst2|WideOr5~combout\ & \inst2|s_addrRamCentroid\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010101111101010101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.LOADDATA~q\,
	datac => \inst2|ALT_INV_WideOr5~combout\,
	datad => \inst2|ALT_INV_s_addrRamCentroid\(2),
	dataf => \inst2|ALT_INV_Mult1~327\,
	combout => \inst2|Selector63~0_combout\);

-- Location: FF_X85_Y8_N58
\inst2|s_addrRamCentroid[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector63~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(2));

-- Location: MLABCELL_X87_Y8_N30
\inst2|Selector64~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector64~0_combout\ = ( \inst2|s_addrRamCentroid\(1) & ( \inst2|Mult1~326\ & ( (!\inst2|WideOr5~combout\) # (\inst2|state.LOADDATA~q\) ) ) ) # ( !\inst2|s_addrRamCentroid\(1) & ( \inst2|Mult1~326\ & ( \inst2|state.LOADDATA~q\ ) ) ) # ( 
-- \inst2|s_addrRamCentroid\(1) & ( !\inst2|Mult1~326\ & ( !\inst2|WideOr5~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000110011001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_state.LOADDATA~q\,
	datad => \inst2|ALT_INV_WideOr5~combout\,
	datae => \inst2|ALT_INV_s_addrRamCentroid\(1),
	dataf => \inst2|ALT_INV_Mult1~326\,
	combout => \inst2|Selector64~0_combout\);

-- Location: FF_X87_Y8_N31
\inst2|s_addrRamCentroid[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(1));

-- Location: MLABCELL_X84_Y8_N45
\inst2|Selector65~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector65~0_combout\ = ( \inst2|s_addrRamCentroid\(0) & ( \inst2|Mult1~mac_resulta\ & ( (!\inst2|WideOr5~combout\) # (\inst2|state.LOADDATA~q\) ) ) ) # ( !\inst2|s_addrRamCentroid\(0) & ( \inst2|Mult1~mac_resulta\ & ( \inst2|state.LOADDATA~q\ ) ) 
-- ) # ( \inst2|s_addrRamCentroid\(0) & ( !\inst2|Mult1~mac_resulta\ & ( !\inst2|WideOr5~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000001010101010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.LOADDATA~q\,
	datad => \inst2|ALT_INV_WideOr5~combout\,
	datae => \inst2|ALT_INV_s_addrRamCentroid\(0),
	dataf => \inst2|ALT_INV_Mult1~mac_resulta\,
	combout => \inst2|Selector65~0_combout\);

-- Location: FF_X84_Y8_N46
\inst2|s_addrRamCentroid[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamCentroid\(0));

-- Location: DSP_X86_Y6_N0
\inst2|Mult0~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 3,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 15,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 1,
	by_clock => "1",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \inst2|Mult0~mac_ACLR_bus\,
	clk => \inst2|Mult0~mac_CLK_bus\,
	ena => \inst2|Mult0~mac_ENA_bus\,
	ax => \inst2|Mult0~mac_AX_bus\,
	ay => \inst2|Mult0~mac_AY_bus\,
	bx => \inst2|Mult0~mac_BX_bus\,
	by => \inst2|Mult0~mac_BY_bus\,
	resulta => \inst2|Mult0~mac_RESULTA_bus\);

-- Location: MLABCELL_X84_Y6_N36
\inst2|s_addrRamDado[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_addrRamDado[13]~feeder_combout\ = \inst2|Mult0~335\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Mult0~335\,
	combout => \inst2|s_addrRamDado[13]~feeder_combout\);

-- Location: MLABCELL_X84_Y7_N45
\inst2|s_addrRamDado[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_addrRamDado[8]~0_combout\ = ( !\inst2|state.LOADDATA~q\ & ( !\inst2|state.STOREDATA~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_state.STOREDATA~q\,
	dataf => \inst2|ALT_INV_state.LOADDATA~q\,
	combout => \inst2|s_addrRamDado[8]~0_combout\);

-- Location: MLABCELL_X84_Y6_N3
\inst2|WideOr4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|WideOr4~combout\ = ( \inst2|WideOr13~0_combout\ & ( !\inst2|state.WAITCALCDISTANCE~2_combout\ & ( (!\inst2|state.IDLE~q\ & (!\inst2|state.CALCDISTANCE~q\ & (!\inst2|state.ENDSTATE~q\ & !\inst2|state.VERIFYDATA~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.IDLE~q\,
	datab => \inst2|ALT_INV_state.CALCDISTANCE~q\,
	datac => \inst2|ALT_INV_state.ENDSTATE~q\,
	datad => \inst2|ALT_INV_state.VERIFYDATA~q\,
	datae => \inst2|ALT_INV_WideOr13~0_combout\,
	dataf => \inst2|ALT_INV_state.WAITCALCDISTANCE~2_combout\,
	combout => \inst2|WideOr4~combout\);

-- Location: FF_X84_Y6_N37
\inst2|s_addrRamDado[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_addrRamDado[13]~feeder_combout\,
	asdata => \inst2|s_countDado[13]~_Duplicate_1_q\,
	sclr => \inst2|s_addrRamDado[8]~0_combout\,
	sload => \inst2|state.STOREDATA~q\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(13));

-- Location: MLABCELL_X84_Y6_N54
\inst2|s_addrRamDado[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_addrRamDado[12]~feeder_combout\ = ( \inst2|Mult0~334\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_Mult0~334\,
	combout => \inst2|s_addrRamDado[12]~feeder_combout\);

-- Location: FF_X84_Y6_N55
\inst2|s_addrRamDado[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_addrRamDado[12]~feeder_combout\,
	asdata => \inst2|s_countDado[12]~_Duplicate_1_q\,
	sclr => \inst2|s_addrRamDado[8]~0_combout\,
	sload => \inst2|state.STOREDATA~q\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(12));

-- Location: LABCELL_X83_Y6_N39
\inst2|s_addrRamDado[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_addrRamDado[11]~feeder_combout\ = ( \inst2|Mult0~333\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_Mult0~333\,
	combout => \inst2|s_addrRamDado[11]~feeder_combout\);

-- Location: FF_X83_Y6_N40
\inst2|s_addrRamDado[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_addrRamDado[11]~feeder_combout\,
	asdata => \inst2|s_countDado[11]~_Duplicate_1_q\,
	sclr => \inst2|s_addrRamDado[8]~0_combout\,
	sload => \inst2|state.STOREDATA~q\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(11));

-- Location: MLABCELL_X84_Y6_N42
\inst2|s_addrRamDado[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_addrRamDado[10]~feeder_combout\ = ( \inst2|Mult0~332\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_Mult0~332\,
	combout => \inst2|s_addrRamDado[10]~feeder_combout\);

-- Location: FF_X84_Y6_N43
\inst2|s_addrRamDado[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_addrRamDado[10]~feeder_combout\,
	asdata => \inst2|s_countDado[10]~_Duplicate_1_q\,
	sclr => \inst2|s_addrRamDado[8]~0_combout\,
	sload => \inst2|state.STOREDATA~q\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(10));

-- Location: MLABCELL_X84_Y6_N45
\inst2|s_addrRamDado[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_addrRamDado[9]~feeder_combout\ = ( \inst2|Mult0~331\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_Mult0~331\,
	combout => \inst2|s_addrRamDado[9]~feeder_combout\);

-- Location: FF_X84_Y6_N46
\inst2|s_addrRamDado[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_addrRamDado[9]~feeder_combout\,
	asdata => \inst2|s_countDado[9]~_Duplicate_1_q\,
	sclr => \inst2|s_addrRamDado[8]~0_combout\,
	sload => \inst2|state.STOREDATA~q\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(9));

-- Location: MLABCELL_X84_Y6_N39
\inst2|s_addrRamDado[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_addrRamDado[8]~feeder_combout\ = ( \inst2|Mult0~330\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_Mult0~330\,
	combout => \inst2|s_addrRamDado[8]~feeder_combout\);

-- Location: FF_X84_Y6_N40
\inst2|s_addrRamDado[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_addrRamDado[8]~feeder_combout\,
	asdata => \inst2|s_countDado[8]~_Duplicate_1_q\,
	sclr => \inst2|s_addrRamDado[8]~0_combout\,
	sload => \inst2|state.STOREDATA~q\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(8));

-- Location: LABCELL_X83_Y6_N6
\inst2|s_addrRamDado[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_addrRamDado[7]~feeder_combout\ = ( \inst2|Mult0~329\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_Mult0~329\,
	combout => \inst2|s_addrRamDado[7]~feeder_combout\);

-- Location: FF_X83_Y6_N7
\inst2|s_addrRamDado[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_addrRamDado[7]~feeder_combout\,
	asdata => \inst2|s_countDado[7]~_Duplicate_1_q\,
	sclr => \inst2|s_addrRamDado[8]~0_combout\,
	sload => \inst2|state.STOREDATA~q\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(7));

-- Location: LABCELL_X83_Y6_N0
\inst2|s_addrRamDado[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_addrRamDado[6]~feeder_combout\ = ( \inst2|Mult0~328\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_Mult0~328\,
	combout => \inst2|s_addrRamDado[6]~feeder_combout\);

-- Location: FF_X83_Y6_N1
\inst2|s_addrRamDado[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_addrRamDado[6]~feeder_combout\,
	asdata => \inst2|s_countDado[6]~_Duplicate_1_q\,
	sclr => \inst2|s_addrRamDado[8]~0_combout\,
	sload => \inst2|state.STOREDATA~q\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(6));

-- Location: MLABCELL_X84_Y6_N15
\inst2|s_addrRamDado[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_addrRamDado[5]~feeder_combout\ = ( \inst2|Mult0~327\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_Mult0~327\,
	combout => \inst2|s_addrRamDado[5]~feeder_combout\);

-- Location: FF_X84_Y6_N17
\inst2|s_addrRamDado[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_addrRamDado[5]~feeder_combout\,
	asdata => \inst2|s_countDado[5]~_Duplicate_1_q\,
	sclr => \inst2|s_addrRamDado[8]~0_combout\,
	sload => \inst2|state.STOREDATA~q\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(5));

-- Location: MLABCELL_X84_Y6_N12
\inst2|s_addrRamDado[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_addrRamDado[4]~feeder_combout\ = \inst2|Mult0~326\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_Mult0~326\,
	combout => \inst2|s_addrRamDado[4]~feeder_combout\);

-- Location: FF_X84_Y6_N13
\inst2|s_addrRamDado[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_addrRamDado[4]~feeder_combout\,
	asdata => \inst2|s_countDado[4]~_Duplicate_1_q\,
	sclr => \inst2|s_addrRamDado[8]~0_combout\,
	sload => \inst2|state.STOREDATA~q\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(4));

-- Location: MLABCELL_X84_Y6_N6
\inst2|s_addrRamDado[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_addrRamDado[3]~feeder_combout\ = \inst2|Mult0~325\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Mult0~325\,
	combout => \inst2|s_addrRamDado[3]~feeder_combout\);

-- Location: FF_X84_Y6_N7
\inst2|s_addrRamDado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_addrRamDado[3]~feeder_combout\,
	asdata => \inst2|s_countDado[3]~_Duplicate_1_q\,
	sclr => \inst2|s_addrRamDado[8]~0_combout\,
	sload => \inst2|state.STOREDATA~q\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(3));

-- Location: MLABCELL_X84_Y6_N9
\inst2|s_addrRamDado[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_addrRamDado[2]~feeder_combout\ = \inst2|Mult0~324\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Mult0~324\,
	combout => \inst2|s_addrRamDado[2]~feeder_combout\);

-- Location: FF_X84_Y6_N10
\inst2|s_addrRamDado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_addrRamDado[2]~feeder_combout\,
	asdata => \inst2|s_countDado[2]~_Duplicate_1_q\,
	sclr => \inst2|s_addrRamDado[8]~0_combout\,
	sload => \inst2|state.STOREDATA~q\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(2));

-- Location: MLABCELL_X84_Y6_N24
\inst2|s_addrRamDado[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_addrRamDado[1]~feeder_combout\ = \inst2|Mult0~323\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Mult0~323\,
	combout => \inst2|s_addrRamDado[1]~feeder_combout\);

-- Location: FF_X84_Y6_N25
\inst2|s_addrRamDado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_addrRamDado[1]~feeder_combout\,
	asdata => \inst2|s_countDado[1]~_Duplicate_1_q\,
	sclr => \inst2|s_addrRamDado[8]~0_combout\,
	sload => \inst2|state.STOREDATA~q\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(1));

-- Location: MLABCELL_X84_Y6_N27
\inst2|s_addrRamDado[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_addrRamDado[0]~feeder_combout\ = \inst2|Mult0~mac_resulta\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Mult0~mac_resulta\,
	combout => \inst2|s_addrRamDado[0]~feeder_combout\);

-- Location: FF_X84_Y6_N28
\inst2|s_addrRamDado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_addrRamDado[0]~feeder_combout\,
	asdata => \inst2|s_countDado[0]~_Duplicate_1_q\,
	sclr => \inst2|s_addrRamDado[8]~0_combout\,
	sload => \inst2|state.STOREDATA~q\,
	ena => \inst2|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_addrRamDado\(0));

-- Location: IOIBUF_X34_Y81_N41
\centroid[62]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(62),
	o => \centroid[62]~input_o\);

-- Location: MLABCELL_X34_Y4_N12
\inst|s_centroid[62]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[62]~feeder_combout\ = ( \centroid[62]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[62]~input_o\,
	combout => \inst|s_centroid[62]~feeder_combout\);

-- Location: FF_X34_Y4_N13
\inst|s_centroid[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[62]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(62));

-- Location: IOIBUF_X6_Y0_N35
\centroid[63]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(63),
	o => \centroid[63]~input_o\);

-- Location: LABCELL_X18_Y4_N27
\inst|s_centroid[63]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[63]~feeder_combout\ = ( \centroid[63]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[63]~input_o\,
	combout => \inst|s_centroid[63]~feeder_combout\);

-- Location: FF_X18_Y4_N28
\inst|s_centroid[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[63]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(63));

-- Location: IOIBUF_X24_Y0_N18
\dado[63]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(63),
	o => \dado[63]~input_o\);

-- Location: FF_X29_Y4_N32
\inst|s_dado[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[63]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(63));

-- Location: IOIBUF_X32_Y0_N52
\dado[62]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(62),
	o => \dado[62]~input_o\);

-- Location: FF_X29_Y4_N35
\inst|s_dado[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[62]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(62));

-- Location: LABCELL_X29_Y4_N30
\inst|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = ( \inst|s_dado\(63) & ( \inst|s_dado\(62) & ( (\inst|s_centroid\(62) & \inst|s_centroid\(63)) ) ) ) # ( !\inst|s_dado\(63) & ( \inst|s_dado\(62) & ( (\inst|s_centroid\(62) & !\inst|s_centroid\(63)) ) ) ) # ( \inst|s_dado\(63) & ( 
-- !\inst|s_dado\(62) & ( (!\inst|s_centroid\(62) & \inst|s_centroid\(63)) ) ) ) # ( !\inst|s_dado\(63) & ( !\inst|s_dado\(62) & ( (!\inst|s_centroid\(62) & !\inst|s_centroid\(63)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110000110000001100000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_s_centroid\(62),
	datac => \inst|ALT_INV_s_centroid\(63),
	datae => \inst|ALT_INV_s_dado\(63),
	dataf => \inst|ALT_INV_s_dado\(62),
	combout => \inst|Equal0~2_combout\);

-- Location: IOIBUF_X16_Y0_N1
\centroid[57]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(57),
	o => \centroid[57]~input_o\);

-- Location: FF_X22_Y4_N20
\inst|s_centroid[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[57]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(57));

-- Location: IOIBUF_X20_Y81_N18
\centroid[56]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(56),
	o => \centroid[56]~input_o\);

-- Location: LABCELL_X22_Y4_N57
\inst|s_centroid[56]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[56]~feeder_combout\ = ( \centroid[56]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[56]~input_o\,
	combout => \inst|s_centroid[56]~feeder_combout\);

-- Location: FF_X22_Y4_N59
\inst|s_centroid[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[56]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(56));

-- Location: IOIBUF_X14_Y0_N1
\dado[57]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(57),
	o => \dado[57]~input_o\);

-- Location: FF_X22_Y4_N14
\inst|s_dado[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[57]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(57));

-- Location: IOIBUF_X18_Y0_N58
\centroid[58]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(58),
	o => \centroid[58]~input_o\);

-- Location: LABCELL_X22_Y4_N54
\inst|s_centroid[58]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[58]~feeder_combout\ = ( \centroid[58]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[58]~input_o\,
	combout => \inst|s_centroid[58]~feeder_combout\);

-- Location: FF_X22_Y4_N56
\inst|s_centroid[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[58]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(58));

-- Location: IOIBUF_X22_Y81_N52
\dado[58]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(58),
	o => \dado[58]~input_o\);

-- Location: FF_X22_Y4_N23
\inst|s_dado[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[58]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(58));

-- Location: IOIBUF_X8_Y0_N1
\dado[56]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(56),
	o => \dado[56]~input_o\);

-- Location: LABCELL_X22_Y4_N15
\inst|s_dado[56]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_dado[56]~feeder_combout\ = ( \dado[56]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dado[56]~input_o\,
	combout => \inst|s_dado[56]~feeder_combout\);

-- Location: FF_X22_Y4_N17
\inst|s_dado[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_dado[56]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(56));

-- Location: LABCELL_X22_Y4_N21
\inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = ( \inst|s_dado\(58) & ( \inst|s_dado\(56) & ( (\inst|s_centroid\(56) & (\inst|s_centroid\(58) & (!\inst|s_centroid\(57) $ (\inst|s_dado\(57))))) ) ) ) # ( !\inst|s_dado\(58) & ( \inst|s_dado\(56) & ( (\inst|s_centroid\(56) & 
-- (!\inst|s_centroid\(58) & (!\inst|s_centroid\(57) $ (\inst|s_dado\(57))))) ) ) ) # ( \inst|s_dado\(58) & ( !\inst|s_dado\(56) & ( (!\inst|s_centroid\(56) & (\inst|s_centroid\(58) & (!\inst|s_centroid\(57) $ (\inst|s_dado\(57))))) ) ) ) # ( 
-- !\inst|s_dado\(58) & ( !\inst|s_dado\(56) & ( (!\inst|s_centroid\(56) & (!\inst|s_centroid\(58) & (!\inst|s_centroid\(57) $ (\inst|s_dado\(57))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_s_centroid\(57),
	datab => \inst|ALT_INV_s_centroid\(56),
	datac => \inst|ALT_INV_s_dado\(57),
	datad => \inst|ALT_INV_s_centroid\(58),
	datae => \inst|ALT_INV_s_dado\(58),
	dataf => \inst|ALT_INV_s_dado\(56),
	combout => \inst|Equal0~0_combout\);

-- Location: IOIBUF_X28_Y0_N35
\centroid[61]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(61),
	o => \centroid[61]~input_o\);

-- Location: FF_X28_Y4_N26
\inst|s_centroid[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[61]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(61));

-- Location: IOIBUF_X18_Y0_N92
\centroid[60]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(60),
	o => \centroid[60]~input_o\);

-- Location: FF_X29_Y4_N41
\inst|s_centroid[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[60]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(60));

-- Location: IOIBUF_X30_Y81_N18
\dado[60]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(60),
	o => \dado[60]~input_o\);

-- Location: FF_X29_Y4_N43
\inst|s_dado[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[60]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(60));

-- Location: IOIBUF_X26_Y0_N92
\centroid[59]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(59),
	o => \centroid[59]~input_o\);

-- Location: LABCELL_X29_Y4_N45
\inst|s_centroid[59]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[59]~feeder_combout\ = ( \centroid[59]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[59]~input_o\,
	combout => \inst|s_centroid[59]~feeder_combout\);

-- Location: FF_X29_Y4_N47
\inst|s_centroid[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[59]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(59));

-- Location: IOIBUF_X24_Y0_N35
\dado[59]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(59),
	o => \dado[59]~input_o\);

-- Location: FF_X29_Y4_N38
\inst|s_dado[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[59]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(59));

-- Location: LABCELL_X29_Y4_N36
\inst|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = ( \inst|s_dado\(59) & ( (\inst|s_centroid\(59) & (!\inst|s_centroid\(60) $ (\inst|s_dado\(60)))) ) ) # ( !\inst|s_dado\(59) & ( (!\inst|s_centroid\(59) & (!\inst|s_centroid\(60) $ (\inst|s_dado\(60)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000000000001100001111000011000000000000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_s_centroid\(60),
	datac => \inst|ALT_INV_s_dado\(60),
	datad => \inst|ALT_INV_s_centroid\(59),
	datae => \inst|ALT_INV_s_dado\(59),
	combout => \inst|Equal0~1_combout\);

-- Location: IOIBUF_X2_Y0_N58
\dado[61]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(61),
	o => \dado[61]~input_o\);

-- Location: FF_X27_Y4_N58
\inst|s_dado[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[61]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(61));

-- Location: MLABCELL_X28_Y4_N42
\inst|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = ( \inst|s_dado\(61) & ( (!\inst|Equal0~2_combout\) # ((!\inst|Equal0~0_combout\) # ((!\inst|s_centroid\(61)) # (!\inst|Equal0~1_combout\))) ) ) # ( !\inst|s_dado\(61) & ( (!\inst|Equal0~2_combout\) # ((!\inst|Equal0~0_combout\) # 
-- ((!\inst|Equal0~1_combout\) # (\inst|s_centroid\(61)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101111111111111110111111111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal0~2_combout\,
	datab => \inst|ALT_INV_Equal0~0_combout\,
	datac => \inst|ALT_INV_s_centroid\(61),
	datad => \inst|ALT_INV_Equal0~1_combout\,
	dataf => \inst|ALT_INV_s_dado\(61),
	combout => \inst|Equal0~3_combout\);

-- Location: FF_X28_Y4_N43
\inst|s_dist7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Equal0~3_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dist7~q\);

-- Location: IOIBUF_X28_Y0_N1
\centroid[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(5),
	o => \centroid[5]~input_o\);

-- Location: FF_X28_Y4_N56
\inst|s_centroid[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[5]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(5));

-- Location: IOIBUF_X10_Y81_N41
\centroid[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(7),
	o => \centroid[7]~input_o\);

-- Location: FF_X22_Y4_N50
\inst|s_centroid[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[7]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(7));

-- Location: IOIBUF_X18_Y81_N75
\centroid[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(6),
	o => \centroid[6]~input_o\);

-- Location: FF_X22_Y4_N32
\inst|s_centroid[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[6]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(6));

-- Location: IOIBUF_X20_Y0_N18
\dado[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(7),
	o => \dado[7]~input_o\);

-- Location: FF_X22_Y4_N53
\inst|s_dado[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[7]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(7));

-- Location: IOIBUF_X10_Y0_N75
\dado[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(6),
	o => \dado[6]~input_o\);

-- Location: LABCELL_X22_Y4_N33
\inst|s_dado[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_dado[6]~feeder_combout\ = ( \dado[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dado[6]~input_o\,
	combout => \inst|s_dado[6]~feeder_combout\);

-- Location: FF_X22_Y4_N35
\inst|s_dado[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_dado[6]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(6));

-- Location: LABCELL_X22_Y4_N51
\inst|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal7~2_combout\ = ( \inst|s_dado\(7) & ( \inst|s_dado\(6) & ( (\inst|s_centroid\(7) & \inst|s_centroid\(6)) ) ) ) # ( !\inst|s_dado\(7) & ( \inst|s_dado\(6) & ( (!\inst|s_centroid\(7) & \inst|s_centroid\(6)) ) ) ) # ( \inst|s_dado\(7) & ( 
-- !\inst|s_dado\(6) & ( (\inst|s_centroid\(7) & !\inst|s_centroid\(6)) ) ) ) # ( !\inst|s_dado\(7) & ( !\inst|s_dado\(6) & ( (!\inst|s_centroid\(7) & !\inst|s_centroid\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000010100000101000000001010000010100000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_s_centroid\(7),
	datac => \inst|ALT_INV_s_centroid\(6),
	datae => \inst|ALT_INV_s_dado\(7),
	dataf => \inst|ALT_INV_s_dado\(6),
	combout => \inst|Equal7~2_combout\);

-- Location: IOIBUF_X26_Y81_N92
\centroid[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(3),
	o => \centroid[3]~input_o\);

-- Location: FF_X27_Y5_N14
\inst|s_centroid[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[3]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(3));

-- Location: IOIBUF_X28_Y81_N18
\dado[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(4),
	o => \dado[4]~input_o\);

-- Location: FF_X27_Y5_N8
\inst|s_dado[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[4]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(4));

-- Location: IOIBUF_X22_Y0_N35
\dado[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(3),
	o => \dado[3]~input_o\);

-- Location: FF_X27_Y5_N11
\inst|s_dado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[3]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(3));

-- Location: IOIBUF_X26_Y81_N58
\centroid[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(4),
	o => \centroid[4]~input_o\);

-- Location: FF_X27_Y5_N17
\inst|s_centroid[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[4]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(4));

-- Location: LABCELL_X27_Y5_N9
\inst|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal7~1_combout\ = ( \inst|s_dado\(3) & ( \inst|s_centroid\(4) & ( (\inst|s_centroid\(3) & \inst|s_dado\(4)) ) ) ) # ( !\inst|s_dado\(3) & ( \inst|s_centroid\(4) & ( (!\inst|s_centroid\(3) & \inst|s_dado\(4)) ) ) ) # ( \inst|s_dado\(3) & ( 
-- !\inst|s_centroid\(4) & ( (\inst|s_centroid\(3) & !\inst|s_dado\(4)) ) ) ) # ( !\inst|s_dado\(3) & ( !\inst|s_centroid\(4) & ( (!\inst|s_centroid\(3) & !\inst|s_dado\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000001100000011000000001100000011000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_s_centroid\(3),
	datac => \inst|ALT_INV_s_dado\(4),
	datae => \inst|ALT_INV_s_dado\(3),
	dataf => \inst|ALT_INV_s_centroid\(4),
	combout => \inst|Equal7~1_combout\);

-- Location: IOIBUF_X20_Y81_N35
\centroid[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(2),
	o => \centroid[2]~input_o\);

-- Location: LABCELL_X22_Y4_N36
\inst|s_centroid[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[2]~feeder_combout\ = ( \centroid[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[2]~input_o\,
	combout => \inst|s_centroid[2]~feeder_combout\);

-- Location: FF_X22_Y4_N38
\inst|s_centroid[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[2]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(2));

-- Location: IOIBUF_X18_Y0_N41
\dado[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(0),
	o => \dado[0]~input_o\);

-- Location: FF_X22_Y4_N44
\inst|s_dado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[0]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(0));

-- Location: IOIBUF_X20_Y0_N1
\dado[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(1),
	o => \dado[1]~input_o\);

-- Location: LABCELL_X22_Y4_N45
\inst|s_dado[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_dado[1]~feeder_combout\ = ( \dado[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dado[1]~input_o\,
	combout => \inst|s_dado[1]~feeder_combout\);

-- Location: FF_X22_Y4_N47
\inst|s_dado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_dado[1]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(1));

-- Location: IOIBUF_X4_Y0_N1
\centroid[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(0),
	o => \centroid[0]~input_o\);

-- Location: FF_X22_Y4_N26
\inst|s_centroid[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[0]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(0));

-- Location: IOIBUF_X16_Y0_N18
\dado[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(2),
	o => \dado[2]~input_o\);

-- Location: FF_X22_Y4_N29
\inst|s_dado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[2]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(2));

-- Location: IOIBUF_X20_Y0_N52
\centroid[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(1),
	o => \centroid[1]~input_o\);

-- Location: LABCELL_X22_Y4_N39
\inst|s_centroid[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[1]~feeder_combout\ = ( \centroid[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[1]~input_o\,
	combout => \inst|s_centroid[1]~feeder_combout\);

-- Location: FF_X22_Y4_N41
\inst|s_centroid[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[1]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(1));

-- Location: LABCELL_X22_Y4_N27
\inst|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal7~0_combout\ = ( \inst|s_dado\(2) & ( \inst|s_centroid\(1) & ( (\inst|s_centroid\(2) & (\inst|s_dado\(1) & (!\inst|s_dado\(0) $ (\inst|s_centroid\(0))))) ) ) ) # ( !\inst|s_dado\(2) & ( \inst|s_centroid\(1) & ( (!\inst|s_centroid\(2) & 
-- (\inst|s_dado\(1) & (!\inst|s_dado\(0) $ (\inst|s_centroid\(0))))) ) ) ) # ( \inst|s_dado\(2) & ( !\inst|s_centroid\(1) & ( (\inst|s_centroid\(2) & (!\inst|s_dado\(1) & (!\inst|s_dado\(0) $ (\inst|s_centroid\(0))))) ) ) ) # ( !\inst|s_dado\(2) & ( 
-- !\inst|s_centroid\(1) & ( (!\inst|s_centroid\(2) & (!\inst|s_dado\(1) & (!\inst|s_dado\(0) $ (\inst|s_centroid\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_s_centroid\(2),
	datab => \inst|ALT_INV_s_dado\(0),
	datac => \inst|ALT_INV_s_dado\(1),
	datad => \inst|ALT_INV_s_centroid\(0),
	datae => \inst|ALT_INV_s_dado\(2),
	dataf => \inst|ALT_INV_s_centroid\(1),
	combout => \inst|Equal7~0_combout\);

-- Location: IOIBUF_X16_Y0_N52
\dado[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(5),
	o => \dado[5]~input_o\);

-- Location: LABCELL_X27_Y4_N0
\inst|s_dado[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_dado[5]~feeder_combout\ = ( \dado[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dado[5]~input_o\,
	combout => \inst|s_dado[5]~feeder_combout\);

-- Location: FF_X27_Y4_N1
\inst|s_dado[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_dado[5]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(5));

-- Location: MLABCELL_X28_Y4_N12
\inst|Equal7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal7~3_combout\ = ( \inst|Equal7~0_combout\ & ( \inst|s_dado\(5) & ( (!\inst|s_centroid\(5)) # ((!\inst|Equal7~2_combout\) # (!\inst|Equal7~1_combout\)) ) ) ) # ( !\inst|Equal7~0_combout\ & ( \inst|s_dado\(5) ) ) # ( \inst|Equal7~0_combout\ & ( 
-- !\inst|s_dado\(5) & ( ((!\inst|Equal7~2_combout\) # (!\inst|Equal7~1_combout\)) # (\inst|s_centroid\(5)) ) ) ) # ( !\inst|Equal7~0_combout\ & ( !\inst|s_dado\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111011111110111111111111111111111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_s_centroid\(5),
	datab => \inst|ALT_INV_Equal7~2_combout\,
	datac => \inst|ALT_INV_Equal7~1_combout\,
	datae => \inst|ALT_INV_Equal7~0_combout\,
	dataf => \inst|ALT_INV_s_dado\(5),
	combout => \inst|Equal7~3_combout\);

-- Location: FF_X28_Y4_N14
\inst|s_dist0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Equal7~3_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dist0~q\);

-- Location: MLABCELL_X28_Y4_N48
\inst3|parallel_add_component|auto_generated|op_3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|op_3~0_combout\ = ( \inst|s_dist0~q\ & ( \inst|s_dist7~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_s_dist7~q\,
	dataf => \inst|ALT_INV_s_dist0~q\,
	combout => \inst3|parallel_add_component|auto_generated|op_3~0_combout\);

-- Location: IOIBUF_X38_Y0_N18
\dado[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(17),
	o => \dado[17]~input_o\);

-- Location: FF_X34_Y4_N23
\inst|s_dado[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[17]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(17));

-- Location: IOIBUF_X56_Y0_N52
\centroid[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(16),
	o => \centroid[16]~input_o\);

-- Location: MLABCELL_X34_Y4_N45
\inst|s_centroid[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[16]~feeder_combout\ = ( \centroid[16]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[16]~input_o\,
	combout => \inst|s_centroid[16]~feeder_combout\);

-- Location: FF_X34_Y4_N47
\inst|s_centroid[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[16]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(16));

-- Location: IOIBUF_X34_Y0_N75
\centroid[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(18),
	o => \centroid[18]~input_o\);

-- Location: MLABCELL_X34_Y4_N18
\inst|s_centroid[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[18]~feeder_combout\ = ( \centroid[18]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[18]~input_o\,
	combout => \inst|s_centroid[18]~feeder_combout\);

-- Location: FF_X34_Y4_N20
\inst|s_centroid[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[18]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(18));

-- Location: IOIBUF_X36_Y0_N52
\dado[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(16),
	o => \dado[16]~input_o\);

-- Location: MLABCELL_X34_Y4_N42
\inst|s_dado[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_dado[16]~feeder_combout\ = ( \dado[16]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dado[16]~input_o\,
	combout => \inst|s_dado[16]~feeder_combout\);

-- Location: FF_X34_Y4_N44
\inst|s_dado[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_dado[16]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(16));

-- Location: IOIBUF_X34_Y0_N92
\dado[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(18),
	o => \dado[18]~input_o\);

-- Location: FF_X34_Y4_N50
\inst|s_dado[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[18]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(18));

-- Location: IOIBUF_X32_Y81_N1
\centroid[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(17),
	o => \centroid[17]~input_o\);

-- Location: FF_X34_Y4_N53
\inst|s_centroid[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[17]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(17));

-- Location: MLABCELL_X34_Y4_N48
\inst|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal5~0_combout\ = ( \inst|s_dado\(18) & ( \inst|s_centroid\(17) & ( (\inst|s_dado\(17) & (\inst|s_centroid\(18) & (!\inst|s_centroid\(16) $ (\inst|s_dado\(16))))) ) ) ) # ( !\inst|s_dado\(18) & ( \inst|s_centroid\(17) & ( (\inst|s_dado\(17) & 
-- (!\inst|s_centroid\(18) & (!\inst|s_centroid\(16) $ (\inst|s_dado\(16))))) ) ) ) # ( \inst|s_dado\(18) & ( !\inst|s_centroid\(17) & ( (!\inst|s_dado\(17) & (\inst|s_centroid\(18) & (!\inst|s_centroid\(16) $ (\inst|s_dado\(16))))) ) ) ) # ( 
-- !\inst|s_dado\(18) & ( !\inst|s_centroid\(17) & ( (!\inst|s_dado\(17) & (!\inst|s_centroid\(18) & (!\inst|s_centroid\(16) $ (\inst|s_dado\(16))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_s_dado\(17),
	datab => \inst|ALT_INV_s_centroid\(16),
	datac => \inst|ALT_INV_s_centroid\(18),
	datad => \inst|ALT_INV_s_dado\(16),
	datae => \inst|ALT_INV_s_dado\(18),
	dataf => \inst|ALT_INV_s_centroid\(17),
	combout => \inst|Equal5~0_combout\);

-- Location: IOIBUF_X52_Y0_N35
\centroid[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(20),
	o => \centroid[20]~input_o\);

-- Location: MLABCELL_X34_Y4_N30
\inst|s_centroid[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[20]~feeder_combout\ = ( \centroid[20]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[20]~input_o\,
	combout => \inst|s_centroid[20]~feeder_combout\);

-- Location: FF_X34_Y4_N32
\inst|s_centroid[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[20]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(20));

-- Location: IOIBUF_X34_Y0_N41
\dado[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(20),
	o => \dado[20]~input_o\);

-- Location: FF_X34_Y4_N35
\inst|s_dado[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[20]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(20));

-- Location: IOIBUF_X36_Y0_N18
\dado[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(19),
	o => \dado[19]~input_o\);

-- Location: FF_X34_Y4_N26
\inst|s_dado[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[19]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(19));

-- Location: IOIBUF_X34_Y0_N58
\centroid[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(19),
	o => \centroid[19]~input_o\);

-- Location: FF_X34_Y4_N28
\inst|s_centroid[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[19]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(19));

-- Location: MLABCELL_X34_Y4_N24
\inst|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal5~1_combout\ = ( \inst|s_dado\(19) & ( \inst|s_centroid\(19) & ( !\inst|s_centroid\(20) $ (\inst|s_dado\(20)) ) ) ) # ( !\inst|s_dado\(19) & ( !\inst|s_centroid\(19) & ( !\inst|s_centroid\(20) $ (\inst|s_dado\(20)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011000000000000000000000000000000001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_s_centroid\(20),
	datac => \inst|ALT_INV_s_dado\(20),
	datae => \inst|ALT_INV_s_dado\(19),
	dataf => \inst|ALT_INV_s_centroid\(19),
	combout => \inst|Equal5~1_combout\);

-- Location: IOIBUF_X34_Y81_N92
\centroid[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(21),
	o => \centroid[21]~input_o\);

-- Location: LABCELL_X33_Y4_N18
\inst|s_centroid[21]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[21]~feeder_combout\ = ( \centroid[21]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[21]~input_o\,
	combout => \inst|s_centroid[21]~feeder_combout\);

-- Location: FF_X33_Y4_N19
\inst|s_centroid[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[21]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(21));

-- Location: IOIBUF_X36_Y0_N35
\dado[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(22),
	o => \dado[22]~input_o\);

-- Location: MLABCELL_X34_Y4_N3
\inst|s_dado[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_dado[22]~feeder_combout\ = ( \dado[22]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dado[22]~input_o\,
	combout => \inst|s_dado[22]~feeder_combout\);

-- Location: FF_X34_Y4_N5
\inst|s_dado[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_dado[22]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(22));

-- Location: IOIBUF_X38_Y0_N1
\centroid[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(23),
	o => \centroid[23]~input_o\);

-- Location: MLABCELL_X34_Y4_N0
\inst|s_centroid[23]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[23]~feeder_combout\ = ( \centroid[23]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[23]~input_o\,
	combout => \inst|s_centroid[23]~feeder_combout\);

-- Location: FF_X34_Y4_N2
\inst|s_centroid[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[23]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(23));

-- Location: IOIBUF_X52_Y0_N1
\dado[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(23),
	o => \dado[23]~input_o\);

-- Location: FF_X34_Y4_N59
\inst|s_dado[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[23]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(23));

-- Location: IOIBUF_X38_Y0_N35
\centroid[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(22),
	o => \centroid[22]~input_o\);

-- Location: LABCELL_X35_Y4_N24
\inst|s_centroid[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[22]~feeder_combout\ = ( \centroid[22]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[22]~input_o\,
	combout => \inst|s_centroid[22]~feeder_combout\);

-- Location: FF_X35_Y4_N26
\inst|s_centroid[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[22]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(22));

-- Location: MLABCELL_X34_Y4_N57
\inst|Equal5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal5~2_combout\ = ( \inst|s_dado\(23) & ( \inst|s_centroid\(22) & ( (\inst|s_dado\(22) & \inst|s_centroid\(23)) ) ) ) # ( !\inst|s_dado\(23) & ( \inst|s_centroid\(22) & ( (\inst|s_dado\(22) & !\inst|s_centroid\(23)) ) ) ) # ( \inst|s_dado\(23) & ( 
-- !\inst|s_centroid\(22) & ( (!\inst|s_dado\(22) & \inst|s_centroid\(23)) ) ) ) # ( !\inst|s_dado\(23) & ( !\inst|s_centroid\(22) & ( (!\inst|s_dado\(22) & !\inst|s_centroid\(23)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000001010101001010101000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_s_dado\(22),
	datad => \inst|ALT_INV_s_centroid\(23),
	datae => \inst|ALT_INV_s_dado\(23),
	dataf => \inst|ALT_INV_s_centroid\(22),
	combout => \inst|Equal5~2_combout\);

-- Location: IOIBUF_X32_Y0_N1
\dado[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(21),
	o => \dado[21]~input_o\);

-- Location: FF_X28_Y4_N28
\inst|s_dado[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[21]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(21));

-- Location: MLABCELL_X28_Y4_N51
\inst|Equal5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal5~3_combout\ = ( \inst|s_dado\(21) & ( (!\inst|Equal5~0_combout\) # ((!\inst|Equal5~1_combout\) # ((!\inst|s_centroid\(21)) # (!\inst|Equal5~2_combout\))) ) ) # ( !\inst|s_dado\(21) & ( (!\inst|Equal5~0_combout\) # ((!\inst|Equal5~1_combout\) # 
-- ((!\inst|Equal5~2_combout\) # (\inst|s_centroid\(21)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101111111111111110111111111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal5~0_combout\,
	datab => \inst|ALT_INV_Equal5~1_combout\,
	datac => \inst|ALT_INV_s_centroid\(21),
	datad => \inst|ALT_INV_Equal5~2_combout\,
	dataf => \inst|ALT_INV_s_dado\(21),
	combout => \inst|Equal5~3_combout\);

-- Location: FF_X28_Y4_N53
\inst|s_dist2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Equal5~3_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dist2~q\);

-- Location: IOIBUF_X8_Y0_N18
\dado[33]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(33),
	o => \dado[33]~input_o\);

-- Location: LABCELL_X18_Y4_N33
\inst|s_dado[33]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_dado[33]~feeder_combout\ = ( \dado[33]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dado[33]~input_o\,
	combout => \inst|s_dado[33]~feeder_combout\);

-- Location: FF_X18_Y4_N35
\inst|s_dado[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_dado[33]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(33));

-- Location: IOIBUF_X4_Y0_N18
\dado[32]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(32),
	o => \dado[32]~input_o\);

-- Location: FF_X18_Y4_N17
\inst|s_dado[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[32]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(32));

-- Location: IOIBUF_X14_Y81_N18
\centroid[34]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(34),
	o => \centroid[34]~input_o\);

-- Location: LABCELL_X18_Y4_N12
\inst|s_centroid[34]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[34]~feeder_combout\ = ( \centroid[34]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[34]~input_o\,
	combout => \inst|s_centroid[34]~feeder_combout\);

-- Location: FF_X18_Y4_N14
\inst|s_centroid[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[34]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(34));

-- Location: IOIBUF_X14_Y0_N52
\centroid[32]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(32),
	o => \centroid[32]~input_o\);

-- Location: FF_X18_Y4_N7
\inst|s_centroid[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[32]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(32));

-- Location: IOIBUF_X14_Y0_N35
\dado[34]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(34),
	o => \dado[34]~input_o\);

-- Location: FF_X18_Y4_N11
\inst|s_dado[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[34]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(34));

-- Location: IOIBUF_X6_Y0_N18
\centroid[33]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(33),
	o => \centroid[33]~input_o\);

-- Location: LABCELL_X18_Y4_N30
\inst|s_centroid[33]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[33]~feeder_combout\ = ( \centroid[33]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[33]~input_o\,
	combout => \inst|s_centroid[33]~feeder_combout\);

-- Location: FF_X18_Y4_N32
\inst|s_centroid[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[33]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(33));

-- Location: LABCELL_X18_Y4_N9
\inst|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal3~0_combout\ = ( \inst|s_dado\(34) & ( \inst|s_centroid\(33) & ( (\inst|s_dado\(33) & (\inst|s_centroid\(34) & (!\inst|s_dado\(32) $ (\inst|s_centroid\(32))))) ) ) ) # ( !\inst|s_dado\(34) & ( \inst|s_centroid\(33) & ( (\inst|s_dado\(33) & 
-- (!\inst|s_centroid\(34) & (!\inst|s_dado\(32) $ (\inst|s_centroid\(32))))) ) ) ) # ( \inst|s_dado\(34) & ( !\inst|s_centroid\(33) & ( (!\inst|s_dado\(33) & (\inst|s_centroid\(34) & (!\inst|s_dado\(32) $ (\inst|s_centroid\(32))))) ) ) ) # ( 
-- !\inst|s_dado\(34) & ( !\inst|s_centroid\(33) & ( (!\inst|s_dado\(33) & (!\inst|s_centroid\(34) & (!\inst|s_dado\(32) $ (\inst|s_centroid\(32))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_s_dado\(33),
	datab => \inst|ALT_INV_s_dado\(32),
	datac => \inst|ALT_INV_s_centroid\(34),
	datad => \inst|ALT_INV_s_centroid\(32),
	datae => \inst|ALT_INV_s_dado\(34),
	dataf => \inst|ALT_INV_s_centroid\(33),
	combout => \inst|Equal3~0_combout\);

-- Location: IOIBUF_X12_Y0_N52
\centroid[36]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(36),
	o => \centroid[36]~input_o\);

-- Location: FF_X18_Y4_N56
\inst|s_centroid[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[36]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(36));

-- Location: IOIBUF_X6_Y0_N52
\centroid[35]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(35),
	o => \centroid[35]~input_o\);

-- Location: LABCELL_X18_Y4_N51
\inst|s_centroid[35]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[35]~feeder_combout\ = ( \centroid[35]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[35]~input_o\,
	combout => \inst|s_centroid[35]~feeder_combout\);

-- Location: FF_X18_Y4_N53
\inst|s_centroid[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[35]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(35));

-- Location: IOIBUF_X10_Y0_N92
\dado[35]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(35),
	o => \dado[35]~input_o\);

-- Location: FF_X18_Y4_N59
\inst|s_dado[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[35]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(35));

-- Location: IOIBUF_X8_Y0_N35
\dado[36]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(36),
	o => \dado[36]~input_o\);

-- Location: LABCELL_X18_Y4_N48
\inst|s_dado[36]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_dado[36]~feeder_combout\ = ( \dado[36]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dado[36]~input_o\,
	combout => \inst|s_dado[36]~feeder_combout\);

-- Location: FF_X18_Y4_N50
\inst|s_dado[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_dado[36]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(36));

-- Location: LABCELL_X18_Y4_N57
\inst|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal3~1_combout\ = ( \inst|s_dado\(35) & ( \inst|s_dado\(36) & ( (\inst|s_centroid\(36) & \inst|s_centroid\(35)) ) ) ) # ( !\inst|s_dado\(35) & ( \inst|s_dado\(36) & ( (\inst|s_centroid\(36) & !\inst|s_centroid\(35)) ) ) ) # ( \inst|s_dado\(35) & ( 
-- !\inst|s_dado\(36) & ( (!\inst|s_centroid\(36) & \inst|s_centroid\(35)) ) ) ) # ( !\inst|s_dado\(35) & ( !\inst|s_dado\(36) & ( (!\inst|s_centroid\(36) & !\inst|s_centroid\(35)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000001010101001010101000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_s_centroid\(36),
	datad => \inst|ALT_INV_s_centroid\(35),
	datae => \inst|ALT_INV_s_dado\(35),
	dataf => \inst|ALT_INV_s_dado\(36),
	combout => \inst|Equal3~1_combout\);

-- Location: IOIBUF_X32_Y81_N35
\dado[37]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(37),
	o => \dado[37]~input_o\);

-- Location: FF_X33_Y4_N40
\inst|s_dado[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[37]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(37));

-- Location: IOIBUF_X50_Y0_N41
\centroid[39]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(39),
	o => \centroid[39]~input_o\);

-- Location: FF_X39_Y4_N23
\inst|s_centroid[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[39]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(39));

-- Location: IOIBUF_X54_Y0_N18
\centroid[38]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(38),
	o => \centroid[38]~input_o\);

-- Location: FF_X39_Y4_N50
\inst|s_centroid[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[38]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(38));

-- Location: IOIBUF_X40_Y81_N18
\dado[39]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(39),
	o => \dado[39]~input_o\);

-- Location: FF_X39_Y4_N20
\inst|s_dado[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[39]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(39));

-- Location: IOIBUF_X52_Y0_N18
\dado[38]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(38),
	o => \dado[38]~input_o\);

-- Location: MLABCELL_X39_Y4_N51
\inst|s_dado[38]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_dado[38]~feeder_combout\ = ( \dado[38]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dado[38]~input_o\,
	combout => \inst|s_dado[38]~feeder_combout\);

-- Location: FF_X39_Y4_N53
\inst|s_dado[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_dado[38]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(38));

-- Location: MLABCELL_X39_Y4_N18
\inst|Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal3~2_combout\ = ( \inst|s_dado\(39) & ( \inst|s_dado\(38) & ( (\inst|s_centroid\(39) & \inst|s_centroid\(38)) ) ) ) # ( !\inst|s_dado\(39) & ( \inst|s_dado\(38) & ( (!\inst|s_centroid\(39) & \inst|s_centroid\(38)) ) ) ) # ( \inst|s_dado\(39) & ( 
-- !\inst|s_dado\(38) & ( (\inst|s_centroid\(39) & !\inst|s_centroid\(38)) ) ) ) # ( !\inst|s_dado\(39) & ( !\inst|s_dado\(38) & ( (!\inst|s_centroid\(39) & !\inst|s_centroid\(38)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000010100000101000000001010000010100000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_s_centroid\(39),
	datac => \inst|ALT_INV_s_centroid\(38),
	datae => \inst|ALT_INV_s_dado\(39),
	dataf => \inst|ALT_INV_s_dado\(38),
	combout => \inst|Equal3~2_combout\);

-- Location: IOIBUF_X12_Y0_N18
\centroid[37]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(37),
	o => \centroid[37]~input_o\);

-- Location: LABCELL_X18_Y4_N3
\inst|s_centroid[37]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[37]~feeder_combout\ = ( \centroid[37]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[37]~input_o\,
	combout => \inst|s_centroid[37]~feeder_combout\);

-- Location: FF_X18_Y4_N4
\inst|s_centroid[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[37]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(37));

-- Location: MLABCELL_X28_Y4_N57
\inst|Equal3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal3~3_combout\ = ( \inst|Equal3~2_combout\ & ( \inst|s_centroid\(37) & ( (!\inst|Equal3~0_combout\) # ((!\inst|Equal3~1_combout\) # (!\inst|s_dado\(37))) ) ) ) # ( !\inst|Equal3~2_combout\ & ( \inst|s_centroid\(37) ) ) # ( \inst|Equal3~2_combout\ 
-- & ( !\inst|s_centroid\(37) & ( (!\inst|Equal3~0_combout\) # ((!\inst|Equal3~1_combout\) # (\inst|s_dado\(37))) ) ) ) # ( !\inst|Equal3~2_combout\ & ( !\inst|s_centroid\(37) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111011101111111111111111111111111111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal3~0_combout\,
	datab => \inst|ALT_INV_Equal3~1_combout\,
	datad => \inst|ALT_INV_s_dado\(37),
	datae => \inst|ALT_INV_Equal3~2_combout\,
	dataf => \inst|ALT_INV_s_centroid\(37),
	combout => \inst|Equal3~3_combout\);

-- Location: FF_X28_Y4_N59
\inst|s_dist4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Equal3~3_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dist4~q\);

-- Location: IOIBUF_X22_Y81_N35
\centroid[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(30),
	o => \centroid[30]~input_o\);

-- Location: LABCELL_X27_Y5_N36
\inst|s_centroid[30]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[30]~feeder_combout\ = ( \centroid[30]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[30]~input_o\,
	combout => \inst|s_centroid[30]~feeder_combout\);

-- Location: FF_X27_Y5_N37
\inst|s_centroid[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[30]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(30));

-- Location: IOIBUF_X36_Y0_N1
\centroid[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(31),
	o => \centroid[31]~input_o\);

-- Location: LABCELL_X33_Y4_N33
\inst|s_centroid[31]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[31]~feeder_combout\ = ( \centroid[31]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[31]~input_o\,
	combout => \inst|s_centroid[31]~feeder_combout\);

-- Location: FF_X33_Y4_N35
\inst|s_centroid[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[31]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(31));

-- Location: IOIBUF_X32_Y0_N35
\dado[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(31),
	o => \dado[31]~input_o\);

-- Location: FF_X33_Y4_N50
\inst|s_dado[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[31]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(31));

-- Location: IOIBUF_X24_Y0_N1
\dado[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(30),
	o => \dado[30]~input_o\);

-- Location: FF_X33_Y4_N53
\inst|s_dado[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[30]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(30));

-- Location: LABCELL_X33_Y4_N48
\inst|Equal4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal4~2_combout\ = ( \inst|s_dado\(31) & ( \inst|s_dado\(30) & ( (\inst|s_centroid\(30) & \inst|s_centroid\(31)) ) ) ) # ( !\inst|s_dado\(31) & ( \inst|s_dado\(30) & ( (\inst|s_centroid\(30) & !\inst|s_centroid\(31)) ) ) ) # ( \inst|s_dado\(31) & ( 
-- !\inst|s_dado\(30) & ( (!\inst|s_centroid\(30) & \inst|s_centroid\(31)) ) ) ) # ( !\inst|s_dado\(31) & ( !\inst|s_dado\(30) & ( (!\inst|s_centroid\(30) & !\inst|s_centroid\(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000010100000101001010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_s_centroid\(30),
	datac => \inst|ALT_INV_s_centroid\(31),
	datae => \inst|ALT_INV_s_dado\(31),
	dataf => \inst|ALT_INV_s_dado\(30),
	combout => \inst|Equal4~2_combout\);

-- Location: IOIBUF_X16_Y0_N35
\centroid[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(29),
	o => \centroid[29]~input_o\);

-- Location: LABCELL_X18_Y4_N0
\inst|s_centroid[29]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[29]~feeder_combout\ = ( \centroid[29]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[29]~input_o\,
	combout => \inst|s_centroid[29]~feeder_combout\);

-- Location: FF_X18_Y4_N1
\inst|s_centroid[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[29]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(29));

-- Location: IOIBUF_X22_Y0_N1
\centroid[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(28),
	o => \centroid[28]~input_o\);

-- Location: LABCELL_X29_Y4_N27
\inst|s_centroid[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[28]~feeder_combout\ = ( \centroid[28]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[28]~input_o\,
	combout => \inst|s_centroid[28]~feeder_combout\);

-- Location: FF_X29_Y4_N28
\inst|s_centroid[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[28]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(28));

-- Location: IOIBUF_X28_Y0_N18
\centroid[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(27),
	o => \centroid[27]~input_o\);

-- Location: FF_X29_Y4_N23
\inst|s_centroid[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[27]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(27));

-- Location: IOIBUF_X26_Y0_N75
\dado[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(27),
	o => \dado[27]~input_o\);

-- Location: FF_X29_Y4_N20
\inst|s_dado[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[27]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(27));

-- Location: IOIBUF_X28_Y0_N52
\dado[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(28),
	o => \dado[28]~input_o\);

-- Location: LABCELL_X29_Y4_N24
\inst|s_dado[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_dado[28]~feeder_combout\ = ( \dado[28]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dado[28]~input_o\,
	combout => \inst|s_dado[28]~feeder_combout\);

-- Location: FF_X29_Y4_N26
\inst|s_dado[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_dado[28]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(28));

-- Location: LABCELL_X29_Y4_N18
\inst|Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal4~1_combout\ = ( \inst|s_dado\(27) & ( \inst|s_dado\(28) & ( (\inst|s_centroid\(28) & \inst|s_centroid\(27)) ) ) ) # ( !\inst|s_dado\(27) & ( \inst|s_dado\(28) & ( (\inst|s_centroid\(28) & !\inst|s_centroid\(27)) ) ) ) # ( \inst|s_dado\(27) & ( 
-- !\inst|s_dado\(28) & ( (!\inst|s_centroid\(28) & \inst|s_centroid\(27)) ) ) ) # ( !\inst|s_dado\(27) & ( !\inst|s_dado\(28) & ( (!\inst|s_centroid\(28) & !\inst|s_centroid\(27)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110000110000001100000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_s_centroid\(28),
	datac => \inst|ALT_INV_s_centroid\(27),
	datae => \inst|ALT_INV_s_dado\(27),
	dataf => \inst|ALT_INV_s_dado\(28),
	combout => \inst|Equal4~1_combout\);

-- Location: IOIBUF_X30_Y0_N52
\centroid[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(24),
	o => \centroid[24]~input_o\);

-- Location: FF_X29_Y4_N2
\inst|s_centroid[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[24]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(24));

-- Location: IOIBUF_X26_Y0_N41
\dado[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(24),
	o => \dado[24]~input_o\);

-- Location: FF_X29_Y4_N59
\inst|s_dado[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[24]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(24));

-- Location: IOIBUF_X26_Y0_N58
\centroid[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(26),
	o => \centroid[26]~input_o\);

-- Location: FF_X29_Y4_N53
\inst|s_centroid[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[26]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(26));

-- Location: IOIBUF_X34_Y81_N58
\centroid[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(25),
	o => \centroid[25]~input_o\);

-- Location: FF_X34_Y4_N40
\inst|s_centroid[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[25]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(25));

-- Location: IOIBUF_X30_Y0_N1
\dado[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(26),
	o => \dado[26]~input_o\);

-- Location: FF_X29_Y4_N50
\inst|s_dado[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[26]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(26));

-- Location: IOIBUF_X26_Y81_N75
\dado[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(25),
	o => \dado[25]~input_o\);

-- Location: FF_X27_Y5_N55
\inst|s_dado[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[25]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(25));

-- Location: LABCELL_X29_Y4_N48
\inst|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal4~0_combout\ = ( \inst|s_dado\(26) & ( \inst|s_dado\(25) & ( (\inst|s_centroid\(26) & (\inst|s_centroid\(25) & (!\inst|s_centroid\(24) $ (\inst|s_dado\(24))))) ) ) ) # ( !\inst|s_dado\(26) & ( \inst|s_dado\(25) & ( (!\inst|s_centroid\(26) & 
-- (\inst|s_centroid\(25) & (!\inst|s_centroid\(24) $ (\inst|s_dado\(24))))) ) ) ) # ( \inst|s_dado\(26) & ( !\inst|s_dado\(25) & ( (\inst|s_centroid\(26) & (!\inst|s_centroid\(25) & (!\inst|s_centroid\(24) $ (\inst|s_dado\(24))))) ) ) ) # ( 
-- !\inst|s_dado\(26) & ( !\inst|s_dado\(25) & ( (!\inst|s_centroid\(26) & (!\inst|s_centroid\(25) & (!\inst|s_centroid\(24) $ (\inst|s_dado\(24))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_s_centroid\(24),
	datab => \inst|ALT_INV_s_dado\(24),
	datac => \inst|ALT_INV_s_centroid\(26),
	datad => \inst|ALT_INV_s_centroid\(25),
	datae => \inst|ALT_INV_s_dado\(26),
	dataf => \inst|ALT_INV_s_dado\(25),
	combout => \inst|Equal4~0_combout\);

-- Location: IOIBUF_X30_Y0_N35
\dado[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(29),
	o => \dado[29]~input_o\);

-- Location: FF_X29_Y4_N17
\inst|s_dado[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[29]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(29));

-- Location: LABCELL_X29_Y4_N12
\inst|Equal4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal4~3_combout\ = ( \inst|Equal4~0_combout\ & ( \inst|s_dado\(29) & ( (!\inst|Equal4~2_combout\) # ((!\inst|s_centroid\(29)) # (!\inst|Equal4~1_combout\)) ) ) ) # ( !\inst|Equal4~0_combout\ & ( \inst|s_dado\(29) ) ) # ( \inst|Equal4~0_combout\ & ( 
-- !\inst|s_dado\(29) & ( (!\inst|Equal4~2_combout\) # ((!\inst|Equal4~1_combout\) # (\inst|s_centroid\(29))) ) ) ) # ( !\inst|Equal4~0_combout\ & ( !\inst|s_dado\(29) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110111111101111111111111111111111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal4~2_combout\,
	datab => \inst|ALT_INV_s_centroid\(29),
	datac => \inst|ALT_INV_Equal4~1_combout\,
	datae => \inst|ALT_INV_Equal4~0_combout\,
	dataf => \inst|ALT_INV_s_dado\(29),
	combout => \inst|Equal4~3_combout\);

-- Location: FF_X29_Y4_N14
\inst|s_dist3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Equal4~3_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dist3~q\);

-- Location: MLABCELL_X28_Y4_N30
\inst3|parallel_add_component|auto_generated|op_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|op_2~0_combout\ = ( \inst|s_dist3~q\ & ( (\inst|s_dist4~q\) # (\inst|s_dist2~q\) ) ) # ( !\inst|s_dist3~q\ & ( (\inst|s_dist2~q\ & \inst|s_dist4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_s_dist2~q\,
	datad => \inst|ALT_INV_s_dist4~q\,
	dataf => \inst|ALT_INV_s_dist3~q\,
	combout => \inst3|parallel_add_component|auto_generated|op_2~0_combout\);

-- Location: IOIBUF_X12_Y0_N35
\centroid[53]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(53),
	o => \centroid[53]~input_o\);

-- Location: FF_X18_Y4_N25
\inst|s_centroid[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[53]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(53));

-- Location: IOIBUF_X40_Y0_N35
\dado[54]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(54),
	o => \dado[54]~input_o\);

-- Location: FF_X39_Y4_N59
\inst|s_dado[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[54]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(54));

-- Location: IOIBUF_X40_Y0_N52
\centroid[55]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(55),
	o => \centroid[55]~input_o\);

-- Location: MLABCELL_X39_Y4_N27
\inst|s_centroid[55]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[55]~feeder_combout\ = ( \centroid[55]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[55]~input_o\,
	combout => \inst|s_centroid[55]~feeder_combout\);

-- Location: FF_X39_Y4_N29
\inst|s_centroid[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[55]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(55));

-- Location: IOIBUF_X40_Y81_N1
\dado[55]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(55),
	o => \dado[55]~input_o\);

-- Location: FF_X39_Y4_N56
\inst|s_dado[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[55]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(55));

-- Location: IOIBUF_X50_Y0_N75
\centroid[54]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(54),
	o => \centroid[54]~input_o\);

-- Location: MLABCELL_X39_Y4_N24
\inst|s_centroid[54]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[54]~feeder_combout\ = ( \centroid[54]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[54]~input_o\,
	combout => \inst|s_centroid[54]~feeder_combout\);

-- Location: FF_X39_Y4_N26
\inst|s_centroid[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[54]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(54));

-- Location: MLABCELL_X39_Y4_N54
\inst|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~2_combout\ = ( \inst|s_dado\(55) & ( \inst|s_centroid\(54) & ( (\inst|s_dado\(54) & \inst|s_centroid\(55)) ) ) ) # ( !\inst|s_dado\(55) & ( \inst|s_centroid\(54) & ( (\inst|s_dado\(54) & !\inst|s_centroid\(55)) ) ) ) # ( \inst|s_dado\(55) & ( 
-- !\inst|s_centroid\(54) & ( (!\inst|s_dado\(54) & \inst|s_centroid\(55)) ) ) ) # ( !\inst|s_dado\(55) & ( !\inst|s_centroid\(54) & ( (!\inst|s_dado\(54) & !\inst|s_centroid\(55)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110000110000001100000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_s_dado\(54),
	datac => \inst|ALT_INV_s_centroid\(55),
	datae => \inst|ALT_INV_s_dado\(55),
	dataf => \inst|ALT_INV_s_centroid\(54),
	combout => \inst|Equal1~2_combout\);

-- Location: IOIBUF_X14_Y0_N18
\dado[49]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(49),
	o => \dado[49]~input_o\);

-- Location: FF_X18_Y4_N23
\inst|s_dado[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[49]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(49));

-- Location: IOIBUF_X4_Y0_N35
\centroid[50]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(50),
	o => \centroid[50]~input_o\);

-- Location: FF_X18_Y4_N41
\inst|s_centroid[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[50]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(50));

-- Location: IOIBUF_X16_Y81_N1
\centroid[49]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(49),
	o => \centroid[49]~input_o\);

-- Location: LABCELL_X18_Y4_N36
\inst|s_centroid[49]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[49]~feeder_combout\ = ( \centroid[49]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[49]~input_o\,
	combout => \inst|s_centroid[49]~feeder_combout\);

-- Location: FF_X18_Y4_N38
\inst|s_centroid[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[49]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(49));

-- Location: IOIBUF_X12_Y0_N1
\centroid[48]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(48),
	o => \centroid[48]~input_o\);

-- Location: LABCELL_X18_Y4_N45
\inst|s_centroid[48]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[48]~feeder_combout\ = ( \centroid[48]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[48]~input_o\,
	combout => \inst|s_centroid[48]~feeder_combout\);

-- Location: FF_X18_Y4_N47
\inst|s_centroid[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[48]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(48));

-- Location: IOIBUF_X8_Y0_N52
\dado[50]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(50),
	o => \dado[50]~input_o\);

-- Location: FF_X18_Y4_N20
\inst|s_dado[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[50]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(50));

-- Location: IOIBUF_X10_Y0_N58
\dado[48]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(48),
	o => \dado[48]~input_o\);

-- Location: FF_X18_Y4_N44
\inst|s_dado[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[48]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(48));

-- Location: LABCELL_X18_Y4_N18
\inst|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = ( \inst|s_dado\(50) & ( \inst|s_dado\(48) & ( (\inst|s_centroid\(50) & (\inst|s_centroid\(48) & (!\inst|s_dado\(49) $ (\inst|s_centroid\(49))))) ) ) ) # ( !\inst|s_dado\(50) & ( \inst|s_dado\(48) & ( (!\inst|s_centroid\(50) & 
-- (\inst|s_centroid\(48) & (!\inst|s_dado\(49) $ (\inst|s_centroid\(49))))) ) ) ) # ( \inst|s_dado\(50) & ( !\inst|s_dado\(48) & ( (\inst|s_centroid\(50) & (!\inst|s_centroid\(48) & (!\inst|s_dado\(49) $ (\inst|s_centroid\(49))))) ) ) ) # ( 
-- !\inst|s_dado\(50) & ( !\inst|s_dado\(48) & ( (!\inst|s_centroid\(50) & (!\inst|s_centroid\(48) & (!\inst|s_dado\(49) $ (\inst|s_centroid\(49))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_s_dado\(49),
	datab => \inst|ALT_INV_s_centroid\(50),
	datac => \inst|ALT_INV_s_centroid\(49),
	datad => \inst|ALT_INV_s_centroid\(48),
	datae => \inst|ALT_INV_s_dado\(50),
	dataf => \inst|ALT_INV_s_dado\(48),
	combout => \inst|Equal1~0_combout\);

-- Location: IOIBUF_X18_Y0_N75
\centroid[51]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(51),
	o => \centroid[51]~input_o\);

-- Location: FF_X27_Y4_N53
\inst|s_centroid[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[51]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(51));

-- Location: IOIBUF_X24_Y0_N52
\centroid[52]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(52),
	o => \centroid[52]~input_o\);

-- Location: LABCELL_X27_Y4_N33
\inst|s_centroid[52]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[52]~feeder_combout\ = ( \centroid[52]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[52]~input_o\,
	combout => \inst|s_centroid[52]~feeder_combout\);

-- Location: FF_X27_Y4_N35
\inst|s_centroid[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[52]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(52));

-- Location: IOIBUF_X30_Y0_N18
\dado[51]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(51),
	o => \dado[51]~input_o\);

-- Location: FF_X27_Y4_N50
\inst|s_dado[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[51]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(51));

-- Location: IOIBUF_X36_Y81_N52
\dado[52]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(52),
	o => \dado[52]~input_o\);

-- Location: LABCELL_X33_Y4_N15
\inst|s_dado[52]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_dado[52]~feeder_combout\ = ( \dado[52]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dado[52]~input_o\,
	combout => \inst|s_dado[52]~feeder_combout\);

-- Location: FF_X33_Y4_N17
\inst|s_dado[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_dado[52]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(52));

-- Location: LABCELL_X27_Y4_N48
\inst|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = ( \inst|s_dado\(51) & ( \inst|s_dado\(52) & ( (\inst|s_centroid\(51) & \inst|s_centroid\(52)) ) ) ) # ( !\inst|s_dado\(51) & ( \inst|s_dado\(52) & ( (!\inst|s_centroid\(51) & \inst|s_centroid\(52)) ) ) ) # ( \inst|s_dado\(51) & ( 
-- !\inst|s_dado\(52) & ( (\inst|s_centroid\(51) & !\inst|s_centroid\(52)) ) ) ) # ( !\inst|s_dado\(51) & ( !\inst|s_dado\(52) & ( (!\inst|s_centroid\(51) & !\inst|s_centroid\(52)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000010100000101000000001010000010100000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_s_centroid\(51),
	datac => \inst|ALT_INV_s_centroid\(52),
	datae => \inst|ALT_INV_s_dado\(51),
	dataf => \inst|ALT_INV_s_dado\(52),
	combout => \inst|Equal1~1_combout\);

-- Location: IOIBUF_X22_Y0_N52
\dado[53]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(53),
	o => \dado[53]~input_o\);

-- Location: FF_X28_Y4_N50
\inst|s_dado[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[53]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(53));

-- Location: MLABCELL_X28_Y4_N33
\inst|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~3_combout\ = ( \inst|s_dado\(53) & ( (!\inst|s_centroid\(53)) # ((!\inst|Equal1~2_combout\) # ((!\inst|Equal1~0_combout\) # (!\inst|Equal1~1_combout\))) ) ) # ( !\inst|s_dado\(53) & ( ((!\inst|Equal1~2_combout\) # ((!\inst|Equal1~0_combout\) 
-- # (!\inst|Equal1~1_combout\))) # (\inst|s_centroid\(53)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111101111111111111110111111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_s_centroid\(53),
	datab => \inst|ALT_INV_Equal1~2_combout\,
	datac => \inst|ALT_INV_Equal1~0_combout\,
	datad => \inst|ALT_INV_Equal1~1_combout\,
	dataf => \inst|ALT_INV_s_dado\(53),
	combout => \inst|Equal1~3_combout\);

-- Location: FF_X28_Y4_N35
\inst|s_dist6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Equal1~3_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dist6~q\);

-- Location: IOIBUF_X24_Y81_N1
\centroid[43]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(43),
	o => \centroid[43]~input_o\);

-- Location: LABCELL_X27_Y5_N45
\inst|s_centroid[43]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[43]~feeder_combout\ = ( \centroid[43]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[43]~input_o\,
	combout => \inst|s_centroid[43]~feeder_combout\);

-- Location: FF_X27_Y5_N47
\inst|s_centroid[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[43]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(43));

-- Location: IOIBUF_X28_Y81_N1
\centroid[44]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(44),
	o => \centroid[44]~input_o\);

-- Location: FF_X27_Y5_N5
\inst|s_centroid[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[44]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(44));

-- Location: IOIBUF_X28_Y81_N52
\dado[43]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(43),
	o => \dado[43]~input_o\);

-- Location: FF_X27_Y5_N2
\inst|s_dado[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[43]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(43));

-- Location: IOIBUF_X20_Y0_N35
\dado[44]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(44),
	o => \dado[44]~input_o\);

-- Location: FF_X27_Y5_N50
\inst|s_dado[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[44]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(44));

-- Location: LABCELL_X27_Y5_N0
\inst|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal2~1_combout\ = ( \inst|s_dado\(43) & ( \inst|s_dado\(44) & ( (\inst|s_centroid\(43) & \inst|s_centroid\(44)) ) ) ) # ( !\inst|s_dado\(43) & ( \inst|s_dado\(44) & ( (!\inst|s_centroid\(43) & \inst|s_centroid\(44)) ) ) ) # ( \inst|s_dado\(43) & ( 
-- !\inst|s_dado\(44) & ( (\inst|s_centroid\(43) & !\inst|s_centroid\(44)) ) ) ) # ( !\inst|s_dado\(43) & ( !\inst|s_dado\(44) & ( (!\inst|s_centroid\(43) & !\inst|s_centroid\(44)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000001100000011000000001100000011000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_s_centroid\(43),
	datac => \inst|ALT_INV_s_centroid\(44),
	datae => \inst|ALT_INV_s_dado\(43),
	dataf => \inst|ALT_INV_s_dado\(44),
	combout => \inst|Equal2~1_combout\);

-- Location: IOIBUF_X22_Y81_N1
\centroid[45]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(45),
	o => \centroid[45]~input_o\);

-- Location: FF_X27_Y5_N32
\inst|s_centroid[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[45]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(45));

-- Location: IOIBUF_X22_Y0_N18
\dado[46]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(46),
	o => \dado[46]~input_o\);

-- Location: FF_X27_Y4_N40
\inst|s_dado[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[46]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(46));

-- Location: IOIBUF_X6_Y0_N1
\centroid[47]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(47),
	o => \centroid[47]~input_o\);

-- Location: FF_X27_Y4_N34
\inst|s_centroid[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[47]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(47));

-- Location: IOIBUF_X30_Y81_N52
\dado[47]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(47),
	o => \dado[47]~input_o\);

-- Location: FF_X27_Y5_N35
\inst|s_dado[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[47]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(47));

-- Location: IOIBUF_X24_Y81_N35
\centroid[46]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(46),
	o => \centroid[46]~input_o\);

-- Location: FF_X27_Y5_N53
\inst|s_centroid[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[46]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(46));

-- Location: LABCELL_X27_Y5_N33
\inst|Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal2~2_combout\ = ( \inst|s_dado\(47) & ( \inst|s_centroid\(46) & ( (\inst|s_dado\(46) & \inst|s_centroid\(47)) ) ) ) # ( !\inst|s_dado\(47) & ( \inst|s_centroid\(46) & ( (\inst|s_dado\(46) & !\inst|s_centroid\(47)) ) ) ) # ( \inst|s_dado\(47) & ( 
-- !\inst|s_centroid\(46) & ( (!\inst|s_dado\(46) & \inst|s_centroid\(47)) ) ) ) # ( !\inst|s_dado\(47) & ( !\inst|s_centroid\(46) & ( (!\inst|s_dado\(46) & !\inst|s_centroid\(47)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000010100000101001010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_s_dado\(46),
	datac => \inst|ALT_INV_s_centroid\(47),
	datae => \inst|ALT_INV_s_dado\(47),
	dataf => \inst|ALT_INV_s_centroid\(46),
	combout => \inst|Equal2~2_combout\);

-- Location: IOIBUF_X18_Y81_N92
\dado[45]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(45),
	o => \dado[45]~input_o\);

-- Location: LABCELL_X27_Y5_N51
\inst|s_dado[45]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_dado[45]~feeder_combout\ = \dado[45]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dado[45]~input_o\,
	combout => \inst|s_dado[45]~feeder_combout\);

-- Location: FF_X27_Y5_N52
\inst|s_dado[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_dado[45]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(45));

-- Location: IOIBUF_X64_Y0_N18
\dado[41]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(41),
	o => \dado[41]~input_o\);

-- Location: LABCELL_X53_Y2_N3
\inst|s_dado[41]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_dado[41]~feeder_combout\ = ( \dado[41]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dado[41]~input_o\,
	combout => \inst|s_dado[41]~feeder_combout\);

-- Location: FF_X53_Y2_N5
\inst|s_dado[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_dado[41]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(41));

-- Location: IOIBUF_X58_Y0_N92
\centroid[42]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(42),
	o => \centroid[42]~input_o\);

-- Location: FF_X53_Y2_N59
\inst|s_centroid[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[42]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(42));

-- Location: IOIBUF_X54_Y0_N1
\centroid[41]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(41),
	o => \centroid[41]~input_o\);

-- Location: FF_X53_Y2_N2
\inst|s_centroid[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[41]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(41));

-- Location: IOIBUF_X58_Y0_N58
\centroid[40]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(40),
	o => \centroid[40]~input_o\);

-- Location: LABCELL_X53_Y2_N6
\inst|s_centroid[40]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[40]~feeder_combout\ = ( \centroid[40]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[40]~input_o\,
	combout => \inst|s_centroid[40]~feeder_combout\);

-- Location: FF_X53_Y2_N8
\inst|s_centroid[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[40]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(40));

-- Location: IOIBUF_X56_Y0_N1
\dado[42]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(42),
	o => \dado[42]~input_o\);

-- Location: FF_X53_Y2_N56
\inst|s_dado[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[42]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(42));

-- Location: IOIBUF_X54_Y0_N52
\dado[40]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(40),
	o => \dado[40]~input_o\);

-- Location: FF_X53_Y2_N11
\inst|s_dado[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[40]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(40));

-- Location: LABCELL_X53_Y2_N54
\inst|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = ( \inst|s_dado\(42) & ( \inst|s_dado\(40) & ( (\inst|s_centroid\(42) & (\inst|s_centroid\(40) & (!\inst|s_dado\(41) $ (\inst|s_centroid\(41))))) ) ) ) # ( !\inst|s_dado\(42) & ( \inst|s_dado\(40) & ( (!\inst|s_centroid\(42) & 
-- (\inst|s_centroid\(40) & (!\inst|s_dado\(41) $ (\inst|s_centroid\(41))))) ) ) ) # ( \inst|s_dado\(42) & ( !\inst|s_dado\(40) & ( (\inst|s_centroid\(42) & (!\inst|s_centroid\(40) & (!\inst|s_dado\(41) $ (\inst|s_centroid\(41))))) ) ) ) # ( 
-- !\inst|s_dado\(42) & ( !\inst|s_dado\(40) & ( (!\inst|s_centroid\(42) & (!\inst|s_centroid\(40) & (!\inst|s_dado\(41) $ (\inst|s_centroid\(41))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_s_dado\(41),
	datab => \inst|ALT_INV_s_centroid\(42),
	datac => \inst|ALT_INV_s_centroid\(41),
	datad => \inst|ALT_INV_s_centroid\(40),
	datae => \inst|ALT_INV_s_dado\(42),
	dataf => \inst|ALT_INV_s_dado\(40),
	combout => \inst|Equal2~0_combout\);

-- Location: LABCELL_X27_Y5_N48
\inst|Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal2~3_combout\ = ( \inst|Equal2~0_combout\ & ( (!\inst|Equal2~1_combout\) # ((!\inst|Equal2~2_combout\) # (!\inst|s_centroid\(45) $ (!\inst|s_dado\(45)))) ) ) # ( !\inst|Equal2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111011111111101111101111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal2~1_combout\,
	datab => \inst|ALT_INV_s_centroid\(45),
	datac => \inst|ALT_INV_Equal2~2_combout\,
	datad => \inst|ALT_INV_s_dado\(45),
	dataf => \inst|ALT_INV_Equal2~0_combout\,
	combout => \inst|Equal2~3_combout\);

-- Location: FF_X28_Y4_N38
\inst|s_dist5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|Equal2~3_combout\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dist5~q\);

-- Location: IOIBUF_X52_Y0_N52
\centroid[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(11),
	o => \centroid[11]~input_o\);

-- Location: MLABCELL_X39_Y4_N3
\inst|s_centroid[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[11]~feeder_combout\ = ( \centroid[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[11]~input_o\,
	combout => \inst|s_centroid[11]~feeder_combout\);

-- Location: FF_X39_Y4_N5
\inst|s_centroid[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[11]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(11));

-- Location: IOIBUF_X50_Y0_N92
\dado[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(12),
	o => \dado[12]~input_o\);

-- Location: MLABCELL_X39_Y4_N0
\inst|s_dado[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_dado[12]~feeder_combout\ = ( \dado[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dado[12]~input_o\,
	combout => \inst|s_dado[12]~feeder_combout\);

-- Location: FF_X39_Y4_N2
\inst|s_dado[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_dado[12]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(12));

-- Location: IOIBUF_X40_Y0_N1
\dado[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(11),
	o => \dado[11]~input_o\);

-- Location: FF_X39_Y4_N35
\inst|s_dado[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[11]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(11));

-- Location: IOIBUF_X38_Y0_N52
\centroid[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(12),
	o => \centroid[12]~input_o\);

-- Location: FF_X39_Y4_N32
\inst|s_centroid[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[12]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(12));

-- Location: MLABCELL_X39_Y4_N33
\inst|Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal6~1_combout\ = ( \inst|s_dado\(11) & ( \inst|s_centroid\(12) & ( (\inst|s_centroid\(11) & \inst|s_dado\(12)) ) ) ) # ( !\inst|s_dado\(11) & ( \inst|s_centroid\(12) & ( (!\inst|s_centroid\(11) & \inst|s_dado\(12)) ) ) ) # ( \inst|s_dado\(11) & ( 
-- !\inst|s_centroid\(12) & ( (\inst|s_centroid\(11) & !\inst|s_dado\(12)) ) ) ) # ( !\inst|s_dado\(11) & ( !\inst|s_centroid\(12) & ( (!\inst|s_centroid\(11) & !\inst|s_dado\(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000010101010000000000000000101010100000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_s_centroid\(11),
	datad => \inst|ALT_INV_s_dado\(12),
	datae => \inst|ALT_INV_s_dado\(11),
	dataf => \inst|ALT_INV_s_centroid\(12),
	combout => \inst|Equal6~1_combout\);

-- Location: IOIBUF_X28_Y81_N35
\dado[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(13),
	o => \dado[13]~input_o\);

-- Location: LABCELL_X27_Y5_N27
\inst|s_dado[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_dado[13]~feeder_combout\ = ( \dado[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dado[13]~input_o\,
	combout => \inst|s_dado[13]~feeder_combout\);

-- Location: FF_X27_Y5_N28
\inst|s_dado[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_dado[13]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(13));

-- Location: IOIBUF_X38_Y81_N52
\centroid[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(14),
	o => \centroid[14]~input_o\);

-- Location: FF_X39_Y4_N38
\inst|s_centroid[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[14]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(14));

-- Location: IOIBUF_X60_Y0_N1
\dado[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(14),
	o => \dado[14]~input_o\);

-- Location: FF_X39_Y4_N41
\inst|s_dado[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[14]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(14));

-- Location: IOIBUF_X40_Y0_N18
\dado[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(15),
	o => \dado[15]~input_o\);

-- Location: FF_X39_Y4_N47
\inst|s_dado[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[15]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(15));

-- Location: IOIBUF_X50_Y0_N58
\centroid[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(15),
	o => \centroid[15]~input_o\);

-- Location: FF_X39_Y4_N44
\inst|s_centroid[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[15]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(15));

-- Location: MLABCELL_X39_Y4_N45
\inst|Equal6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal6~2_combout\ = ( \inst|s_dado\(15) & ( \inst|s_centroid\(15) & ( !\inst|s_centroid\(14) $ (\inst|s_dado\(14)) ) ) ) # ( !\inst|s_dado\(15) & ( !\inst|s_centroid\(15) & ( !\inst|s_centroid\(14) $ (\inst|s_dado\(14)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101000000000000000000000000000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_s_centroid\(14),
	datac => \inst|ALT_INV_s_dado\(14),
	datae => \inst|ALT_INV_s_dado\(15),
	dataf => \inst|ALT_INV_s_centroid\(15),
	combout => \inst|Equal6~2_combout\);

-- Location: IOIBUF_X56_Y0_N18
\centroid[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(8),
	o => \centroid[8]~input_o\);

-- Location: LABCELL_X53_Y2_N36
\inst|s_centroid[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[8]~feeder_combout\ = ( \centroid[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[8]~input_o\,
	combout => \inst|s_centroid[8]~feeder_combout\);

-- Location: FF_X53_Y2_N38
\inst|s_centroid[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[8]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(8));

-- Location: IOIBUF_X56_Y0_N35
\dado[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(8),
	o => \dado[8]~input_o\);

-- Location: LABCELL_X53_Y2_N39
\inst|s_dado[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_dado[8]~feeder_combout\ = ( \dado[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dado[8]~input_o\,
	combout => \inst|s_dado[8]~feeder_combout\);

-- Location: FF_X53_Y2_N41
\inst|s_dado[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_dado[8]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(8));

-- Location: IOIBUF_X58_Y0_N41
\centroid[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(10),
	o => \centroid[10]~input_o\);

-- Location: FF_X53_Y2_N53
\inst|s_centroid[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[10]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(10));

-- Location: IOIBUF_X54_Y0_N35
\dado[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(9),
	o => \dado[9]~input_o\);

-- Location: FF_X53_Y2_N47
\inst|s_dado[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[9]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(9));

-- Location: IOIBUF_X58_Y0_N75
\dado[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(10),
	o => \dado[10]~input_o\);

-- Location: FF_X53_Y2_N50
\inst|s_dado[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \dado[10]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dado\(10));

-- Location: IOIBUF_X60_Y0_N52
\centroid[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(9),
	o => \centroid[9]~input_o\);

-- Location: LABCELL_X53_Y2_N42
\inst|s_centroid[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|s_centroid[9]~feeder_combout\ = ( \centroid[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_centroid[9]~input_o\,
	combout => \inst|s_centroid[9]~feeder_combout\);

-- Location: FF_X53_Y2_N44
\inst|s_centroid[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|s_centroid[9]~feeder_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(9));

-- Location: LABCELL_X53_Y2_N48
\inst|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal6~0_combout\ = ( \inst|s_dado\(10) & ( \inst|s_centroid\(9) & ( (\inst|s_centroid\(10) & (\inst|s_dado\(9) & (!\inst|s_centroid\(8) $ (\inst|s_dado\(8))))) ) ) ) # ( !\inst|s_dado\(10) & ( \inst|s_centroid\(9) & ( (!\inst|s_centroid\(10) & 
-- (\inst|s_dado\(9) & (!\inst|s_centroid\(8) $ (\inst|s_dado\(8))))) ) ) ) # ( \inst|s_dado\(10) & ( !\inst|s_centroid\(9) & ( (\inst|s_centroid\(10) & (!\inst|s_dado\(9) & (!\inst|s_centroid\(8) $ (\inst|s_dado\(8))))) ) ) ) # ( !\inst|s_dado\(10) & ( 
-- !\inst|s_centroid\(9) & ( (!\inst|s_centroid\(10) & (!\inst|s_dado\(9) & (!\inst|s_centroid\(8) $ (\inst|s_dado\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_s_centroid\(8),
	datab => \inst|ALT_INV_s_dado\(8),
	datac => \inst|ALT_INV_s_centroid\(10),
	datad => \inst|ALT_INV_s_dado\(9),
	datae => \inst|ALT_INV_s_dado\(10),
	dataf => \inst|ALT_INV_s_centroid\(9),
	combout => \inst|Equal6~0_combout\);

-- Location: IOIBUF_X32_Y0_N18
\centroid[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_centroid(13),
	o => \centroid[13]~input_o\);

-- Location: FF_X28_Y4_N41
\inst|s_centroid[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \centroid[13]~input_o\,
	sload => VCC,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_centroid\(13));

-- Location: MLABCELL_X28_Y4_N18
\inst|Equal6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal6~3_combout\ = ( \inst|s_centroid\(13) & ( (!\inst|Equal6~1_combout\) # ((!\inst|s_dado\(13)) # ((!\inst|Equal6~2_combout\) # (!\inst|Equal6~0_combout\))) ) ) # ( !\inst|s_centroid\(13) & ( (!\inst|Equal6~1_combout\) # 
-- (((!\inst|Equal6~2_combout\) # (!\inst|Equal6~0_combout\)) # (\inst|s_dado\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111011111111111111101111111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal6~1_combout\,
	datab => \inst|ALT_INV_s_dado\(13),
	datac => \inst|ALT_INV_Equal6~2_combout\,
	datad => \inst|ALT_INV_Equal6~0_combout\,
	dataf => \inst|ALT_INV_s_centroid\(13),
	combout => \inst|Equal6~3_combout\);

-- Location: FF_X28_Y4_N20
\inst|s_dist1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Equal6~3_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dist1~q\);

-- Location: MLABCELL_X28_Y4_N27
\inst3|parallel_add_component|auto_generated|op_8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|op_8~0_combout\ = ( \inst|s_dist1~q\ & ( (\inst|s_dist5~q\) # (\inst|s_dist6~q\) ) ) # ( !\inst|s_dist1~q\ & ( (\inst|s_dist6~q\ & \inst|s_dist5~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_s_dist6~q\,
	datad => \inst|ALT_INV_s_dist5~q\,
	dataf => \inst|ALT_INV_s_dist1~q\,
	combout => \inst3|parallel_add_component|auto_generated|op_8~0_combout\);

-- Location: MLABCELL_X28_Y4_N39
\inst3|parallel_add_component|auto_generated|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|op_8~1_combout\ = ( \inst|s_dist5~q\ & ( \inst|s_dist1~q\ & ( \inst|s_dist6~q\ ) ) ) # ( !\inst|s_dist5~q\ & ( \inst|s_dist1~q\ & ( !\inst|s_dist6~q\ ) ) ) # ( \inst|s_dist5~q\ & ( !\inst|s_dist1~q\ & ( 
-- !\inst|s_dist6~q\ ) ) ) # ( !\inst|s_dist5~q\ & ( !\inst|s_dist1~q\ & ( \inst|s_dist6~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_s_dist6~q\,
	datae => \inst|ALT_INV_s_dist5~q\,
	dataf => \inst|ALT_INV_s_dist1~q\,
	combout => \inst3|parallel_add_component|auto_generated|op_8~1_combout\);

-- Location: FF_X28_Y4_N44
\inst|s_dist7~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst|Equal0~3_combout\,
	ena => \inst2|s_en_SimpleMatch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dist7~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y4_N21
\inst3|parallel_add_component|auto_generated|op_3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|op_3~1_combout\ = ( \inst|s_dist7~DUPLICATE_q\ & ( !\inst|s_dist0~q\ ) ) # ( !\inst|s_dist7~DUPLICATE_q\ & ( \inst|s_dist0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_s_dist0~q\,
	dataf => \inst|ALT_INV_s_dist7~DUPLICATE_q\,
	combout => \inst3|parallel_add_component|auto_generated|op_3~1_combout\);

-- Location: MLABCELL_X28_Y4_N45
\inst3|parallel_add_component|auto_generated|op_2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|op_2~1_combout\ = ( \inst|s_dist2~q\ & ( !\inst|s_dist3~q\ $ (\inst|s_dist4~q\) ) ) # ( !\inst|s_dist2~q\ & ( !\inst|s_dist3~q\ $ (!\inst|s_dist4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_s_dist3~q\,
	datad => \inst|ALT_INV_s_dist4~q\,
	dataf => \inst|ALT_INV_s_dist2~q\,
	combout => \inst3|parallel_add_component|auto_generated|op_2~1_combout\);

-- Location: MLABCELL_X28_Y4_N0
\inst3|parallel_add_component|auto_generated|add16_result[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|add16_result[0]~13_sumout\ = SUM(( !\inst3|parallel_add_component|auto_generated|op_8~1_combout\ $ (!\inst3|parallel_add_component|auto_generated|op_3~1_combout\ $ 
-- (\inst3|parallel_add_component|auto_generated|op_2~1_combout\)) ) + ( !VCC ) + ( !VCC ))
-- \inst3|parallel_add_component|auto_generated|add16_result[0]~14\ = CARRY(( !\inst3|parallel_add_component|auto_generated|op_8~1_combout\ $ (!\inst3|parallel_add_component|auto_generated|op_3~1_combout\ $ 
-- (\inst3|parallel_add_component|auto_generated|op_2~1_combout\)) ) + ( !VCC ) + ( !VCC ))
-- \inst3|parallel_add_component|auto_generated|add16_result[0]~15\ = SHARE((!\inst3|parallel_add_component|auto_generated|op_8~1_combout\ & (\inst3|parallel_add_component|auto_generated|op_3~1_combout\ & 
-- \inst3|parallel_add_component|auto_generated|op_2~1_combout\)) # (\inst3|parallel_add_component|auto_generated|op_8~1_combout\ & ((\inst3|parallel_add_component|auto_generated|op_2~1_combout\) # 
-- (\inst3|parallel_add_component|auto_generated|op_3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \inst3|parallel_add_component|auto_generated|ALT_INV_op_8~1_combout\,
	datac => \inst3|parallel_add_component|auto_generated|ALT_INV_op_3~1_combout\,
	datad => \inst3|parallel_add_component|auto_generated|ALT_INV_op_2~1_combout\,
	cin => GND,
	sharein => GND,
	sumout => \inst3|parallel_add_component|auto_generated|add16_result[0]~13_sumout\,
	cout => \inst3|parallel_add_component|auto_generated|add16_result[0]~14\,
	shareout => \inst3|parallel_add_component|auto_generated|add16_result[0]~15\);

-- Location: MLABCELL_X28_Y4_N3
\inst3|parallel_add_component|auto_generated|add16_result[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|add16_result[1]~9_sumout\ = SUM(( !\inst3|parallel_add_component|auto_generated|op_3~0_combout\ $ (!\inst3|parallel_add_component|auto_generated|op_2~0_combout\ $ 
-- (\inst3|parallel_add_component|auto_generated|op_8~0_combout\)) ) + ( \inst3|parallel_add_component|auto_generated|add16_result[0]~15\ ) + ( \inst3|parallel_add_component|auto_generated|add16_result[0]~14\ ))
-- \inst3|parallel_add_component|auto_generated|add16_result[1]~10\ = CARRY(( !\inst3|parallel_add_component|auto_generated|op_3~0_combout\ $ (!\inst3|parallel_add_component|auto_generated|op_2~0_combout\ $ 
-- (\inst3|parallel_add_component|auto_generated|op_8~0_combout\)) ) + ( \inst3|parallel_add_component|auto_generated|add16_result[0]~15\ ) + ( \inst3|parallel_add_component|auto_generated|add16_result[0]~14\ ))
-- \inst3|parallel_add_component|auto_generated|add16_result[1]~11\ = SHARE((!\inst3|parallel_add_component|auto_generated|op_3~0_combout\ & (\inst3|parallel_add_component|auto_generated|op_2~0_combout\ & 
-- \inst3|parallel_add_component|auto_generated|op_8~0_combout\)) # (\inst3|parallel_add_component|auto_generated|op_3~0_combout\ & ((\inst3|parallel_add_component|auto_generated|op_8~0_combout\) # 
-- (\inst3|parallel_add_component|auto_generated|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|parallel_add_component|auto_generated|ALT_INV_op_3~0_combout\,
	datac => \inst3|parallel_add_component|auto_generated|ALT_INV_op_2~0_combout\,
	datad => \inst3|parallel_add_component|auto_generated|ALT_INV_op_8~0_combout\,
	cin => \inst3|parallel_add_component|auto_generated|add16_result[0]~14\,
	sharein => \inst3|parallel_add_component|auto_generated|add16_result[0]~15\,
	sumout => \inst3|parallel_add_component|auto_generated|add16_result[1]~9_sumout\,
	cout => \inst3|parallel_add_component|auto_generated|add16_result[1]~10\,
	shareout => \inst3|parallel_add_component|auto_generated|add16_result[1]~11\);

-- Location: MLABCELL_X28_Y4_N6
\inst3|parallel_add_component|auto_generated|add16_result[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|add16_result[2]~5_sumout\ = SUM(( GND ) + ( \inst3|parallel_add_component|auto_generated|add16_result[1]~11\ ) + ( \inst3|parallel_add_component|auto_generated|add16_result[1]~10\ ))
-- \inst3|parallel_add_component|auto_generated|add16_result[2]~6\ = CARRY(( GND ) + ( \inst3|parallel_add_component|auto_generated|add16_result[1]~11\ ) + ( \inst3|parallel_add_component|auto_generated|add16_result[1]~10\ ))
-- \inst3|parallel_add_component|auto_generated|add16_result[2]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \inst3|parallel_add_component|auto_generated|add16_result[1]~10\,
	sharein => \inst3|parallel_add_component|auto_generated|add16_result[1]~11\,
	sumout => \inst3|parallel_add_component|auto_generated|add16_result[2]~5_sumout\,
	cout => \inst3|parallel_add_component|auto_generated|add16_result[2]~6\,
	shareout => \inst3|parallel_add_component|auto_generated|add16_result[2]~7\);

-- Location: MLABCELL_X28_Y4_N9
\inst3|parallel_add_component|auto_generated|add16_result[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|parallel_add_component|auto_generated|add16_result[3]~1_sumout\ = SUM(( GND ) + ( \inst3|parallel_add_component|auto_generated|add16_result[2]~7\ ) + ( \inst3|parallel_add_component|auto_generated|add16_result[2]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \inst3|parallel_add_component|auto_generated|add16_result[2]~6\,
	sharein => \inst3|parallel_add_component|auto_generated|add16_result[2]~7\,
	sumout => \inst3|parallel_add_component|auto_generated|add16_result[3]~1_sumout\);

-- Location: FF_X85_Y7_N40
\inst2|estado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_countCentroid[7]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|estado\(3));

-- Location: MLABCELL_X84_Y6_N33
\inst2|WideOr13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|WideOr13~1_combout\ = ( \inst2|state.WAITCALCDISTANCE~2_combout\ ) # ( !\inst2|state.WAITCALCDISTANCE~2_combout\ & ( (!\inst2|WideOr13~0_combout\) # (\inst2|state.CALCDISTANCE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_state.CALCDISTANCE~q\,
	datad => \inst2|ALT_INV_WideOr13~0_combout\,
	dataf => \inst2|ALT_INV_state.WAITCALCDISTANCE~2_combout\,
	combout => \inst2|WideOr13~1_combout\);

-- Location: FF_X84_Y6_N34
\inst2|estado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|WideOr13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|estado\(2));

-- Location: LABCELL_X83_Y7_N18
\inst2|WideOr14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|WideOr14~combout\ = ( \inst2|state.MINDISTANCE~q\ ) # ( !\inst2|state.MINDISTANCE~q\ & ( ((\inst2|state.VERIFYDATA~q\) # (\inst2|state.LOADDATA~q\)) # (\inst2|state.ENDCENTROIDS~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	datab => \inst2|ALT_INV_state.LOADDATA~q\,
	datac => \inst2|ALT_INV_state.VERIFYDATA~q\,
	dataf => \inst2|ALT_INV_state.MINDISTANCE~q\,
	combout => \inst2|WideOr14~combout\);

-- Location: FF_X83_Y7_N19
\inst2|estado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|estado\(1));

-- Location: LABCELL_X83_Y7_N21
\inst2|WideOr15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|WideOr15~combout\ = ( \inst2|state.ENDSTATE~q\ ) # ( !\inst2|state.ENDSTATE~q\ & ( (((\inst2|state.VERIFYDIMENSION~q\) # (\inst2|state.IDLE~q\)) # (\inst2|state.LOADDATA~q\)) # (\inst2|state.ENDCENTROIDS~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.ENDCENTROIDS~q\,
	datab => \inst2|ALT_INV_state.LOADDATA~q\,
	datac => \inst2|ALT_INV_state.IDLE~q\,
	datad => \inst2|ALT_INV_state.VERIFYDIMENSION~q\,
	dataf => \inst2|ALT_INV_state.ENDSTATE~q\,
	combout => \inst2|WideOr15~combout\);

-- Location: FF_X83_Y7_N22
\inst2|estado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|estado\(0));

-- Location: LABCELL_X83_Y7_N9
\inst2|WideOr7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|WideOr7~combout\ = ( !\inst2|state.WAITCALCDISTANCE~2_combout\ & ( !\inst2|state.MINDISTANCE~q\ & ( (!\inst2|state.STOREDATA~q\ & (!\inst2|state.LOADDATA~q\ & (!\inst2|state.CALCDISTANCE~q\ & !\inst2|state.VERIFYDATA~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_state.STOREDATA~q\,
	datab => \inst2|ALT_INV_state.LOADDATA~q\,
	datac => \inst2|ALT_INV_state.CALCDISTANCE~q\,
	datad => \inst2|ALT_INV_state.VERIFYDATA~q\,
	datae => \inst2|ALT_INV_state.WAITCALCDISTANCE~2_combout\,
	dataf => \inst2|ALT_INV_state.MINDISTANCE~q\,
	combout => \inst2|WideOr7~combout\);

-- Location: FF_X28_Y4_N10
\inst2|s_distanceMatch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|parallel_add_component|auto_generated|add16_result[3]~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_distanceMatch\(3));

-- Location: FF_X28_Y4_N7
\inst2|s_distanceMatch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|parallel_add_component|auto_generated|add16_result[2]~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_distanceMatch\(2));

-- Location: FF_X28_Y4_N4
\inst2|s_distanceMatch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|parallel_add_component|auto_generated|add16_result[1]~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_distanceMatch\(1));

-- Location: FF_X28_Y4_N1
\inst2|s_distanceMatch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst3|parallel_add_component|auto_generated|add16_result[0]~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_distanceMatch\(0));

-- Location: MLABCELL_X82_Y8_N0
\inst2|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add4~25_sumout\ = SUM(( \inst2|s_sumDistance\(0) ) + ( \inst2|s_distanceMatch\(0) ) + ( !VCC ))
-- \inst2|Add4~26\ = CARRY(( \inst2|s_sumDistance\(0) ) + ( \inst2|s_distanceMatch\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_distanceMatch\(0),
	datad => \inst2|ALT_INV_s_sumDistance\(0),
	cin => GND,
	sumout => \inst2|Add4~25_sumout\,
	cout => \inst2|Add4~26\);

-- Location: LABCELL_X83_Y8_N39
\inst2|Selector72~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector72~0_combout\ = ( \inst2|s_sumDistance\(0) & ( \inst2|WideOr7~combout\ & ( (\inst2|Add4~25_sumout\ & \inst2|state.VERIFYDIMENSION~q\) ) ) ) # ( !\inst2|s_sumDistance\(0) & ( \inst2|WideOr7~combout\ & ( (\inst2|Add4~25_sumout\ & 
-- \inst2|state.VERIFYDIMENSION~q\) ) ) ) # ( \inst2|s_sumDistance\(0) & ( !\inst2|WideOr7~combout\ ) ) # ( !\inst2|s_sumDistance\(0) & ( !\inst2|WideOr7~combout\ & ( (\inst2|Add4~25_sumout\ & \inst2|state.VERIFYDIMENSION~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111111111111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add4~25_sumout\,
	datad => \inst2|ALT_INV_state.VERIFYDIMENSION~q\,
	datae => \inst2|ALT_INV_s_sumDistance\(0),
	dataf => \inst2|ALT_INV_WideOr7~combout\,
	combout => \inst2|Selector72~0_combout\);

-- Location: FF_X83_Y8_N41
\inst2|s_sumDistance[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector72~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_sumDistance\(0));

-- Location: MLABCELL_X82_Y8_N3
\inst2|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add4~21_sumout\ = SUM(( \inst2|s_distanceMatch\(1) ) + ( \inst2|s_sumDistance\(1) ) + ( \inst2|Add4~26\ ))
-- \inst2|Add4~22\ = CARRY(( \inst2|s_distanceMatch\(1) ) + ( \inst2|s_sumDistance\(1) ) + ( \inst2|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_s_sumDistance\(1),
	datad => \inst2|ALT_INV_s_distanceMatch\(1),
	cin => \inst2|Add4~26\,
	sumout => \inst2|Add4~21_sumout\,
	cout => \inst2|Add4~22\);

-- Location: MLABCELL_X82_Y8_N54
\inst2|Selector71~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector71~0_combout\ = ( \inst2|s_sumDistance\(1) & ( \inst2|WideOr7~combout\ & ( (\inst2|state.VERIFYDIMENSION~q\ & \inst2|Add4~21_sumout\) ) ) ) # ( !\inst2|s_sumDistance\(1) & ( \inst2|WideOr7~combout\ & ( (\inst2|state.VERIFYDIMENSION~q\ & 
-- \inst2|Add4~21_sumout\) ) ) ) # ( \inst2|s_sumDistance\(1) & ( !\inst2|WideOr7~combout\ ) ) # ( !\inst2|s_sumDistance\(1) & ( !\inst2|WideOr7~combout\ & ( (\inst2|state.VERIFYDIMENSION~q\ & \inst2|Add4~21_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111111111111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_state.VERIFYDIMENSION~q\,
	datac => \inst2|ALT_INV_Add4~21_sumout\,
	datae => \inst2|ALT_INV_s_sumDistance\(1),
	dataf => \inst2|ALT_INV_WideOr7~combout\,
	combout => \inst2|Selector71~0_combout\);

-- Location: FF_X82_Y8_N56
\inst2|s_sumDistance[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_sumDistance\(1));

-- Location: MLABCELL_X82_Y8_N6
\inst2|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add4~17_sumout\ = SUM(( \inst2|s_distanceMatch\(2) ) + ( \inst2|s_sumDistance\(2) ) + ( \inst2|Add4~22\ ))
-- \inst2|Add4~18\ = CARRY(( \inst2|s_distanceMatch\(2) ) + ( \inst2|s_sumDistance\(2) ) + ( \inst2|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_sumDistance\(2),
	datad => \inst2|ALT_INV_s_distanceMatch\(2),
	cin => \inst2|Add4~22\,
	sumout => \inst2|Add4~17_sumout\,
	cout => \inst2|Add4~18\);

-- Location: MLABCELL_X82_Y8_N51
\inst2|Selector70~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector70~0_combout\ = ( \inst2|s_sumDistance\(2) & ( \inst2|WideOr7~combout\ & ( (\inst2|Add4~17_sumout\ & \inst2|state.VERIFYDIMENSION~q\) ) ) ) # ( !\inst2|s_sumDistance\(2) & ( \inst2|WideOr7~combout\ & ( (\inst2|Add4~17_sumout\ & 
-- \inst2|state.VERIFYDIMENSION~q\) ) ) ) # ( \inst2|s_sumDistance\(2) & ( !\inst2|WideOr7~combout\ ) ) # ( !\inst2|s_sumDistance\(2) & ( !\inst2|WideOr7~combout\ & ( (\inst2|Add4~17_sumout\ & \inst2|state.VERIFYDIMENSION~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111111111111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_Add4~17_sumout\,
	datac => \inst2|ALT_INV_state.VERIFYDIMENSION~q\,
	datae => \inst2|ALT_INV_s_sumDistance\(2),
	dataf => \inst2|ALT_INV_WideOr7~combout\,
	combout => \inst2|Selector70~0_combout\);

-- Location: FF_X82_Y8_N53
\inst2|s_sumDistance[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector70~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_sumDistance\(2));

-- Location: MLABCELL_X82_Y8_N9
\inst2|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add4~13_sumout\ = SUM(( \inst2|s_distanceMatch\(3) ) + ( \inst2|s_sumDistance\(3) ) + ( \inst2|Add4~18\ ))
-- \inst2|Add4~14\ = CARRY(( \inst2|s_distanceMatch\(3) ) + ( \inst2|s_sumDistance\(3) ) + ( \inst2|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_s_distanceMatch\(3),
	datac => \inst2|ALT_INV_s_sumDistance\(3),
	cin => \inst2|Add4~18\,
	sumout => \inst2|Add4~13_sumout\,
	cout => \inst2|Add4~14\);

-- Location: MLABCELL_X82_Y8_N33
\inst2|Selector69~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector69~0_combout\ = ( \inst2|s_sumDistance\(3) & ( \inst2|WideOr7~combout\ & ( (\inst2|Add4~13_sumout\ & \inst2|state.VERIFYDIMENSION~q\) ) ) ) # ( !\inst2|s_sumDistance\(3) & ( \inst2|WideOr7~combout\ & ( (\inst2|Add4~13_sumout\ & 
-- \inst2|state.VERIFYDIMENSION~q\) ) ) ) # ( \inst2|s_sumDistance\(3) & ( !\inst2|WideOr7~combout\ ) ) # ( !\inst2|s_sumDistance\(3) & ( !\inst2|WideOr7~combout\ & ( (\inst2|Add4~13_sumout\ & \inst2|state.VERIFYDIMENSION~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111111111111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_Add4~13_sumout\,
	datac => \inst2|ALT_INV_state.VERIFYDIMENSION~q\,
	datae => \inst2|ALT_INV_s_sumDistance\(3),
	dataf => \inst2|ALT_INV_WideOr7~combout\,
	combout => \inst2|Selector69~0_combout\);

-- Location: FF_X82_Y8_N35
\inst2|s_sumDistance[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_sumDistance\(3));

-- Location: MLABCELL_X82_Y8_N12
\inst2|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add4~9_sumout\ = SUM(( \inst2|s_sumDistance\(4) ) + ( GND ) + ( \inst2|Add4~14\ ))
-- \inst2|Add4~10\ = CARRY(( \inst2|s_sumDistance\(4) ) + ( GND ) + ( \inst2|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_s_sumDistance\(4),
	cin => \inst2|Add4~14\,
	sumout => \inst2|Add4~9_sumout\,
	cout => \inst2|Add4~10\);

-- Location: MLABCELL_X84_Y7_N57
\inst2|Selector68~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector68~0_combout\ = ( \inst2|state.VERIFYDIMENSION~q\ & ( ((!\inst2|WideOr7~combout\ & \inst2|s_sumDistance\(4))) # (\inst2|Add4~9_sumout\) ) ) # ( !\inst2|state.VERIFYDIMENSION~q\ & ( (!\inst2|WideOr7~combout\ & \inst2|s_sumDistance\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001111110011110000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_WideOr7~combout\,
	datac => \inst2|ALT_INV_Add4~9_sumout\,
	datad => \inst2|ALT_INV_s_sumDistance\(4),
	dataf => \inst2|ALT_INV_state.VERIFYDIMENSION~q\,
	combout => \inst2|Selector68~0_combout\);

-- Location: FF_X84_Y7_N59
\inst2|s_sumDistance[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector68~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_sumDistance\(4));

-- Location: MLABCELL_X82_Y8_N15
\inst2|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add4~5_sumout\ = SUM(( \inst2|s_sumDistance\(5) ) + ( GND ) + ( \inst2|Add4~10\ ))
-- \inst2|Add4~6\ = CARRY(( \inst2|s_sumDistance\(5) ) + ( GND ) + ( \inst2|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_s_sumDistance\(5),
	cin => \inst2|Add4~10\,
	sumout => \inst2|Add4~5_sumout\,
	cout => \inst2|Add4~6\);

-- Location: LABCELL_X83_Y7_N42
\inst2|Selector67~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector67~0_combout\ = (!\inst2|Add4~5_sumout\ & (!\inst2|WideOr7~combout\ & ((\inst2|s_sumDistance\(5))))) # (\inst2|Add4~5_sumout\ & (((!\inst2|WideOr7~combout\ & \inst2|s_sumDistance\(5))) # (\inst2|state.VERIFYDIMENSION~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Add4~5_sumout\,
	datab => \inst2|ALT_INV_WideOr7~combout\,
	datac => \inst2|ALT_INV_state.VERIFYDIMENSION~q\,
	datad => \inst2|ALT_INV_s_sumDistance\(5),
	combout => \inst2|Selector67~0_combout\);

-- Location: FF_X83_Y7_N44
\inst2|s_sumDistance[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector67~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_sumDistance\(5));

-- Location: MLABCELL_X82_Y8_N18
\inst2|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add4~1_sumout\ = SUM(( \inst2|s_sumDistance\(6) ) + ( GND ) + ( \inst2|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_s_sumDistance\(6),
	cin => \inst2|Add4~6\,
	sumout => \inst2|Add4~1_sumout\);

-- Location: MLABCELL_X82_Y8_N24
\inst2|Selector66~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Selector66~0_combout\ = ( \inst2|s_sumDistance\(6) & ( \inst2|WideOr7~combout\ & ( (\inst2|state.VERIFYDIMENSION~q\ & \inst2|Add4~1_sumout\) ) ) ) # ( !\inst2|s_sumDistance\(6) & ( \inst2|WideOr7~combout\ & ( (\inst2|state.VERIFYDIMENSION~q\ & 
-- \inst2|Add4~1_sumout\) ) ) ) # ( \inst2|s_sumDistance\(6) & ( !\inst2|WideOr7~combout\ ) ) # ( !\inst2|s_sumDistance\(6) & ( !\inst2|WideOr7~combout\ & ( (\inst2|state.VERIFYDIMENSION~q\ & \inst2|Add4~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111111111111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_state.VERIFYDIMENSION~q\,
	datac => \inst2|ALT_INV_Add4~1_sumout\,
	datae => \inst2|ALT_INV_s_sumDistance\(6),
	dataf => \inst2|ALT_INV_WideOr7~combout\,
	combout => \inst2|Selector66~0_combout\);

-- Location: FF_X82_Y8_N26
\inst2|s_sumDistance[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|Selector66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_sumDistance\(6));

-- Location: LABCELL_X74_Y2_N24
\inst2|s_blockState[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_blockState[3]~0_combout\ = ( !\inst2|state.ENDSTATE~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_state.ENDSTATE~q\,
	combout => \inst2|s_blockState[3]~0_combout\);

-- Location: FF_X74_Y2_N25
\inst2|s_blockState[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_blockState[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_blockState\(3));

-- Location: LABCELL_X74_Y2_N9
\inst2|s_blockState[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_blockState[2]~1_combout\ = ( !\inst2|state.ENDSTATE~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_state.ENDSTATE~q\,
	combout => \inst2|s_blockState[2]~1_combout\);

-- Location: FF_X74_Y2_N10
\inst2|s_blockState[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_blockState[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_blockState\(2));

-- Location: LABCELL_X74_Y2_N51
\inst2|s_blockState[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_blockState[1]~2_combout\ = ( !\inst2|state.ENDSTATE~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_state.ENDSTATE~q\,
	combout => \inst2|s_blockState[1]~2_combout\);

-- Location: FF_X74_Y2_N52
\inst2|s_blockState[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_blockState[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_blockState\(1));

-- Location: LABCELL_X74_Y2_N18
\inst2|s_blockState[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_blockState[0]~feeder_combout\ = ( \inst2|state.ENDSTATE~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_state.ENDSTATE~q\,
	combout => \inst2|s_blockState[0]~feeder_combout\);

-- Location: FF_X74_Y2_N20
\inst2|s_blockState[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_blockState[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_blockState\(0));

-- Location: FF_X81_Y7_N53
\inst1|s_countCentroid[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_countCentroid[9]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_countCentroid\(9));

-- Location: LABCELL_X80_Y7_N15
\inst1|s_distanceMatch[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|s_distanceMatch[6]~feeder_combout\ = ( \inst2|s_sumDistance\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_s_sumDistance\(6),
	combout => \inst1|s_distanceMatch[6]~feeder_combout\);

-- Location: FF_X80_Y7_N17
\inst1|s_distanceMatch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|s_distanceMatch[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_distanceMatch\(6));

-- Location: FF_X80_Y7_N50
\inst1|s_reg6[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst1|s_distanceMatch\(6),
	sload => VCC,
	ena => \inst1|s_reg7[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg6\(6));

-- Location: FF_X83_Y7_N11
\inst1|s_distanceMatch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_sumDistance\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_distanceMatch\(5));

-- Location: LABCELL_X80_Y7_N21
\inst1|s_reg6[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|s_reg6[5]~feeder_combout\ = \inst1|s_distanceMatch\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_s_distanceMatch\(5),
	combout => \inst1|s_reg6[5]~feeder_combout\);

-- Location: FF_X80_Y7_N23
\inst1|s_reg6[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|s_reg6[5]~feeder_combout\,
	ena => \inst1|s_reg7[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg6\(5));

-- Location: FF_X84_Y7_N22
\inst1|s_distanceMatch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_sumDistance\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_distanceMatch\(4));

-- Location: FF_X80_Y7_N20
\inst1|s_reg6[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst1|s_distanceMatch\(4),
	sload => VCC,
	ena => \inst1|s_reg7[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg6\(4));

-- Location: LABCELL_X80_Y7_N18
\inst1|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|process_0~3_combout\ = ( \inst1|s_reg6\(4) & ( (!\inst1|s_distanceMatch\(5) & ((!\inst1|s_distanceMatch\(4)) # (\inst1|s_reg6\(5)))) # (\inst1|s_distanceMatch\(5) & (\inst1|s_reg6\(5) & !\inst1|s_distanceMatch\(4))) ) ) # ( !\inst1|s_reg6\(4) & ( 
-- (!\inst1|s_distanceMatch\(5) & \inst1|s_reg6\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101111000010101010111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_s_distanceMatch\(5),
	datac => \inst1|ALT_INV_s_reg6\(5),
	datad => \inst1|ALT_INV_s_distanceMatch\(4),
	dataf => \inst1|ALT_INV_s_reg6\(4),
	combout => \inst1|process_0~3_combout\);

-- Location: LABCELL_X83_Y8_N45
\inst1|s_distanceMatch[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|s_distanceMatch[3]~feeder_combout\ = ( \inst2|s_sumDistance\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_s_sumDistance\(3),
	combout => \inst1|s_distanceMatch[3]~feeder_combout\);

-- Location: FF_X83_Y8_N46
\inst1|s_distanceMatch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|s_distanceMatch[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_distanceMatch\(3));

-- Location: FF_X80_Y7_N58
\inst1|s_reg6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst1|s_distanceMatch\(3),
	sload => VCC,
	ena => \inst1|s_reg7[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg6\(3));

-- Location: FF_X80_Y7_N25
\inst1|s_distanceMatch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_sumDistance\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_distanceMatch\(1));

-- Location: FF_X80_Y7_N11
\inst1|s_reg6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst1|s_distanceMatch\(1),
	sload => VCC,
	ena => \inst1|s_reg7[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg6\(1));

-- Location: FF_X80_Y7_N47
\inst1|s_distanceMatch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_sumDistance\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_distanceMatch\(0));

-- Location: FF_X80_Y7_N7
\inst1|s_reg6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst1|s_distanceMatch\(0),
	sload => VCC,
	ena => \inst1|s_reg7[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg6\(0));

-- Location: LABCELL_X80_Y7_N6
\inst1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = ( !\inst1|s_distanceMatch\(0) & ( \inst1|s_distanceMatch\(1) & ( (\inst1|s_reg6\(1) & \inst1|s_reg6\(0)) ) ) ) # ( \inst1|s_distanceMatch\(0) & ( !\inst1|s_distanceMatch\(1) & ( \inst1|s_reg6\(1) ) ) ) # ( 
-- !\inst1|s_distanceMatch\(0) & ( !\inst1|s_distanceMatch\(1) & ( (\inst1|s_reg6\(0)) # (\inst1|s_reg6\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001100110011001100000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_s_reg6\(1),
	datac => \inst1|ALT_INV_s_reg6\(0),
	datae => \inst1|ALT_INV_s_distanceMatch\(0),
	dataf => \inst1|ALT_INV_s_distanceMatch\(1),
	combout => \inst1|process_0~0_combout\);

-- Location: FF_X81_Y7_N47
\inst1|s_distanceMatch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_sumDistance\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_distanceMatch\(2));

-- Location: FF_X80_Y7_N37
\inst1|s_reg6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst1|s_distanceMatch\(2),
	sload => VCC,
	ena => \inst1|s_reg7[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg6\(2));

-- Location: LABCELL_X79_Y7_N51
\inst1|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|process_0~1_combout\ = ( \inst1|s_distanceMatch\(5) & ( (\inst1|s_reg6\(5) & (!\inst1|s_reg6\(4) $ (\inst1|s_distanceMatch\(4)))) ) ) # ( !\inst1|s_distanceMatch\(5) & ( (!\inst1|s_reg6\(5) & (!\inst1|s_reg6\(4) $ (\inst1|s_distanceMatch\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001001000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_s_reg6\(5),
	datab => \inst1|ALT_INV_s_reg6\(4),
	datac => \inst1|ALT_INV_s_distanceMatch\(4),
	dataf => \inst1|ALT_INV_s_distanceMatch\(5),
	combout => \inst1|process_0~1_combout\);

-- Location: LABCELL_X80_Y7_N36
\inst1|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|process_0~2_combout\ = ( \inst1|s_distanceMatch\(2) & ( \inst1|process_0~1_combout\ & ( (!\inst1|s_reg6\(3) & (\inst1|process_0~0_combout\ & (!\inst1|s_distanceMatch\(3) & \inst1|s_reg6\(2)))) # (\inst1|s_reg6\(3) & ((!\inst1|s_distanceMatch\(3)) # 
-- ((\inst1|process_0~0_combout\ & \inst1|s_reg6\(2))))) ) ) ) # ( !\inst1|s_distanceMatch\(2) & ( \inst1|process_0~1_combout\ & ( (!\inst1|s_reg6\(3) & (!\inst1|s_distanceMatch\(3) & ((\inst1|s_reg6\(2)) # (\inst1|process_0~0_combout\)))) # 
-- (\inst1|s_reg6\(3) & (((!\inst1|s_distanceMatch\(3)) # (\inst1|s_reg6\(2))) # (\inst1|process_0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110001111101010101000001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_s_reg6\(3),
	datab => \inst1|ALT_INV_process_0~0_combout\,
	datac => \inst1|ALT_INV_s_distanceMatch\(3),
	datad => \inst1|ALT_INV_s_reg6\(2),
	datae => \inst1|ALT_INV_s_distanceMatch\(2),
	dataf => \inst1|ALT_INV_process_0~1_combout\,
	combout => \inst1|process_0~2_combout\);

-- Location: FF_X81_Y7_N41
\inst1|s_countCentroid[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_countCentroid[5]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_countCentroid\(5));

-- Location: FF_X79_Y7_N46
\inst1|s_countCentroid[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_countCentroid[4]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_countCentroid\(4));

-- Location: FF_X79_Y7_N25
\inst1|s_countCentroid[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_countCentroid[7]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_countCentroid\(7));

-- Location: FF_X81_Y7_N50
\inst1|s_countCentroid[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_countCentroid[8]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_countCentroid\(8));

-- Location: FF_X80_Y7_N28
\inst1|s_countCentroid[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_countCentroid[6]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_countCentroid\(6));

-- Location: LABCELL_X80_Y7_N27
\inst1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = ( !\inst1|s_countCentroid\(6) & ( !\inst1|s_countCentroid\(9) & ( (!\inst1|s_countCentroid\(7) & !\inst1|s_countCentroid\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_s_countCentroid\(7),
	datac => \inst1|ALT_INV_s_countCentroid\(8),
	datae => \inst1|ALT_INV_s_countCentroid\(6),
	dataf => \inst1|ALT_INV_s_countCentroid\(9),
	combout => \inst1|Equal0~1_combout\);

-- Location: FF_X79_Y7_N55
\inst1|s_countCentroid[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_countCentroid[3]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_countCentroid\(3));

-- Location: FF_X79_Y7_N16
\inst1|s_countCentroid[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_countCentroid[2]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_countCentroid\(2));

-- Location: FF_X80_Y7_N43
\inst1|s_countCentroid[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_countCentroid[1]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_countCentroid\(1));

-- Location: FF_X78_Y7_N16
\inst1|s_countCentroid[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst2|s_countCentroid[0]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_countCentroid\(0));

-- Location: LABCELL_X80_Y7_N42
\inst1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = ( !\inst1|s_countCentroid\(1) & ( !\inst1|s_countCentroid\(0) & ( (!\inst1|s_countCentroid\(3) & !\inst1|s_countCentroid\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_s_countCentroid\(3),
	datab => \inst1|ALT_INV_s_countCentroid\(2),
	datae => \inst1|ALT_INV_s_countCentroid\(1),
	dataf => \inst1|ALT_INV_s_countCentroid\(0),
	combout => \inst1|Equal0~0_combout\);

-- Location: LABCELL_X80_Y7_N33
\inst1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = ( \inst1|Equal0~1_combout\ & ( \inst1|Equal0~0_combout\ & ( (!\inst1|s_countCentroid\(5) & !\inst1|s_countCentroid\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_s_countCentroid\(5),
	datad => \inst1|ALT_INV_s_countCentroid\(4),
	datae => \inst1|ALT_INV_Equal0~1_combout\,
	dataf => \inst1|ALT_INV_Equal0~0_combout\,
	combout => \inst1|Equal0~2_combout\);

-- Location: LABCELL_X80_Y7_N48
\inst1|s_reg7[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|s_reg7[9]~0_combout\ = ( \inst1|process_0~2_combout\ & ( \inst1|Equal0~2_combout\ & ( \inst2|s_enMinDistanceMatch~q\ ) ) ) # ( !\inst1|process_0~2_combout\ & ( \inst1|Equal0~2_combout\ & ( \inst2|s_enMinDistanceMatch~q\ ) ) ) # ( 
-- \inst1|process_0~2_combout\ & ( !\inst1|Equal0~2_combout\ & ( (\inst2|s_enMinDistanceMatch~q\ & ((!\inst1|s_distanceMatch\(6)) # (\inst1|s_reg6\(6)))) ) ) ) # ( !\inst1|process_0~2_combout\ & ( !\inst1|Equal0~2_combout\ & ( (\inst2|s_enMinDistanceMatch~q\ 
-- & ((!\inst1|s_distanceMatch\(6) & ((\inst1|process_0~3_combout\) # (\inst1|s_reg6\(6)))) # (\inst1|s_distanceMatch\(6) & (\inst1|s_reg6\(6) & \inst1|process_0~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000101010001010100010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_s_enMinDistanceMatch~q\,
	datab => \inst1|ALT_INV_s_distanceMatch\(6),
	datac => \inst1|ALT_INV_s_reg6\(6),
	datad => \inst1|ALT_INV_process_0~3_combout\,
	datae => \inst1|ALT_INV_process_0~2_combout\,
	dataf => \inst1|ALT_INV_Equal0~2_combout\,
	combout => \inst1|s_reg7[9]~0_combout\);

-- Location: FF_X78_Y7_N4
\inst1|s_reg7[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst1|s_countCentroid\(9),
	sload => VCC,
	ena => \inst1|s_reg7[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg7\(9));

-- Location: MLABCELL_X78_Y4_N42
\inst2|s_oDado[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_oDado[9]~feeder_combout\ = ( \inst1|s_reg7\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_s_reg7\(9),
	combout => \inst2|s_oDado[9]~feeder_combout\);

-- Location: FF_X78_Y4_N43
\inst2|s_oDado[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_oDado[9]~feeder_combout\,
	ena => \inst2|state.STOREDATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_oDado\(9));

-- Location: FF_X80_Y7_N4
\inst1|s_reg7[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst1|s_countCentroid\(8),
	sload => VCC,
	ena => \inst1|s_reg7[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg7\(8));

-- Location: MLABCELL_X78_Y4_N48
\inst2|s_oDado[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_oDado[8]~feeder_combout\ = ( \inst1|s_reg7\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_s_reg7\(8),
	combout => \inst2|s_oDado[8]~feeder_combout\);

-- Location: FF_X78_Y4_N49
\inst2|s_oDado[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_oDado[8]~feeder_combout\,
	ena => \inst2|state.STOREDATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_oDado\(8));

-- Location: FF_X79_Y7_N8
\inst1|s_reg7[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst1|s_countCentroid\(7),
	sload => VCC,
	ena => \inst1|s_reg7[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg7\(7));

-- Location: FF_X78_Y4_N34
\inst2|s_oDado[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	asdata => \inst1|s_reg7\(7),
	sload => VCC,
	ena => \inst2|state.STOREDATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_oDado\(7));

-- Location: FF_X80_Y7_N35
\inst1|s_reg7[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst1|s_countCentroid\(6),
	sload => VCC,
	ena => \inst1|s_reg7[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg7\(6));

-- Location: MLABCELL_X84_Y11_N12
\inst2|s_oDado[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_oDado[6]~feeder_combout\ = ( \inst1|s_reg7\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_s_reg7\(6),
	combout => \inst2|s_oDado[6]~feeder_combout\);

-- Location: FF_X84_Y11_N13
\inst2|s_oDado[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_oDado[6]~feeder_combout\,
	ena => \inst2|state.STOREDATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_oDado\(6));

-- Location: LABCELL_X75_Y7_N39
\inst1|s_reg7[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|s_reg7[5]~feeder_combout\ = ( \inst1|s_countCentroid\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_s_countCentroid\(5),
	combout => \inst1|s_reg7[5]~feeder_combout\);

-- Location: FF_X75_Y7_N40
\inst1|s_reg7[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|s_reg7[5]~feeder_combout\,
	ena => \inst1|s_reg7[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg7[5]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y7_N24
\inst2|s_oDado[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_oDado[5]~feeder_combout\ = ( \inst1|s_reg7[5]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_s_reg7[5]~DUPLICATE_q\,
	combout => \inst2|s_oDado[5]~feeder_combout\);

-- Location: FF_X73_Y7_N25
\inst2|s_oDado[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_oDado[5]~feeder_combout\,
	ena => \inst2|state.STOREDATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_oDado\(5));

-- Location: FF_X79_Y7_N53
\inst1|s_reg7[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst1|s_countCentroid\(4),
	sload => VCC,
	ena => \inst1|s_reg7[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg7\(4));

-- Location: MLABCELL_X72_Y7_N24
\inst2|s_oDado[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_oDado[4]~feeder_combout\ = ( \inst1|s_reg7\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_s_reg7\(4),
	combout => \inst2|s_oDado[4]~feeder_combout\);

-- Location: FF_X72_Y7_N25
\inst2|s_oDado[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_oDado[4]~feeder_combout\,
	ena => \inst2|state.STOREDATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_oDado\(4));

-- Location: FF_X80_Y7_N52
\inst1|s_reg7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst1|s_countCentroid\(3),
	sload => VCC,
	ena => \inst1|s_reg7[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg7\(3));

-- Location: MLABCELL_X78_Y4_N36
\inst2|s_oDado[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_oDado[3]~feeder_combout\ = ( \inst1|s_reg7\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_s_reg7\(3),
	combout => \inst2|s_oDado[3]~feeder_combout\);

-- Location: FF_X78_Y4_N38
\inst2|s_oDado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_oDado[3]~feeder_combout\,
	ena => \inst2|state.STOREDATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_oDado\(3));

-- Location: FF_X80_Y7_N1
\inst1|s_reg7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst1|s_countCentroid\(2),
	sload => VCC,
	ena => \inst1|s_reg7[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg7\(2));

-- Location: LABCELL_X83_Y11_N15
\inst2|s_oDado[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_oDado[2]~feeder_combout\ = ( \inst1|s_reg7\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_s_reg7\(2),
	combout => \inst2|s_oDado[2]~feeder_combout\);

-- Location: FF_X83_Y11_N16
\inst2|s_oDado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_oDado[2]~feeder_combout\,
	ena => \inst2|state.STOREDATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_oDado\(2));

-- Location: FF_X80_Y7_N22
\inst1|s_reg7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst1|s_countCentroid\(1),
	sload => VCC,
	ena => \inst1|s_reg7[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg7\(1));

-- Location: MLABCELL_X82_Y4_N36
\inst2|s_oDado[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_oDado[1]~feeder_combout\ = ( \inst1|s_reg7\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_s_reg7\(1),
	combout => \inst2|s_oDado[1]~feeder_combout\);

-- Location: FF_X82_Y4_N37
\inst2|s_oDado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_oDado[1]~feeder_combout\,
	ena => \inst2|state.STOREDATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_oDado\(1));

-- Location: FF_X78_Y7_N8
\inst1|s_reg7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst1|s_countCentroid\(0),
	sload => VCC,
	ena => \inst1|s_reg7[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg7\(0));

-- Location: MLABCELL_X78_Y4_N9
\inst2|s_oDado[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|s_oDado[0]~feeder_combout\ = ( \inst1|s_reg7\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_s_reg7\(0),
	combout => \inst2|s_oDado[0]~feeder_combout\);

-- Location: FF_X78_Y4_N10
\inst2|s_oDado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputCLKENA0_outclk\,
	d => \inst2|s_oDado[0]~feeder_combout\,
	ena => \inst2|state.STOREDATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_oDado\(0));

-- Location: FF_X75_Y7_N41
\inst1|s_reg7[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \inst1|s_reg7[5]~feeder_combout\,
	ena => \inst1|s_reg7[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_reg7\(5));

-- Location: LABCELL_X22_Y25_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


