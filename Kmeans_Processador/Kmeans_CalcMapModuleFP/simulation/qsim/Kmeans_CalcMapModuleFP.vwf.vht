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
-- Generated on "04/07/2017 12:33:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Kmeans_CalcMapModuleFP
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Kmeans_CalcMapModuleFP_vhd_vec_tst IS
END Kmeans_CalcMapModuleFP_vhd_vec_tst;
ARCHITECTURE Kmeans_CalcMapModuleFP_arch OF Kmeans_CalcMapModuleFP_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr_Ram_Centroid : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL addr_Ram_Dado : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL centroid : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL dado : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL distanceCalc : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL en_CalcMapFP : STD_LOGIC;
SIGNAL endCalc : STD_LOGIC;
SIGNAL enMinDistance : STD_LOGIC;
SIGNAL estado : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL next_State : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL nrst : STD_LOGIC;
SIGNAL o_dado : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL reg1 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL reg3 : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL reg5 : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL reg8 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL wr_RamA : STD_LOGIC;
SIGNAL wr_RamB : STD_LOGIC;
COMPONENT Kmeans_CalcMapModuleFP
	PORT (
	addr_Ram_Centroid : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
	addr_Ram_Dado : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
	centroid : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	clk : IN STD_LOGIC;
	dado : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	distanceCalc : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	en_CalcMapFP : IN STD_LOGIC;
	endCalc : OUT STD_LOGIC;
	enMinDistance : OUT STD_LOGIC;
	estado : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	next_State : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	nrst : IN STD_LOGIC;
	o_dado : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	reg1 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	reg3 : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
	reg5 : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
	reg8 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	wr_RamA : OUT STD_LOGIC;
	wr_RamB : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Kmeans_CalcMapModuleFP
	PORT MAP (
-- list connections between master ports and signals
	addr_Ram_Centroid => addr_Ram_Centroid,
	addr_Ram_Dado => addr_Ram_Dado,
	centroid => centroid,
	clk => clk,
	dado => dado,
	distanceCalc => distanceCalc,
	en_CalcMapFP => en_CalcMapFP,
	endCalc => endCalc,
	enMinDistance => enMinDistance,
	estado => estado,
	next_State => next_State,
	nrst => nrst,
	o_dado => o_dado,
	reg1 => reg1,
	reg3 => reg3,
	reg5 => reg5,
	reg8 => reg8,
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
	IF (NOW >= 2100000 ps) THEN WAIT; END IF;
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
	reg5(2) <= '0';
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
	reg5(0) <= '1';
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

-- en_CalcMapFP
t_prcs_en_CalcMapFP: PROCESS
BEGIN
	en_CalcMapFP <= '1';
WAIT;
END PROCESS t_prcs_en_CalcMapFP;
-- centroid[63]
t_prcs_centroid_63: PROCESS
BEGIN
	centroid(63) <= '0';
WAIT;
END PROCESS t_prcs_centroid_63;
-- centroid[62]
t_prcs_centroid_62: PROCESS
BEGIN
	centroid(62) <= '0';
WAIT;
END PROCESS t_prcs_centroid_62;
-- centroid[61]
t_prcs_centroid_61: PROCESS
BEGIN
	centroid(61) <= '0';
WAIT;
END PROCESS t_prcs_centroid_61;
-- centroid[60]
t_prcs_centroid_60: PROCESS
BEGIN
	centroid(60) <= '0';
WAIT;
END PROCESS t_prcs_centroid_60;
-- centroid[59]
t_prcs_centroid_59: PROCESS
BEGIN
	centroid(59) <= '0';
WAIT;
END PROCESS t_prcs_centroid_59;
-- centroid[58]
t_prcs_centroid_58: PROCESS
BEGIN
	centroid(58) <= '0';
WAIT;
END PROCESS t_prcs_centroid_58;
-- centroid[57]
t_prcs_centroid_57: PROCESS
BEGIN
	centroid(57) <= '0';
WAIT;
END PROCESS t_prcs_centroid_57;
-- centroid[56]
t_prcs_centroid_56: PROCESS
BEGIN
	centroid(56) <= '0';
WAIT;
END PROCESS t_prcs_centroid_56;
-- centroid[55]
t_prcs_centroid_55: PROCESS
BEGIN
	centroid(55) <= '0';
WAIT;
END PROCESS t_prcs_centroid_55;
-- centroid[54]
t_prcs_centroid_54: PROCESS
BEGIN
	centroid(54) <= '0';
WAIT;
END PROCESS t_prcs_centroid_54;
-- centroid[53]
t_prcs_centroid_53: PROCESS
BEGIN
	centroid(53) <= '0';
WAIT;
END PROCESS t_prcs_centroid_53;
-- centroid[52]
t_prcs_centroid_52: PROCESS
BEGIN
	centroid(52) <= '0';
WAIT;
END PROCESS t_prcs_centroid_52;
-- centroid[51]
t_prcs_centroid_51: PROCESS
BEGIN
	centroid(51) <= '0';
WAIT;
END PROCESS t_prcs_centroid_51;
-- centroid[50]
t_prcs_centroid_50: PROCESS
BEGIN
	centroid(50) <= '0';
WAIT;
END PROCESS t_prcs_centroid_50;
-- centroid[49]
t_prcs_centroid_49: PROCESS
BEGIN
	centroid(49) <= '0';
WAIT;
END PROCESS t_prcs_centroid_49;
-- centroid[48]
t_prcs_centroid_48: PROCESS
BEGIN
	centroid(48) <= '0';
WAIT;
END PROCESS t_prcs_centroid_48;
-- centroid[47]
t_prcs_centroid_47: PROCESS
BEGIN
	centroid(47) <= '0';
WAIT;
END PROCESS t_prcs_centroid_47;
-- centroid[46]
t_prcs_centroid_46: PROCESS
BEGIN
	centroid(46) <= '0';
WAIT;
END PROCESS t_prcs_centroid_46;
-- centroid[45]
t_prcs_centroid_45: PROCESS
BEGIN
	centroid(45) <= '0';
WAIT;
END PROCESS t_prcs_centroid_45;
-- centroid[44]
t_prcs_centroid_44: PROCESS
BEGIN
	centroid(44) <= '0';
WAIT;
END PROCESS t_prcs_centroid_44;
-- centroid[43]
t_prcs_centroid_43: PROCESS
BEGIN
	centroid(43) <= '0';
WAIT;
END PROCESS t_prcs_centroid_43;
-- centroid[42]
t_prcs_centroid_42: PROCESS
BEGIN
	centroid(42) <= '0';
WAIT;
END PROCESS t_prcs_centroid_42;
-- centroid[41]
t_prcs_centroid_41: PROCESS
BEGIN
	centroid(41) <= '0';
WAIT;
END PROCESS t_prcs_centroid_41;
-- centroid[40]
t_prcs_centroid_40: PROCESS
BEGIN
	centroid(40) <= '0';
WAIT;
END PROCESS t_prcs_centroid_40;
-- centroid[39]
t_prcs_centroid_39: PROCESS
BEGIN
	centroid(39) <= '0';
WAIT;
END PROCESS t_prcs_centroid_39;
-- centroid[38]
t_prcs_centroid_38: PROCESS
BEGIN
	centroid(38) <= '0';
WAIT;
END PROCESS t_prcs_centroid_38;
-- centroid[37]
t_prcs_centroid_37: PROCESS
BEGIN
	centroid(37) <= '0';
WAIT;
END PROCESS t_prcs_centroid_37;
-- centroid[36]
t_prcs_centroid_36: PROCESS
BEGIN
	centroid(36) <= '0';
WAIT;
END PROCESS t_prcs_centroid_36;
-- centroid[35]
t_prcs_centroid_35: PROCESS
BEGIN
	centroid(35) <= '0';
WAIT;
END PROCESS t_prcs_centroid_35;
-- centroid[34]
t_prcs_centroid_34: PROCESS
BEGIN
	centroid(34) <= '0';
WAIT;
END PROCESS t_prcs_centroid_34;
-- centroid[33]
t_prcs_centroid_33: PROCESS
BEGIN
	centroid(33) <= '0';
WAIT;
END PROCESS t_prcs_centroid_33;
-- centroid[32]
t_prcs_centroid_32: PROCESS
BEGIN
	centroid(32) <= '0';
WAIT;
END PROCESS t_prcs_centroid_32;
-- centroid[31]
t_prcs_centroid_31: PROCESS
BEGIN
	centroid(31) <= '0';
WAIT;
END PROCESS t_prcs_centroid_31;
-- centroid[30]
t_prcs_centroid_30: PROCESS
BEGIN
	centroid(30) <= '1';
	WAIT FOR 1499000 ps;
	centroid(30) <= '0';
WAIT;
END PROCESS t_prcs_centroid_30;
-- centroid[29]
t_prcs_centroid_29: PROCESS
BEGIN
	centroid(29) <= '0';
WAIT;
END PROCESS t_prcs_centroid_29;
-- centroid[28]
t_prcs_centroid_28: PROCESS
BEGIN
	centroid(28) <= '0';
WAIT;
END PROCESS t_prcs_centroid_28;
-- centroid[27]
t_prcs_centroid_27: PROCESS
BEGIN
	centroid(27) <= '0';
WAIT;
END PROCESS t_prcs_centroid_27;
-- centroid[26]
t_prcs_centroid_26: PROCESS
BEGIN
	centroid(26) <= '0';
WAIT;
END PROCESS t_prcs_centroid_26;
-- centroid[25]
t_prcs_centroid_25: PROCESS
BEGIN
	centroid(25) <= '0';
WAIT;
END PROCESS t_prcs_centroid_25;
-- centroid[24]
t_prcs_centroid_24: PROCESS
BEGIN
	centroid(24) <= '1';
	WAIT FOR 660000 ps;
	centroid(24) <= '0';
	WAIT FOR 300000 ps;
	centroid(24) <= '1';
	WAIT FOR 340000 ps;
	centroid(24) <= '0';
WAIT;
END PROCESS t_prcs_centroid_24;
-- centroid[23]
t_prcs_centroid_23: PROCESS
BEGIN
	centroid(23) <= '0';
	WAIT FOR 340000 ps;
	centroid(23) <= '1';
	WAIT FOR 620000 ps;
	centroid(23) <= '0';
	WAIT FOR 340000 ps;
	centroid(23) <= '1';
	WAIT FOR 199000 ps;
	centroid(23) <= '0';
WAIT;
END PROCESS t_prcs_centroid_23;
-- centroid[22]
t_prcs_centroid_22: PROCESS
BEGIN
	centroid(22) <= '0';
	WAIT FOR 1300000 ps;
	centroid(22) <= '1';
	WAIT FOR 199000 ps;
	centroid(22) <= '0';
WAIT;
END PROCESS t_prcs_centroid_22;
-- centroid[21]
t_prcs_centroid_21: PROCESS
BEGIN
	centroid(21) <= '1';
	WAIT FOR 1499000 ps;
	centroid(21) <= '0';
WAIT;
END PROCESS t_prcs_centroid_21;
-- centroid[20]
t_prcs_centroid_20: PROCESS
BEGIN
	centroid(20) <= '0';
WAIT;
END PROCESS t_prcs_centroid_20;
-- centroid[19]
t_prcs_centroid_19: PROCESS
BEGIN
	centroid(19) <= '0';
	WAIT FOR 1300000 ps;
	centroid(19) <= '1';
	WAIT FOR 199000 ps;
	centroid(19) <= '0';
WAIT;
END PROCESS t_prcs_centroid_19;
-- centroid[18]
t_prcs_centroid_18: PROCESS
BEGIN
	centroid(18) <= '0';
WAIT;
END PROCESS t_prcs_centroid_18;
-- centroid[17]
t_prcs_centroid_17: PROCESS
BEGIN
	centroid(17) <= '0';
WAIT;
END PROCESS t_prcs_centroid_17;
-- centroid[16]
t_prcs_centroid_16: PROCESS
BEGIN
	centroid(16) <= '0';
	WAIT FOR 1300000 ps;
	centroid(16) <= '1';
	WAIT FOR 199000 ps;
	centroid(16) <= '0';
WAIT;
END PROCESS t_prcs_centroid_16;
-- centroid[15]
t_prcs_centroid_15: PROCESS
BEGIN
	centroid(15) <= '0';
	WAIT FOR 1300000 ps;
	centroid(15) <= '1';
	WAIT FOR 199000 ps;
	centroid(15) <= '0';
WAIT;
END PROCESS t_prcs_centroid_15;
-- centroid[14]
t_prcs_centroid_14: PROCESS
BEGIN
	centroid(14) <= '0';
WAIT;
END PROCESS t_prcs_centroid_14;
-- centroid[13]
t_prcs_centroid_13: PROCESS
BEGIN
	centroid(13) <= '0';
WAIT;
END PROCESS t_prcs_centroid_13;
-- centroid[12]
t_prcs_centroid_12: PROCESS
BEGIN
	centroid(12) <= '0';
	WAIT FOR 1300000 ps;
	centroid(12) <= '1';
	WAIT FOR 199000 ps;
	centroid(12) <= '0';
WAIT;
END PROCESS t_prcs_centroid_12;
-- centroid[11]
t_prcs_centroid_11: PROCESS
BEGIN
	centroid(11) <= '0';
	WAIT FOR 1300000 ps;
	centroid(11) <= '1';
	WAIT FOR 199000 ps;
	centroid(11) <= '0';
WAIT;
END PROCESS t_prcs_centroid_11;
-- centroid[10]
t_prcs_centroid_10: PROCESS
BEGIN
	centroid(10) <= '0';
WAIT;
END PROCESS t_prcs_centroid_10;
-- centroid[9]
t_prcs_centroid_9: PROCESS
BEGIN
	centroid(9) <= '0';
WAIT;
END PROCESS t_prcs_centroid_9;
-- centroid[8]
t_prcs_centroid_8: PROCESS
BEGIN
	centroid(8) <= '0';
	WAIT FOR 1300000 ps;
	centroid(8) <= '1';
	WAIT FOR 199000 ps;
	centroid(8) <= '0';
WAIT;
END PROCESS t_prcs_centroid_8;
-- centroid[7]
t_prcs_centroid_7: PROCESS
BEGIN
	centroid(7) <= '0';
	WAIT FOR 1300000 ps;
	centroid(7) <= '1';
	WAIT FOR 199000 ps;
	centroid(7) <= '0';
WAIT;
END PROCESS t_prcs_centroid_7;
-- centroid[6]
t_prcs_centroid_6: PROCESS
BEGIN
	centroid(6) <= '0';
WAIT;
END PROCESS t_prcs_centroid_6;
-- centroid[5]
t_prcs_centroid_5: PROCESS
BEGIN
	centroid(5) <= '0';
WAIT;
END PROCESS t_prcs_centroid_5;
-- centroid[4]
t_prcs_centroid_4: PROCESS
BEGIN
	centroid(4) <= '0';
	WAIT FOR 1300000 ps;
	centroid(4) <= '1';
	WAIT FOR 199000 ps;
	centroid(4) <= '0';
WAIT;
END PROCESS t_prcs_centroid_4;
-- centroid[3]
t_prcs_centroid_3: PROCESS
BEGIN
	centroid(3) <= '0';
	WAIT FOR 1300000 ps;
	centroid(3) <= '1';
	WAIT FOR 199000 ps;
	centroid(3) <= '0';
WAIT;
END PROCESS t_prcs_centroid_3;
-- centroid[2]
t_prcs_centroid_2: PROCESS
BEGIN
	centroid(2) <= '0';
WAIT;
END PROCESS t_prcs_centroid_2;
-- centroid[1]
t_prcs_centroid_1: PROCESS
BEGIN
	centroid(1) <= '0';
	WAIT FOR 1300000 ps;
	centroid(1) <= '1';
	WAIT FOR 199000 ps;
	centroid(1) <= '0';
WAIT;
END PROCESS t_prcs_centroid_1;
-- centroid[0]
t_prcs_centroid_0: PROCESS
BEGIN
	centroid(0) <= '0';
WAIT;
END PROCESS t_prcs_centroid_0;
-- dado[63]
t_prcs_dado_63: PROCESS
BEGIN
	dado(63) <= '0';
WAIT;
END PROCESS t_prcs_dado_63;
-- dado[62]
t_prcs_dado_62: PROCESS
BEGIN
	dado(62) <= '0';
WAIT;
END PROCESS t_prcs_dado_62;
-- dado[61]
t_prcs_dado_61: PROCESS
BEGIN
	dado(61) <= '0';
WAIT;
END PROCESS t_prcs_dado_61;
-- dado[60]
t_prcs_dado_60: PROCESS
BEGIN
	dado(60) <= '0';
WAIT;
END PROCESS t_prcs_dado_60;
-- dado[59]
t_prcs_dado_59: PROCESS
BEGIN
	dado(59) <= '0';
WAIT;
END PROCESS t_prcs_dado_59;
-- dado[58]
t_prcs_dado_58: PROCESS
BEGIN
	dado(58) <= '0';
WAIT;
END PROCESS t_prcs_dado_58;
-- dado[57]
t_prcs_dado_57: PROCESS
BEGIN
	dado(57) <= '0';
WAIT;
END PROCESS t_prcs_dado_57;
-- dado[56]
t_prcs_dado_56: PROCESS
BEGIN
	dado(56) <= '0';
WAIT;
END PROCESS t_prcs_dado_56;
-- dado[55]
t_prcs_dado_55: PROCESS
BEGIN
	dado(55) <= '0';
WAIT;
END PROCESS t_prcs_dado_55;
-- dado[54]
t_prcs_dado_54: PROCESS
BEGIN
	dado(54) <= '0';
WAIT;
END PROCESS t_prcs_dado_54;
-- dado[53]
t_prcs_dado_53: PROCESS
BEGIN
	dado(53) <= '0';
WAIT;
END PROCESS t_prcs_dado_53;
-- dado[52]
t_prcs_dado_52: PROCESS
BEGIN
	dado(52) <= '0';
WAIT;
END PROCESS t_prcs_dado_52;
-- dado[51]
t_prcs_dado_51: PROCESS
BEGIN
	dado(51) <= '0';
WAIT;
END PROCESS t_prcs_dado_51;
-- dado[50]
t_prcs_dado_50: PROCESS
BEGIN
	dado(50) <= '0';
WAIT;
END PROCESS t_prcs_dado_50;
-- dado[49]
t_prcs_dado_49: PROCESS
BEGIN
	dado(49) <= '0';
WAIT;
END PROCESS t_prcs_dado_49;
-- dado[48]
t_prcs_dado_48: PROCESS
BEGIN
	dado(48) <= '0';
WAIT;
END PROCESS t_prcs_dado_48;
-- dado[47]
t_prcs_dado_47: PROCESS
BEGIN
	dado(47) <= '0';
WAIT;
END PROCESS t_prcs_dado_47;
-- dado[46]
t_prcs_dado_46: PROCESS
BEGIN
	dado(46) <= '0';
WAIT;
END PROCESS t_prcs_dado_46;
-- dado[45]
t_prcs_dado_45: PROCESS
BEGIN
	dado(45) <= '0';
WAIT;
END PROCESS t_prcs_dado_45;
-- dado[44]
t_prcs_dado_44: PROCESS
BEGIN
	dado(44) <= '0';
WAIT;
END PROCESS t_prcs_dado_44;
-- dado[43]
t_prcs_dado_43: PROCESS
BEGIN
	dado(43) <= '0';
WAIT;
END PROCESS t_prcs_dado_43;
-- dado[42]
t_prcs_dado_42: PROCESS
BEGIN
	dado(42) <= '0';
WAIT;
END PROCESS t_prcs_dado_42;
-- dado[41]
t_prcs_dado_41: PROCESS
BEGIN
	dado(41) <= '0';
WAIT;
END PROCESS t_prcs_dado_41;
-- dado[40]
t_prcs_dado_40: PROCESS
BEGIN
	dado(40) <= '0';
WAIT;
END PROCESS t_prcs_dado_40;
-- dado[39]
t_prcs_dado_39: PROCESS
BEGIN
	dado(39) <= '0';
WAIT;
END PROCESS t_prcs_dado_39;
-- dado[38]
t_prcs_dado_38: PROCESS
BEGIN
	dado(38) <= '0';
WAIT;
END PROCESS t_prcs_dado_38;
-- dado[37]
t_prcs_dado_37: PROCESS
BEGIN
	dado(37) <= '0';
WAIT;
END PROCESS t_prcs_dado_37;
-- dado[36]
t_prcs_dado_36: PROCESS
BEGIN
	dado(36) <= '0';
WAIT;
END PROCESS t_prcs_dado_36;
-- dado[35]
t_prcs_dado_35: PROCESS
BEGIN
	dado(35) <= '0';
WAIT;
END PROCESS t_prcs_dado_35;
-- dado[34]
t_prcs_dado_34: PROCESS
BEGIN
	dado(34) <= '0';
WAIT;
END PROCESS t_prcs_dado_34;
-- dado[33]
t_prcs_dado_33: PROCESS
BEGIN
	dado(33) <= '0';
WAIT;
END PROCESS t_prcs_dado_33;
-- dado[32]
t_prcs_dado_32: PROCESS
BEGIN
	dado(32) <= '0';
WAIT;
END PROCESS t_prcs_dado_32;
-- dado[31]
t_prcs_dado_31: PROCESS
BEGIN
	dado(31) <= '0';
WAIT;
END PROCESS t_prcs_dado_31;
-- dado[30]
t_prcs_dado_30: PROCESS
BEGIN
	dado(30) <= '1';
	WAIT FOR 1499000 ps;
	dado(30) <= '0';
WAIT;
END PROCESS t_prcs_dado_30;
-- dado[29]
t_prcs_dado_29: PROCESS
BEGIN
	dado(29) <= '0';
WAIT;
END PROCESS t_prcs_dado_29;
-- dado[28]
t_prcs_dado_28: PROCESS
BEGIN
	dado(28) <= '0';
WAIT;
END PROCESS t_prcs_dado_28;
-- dado[27]
t_prcs_dado_27: PROCESS
BEGIN
	dado(27) <= '0';
WAIT;
END PROCESS t_prcs_dado_27;
-- dado[26]
t_prcs_dado_26: PROCESS
BEGIN
	dado(26) <= '0';
WAIT;
END PROCESS t_prcs_dado_26;
-- dado[25]
t_prcs_dado_25: PROCESS
BEGIN
	dado(25) <= '0';
WAIT;
END PROCESS t_prcs_dado_25;
-- dado[24]
t_prcs_dado_24: PROCESS
BEGIN
	dado(24) <= '0';
WAIT;
END PROCESS t_prcs_dado_24;
-- dado[23]
t_prcs_dado_23: PROCESS
BEGIN
	dado(23) <= '0';
WAIT;
END PROCESS t_prcs_dado_23;
-- dado[22]
t_prcs_dado_22: PROCESS
BEGIN
	dado(22) <= '0';
	WAIT FOR 340000 ps;
	dado(22) <= '1';
	WAIT FOR 320000 ps;
	dado(22) <= '0';
	WAIT FOR 300000 ps;
	dado(22) <= '1';
	WAIT FOR 539000 ps;
	dado(22) <= '0';
WAIT;
END PROCESS t_prcs_dado_22;
-- dado[21]
t_prcs_dado_21: PROCESS
BEGIN
	dado(21) <= '0';
WAIT;
END PROCESS t_prcs_dado_21;
-- dado[20]
t_prcs_dado_20: PROCESS
BEGIN
	dado(20) <= '0';
WAIT;
END PROCESS t_prcs_dado_20;
-- dado[19]
t_prcs_dado_19: PROCESS
BEGIN
	dado(19) <= '0';
WAIT;
END PROCESS t_prcs_dado_19;
-- dado[18]
t_prcs_dado_18: PROCESS
BEGIN
	dado(18) <= '0';
	WAIT FOR 1300000 ps;
	dado(18) <= '1';
	WAIT FOR 199000 ps;
	dado(18) <= '0';
WAIT;
END PROCESS t_prcs_dado_18;
-- dado[17]
t_prcs_dado_17: PROCESS
BEGIN
	dado(17) <= '0';
	WAIT FOR 1300000 ps;
	dado(17) <= '1';
	WAIT FOR 199000 ps;
	dado(17) <= '0';
WAIT;
END PROCESS t_prcs_dado_17;
-- dado[16]
t_prcs_dado_16: PROCESS
BEGIN
	dado(16) <= '0';
WAIT;
END PROCESS t_prcs_dado_16;
-- dado[15]
t_prcs_dado_15: PROCESS
BEGIN
	dado(15) <= '0';
WAIT;
END PROCESS t_prcs_dado_15;
-- dado[14]
t_prcs_dado_14: PROCESS
BEGIN
	dado(14) <= '0';
	WAIT FOR 1300000 ps;
	dado(14) <= '1';
	WAIT FOR 199000 ps;
	dado(14) <= '0';
WAIT;
END PROCESS t_prcs_dado_14;
-- dado[13]
t_prcs_dado_13: PROCESS
BEGIN
	dado(13) <= '0';
	WAIT FOR 1300000 ps;
	dado(13) <= '1';
	WAIT FOR 199000 ps;
	dado(13) <= '0';
WAIT;
END PROCESS t_prcs_dado_13;
-- dado[12]
t_prcs_dado_12: PROCESS
BEGIN
	dado(12) <= '0';
WAIT;
END PROCESS t_prcs_dado_12;
-- dado[11]
t_prcs_dado_11: PROCESS
BEGIN
	dado(11) <= '0';
WAIT;
END PROCESS t_prcs_dado_11;
-- dado[10]
t_prcs_dado_10: PROCESS
BEGIN
	dado(10) <= '0';
	WAIT FOR 1300000 ps;
	dado(10) <= '1';
	WAIT FOR 199000 ps;
	dado(10) <= '0';
WAIT;
END PROCESS t_prcs_dado_10;
-- dado[9]
t_prcs_dado_9: PROCESS
BEGIN
	dado(9) <= '0';
	WAIT FOR 1300000 ps;
	dado(9) <= '1';
	WAIT FOR 199000 ps;
	dado(9) <= '0';
WAIT;
END PROCESS t_prcs_dado_9;
-- dado[8]
t_prcs_dado_8: PROCESS
BEGIN
	dado(8) <= '0';
WAIT;
END PROCESS t_prcs_dado_8;
-- dado[7]
t_prcs_dado_7: PROCESS
BEGIN
	dado(7) <= '0';
WAIT;
END PROCESS t_prcs_dado_7;
-- dado[6]
t_prcs_dado_6: PROCESS
BEGIN
	dado(6) <= '0';
	WAIT FOR 1300000 ps;
	dado(6) <= '1';
	WAIT FOR 199000 ps;
	dado(6) <= '0';
WAIT;
END PROCESS t_prcs_dado_6;
-- dado[5]
t_prcs_dado_5: PROCESS
BEGIN
	dado(5) <= '0';
	WAIT FOR 1300000 ps;
	dado(5) <= '1';
	WAIT FOR 199000 ps;
	dado(5) <= '0';
WAIT;
END PROCESS t_prcs_dado_5;
-- dado[4]
t_prcs_dado_4: PROCESS
BEGIN
	dado(4) <= '0';
WAIT;
END PROCESS t_prcs_dado_4;
-- dado[3]
t_prcs_dado_3: PROCESS
BEGIN
	dado(3) <= '0';
WAIT;
END PROCESS t_prcs_dado_3;
-- dado[2]
t_prcs_dado_2: PROCESS
BEGIN
	dado(2) <= '0';
	WAIT FOR 1300000 ps;
	dado(2) <= '1';
	WAIT FOR 199000 ps;
	dado(2) <= '0';
WAIT;
END PROCESS t_prcs_dado_2;
-- dado[1]
t_prcs_dado_1: PROCESS
BEGIN
	dado(1) <= '0';
	WAIT FOR 1300000 ps;
	dado(1) <= '1';
	WAIT FOR 199000 ps;
	dado(1) <= '0';
WAIT;
END PROCESS t_prcs_dado_1;
-- dado[0]
t_prcs_dado_0: PROCESS
BEGIN
	dado(0) <= '0';
WAIT;
END PROCESS t_prcs_dado_0;
END Kmeans_CalcMapModuleFP_arch;
