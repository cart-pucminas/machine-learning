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
-- Generated on "04/18/2017 13:05:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Kmeans_MuxCentroidData
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Kmeans_MuxCentroidData_vhd_vec_tst IS
END Kmeans_MuxCentroidData_vhd_vec_tst;
ARCHITECTURE Kmeans_MuxCentroidData_arch OF Kmeans_MuxCentroidData_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL centroidCalc : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL centroidCalcFP : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL centroidData_A : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL centroidData_B : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL centroidInit : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL op : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT Kmeans_MuxCentroidData
	PORT (
	centroidCalc : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	centroidCalcFP : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	centroidData_A : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
	centroidData_B : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
	centroidInit : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	op : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Kmeans_MuxCentroidData
	PORT MAP (
-- list connections between master ports and signals
	centroidCalc => centroidCalc,
	centroidCalcFP => centroidCalcFP,
	centroidData_A => centroidData_A,
	centroidData_B => centroidData_B,
	centroidInit => centroidInit,
	op => op
	);
-- op[1]
t_prcs_op_1: PROCESS
BEGIN
LOOP
	op(1) <= '0';
	WAIT FOR 20000 ps;
	op(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_op_1;
-- op[0]
t_prcs_op_0: PROCESS
BEGIN
LOOP
	op(0) <= '0';
	WAIT FOR 10000 ps;
	op(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_op_0;
-- centroidInit[63]
t_prcs_centroidInit_63: PROCESS
BEGIN
	centroidInit(63) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_63;
-- centroidInit[62]
t_prcs_centroidInit_62: PROCESS
BEGIN
	centroidInit(62) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_62;
-- centroidInit[61]
t_prcs_centroidInit_61: PROCESS
BEGIN
	centroidInit(61) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_61;
-- centroidInit[60]
t_prcs_centroidInit_60: PROCESS
BEGIN
	centroidInit(60) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_60;
-- centroidInit[59]
t_prcs_centroidInit_59: PROCESS
BEGIN
	centroidInit(59) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_59;
-- centroidInit[58]
t_prcs_centroidInit_58: PROCESS
BEGIN
	centroidInit(58) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_58;
-- centroidInit[57]
t_prcs_centroidInit_57: PROCESS
BEGIN
	centroidInit(57) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_57;
-- centroidInit[56]
t_prcs_centroidInit_56: PROCESS
BEGIN
	centroidInit(56) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_56;
-- centroidInit[55]
t_prcs_centroidInit_55: PROCESS
BEGIN
	centroidInit(55) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_55;
-- centroidInit[54]
t_prcs_centroidInit_54: PROCESS
BEGIN
	centroidInit(54) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_54;
-- centroidInit[53]
t_prcs_centroidInit_53: PROCESS
BEGIN
	centroidInit(53) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_53;
-- centroidInit[52]
t_prcs_centroidInit_52: PROCESS
BEGIN
	centroidInit(52) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_52;
-- centroidInit[51]
t_prcs_centroidInit_51: PROCESS
BEGIN
	centroidInit(51) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_51;
-- centroidInit[50]
t_prcs_centroidInit_50: PROCESS
BEGIN
	centroidInit(50) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_50;
-- centroidInit[49]
t_prcs_centroidInit_49: PROCESS
BEGIN
	centroidInit(49) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_49;
-- centroidInit[48]
t_prcs_centroidInit_48: PROCESS
BEGIN
	centroidInit(48) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_48;
-- centroidInit[47]
t_prcs_centroidInit_47: PROCESS
BEGIN
	centroidInit(47) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_47;
-- centroidInit[46]
t_prcs_centroidInit_46: PROCESS
BEGIN
	centroidInit(46) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_46;
-- centroidInit[45]
t_prcs_centroidInit_45: PROCESS
BEGIN
	centroidInit(45) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_45;
-- centroidInit[44]
t_prcs_centroidInit_44: PROCESS
BEGIN
	centroidInit(44) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_44;
-- centroidInit[43]
t_prcs_centroidInit_43: PROCESS
BEGIN
	centroidInit(43) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_43;
-- centroidInit[42]
t_prcs_centroidInit_42: PROCESS
BEGIN
	centroidInit(42) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_42;
-- centroidInit[41]
t_prcs_centroidInit_41: PROCESS
BEGIN
	centroidInit(41) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_41;
-- centroidInit[40]
t_prcs_centroidInit_40: PROCESS
BEGIN
	centroidInit(40) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_40;
-- centroidInit[39]
t_prcs_centroidInit_39: PROCESS
BEGIN
	centroidInit(39) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_39;
-- centroidInit[38]
t_prcs_centroidInit_38: PROCESS
BEGIN
	centroidInit(38) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_38;
-- centroidInit[37]
t_prcs_centroidInit_37: PROCESS
BEGIN
	centroidInit(37) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_37;
-- centroidInit[36]
t_prcs_centroidInit_36: PROCESS
BEGIN
	centroidInit(36) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_36;
-- centroidInit[35]
t_prcs_centroidInit_35: PROCESS
BEGIN
	centroidInit(35) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_35;
-- centroidInit[34]
t_prcs_centroidInit_34: PROCESS
BEGIN
	centroidInit(34) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_34;
-- centroidInit[33]
t_prcs_centroidInit_33: PROCESS
BEGIN
	centroidInit(33) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_33;
-- centroidInit[32]
t_prcs_centroidInit_32: PROCESS
BEGIN
	centroidInit(32) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_32;
-- centroidInit[31]
t_prcs_centroidInit_31: PROCESS
BEGIN
	centroidInit(31) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_31;
-- centroidInit[30]
t_prcs_centroidInit_30: PROCESS
BEGIN
	centroidInit(30) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_30;
-- centroidInit[29]
t_prcs_centroidInit_29: PROCESS
BEGIN
	centroidInit(29) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_29;
-- centroidInit[28]
t_prcs_centroidInit_28: PROCESS
BEGIN
	centroidInit(28) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_28;
-- centroidInit[27]
t_prcs_centroidInit_27: PROCESS
BEGIN
	centroidInit(27) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_27;
-- centroidInit[26]
t_prcs_centroidInit_26: PROCESS
BEGIN
	centroidInit(26) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_26;
-- centroidInit[25]
t_prcs_centroidInit_25: PROCESS
BEGIN
	centroidInit(25) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_25;
-- centroidInit[24]
t_prcs_centroidInit_24: PROCESS
BEGIN
	centroidInit(24) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_24;
-- centroidInit[23]
t_prcs_centroidInit_23: PROCESS
BEGIN
	centroidInit(23) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_23;
-- centroidInit[22]
t_prcs_centroidInit_22: PROCESS
BEGIN
	centroidInit(22) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_22;
-- centroidInit[21]
t_prcs_centroidInit_21: PROCESS
BEGIN
	centroidInit(21) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_21;
-- centroidInit[20]
t_prcs_centroidInit_20: PROCESS
BEGIN
	centroidInit(20) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_20;
-- centroidInit[19]
t_prcs_centroidInit_19: PROCESS
BEGIN
	centroidInit(19) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_19;
-- centroidInit[18]
t_prcs_centroidInit_18: PROCESS
BEGIN
	centroidInit(18) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_18;
-- centroidInit[17]
t_prcs_centroidInit_17: PROCESS
BEGIN
	centroidInit(17) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_17;
-- centroidInit[16]
t_prcs_centroidInit_16: PROCESS
BEGIN
	centroidInit(16) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_16;
-- centroidInit[15]
t_prcs_centroidInit_15: PROCESS
BEGIN
	centroidInit(15) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_15;
-- centroidInit[14]
t_prcs_centroidInit_14: PROCESS
BEGIN
	centroidInit(14) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_14;
-- centroidInit[13]
t_prcs_centroidInit_13: PROCESS
BEGIN
	centroidInit(13) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_13;
-- centroidInit[12]
t_prcs_centroidInit_12: PROCESS
BEGIN
	centroidInit(12) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_12;
-- centroidInit[11]
t_prcs_centroidInit_11: PROCESS
BEGIN
	centroidInit(11) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_11;
-- centroidInit[10]
t_prcs_centroidInit_10: PROCESS
BEGIN
	centroidInit(10) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_10;
-- centroidInit[9]
t_prcs_centroidInit_9: PROCESS
BEGIN
	centroidInit(9) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_9;
-- centroidInit[8]
t_prcs_centroidInit_8: PROCESS
BEGIN
	centroidInit(8) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_8;
-- centroidInit[7]
t_prcs_centroidInit_7: PROCESS
BEGIN
	centroidInit(7) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_7;
-- centroidInit[6]
t_prcs_centroidInit_6: PROCESS
BEGIN
	centroidInit(6) <= '0';
	WAIT FOR 540000 ps;
	centroidInit(6) <= '1';
WAIT;
END PROCESS t_prcs_centroidInit_6;
-- centroidInit[5]
t_prcs_centroidInit_5: PROCESS
BEGIN
	centroidInit(5) <= '0';
	WAIT FOR 220000 ps;
	centroidInit(5) <= '1';
	WAIT FOR 320000 ps;
	centroidInit(5) <= '0';
	WAIT FOR 320000 ps;
	centroidInit(5) <= '1';
WAIT;
END PROCESS t_prcs_centroidInit_5;
-- centroidInit[4]
t_prcs_centroidInit_4: PROCESS
BEGIN
	centroidInit(4) <= '0';
	WAIT FOR 60000 ps;
	FOR i IN 1 TO 2
	LOOP
		centroidInit(4) <= '1';
		WAIT FOR 160000 ps;
		centroidInit(4) <= '0';
		WAIT FOR 160000 ps;
	END LOOP;
	centroidInit(4) <= '1';
	WAIT FOR 160000 ps;
	centroidInit(4) <= '0';
WAIT;
END PROCESS t_prcs_centroidInit_4;
-- centroidInit[3]
t_prcs_centroidInit_3: PROCESS
BEGIN
	centroidInit(3) <= '1';
	WAIT FOR 60000 ps;
	FOR i IN 1 TO 5
	LOOP
		centroidInit(3) <= '0';
		WAIT FOR 80000 ps;
		centroidInit(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	centroidInit(3) <= '0';
	WAIT FOR 80000 ps;
	centroidInit(3) <= '1';
WAIT;
END PROCESS t_prcs_centroidInit_3;
-- centroidInit[2]
t_prcs_centroidInit_2: PROCESS
BEGIN
	centroidInit(2) <= '0';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 12
	LOOP
		centroidInit(2) <= '1';
		WAIT FOR 40000 ps;
		centroidInit(2) <= '0';
		WAIT FOR 40000 ps;
	END LOOP;
	centroidInit(2) <= '1';
WAIT;
END PROCESS t_prcs_centroidInit_2;
-- centroidInit[1]
t_prcs_centroidInit_1: PROCESS
BEGIN
LOOP
	centroidInit(1) <= '1';
	WAIT FOR 20000 ps;
	centroidInit(1) <= '0';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_centroidInit_1;
-- centroidInit[0]
t_prcs_centroidInit_0: PROCESS
BEGIN
LOOP
	centroidInit(0) <= '0';
	WAIT FOR 10000 ps;
	centroidInit(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_centroidInit_0;
-- centroidCalc[63]
t_prcs_centroidCalc_63: PROCESS
BEGIN
	centroidCalc(63) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_63;
-- centroidCalc[62]
t_prcs_centroidCalc_62: PROCESS
BEGIN
	centroidCalc(62) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_62;
-- centroidCalc[61]
t_prcs_centroidCalc_61: PROCESS
BEGIN
	centroidCalc(61) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_61;
-- centroidCalc[60]
t_prcs_centroidCalc_60: PROCESS
BEGIN
	centroidCalc(60) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_60;
-- centroidCalc[59]
t_prcs_centroidCalc_59: PROCESS
BEGIN
	centroidCalc(59) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_59;
-- centroidCalc[58]
t_prcs_centroidCalc_58: PROCESS
BEGIN
	centroidCalc(58) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_58;
-- centroidCalc[57]
t_prcs_centroidCalc_57: PROCESS
BEGIN
	centroidCalc(57) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_57;
-- centroidCalc[56]
t_prcs_centroidCalc_56: PROCESS
BEGIN
	centroidCalc(56) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_56;
-- centroidCalc[55]
t_prcs_centroidCalc_55: PROCESS
BEGIN
	centroidCalc(55) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_55;
-- centroidCalc[54]
t_prcs_centroidCalc_54: PROCESS
BEGIN
	centroidCalc(54) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_54;
-- centroidCalc[53]
t_prcs_centroidCalc_53: PROCESS
BEGIN
	centroidCalc(53) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_53;
-- centroidCalc[52]
t_prcs_centroidCalc_52: PROCESS
BEGIN
	centroidCalc(52) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_52;
-- centroidCalc[51]
t_prcs_centroidCalc_51: PROCESS
BEGIN
	centroidCalc(51) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_51;
-- centroidCalc[50]
t_prcs_centroidCalc_50: PROCESS
BEGIN
	centroidCalc(50) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_50;
-- centroidCalc[49]
t_prcs_centroidCalc_49: PROCESS
BEGIN
	centroidCalc(49) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_49;
-- centroidCalc[48]
t_prcs_centroidCalc_48: PROCESS
BEGIN
	centroidCalc(48) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_48;
-- centroidCalc[47]
t_prcs_centroidCalc_47: PROCESS
BEGIN
	centroidCalc(47) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_47;
-- centroidCalc[46]
t_prcs_centroidCalc_46: PROCESS
BEGIN
	centroidCalc(46) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_46;
-- centroidCalc[45]
t_prcs_centroidCalc_45: PROCESS
BEGIN
	centroidCalc(45) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_45;
-- centroidCalc[44]
t_prcs_centroidCalc_44: PROCESS
BEGIN
	centroidCalc(44) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_44;
-- centroidCalc[43]
t_prcs_centroidCalc_43: PROCESS
BEGIN
	centroidCalc(43) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_43;
-- centroidCalc[42]
t_prcs_centroidCalc_42: PROCESS
BEGIN
	centroidCalc(42) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_42;
-- centroidCalc[41]
t_prcs_centroidCalc_41: PROCESS
BEGIN
	centroidCalc(41) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_41;
-- centroidCalc[40]
t_prcs_centroidCalc_40: PROCESS
BEGIN
	centroidCalc(40) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_40;
-- centroidCalc[39]
t_prcs_centroidCalc_39: PROCESS
BEGIN
	centroidCalc(39) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_39;
-- centroidCalc[38]
t_prcs_centroidCalc_38: PROCESS
BEGIN
	centroidCalc(38) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_38;
-- centroidCalc[37]
t_prcs_centroidCalc_37: PROCESS
BEGIN
	centroidCalc(37) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_37;
-- centroidCalc[36]
t_prcs_centroidCalc_36: PROCESS
BEGIN
	centroidCalc(36) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_36;
-- centroidCalc[35]
t_prcs_centroidCalc_35: PROCESS
BEGIN
	centroidCalc(35) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_35;
-- centroidCalc[34]
t_prcs_centroidCalc_34: PROCESS
BEGIN
	centroidCalc(34) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_34;
-- centroidCalc[33]
t_prcs_centroidCalc_33: PROCESS
BEGIN
	centroidCalc(33) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_33;
-- centroidCalc[32]
t_prcs_centroidCalc_32: PROCESS
BEGIN
	centroidCalc(32) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_32;
-- centroidCalc[31]
t_prcs_centroidCalc_31: PROCESS
BEGIN
	centroidCalc(31) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_31;
-- centroidCalc[30]
t_prcs_centroidCalc_30: PROCESS
BEGIN
	centroidCalc(30) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_30;
-- centroidCalc[29]
t_prcs_centroidCalc_29: PROCESS
BEGIN
	centroidCalc(29) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_29;
-- centroidCalc[28]
t_prcs_centroidCalc_28: PROCESS
BEGIN
	centroidCalc(28) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_28;
-- centroidCalc[27]
t_prcs_centroidCalc_27: PROCESS
BEGIN
	centroidCalc(27) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_27;
-- centroidCalc[26]
t_prcs_centroidCalc_26: PROCESS
BEGIN
	centroidCalc(26) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_26;
-- centroidCalc[25]
t_prcs_centroidCalc_25: PROCESS
BEGIN
	centroidCalc(25) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_25;
-- centroidCalc[24]
t_prcs_centroidCalc_24: PROCESS
BEGIN
	centroidCalc(24) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_24;
-- centroidCalc[23]
t_prcs_centroidCalc_23: PROCESS
BEGIN
	centroidCalc(23) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_23;
-- centroidCalc[22]
t_prcs_centroidCalc_22: PROCESS
BEGIN
	centroidCalc(22) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_22;
-- centroidCalc[21]
t_prcs_centroidCalc_21: PROCESS
BEGIN
	centroidCalc(21) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_21;
-- centroidCalc[20]
t_prcs_centroidCalc_20: PROCESS
BEGIN
	centroidCalc(20) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_20;
-- centroidCalc[19]
t_prcs_centroidCalc_19: PROCESS
BEGIN
	centroidCalc(19) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_19;
-- centroidCalc[18]
t_prcs_centroidCalc_18: PROCESS
BEGIN
	centroidCalc(18) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_18;
-- centroidCalc[17]
t_prcs_centroidCalc_17: PROCESS
BEGIN
	centroidCalc(17) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_17;
-- centroidCalc[16]
t_prcs_centroidCalc_16: PROCESS
BEGIN
	centroidCalc(16) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_16;
-- centroidCalc[15]
t_prcs_centroidCalc_15: PROCESS
BEGIN
	centroidCalc(15) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_15;
-- centroidCalc[14]
t_prcs_centroidCalc_14: PROCESS
BEGIN
	centroidCalc(14) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_14;
-- centroidCalc[13]
t_prcs_centroidCalc_13: PROCESS
BEGIN
	centroidCalc(13) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_13;
-- centroidCalc[12]
t_prcs_centroidCalc_12: PROCESS
BEGIN
	centroidCalc(12) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_12;
-- centroidCalc[11]
t_prcs_centroidCalc_11: PROCESS
BEGIN
	centroidCalc(11) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_11;
-- centroidCalc[10]
t_prcs_centroidCalc_10: PROCESS
BEGIN
	centroidCalc(10) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_10;
-- centroidCalc[9]
t_prcs_centroidCalc_9: PROCESS
BEGIN
	centroidCalc(9) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_9;
-- centroidCalc[8]
t_prcs_centroidCalc_8: PROCESS
BEGIN
	centroidCalc(8) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_8;
-- centroidCalc[7]
t_prcs_centroidCalc_7: PROCESS
BEGIN
	centroidCalc(7) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalc_7;
-- centroidCalc[6]
t_prcs_centroidCalc_6: PROCESS
BEGIN
	centroidCalc(6) <= '0';
	WAIT FOR 440000 ps;
	centroidCalc(6) <= '1';
WAIT;
END PROCESS t_prcs_centroidCalc_6;
-- centroidCalc[5]
t_prcs_centroidCalc_5: PROCESS
BEGIN
	centroidCalc(5) <= '0';
	WAIT FOR 120000 ps;
	centroidCalc(5) <= '1';
	WAIT FOR 320000 ps;
	centroidCalc(5) <= '0';
	WAIT FOR 320000 ps;
	centroidCalc(5) <= '1';
WAIT;
END PROCESS t_prcs_centroidCalc_5;
-- centroidCalc[4]
t_prcs_centroidCalc_4: PROCESS
BEGIN
	centroidCalc(4) <= '1';
	WAIT FOR 120000 ps;
	FOR i IN 1 TO 2
	LOOP
		centroidCalc(4) <= '0';
		WAIT FOR 160000 ps;
		centroidCalc(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	centroidCalc(4) <= '0';
	WAIT FOR 160000 ps;
	centroidCalc(4) <= '1';
WAIT;
END PROCESS t_prcs_centroidCalc_4;
-- centroidCalc[3]
t_prcs_centroidCalc_3: PROCESS
BEGIN
	centroidCalc(3) <= '0';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 6
	LOOP
		centroidCalc(3) <= '1';
		WAIT FOR 80000 ps;
		centroidCalc(3) <= '0';
		WAIT FOR 80000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_centroidCalc_3;
-- centroidCalc[2]
t_prcs_centroidCalc_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		centroidCalc(2) <= '1';
		WAIT FOR 40000 ps;
		centroidCalc(2) <= '0';
		WAIT FOR 40000 ps;
	END LOOP;
	centroidCalc(2) <= '1';
WAIT;
END PROCESS t_prcs_centroidCalc_2;
-- centroidCalc[1]
t_prcs_centroidCalc_1: PROCESS
BEGIN
LOOP
	centroidCalc(1) <= '0';
	WAIT FOR 20000 ps;
	centroidCalc(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_centroidCalc_1;
-- centroidCalc[0]
t_prcs_centroidCalc_0: PROCESS
BEGIN
LOOP
	centroidCalc(0) <= '0';
	WAIT FOR 10000 ps;
	centroidCalc(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_centroidCalc_0;
-- centroidCalcFP[63]
t_prcs_centroidCalcFP_63: PROCESS
BEGIN
	centroidCalcFP(63) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_63;
-- centroidCalcFP[62]
t_prcs_centroidCalcFP_62: PROCESS
BEGIN
	centroidCalcFP(62) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_62;
-- centroidCalcFP[61]
t_prcs_centroidCalcFP_61: PROCESS
BEGIN
	centroidCalcFP(61) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_61;
-- centroidCalcFP[60]
t_prcs_centroidCalcFP_60: PROCESS
BEGIN
	centroidCalcFP(60) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_60;
-- centroidCalcFP[59]
t_prcs_centroidCalcFP_59: PROCESS
BEGIN
	centroidCalcFP(59) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_59;
-- centroidCalcFP[58]
t_prcs_centroidCalcFP_58: PROCESS
BEGIN
	centroidCalcFP(58) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_58;
-- centroidCalcFP[57]
t_prcs_centroidCalcFP_57: PROCESS
BEGIN
	centroidCalcFP(57) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_57;
-- centroidCalcFP[56]
t_prcs_centroidCalcFP_56: PROCESS
BEGIN
	centroidCalcFP(56) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_56;
-- centroidCalcFP[55]
t_prcs_centroidCalcFP_55: PROCESS
BEGIN
	centroidCalcFP(55) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_55;
-- centroidCalcFP[54]
t_prcs_centroidCalcFP_54: PROCESS
BEGIN
	centroidCalcFP(54) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_54;
-- centroidCalcFP[53]
t_prcs_centroidCalcFP_53: PROCESS
BEGIN
	centroidCalcFP(53) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_53;
-- centroidCalcFP[52]
t_prcs_centroidCalcFP_52: PROCESS
BEGIN
	centroidCalcFP(52) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_52;
-- centroidCalcFP[51]
t_prcs_centroidCalcFP_51: PROCESS
BEGIN
	centroidCalcFP(51) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_51;
-- centroidCalcFP[50]
t_prcs_centroidCalcFP_50: PROCESS
BEGIN
	centroidCalcFP(50) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_50;
-- centroidCalcFP[49]
t_prcs_centroidCalcFP_49: PROCESS
BEGIN
	centroidCalcFP(49) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_49;
-- centroidCalcFP[48]
t_prcs_centroidCalcFP_48: PROCESS
BEGIN
	centroidCalcFP(48) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_48;
-- centroidCalcFP[47]
t_prcs_centroidCalcFP_47: PROCESS
BEGIN
	centroidCalcFP(47) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_47;
-- centroidCalcFP[46]
t_prcs_centroidCalcFP_46: PROCESS
BEGIN
	centroidCalcFP(46) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_46;
-- centroidCalcFP[45]
t_prcs_centroidCalcFP_45: PROCESS
BEGIN
	centroidCalcFP(45) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_45;
-- centroidCalcFP[44]
t_prcs_centroidCalcFP_44: PROCESS
BEGIN
	centroidCalcFP(44) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_44;
-- centroidCalcFP[43]
t_prcs_centroidCalcFP_43: PROCESS
BEGIN
	centroidCalcFP(43) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_43;
-- centroidCalcFP[42]
t_prcs_centroidCalcFP_42: PROCESS
BEGIN
	centroidCalcFP(42) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_42;
-- centroidCalcFP[41]
t_prcs_centroidCalcFP_41: PROCESS
BEGIN
	centroidCalcFP(41) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_41;
-- centroidCalcFP[40]
t_prcs_centroidCalcFP_40: PROCESS
BEGIN
	centroidCalcFP(40) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_40;
-- centroidCalcFP[39]
t_prcs_centroidCalcFP_39: PROCESS
BEGIN
	centroidCalcFP(39) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_39;
-- centroidCalcFP[38]
t_prcs_centroidCalcFP_38: PROCESS
BEGIN
	centroidCalcFP(38) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_38;
-- centroidCalcFP[37]
t_prcs_centroidCalcFP_37: PROCESS
BEGIN
	centroidCalcFP(37) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_37;
-- centroidCalcFP[36]
t_prcs_centroidCalcFP_36: PROCESS
BEGIN
	centroidCalcFP(36) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_36;
-- centroidCalcFP[35]
t_prcs_centroidCalcFP_35: PROCESS
BEGIN
	centroidCalcFP(35) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_35;
-- centroidCalcFP[34]
t_prcs_centroidCalcFP_34: PROCESS
BEGIN
	centroidCalcFP(34) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_34;
-- centroidCalcFP[33]
t_prcs_centroidCalcFP_33: PROCESS
BEGIN
	centroidCalcFP(33) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_33;
-- centroidCalcFP[32]
t_prcs_centroidCalcFP_32: PROCESS
BEGIN
	centroidCalcFP(32) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_32;
-- centroidCalcFP[31]
t_prcs_centroidCalcFP_31: PROCESS
BEGIN
	centroidCalcFP(31) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_31;
-- centroidCalcFP[30]
t_prcs_centroidCalcFP_30: PROCESS
BEGIN
	centroidCalcFP(30) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_30;
-- centroidCalcFP[29]
t_prcs_centroidCalcFP_29: PROCESS
BEGIN
	centroidCalcFP(29) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_29;
-- centroidCalcFP[28]
t_prcs_centroidCalcFP_28: PROCESS
BEGIN
	centroidCalcFP(28) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_28;
-- centroidCalcFP[27]
t_prcs_centroidCalcFP_27: PROCESS
BEGIN
	centroidCalcFP(27) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_27;
-- centroidCalcFP[26]
t_prcs_centroidCalcFP_26: PROCESS
BEGIN
	centroidCalcFP(26) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_26;
-- centroidCalcFP[25]
t_prcs_centroidCalcFP_25: PROCESS
BEGIN
	centroidCalcFP(25) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_25;
-- centroidCalcFP[24]
t_prcs_centroidCalcFP_24: PROCESS
BEGIN
	centroidCalcFP(24) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_24;
-- centroidCalcFP[23]
t_prcs_centroidCalcFP_23: PROCESS
BEGIN
	centroidCalcFP(23) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_23;
-- centroidCalcFP[22]
t_prcs_centroidCalcFP_22: PROCESS
BEGIN
	centroidCalcFP(22) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_22;
-- centroidCalcFP[21]
t_prcs_centroidCalcFP_21: PROCESS
BEGIN
	centroidCalcFP(21) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_21;
-- centroidCalcFP[20]
t_prcs_centroidCalcFP_20: PROCESS
BEGIN
	centroidCalcFP(20) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_20;
-- centroidCalcFP[19]
t_prcs_centroidCalcFP_19: PROCESS
BEGIN
	centroidCalcFP(19) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_19;
-- centroidCalcFP[18]
t_prcs_centroidCalcFP_18: PROCESS
BEGIN
	centroidCalcFP(18) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_18;
-- centroidCalcFP[17]
t_prcs_centroidCalcFP_17: PROCESS
BEGIN
	centroidCalcFP(17) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_17;
-- centroidCalcFP[16]
t_prcs_centroidCalcFP_16: PROCESS
BEGIN
	centroidCalcFP(16) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_16;
-- centroidCalcFP[15]
t_prcs_centroidCalcFP_15: PROCESS
BEGIN
	centroidCalcFP(15) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_15;
-- centroidCalcFP[14]
t_prcs_centroidCalcFP_14: PROCESS
BEGIN
	centroidCalcFP(14) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_14;
-- centroidCalcFP[13]
t_prcs_centroidCalcFP_13: PROCESS
BEGIN
	centroidCalcFP(13) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_13;
-- centroidCalcFP[12]
t_prcs_centroidCalcFP_12: PROCESS
BEGIN
	centroidCalcFP(12) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_12;
-- centroidCalcFP[11]
t_prcs_centroidCalcFP_11: PROCESS
BEGIN
	centroidCalcFP(11) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_11;
-- centroidCalcFP[10]
t_prcs_centroidCalcFP_10: PROCESS
BEGIN
	centroidCalcFP(10) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_10;
-- centroidCalcFP[9]
t_prcs_centroidCalcFP_9: PROCESS
BEGIN
	centroidCalcFP(9) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_9;
-- centroidCalcFP[8]
t_prcs_centroidCalcFP_8: PROCESS
BEGIN
	centroidCalcFP(8) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_8;
-- centroidCalcFP[7]
t_prcs_centroidCalcFP_7: PROCESS
BEGIN
	centroidCalcFP(7) <= '0';
	WAIT FOR 980000 ps;
	centroidCalcFP(7) <= '1';
WAIT;
END PROCESS t_prcs_centroidCalcFP_7;
-- centroidCalcFP[6]
t_prcs_centroidCalcFP_6: PROCESS
BEGIN
	centroidCalcFP(6) <= '0';
	WAIT FOR 340000 ps;
	centroidCalcFP(6) <= '1';
	WAIT FOR 640000 ps;
	centroidCalcFP(6) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_6;
-- centroidCalcFP[5]
t_prcs_centroidCalcFP_5: PROCESS
BEGIN
	centroidCalcFP(5) <= '0';
	WAIT FOR 20000 ps;
	centroidCalcFP(5) <= '1';
	WAIT FOR 320000 ps;
	centroidCalcFP(5) <= '0';
	WAIT FOR 320000 ps;
	centroidCalcFP(5) <= '1';
	WAIT FOR 320000 ps;
	centroidCalcFP(5) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_5;
-- centroidCalcFP[4]
t_prcs_centroidCalcFP_4: PROCESS
BEGIN
	centroidCalcFP(4) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 3
	LOOP
		centroidCalcFP(4) <= '0';
		WAIT FOR 160000 ps;
		centroidCalcFP(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	centroidCalcFP(4) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_4;
-- centroidCalcFP[3]
t_prcs_centroidCalcFP_3: PROCESS
BEGIN
	centroidCalcFP(3) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 6
	LOOP
		centroidCalcFP(3) <= '0';
		WAIT FOR 80000 ps;
		centroidCalcFP(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	centroidCalcFP(3) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_3;
-- centroidCalcFP[2]
t_prcs_centroidCalcFP_2: PROCESS
BEGIN
	centroidCalcFP(2) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 12
	LOOP
		centroidCalcFP(2) <= '0';
		WAIT FOR 40000 ps;
		centroidCalcFP(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	centroidCalcFP(2) <= '0';
WAIT;
END PROCESS t_prcs_centroidCalcFP_2;
-- centroidCalcFP[1]
t_prcs_centroidCalcFP_1: PROCESS
BEGIN
LOOP
	centroidCalcFP(1) <= '1';
	WAIT FOR 20000 ps;
	centroidCalcFP(1) <= '0';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_centroidCalcFP_1;
-- centroidCalcFP[0]
t_prcs_centroidCalcFP_0: PROCESS
BEGIN
LOOP
	centroidCalcFP(0) <= '0';
	WAIT FOR 10000 ps;
	centroidCalcFP(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_centroidCalcFP_0;
END Kmeans_MuxCentroidData_arch;
