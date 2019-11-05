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
-- Generated on "04/18/2017 11:46:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Kmeans_CalcCentroidModuleFP
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Kmeans_CalcCentroidModuleFP_vhd_vec_tst IS
END Kmeans_CalcCentroidModuleFP_vhd_vec_tst;
ARCHITECTURE Kmeans_CalcCentroidModuleFP_arch OF Kmeans_CalcCentroidModuleFP_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr_Ram_Dado : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL addr_Ram_Map : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL en_CalcCentroidFP : STD_LOGIC;
SIGNAL estado : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL nex_state : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL nrst : STD_LOGIC;
SIGNAL reg1 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL reg3 : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL reg5 : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL reg8 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL valueDado : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL valueMap : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL valueUpdate : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL wr_RamA : STD_LOGIC;
SIGNAL wr_RamB : STD_LOGIC;
COMPONENT Kmeans_CalcCentroidModuleFP
	PORT (
	addr_Ram_Dado : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
	addr_Ram_Map : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
	clk : IN STD_LOGIC;
	en_CalcCentroidFP : IN STD_LOGIC;
	estado : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	nex_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	nrst : IN STD_LOGIC;
	reg1 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	reg3 : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
	reg5 : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
	reg8 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	valueDado : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	valueMap : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	valueUpdate : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
	wr_RamA : OUT STD_LOGIC;
	wr_RamB : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Kmeans_CalcCentroidModuleFP
	PORT MAP (
-- list connections between master ports and signals
	addr_Ram_Dado => addr_Ram_Dado,
	addr_Ram_Map => addr_Ram_Map,
	clk => clk,
	en_CalcCentroidFP => en_CalcCentroidFP,
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
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- en_CalcCentroidFP
t_prcs_en_CalcCentroidFP: PROCESS
BEGIN
	en_CalcCentroidFP <= '1';
WAIT;
END PROCESS t_prcs_en_CalcCentroidFP;

-- nrst
t_prcs_nrst: PROCESS
BEGIN
	nrst <= '0';
	WAIT FOR 10000 ps;
	nrst <= '1';
WAIT;
END PROCESS t_prcs_nrst;
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
	reg3(1) <= '0';
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
	valueDado(30) <= '1';
	WAIT FOR 950000 ps;
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
	WAIT FOR 140000 ps;
	valueDado(24) <= '1';
	WAIT FOR 500000 ps;
	valueDado(24) <= '0';
	WAIT FOR 110000 ps;
	valueDado(24) <= '1';
	WAIT FOR 200000 ps;
	valueDado(24) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_24;
-- valueDado[23]
t_prcs_valueDado_23: PROCESS
BEGIN
	valueDado(23) <= '0';
	WAIT FOR 750000 ps;
	valueDado(23) <= '1';
	WAIT FOR 90000 ps;
	valueDado(23) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_23;
-- valueDado[22]
t_prcs_valueDado_22: PROCESS
BEGIN
	valueDado(22) <= '0';
	WAIT FOR 140000 ps;
	valueDado(22) <= '1';
	WAIT FOR 90000 ps;
	valueDado(22) <= '0';
	WAIT FOR 410000 ps;
	valueDado(22) <= '1';
	WAIT FOR 110000 ps;
	valueDado(22) <= '0';
	WAIT FOR 90000 ps;
	valueDado(22) <= '1';
	WAIT FOR 110000 ps;
	valueDado(22) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_22;
-- valueDado[21]
t_prcs_valueDado_21: PROCESS
BEGIN
	valueDado(21) <= '0';
	WAIT FOR 230000 ps;
	valueDado(21) <= '1';
	WAIT FOR 410000 ps;
	valueDado(21) <= '0';
	WAIT FOR 110000 ps;
	valueDado(21) <= '1';
	WAIT FOR 200000 ps;
	valueDado(21) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_21;
-- valueDado[20]
t_prcs_valueDado_20: PROCESS
BEGIN
	valueDado(20) <= '0';
	WAIT FOR 840000 ps;
	valueDado(20) <= '1';
	WAIT FOR 110000 ps;
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
WAIT;
END PROCESS t_prcs_valueDado_4;
-- valueDado[3]
t_prcs_valueDado_3: PROCESS
BEGIN
	valueDado(3) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_3;
-- valueDado[2]
t_prcs_valueDado_2: PROCESS
BEGIN
	valueDado(2) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_2;
-- valueDado[1]
t_prcs_valueDado_1: PROCESS
BEGIN
	valueDado(1) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_1;
-- valueDado[0]
t_prcs_valueDado_0: PROCESS
BEGIN
	valueDado(0) <= '0';
WAIT;
END PROCESS t_prcs_valueDado_0;

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
	valueMap(0) <= '1';
	WAIT FOR 140000 ps;
	valueMap(0) <= '0';
	WAIT FOR 500000 ps;
	valueMap(0) <= '1';
	WAIT FOR 110000 ps;
	valueMap(0) <= '0';
WAIT;
END PROCESS t_prcs_valueMap_0;
END Kmeans_CalcCentroidModuleFP_arch;
