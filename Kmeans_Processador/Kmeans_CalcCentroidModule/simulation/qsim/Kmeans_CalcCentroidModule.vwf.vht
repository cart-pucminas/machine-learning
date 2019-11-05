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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/05/2017 14:37:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Kmeans_CalcCentroidModule
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Kmeans_CalcCentroidModule_vhd_vec_tst IS
END Kmeans_CalcCentroidModule_vhd_vec_tst;
ARCHITECTURE Kmeans_CalcCentroidModule_arch OF Kmeans_CalcCentroidModule_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr_Ram_Dado : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL addr_Ram_Map : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL en_ControlCalcCentroid : STD_LOGIC;
SIGNAL estado : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL nex_state : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL nrst : STD_LOGIC;
SIGNAL reg1 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL reg3 : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL reg5 : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL reg8 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL valueDado : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL valueMap : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL valueUpdate : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL wr_RamA : STD_LOGIC;
SIGNAL wr_RamB : STD_LOGIC;
COMPONENT Kmeans_CalcCentroidModule
	PORT (
	addr_Ram_Dado : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
	addr_Ram_Map : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
	clk : IN STD_LOGIC;
	en_ControlCalcCentroid : IN STD_LOGIC;
	estado : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	nex_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	nrst : IN STD_LOGIC;
	reg1 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	reg3 : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
	reg5 : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
	reg8 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	valueDado : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	valueMap : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	valueUpdate : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
	wr_RamA : OUT STD_LOGIC;
	wr_RamB : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Kmeans_CalcCentroidModule
	PORT MAP (
-- list connections between master ports and signals
	addr_Ram_Dado => addr_Ram_Dado,
	addr_Ram_Map => addr_Ram_Map,
	clk => clk,
	en_ControlCalcCentroid => en_ControlCalcCentroid,
	estado => estado,
	nex_state => nex_state,
	nrst => nrst,
	reg1 => reg1,
	reg3 => reg3,
	reg5 => reg5,
	reg8 => reg8,
	valueDado => valueDado,
	valueMap => valueMap,
	valueUpdate => valueUpdate,
	wr_RamA => wr_RamA,
	wr_RamB => wr_RamB
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- nrst
t_prcs_nrst: PROCESS
BEGIN
	nrst <= '0';
	WAIT FOR 10000 ps;
	nrst <= '1';
WAIT;
END PROCESS t_prcs_nrst;

-- en_ControlCalcCentroid
t_prcs_en_ControlCalcCentroid: PROCESS
BEGIN
	en_ControlCalcCentroid <= '1';
WAIT;
END PROCESS t_prcs_en_ControlCalcCentroid;
-- reg1[9]
t_prcs_reg1_9: PROCESS
BEGIN
	reg1(9) <= '0';
WAIT;
END PROCESS t_prcs_reg1_9;
-- reg1[8]
t_prcs_reg1_8: PROCESS
BEGIN
	reg1(8) <= '0';
WAIT;
END PROCESS t_prcs_reg1_8;
-- reg1[7]
t_prcs_reg1_7: PROCESS
BEGIN
	reg1(7) <= '0';
WAIT;
END PROCESS t_prcs_reg1_7;
-- reg1[6]
t_prcs_reg1_6: PROCESS
BEGIN
	reg1(6) <= '0';
WAIT;
END PROCESS t_prcs_reg1_6;
-- reg1[5]
t_prcs_reg1_5: PROCESS
BEGIN
	reg1(5) <= '0';
WAIT;
END PROCESS t_prcs_reg1_5;
-- reg1[4]
t_prcs_reg1_4: PROCESS
BEGIN
	reg1(4) <= '0';
WAIT;
END PROCESS t_prcs_reg1_4;
-- reg1[3]
t_prcs_reg1_3: PROCESS
BEGIN
	reg1(3) <= '0';
WAIT;
END PROCESS t_prcs_reg1_3;
-- reg1[2]
t_prcs_reg1_2: PROCESS
BEGIN
	reg1(2) <= '0';
WAIT;
END PROCESS t_prcs_reg1_2;
-- reg1[1]
t_prcs_reg1_1: PROCESS
BEGIN
	reg1(1) <= '1';
WAIT;
END PROCESS t_prcs_reg1_1;
-- reg1[0]
t_prcs_reg1_0: PROCESS
BEGIN
	reg1(0) <= '0';
WAIT;
END PROCESS t_prcs_reg1_0;
-- reg3[14]
t_prcs_reg3_14: PROCESS
BEGIN
	reg3(14) <= '0';
WAIT;
END PROCESS t_prcs_reg3_14;
-- reg3[13]
t_prcs_reg3_13: PROCESS
BEGIN
	reg3(13) <= '0';
WAIT;
END PROCESS t_prcs_reg3_13;
-- reg3[12]
t_prcs_reg3_12: PROCESS
BEGIN
	reg3(12) <= '0';
WAIT;
END PROCESS t_prcs_reg3_12;
-- reg3[11]
t_prcs_reg3_11: PROCESS
BEGIN
	reg3(11) <= '0';
WAIT;
END PROCESS t_prcs_reg3_11;
-- reg3[10]
t_prcs_reg3_10: PROCESS
BEGIN
	reg3(10) <= '0';
WAIT;
END PROCESS t_prcs_reg3_10;
-- reg3[9]
t_prcs_reg3_9: PROCESS
BEGIN
	reg3(9) <= '0';
WAIT;
END PROCESS t_prcs_reg3_9;
-- reg3[8]
t_prcs_reg3_8: PROCESS
BEGIN
	reg3(8) <= '0';
WAIT;
END PROCESS t_prcs_reg3_8;
-- reg3[7]
t_prcs_reg3_7: PROCESS
BEGIN
	reg3(7) <= '0';
WAIT;
END PROCESS t_prcs_reg3_7;
-- reg3[6]
t_prcs_reg3_6: PROCESS
BEGIN
	reg3(6) <= '0';
WAIT;
END PROCESS t_prcs_reg3_6;
-- reg3[5]
t_prcs_reg3_5: PROCESS
BEGIN
	reg3(5) <= '0';
WAIT;
END PROCESS t_prcs_reg3_5;
-- reg3[4]
t_prcs_reg3_4: PROCESS
BEGIN
	reg3(4) <= '0';
WAIT;
END PROCESS t_prcs_reg3_4;
-- reg3[3]
t_prcs_reg3_3: PROCESS
BEGIN
	reg3(3) <= '0';
WAIT;
END PROCESS t_prcs_reg3_3;
-- reg3[2]
t_prcs_reg3_2: PROCESS
BEGIN
	reg3(2) <= '0';
WAIT;
END PROCESS t_prcs_reg3_2;
-- reg3[1]
t_prcs_reg3_1: PROCESS
BEGIN
	reg3(1) <= '1';
WAIT;
END PROCESS t_prcs_reg3_1;
-- reg3[0]
t_prcs_reg3_0: PROCESS
BEGIN
	reg3(0) <= '1';
WAIT;
END PROCESS t_prcs_reg3_0;
-- reg5[14]
t_prcs_reg5_14: PROCESS
BEGIN
	reg5(14) <= '0';
WAIT;
END PROCESS t_prcs_reg5_14;
-- reg5[13]
t_prcs_reg5_13: PROCESS
BEGIN
	reg5(13) <= '0';
WAIT;
END PROCESS t_prcs_reg5_13;
-- reg5[12]
t_prcs_reg5_12: PROCESS
BEGIN
	reg5(12) <= '0';
WAIT;
END PROCESS t_prcs_reg5_12;
-- reg5[11]
t_prcs_reg5_11: PROCESS
BEGIN
	reg5(11) <= '0';
WAIT;
END PROCESS t_prcs_reg5_11;
-- reg5[10]
t_prcs_reg5_10: PROCESS
BEGIN
	reg5(10) <= '0';
WAIT;
END PROCESS t_prcs_reg5_10;
-- reg5[9]
t_prcs_reg5_9: PROCESS
BEGIN
	reg5(9) <= '0';
WAIT;
END PROCESS t_prcs_reg5_9;
-- reg5[8]
t_prcs_reg5_8: PROCESS
BEGIN
	reg5(8) <= '0';
WAIT;
END PROCESS t_prcs_reg5_8;
-- reg5[7]
t_prcs_reg5_7: PROCESS
BEGIN
	reg5(7) <= '0';
WAIT;
END PROCESS t_prcs_reg5_7;
-- reg5[6]
t_prcs_reg5_6: PROCESS
BEGIN
	reg5(6) <= '0';
WAIT;
END PROCESS t_prcs_reg5_6;
-- reg5[5]
t_prcs_reg5_5: PROCESS
BEGIN
	reg5(5) <= '0';
WAIT;
END PROCESS t_prcs_reg5_5;
-- reg5[4]
t_prcs_reg5_4: PROCESS
BEGIN
	reg5(4) <= '0';
WAIT;
END PROCESS t_prcs_reg5_4;
-- reg5[3]
t_prcs_reg5_3: PROCESS
BEGIN
	reg5(3) <= '0';
WAIT;
END PROCESS t_prcs_reg5_3;
-- reg5[2]
t_prcs_reg5_2: PROCESS
BEGIN
	reg5(2) <= '1';
WAIT;
END PROCESS t_prcs_reg5_2;
-- reg5[1]
t_prcs_reg5_1: PROCESS
BEGIN
	reg5(1) <= '1';
WAIT;
END PROCESS t_prcs_reg5_1;
-- reg5[0]
t_prcs_reg5_0: PROCESS
BEGIN
	reg5(0) <= '0';
WAIT;
END PROCESS t_prcs_reg5_0;
-- reg8[2]
t_prcs_reg8_2: PROCESS
BEGIN
	reg8(2) <= '0';
WAIT;
END PROCESS t_prcs_reg8_2;
-- reg8[1]
t_prcs_reg8_1: PROCESS
BEGIN
	reg8(1) <= '0';
WAIT;
END PROCESS t_prcs_reg8_1;
-- reg8[0]
t_prcs_reg8_0: PROCESS
BEGIN
	reg8(0) <= '1';
WAIT;
END PROCESS t_prcs_reg8_0;
-- valueDado[63]
t_prcs_valueDado_63: PROCESS
BEGIN
	valueDado(63) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_63;
-- valueDado[62]
t_prcs_valueDado_62: PROCESS
BEGIN
	valueDado(62) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_62;
-- valueDado[61]
t_prcs_valueDado_61: PROCESS
BEGIN
	valueDado(61) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_61;
-- valueDado[60]
t_prcs_valueDado_60: PROCESS
BEGIN
	valueDado(60) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_60;
-- valueDado[59]
t_prcs_valueDado_59: PROCESS
BEGIN
	valueDado(59) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_59;
-- valueDado[58]
t_prcs_valueDado_58: PROCESS
BEGIN
	valueDado(58) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_58;
-- valueDado[57]
t_prcs_valueDado_57: PROCESS
BEGIN
	valueDado(57) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_57;
-- valueDado[56]
t_prcs_valueDado_56: PROCESS
BEGIN
	valueDado(56) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_56;
-- valueDado[55]
t_prcs_valueDado_55: PROCESS
BEGIN
	valueDado(55) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_55;
-- valueDado[54]
t_prcs_valueDado_54: PROCESS
BEGIN
	valueDado(54) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_54;
-- valueDado[53]
t_prcs_valueDado_53: PROCESS
BEGIN
	valueDado(53) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_53;
-- valueDado[52]
t_prcs_valueDado_52: PROCESS
BEGIN
	valueDado(52) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_52;
-- valueDado[51]
t_prcs_valueDado_51: PROCESS
BEGIN
	valueDado(51) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_51;
-- valueDado[50]
t_prcs_valueDado_50: PROCESS
BEGIN
	valueDado(50) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_50;
-- valueDado[49]
t_prcs_valueDado_49: PROCESS
BEGIN
	valueDado(49) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_49;
-- valueDado[48]
t_prcs_valueDado_48: PROCESS
BEGIN
	valueDado(48) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_48;
-- valueDado[47]
t_prcs_valueDado_47: PROCESS
BEGIN
	valueDado(47) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_47;
-- valueDado[46]
t_prcs_valueDado_46: PROCESS
BEGIN
	valueDado(46) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_46;
-- valueDado[45]
t_prcs_valueDado_45: PROCESS
BEGIN
	valueDado(45) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_45;
-- valueDado[44]
t_prcs_valueDado_44: PROCESS
BEGIN
	valueDado(44) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_44;
-- valueDado[43]
t_prcs_valueDado_43: PROCESS
BEGIN
	valueDado(43) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_43;
-- valueDado[42]
t_prcs_valueDado_42: PROCESS
BEGIN
	valueDado(42) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_42;
-- valueDado[41]
t_prcs_valueDado_41: PROCESS
BEGIN
	valueDado(41) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_41;
-- valueDado[40]
t_prcs_valueDado_40: PROCESS
BEGIN
	valueDado(40) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_40;
-- valueDado[39]
t_prcs_valueDado_39: PROCESS
BEGIN
	valueDado(39) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_39;
-- valueDado[38]
t_prcs_valueDado_38: PROCESS
BEGIN
	valueDado(38) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_38;
-- valueDado[37]
t_prcs_valueDado_37: PROCESS
BEGIN
	valueDado(37) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_37;
-- valueDado[36]
t_prcs_valueDado_36: PROCESS
BEGIN
	valueDado(36) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_36;
-- valueDado[35]
t_prcs_valueDado_35: PROCESS
BEGIN
	valueDado(35) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_35;
-- valueDado[34]
t_prcs_valueDado_34: PROCESS
BEGIN
	valueDado(34) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_34;
-- valueDado[33]
t_prcs_valueDado_33: PROCESS
BEGIN
	valueDado(33) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_33;
-- valueDado[32]
t_prcs_valueDado_32: PROCESS
BEGIN
	valueDado(32) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_32;
-- valueDado[31]
t_prcs_valueDado_31: PROCESS
BEGIN
	valueDado(31) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_31;
-- valueDado[30]
t_prcs_valueDado_30: PROCESS
BEGIN
	valueDado(30) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_30;
-- valueDado[29]
t_prcs_valueDado_29: PROCESS
BEGIN
	valueDado(29) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_29;
-- valueDado[28]
t_prcs_valueDado_28: PROCESS
BEGIN
	valueDado(28) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_28;
-- valueDado[27]
t_prcs_valueDado_27: PROCESS
BEGIN
	valueDado(27) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_27;
-- valueDado[26]
t_prcs_valueDado_26: PROCESS
BEGIN
	valueDado(26) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_26;
-- valueDado[25]
t_prcs_valueDado_25: PROCESS
BEGIN
	valueDado(25) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_25;
-- valueDado[24]
t_prcs_valueDado_24: PROCESS
BEGIN
	valueDado(24) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_24;
-- valueDado[23]
t_prcs_valueDado_23: PROCESS
BEGIN
	valueDado(23) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_23;
-- valueDado[22]
t_prcs_valueDado_22: PROCESS
BEGIN
	valueDado(22) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_22;
-- valueDado[21]
t_prcs_valueDado_21: PROCESS
BEGIN
	valueDado(21) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_21;
-- valueDado[20]
t_prcs_valueDado_20: PROCESS
BEGIN
	valueDado(20) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_20;
-- valueDado[19]
t_prcs_valueDado_19: PROCESS
BEGIN
	valueDado(19) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_19;
-- valueDado[18]
t_prcs_valueDado_18: PROCESS
BEGIN
	valueDado(18) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_18;
-- valueDado[17]
t_prcs_valueDado_17: PROCESS
BEGIN
	valueDado(17) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_17;
-- valueDado[16]
t_prcs_valueDado_16: PROCESS
BEGIN
	valueDado(16) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_16;
-- valueDado[15]
t_prcs_valueDado_15: PROCESS
BEGIN
	valueDado(15) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_15;
-- valueDado[14]
t_prcs_valueDado_14: PROCESS
BEGIN
	valueDado(14) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_14;
-- valueDado[13]
t_prcs_valueDado_13: PROCESS
BEGIN
	valueDado(13) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_13;
-- valueDado[12]
t_prcs_valueDado_12: PROCESS
BEGIN
	valueDado(12) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_12;
-- valueDado[11]
t_prcs_valueDado_11: PROCESS
BEGIN
	valueDado(11) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_11;
-- valueDado[10]
t_prcs_valueDado_10: PROCESS
BEGIN
	valueDado(10) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_10;
-- valueDado[9]
t_prcs_valueDado_9: PROCESS
BEGIN
	valueDado(9) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_9;
-- valueDado[8]
t_prcs_valueDado_8: PROCESS
BEGIN
	valueDado(8) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_8;
-- valueDado[7]
t_prcs_valueDado_7: PROCESS
BEGIN
	valueDado(7) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_7;
-- valueDado[6]
t_prcs_valueDado_6: PROCESS
BEGIN
	valueDado(6) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_6;
-- valueDado[5]
t_prcs_valueDado_5: PROCESS
BEGIN
	valueDado(5) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_5;
-- valueDado[4]
t_prcs_valueDado_4: PROCESS
BEGIN
	valueDado(4) <= '0';
	WAIT FOR 240000 ps;
	valueDado(4) <= '1';
	WAIT FOR 30000 ps;
	valueDado(4) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_4;
-- valueDado[3]
t_prcs_valueDado_3: PROCESS
BEGIN
	valueDado(3) <= '0';
	WAIT FOR 60000 ps;
	valueDado(3) <= '1';
	WAIT FOR 150000 ps;
	valueDado(3) <= '0';
	WAIT FOR 60000 ps;
	valueDado(3) <= '1';
	WAIT FOR 30000 ps;
	valueDado(3) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_3;
-- valueDado[2]
t_prcs_valueDado_2: PROCESS
BEGIN
	valueDado(2) <= '0';
	WAIT FOR 60000 ps;
	valueDado(2) <= '1';
	WAIT FOR 30000 ps;
	valueDado(2) <= '0';
	WAIT FOR 150000 ps;
	valueDado(2) <= '1';
	WAIT FOR 60000 ps;
	valueDado(2) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_2;
-- valueDado[1]
t_prcs_valueDado_1: PROCESS
BEGIN
	valueDado(1) <= '0';
	WAIT FOR 10000 ps;
	valueDado(1) <= '1';
	WAIT FOR 50000 ps;
	valueDado(1) <= '0';
	WAIT FOR 30000 ps;
	valueDado(1) <= '1';
	WAIT FOR 150000 ps;
	valueDado(1) <= '0';
	WAIT FOR 30000 ps;
	valueDado(1) <= '1';
	WAIT FOR 30000 ps;
	valueDado(1) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_1;
-- valueDado[0]
t_prcs_valueDado_0: PROCESS
BEGIN
	valueDado(0) <= '0';
	WAIT FOR 210000 ps;
	valueDado(0) <= '1';
	WAIT FOR 30000 ps;
	valueDado(0) <= '0';
	WAIT FOR 30000 ps;
	valueDado(0) <= '1';
	WAIT FOR 30000 ps;
	valueDado(0) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_0;
-- valueMap[63]
t_prcs_valueMap_63: PROCESS
BEGIN
	valueMap(63) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_63;
-- valueMap[62]
t_prcs_valueMap_62: PROCESS
BEGIN
	valueMap(62) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_62;
-- valueMap[61]
t_prcs_valueMap_61: PROCESS
BEGIN
	valueMap(61) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_61;
-- valueMap[60]
t_prcs_valueMap_60: PROCESS
BEGIN
	valueMap(60) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_60;
-- valueMap[59]
t_prcs_valueMap_59: PROCESS
BEGIN
	valueMap(59) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_59;
-- valueMap[58]
t_prcs_valueMap_58: PROCESS
BEGIN
	valueMap(58) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_58;
-- valueMap[57]
t_prcs_valueMap_57: PROCESS
BEGIN
	valueMap(57) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_57;
-- valueMap[56]
t_prcs_valueMap_56: PROCESS
BEGIN
	valueMap(56) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_56;
-- valueMap[55]
t_prcs_valueMap_55: PROCESS
BEGIN
	valueMap(55) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_55;
-- valueMap[54]
t_prcs_valueMap_54: PROCESS
BEGIN
	valueMap(54) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_54;
-- valueMap[53]
t_prcs_valueMap_53: PROCESS
BEGIN
	valueMap(53) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_53;
-- valueMap[52]
t_prcs_valueMap_52: PROCESS
BEGIN
	valueMap(52) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_52;
-- valueMap[51]
t_prcs_valueMap_51: PROCESS
BEGIN
	valueMap(51) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_51;
-- valueMap[50]
t_prcs_valueMap_50: PROCESS
BEGIN
	valueMap(50) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_50;
-- valueMap[49]
t_prcs_valueMap_49: PROCESS
BEGIN
	valueMap(49) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_49;
-- valueMap[48]
t_prcs_valueMap_48: PROCESS
BEGIN
	valueMap(48) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_48;
-- valueMap[47]
t_prcs_valueMap_47: PROCESS
BEGIN
	valueMap(47) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_47;
-- valueMap[46]
t_prcs_valueMap_46: PROCESS
BEGIN
	valueMap(46) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_46;
-- valueMap[45]
t_prcs_valueMap_45: PROCESS
BEGIN
	valueMap(45) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_45;
-- valueMap[44]
t_prcs_valueMap_44: PROCESS
BEGIN
	valueMap(44) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_44;
-- valueMap[43]
t_prcs_valueMap_43: PROCESS
BEGIN
	valueMap(43) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_43;
-- valueMap[42]
t_prcs_valueMap_42: PROCESS
BEGIN
	valueMap(42) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_42;
-- valueMap[41]
t_prcs_valueMap_41: PROCESS
BEGIN
	valueMap(41) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_41;
-- valueMap[40]
t_prcs_valueMap_40: PROCESS
BEGIN
	valueMap(40) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_40;
-- valueMap[39]
t_prcs_valueMap_39: PROCESS
BEGIN
	valueMap(39) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_39;
-- valueMap[38]
t_prcs_valueMap_38: PROCESS
BEGIN
	valueMap(38) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_38;
-- valueMap[37]
t_prcs_valueMap_37: PROCESS
BEGIN
	valueMap(37) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_37;
-- valueMap[36]
t_prcs_valueMap_36: PROCESS
BEGIN
	valueMap(36) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_36;
-- valueMap[35]
t_prcs_valueMap_35: PROCESS
BEGIN
	valueMap(35) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_35;
-- valueMap[34]
t_prcs_valueMap_34: PROCESS
BEGIN
	valueMap(34) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_34;
-- valueMap[33]
t_prcs_valueMap_33: PROCESS
BEGIN
	valueMap(33) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_33;
-- valueMap[32]
t_prcs_valueMap_32: PROCESS
BEGIN
	valueMap(32) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_32;
-- valueMap[31]
t_prcs_valueMap_31: PROCESS
BEGIN
	valueMap(31) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_31;
-- valueMap[30]
t_prcs_valueMap_30: PROCESS
BEGIN
	valueMap(30) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_30;
-- valueMap[29]
t_prcs_valueMap_29: PROCESS
BEGIN
	valueMap(29) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_29;
-- valueMap[28]
t_prcs_valueMap_28: PROCESS
BEGIN
	valueMap(28) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_28;
-- valueMap[27]
t_prcs_valueMap_27: PROCESS
BEGIN
	valueMap(27) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_27;
-- valueMap[26]
t_prcs_valueMap_26: PROCESS
BEGIN
	valueMap(26) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_26;
-- valueMap[25]
t_prcs_valueMap_25: PROCESS
BEGIN
	valueMap(25) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_25;
-- valueMap[24]
t_prcs_valueMap_24: PROCESS
BEGIN
	valueMap(24) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_24;
-- valueMap[23]
t_prcs_valueMap_23: PROCESS
BEGIN
	valueMap(23) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_23;
-- valueMap[22]
t_prcs_valueMap_22: PROCESS
BEGIN
	valueMap(22) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_22;
-- valueMap[21]
t_prcs_valueMap_21: PROCESS
BEGIN
	valueMap(21) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_21;
-- valueMap[20]
t_prcs_valueMap_20: PROCESS
BEGIN
	valueMap(20) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_20;
-- valueMap[19]
t_prcs_valueMap_19: PROCESS
BEGIN
	valueMap(19) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_19;
-- valueMap[18]
t_prcs_valueMap_18: PROCESS
BEGIN
	valueMap(18) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_18;
-- valueMap[17]
t_prcs_valueMap_17: PROCESS
BEGIN
	valueMap(17) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_17;
-- valueMap[16]
t_prcs_valueMap_16: PROCESS
BEGIN
	valueMap(16) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_16;
-- valueMap[15]
t_prcs_valueMap_15: PROCESS
BEGIN
	valueMap(15) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_15;
-- valueMap[14]
t_prcs_valueMap_14: PROCESS
BEGIN
	valueMap(14) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_14;
-- valueMap[13]
t_prcs_valueMap_13: PROCESS
BEGIN
	valueMap(13) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_13;
-- valueMap[12]
t_prcs_valueMap_12: PROCESS
BEGIN
	valueMap(12) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_12;
-- valueMap[11]
t_prcs_valueMap_11: PROCESS
BEGIN
	valueMap(11) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_11;
-- valueMap[10]
t_prcs_valueMap_10: PROCESS
BEGIN
	valueMap(10) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_10;
-- valueMap[9]
t_prcs_valueMap_9: PROCESS
BEGIN
	valueMap(9) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_9;
-- valueMap[8]
t_prcs_valueMap_8: PROCESS
BEGIN
	valueMap(8) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_8;
-- valueMap[7]
t_prcs_valueMap_7: PROCESS
BEGIN
	valueMap(7) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_7;
-- valueMap[6]
t_prcs_valueMap_6: PROCESS
BEGIN
	valueMap(6) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_6;
-- valueMap[5]
t_prcs_valueMap_5: PROCESS
BEGIN
	valueMap(5) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_5;
-- valueMap[4]
t_prcs_valueMap_4: PROCESS
BEGIN
	valueMap(4) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_4;
-- valueMap[3]
t_prcs_valueMap_3: PROCESS
BEGIN
	valueMap(3) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_3;
-- valueMap[2]
t_prcs_valueMap_2: PROCESS
BEGIN
	valueMap(2) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_2;
-- valueMap[1]
t_prcs_valueMap_1: PROCESS
BEGIN
	valueMap(1) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_1;
-- valueMap[0]
t_prcs_valueMap_0: PROCESS
BEGIN
	valueMap(0) <= '0';
	WAIT FOR 10000 ps;
	valueMap(0) <= '1';
	WAIT FOR 50000 ps;
	valueMap(0) <= '0';
	WAIT FOR 150000 ps;
	valueMap(0) <= '1';
	WAIT FOR 30000 ps;
	valueMap(0) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_0;
END Kmeans_CalcCentroidModule_arch;
