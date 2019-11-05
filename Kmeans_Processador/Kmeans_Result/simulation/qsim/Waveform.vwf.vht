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
-- Generated on "02/16/2017 23:12:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Kmeans_Result
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Kmeans_Result_vhd_vec_tst IS
END Kmeans_Result_vhd_vec_tst;
ARCHITECTURE Kmeans_Result_arch OF Kmeans_Result_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL en_Saida : STD_LOGIC;
SIGNAL ent : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL saida : STD_LOGIC_VECTOR(63 DOWNTO 0);
COMPONENT Kmeans_Result
	PORT (
	en_Saida : IN STD_LOGIC;
	ent : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	saida : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Kmeans_Result
	PORT MAP (
-- list connections between master ports and signals
	en_Saida => en_Saida,
	ent => ent,
	saida => saida
	);

-- en_Saida
t_prcs_en_Saida: PROCESS
BEGIN
	en_Saida <= '0';
	WAIT FOR 100000 ps;
	en_Saida <= '1';
	WAIT FOR 290000 ps;
	en_Saida <= '0';
WAIT;
END PROCESS t_prcs_en_Saida;
-- ent[63]
t_prcs_ent_63: PROCESS
BEGIN
	ent(63) <= '0';
WAIT;
END PROCESS t_prcs_ent_63;
-- ent[62]
t_prcs_ent_62: PROCESS
BEGIN
	ent(62) <= '0';
WAIT;
END PROCESS t_prcs_ent_62;
-- ent[61]
t_prcs_ent_61: PROCESS
BEGIN
	ent(61) <= '0';
WAIT;
END PROCESS t_prcs_ent_61;
-- ent[60]
t_prcs_ent_60: PROCESS
BEGIN
	ent(60) <= '0';
WAIT;
END PROCESS t_prcs_ent_60;
-- ent[59]
t_prcs_ent_59: PROCESS
BEGIN
	ent(59) <= '0';
WAIT;
END PROCESS t_prcs_ent_59;
-- ent[58]
t_prcs_ent_58: PROCESS
BEGIN
	ent(58) <= '0';
WAIT;
END PROCESS t_prcs_ent_58;
-- ent[57]
t_prcs_ent_57: PROCESS
BEGIN
	ent(57) <= '0';
WAIT;
END PROCESS t_prcs_ent_57;
-- ent[56]
t_prcs_ent_56: PROCESS
BEGIN
	ent(56) <= '0';
WAIT;
END PROCESS t_prcs_ent_56;
-- ent[55]
t_prcs_ent_55: PROCESS
BEGIN
	ent(55) <= '0';
WAIT;
END PROCESS t_prcs_ent_55;
-- ent[54]
t_prcs_ent_54: PROCESS
BEGIN
	ent(54) <= '0';
WAIT;
END PROCESS t_prcs_ent_54;
-- ent[53]
t_prcs_ent_53: PROCESS
BEGIN
	ent(53) <= '0';
WAIT;
END PROCESS t_prcs_ent_53;
-- ent[52]
t_prcs_ent_52: PROCESS
BEGIN
	ent(52) <= '0';
WAIT;
END PROCESS t_prcs_ent_52;
-- ent[51]
t_prcs_ent_51: PROCESS
BEGIN
	ent(51) <= '0';
WAIT;
END PROCESS t_prcs_ent_51;
-- ent[50]
t_prcs_ent_50: PROCESS
BEGIN
	ent(50) <= '0';
WAIT;
END PROCESS t_prcs_ent_50;
-- ent[49]
t_prcs_ent_49: PROCESS
BEGIN
	ent(49) <= '0';
WAIT;
END PROCESS t_prcs_ent_49;
-- ent[48]
t_prcs_ent_48: PROCESS
BEGIN
	ent(48) <= '0';
WAIT;
END PROCESS t_prcs_ent_48;
-- ent[47]
t_prcs_ent_47: PROCESS
BEGIN
	ent(47) <= '0';
WAIT;
END PROCESS t_prcs_ent_47;
-- ent[46]
t_prcs_ent_46: PROCESS
BEGIN
	ent(46) <= '0';
WAIT;
END PROCESS t_prcs_ent_46;
-- ent[45]
t_prcs_ent_45: PROCESS
BEGIN
	ent(45) <= '0';
WAIT;
END PROCESS t_prcs_ent_45;
-- ent[44]
t_prcs_ent_44: PROCESS
BEGIN
	ent(44) <= '0';
WAIT;
END PROCESS t_prcs_ent_44;
-- ent[43]
t_prcs_ent_43: PROCESS
BEGIN
	ent(43) <= '0';
WAIT;
END PROCESS t_prcs_ent_43;
-- ent[42]
t_prcs_ent_42: PROCESS
BEGIN
	ent(42) <= '0';
WAIT;
END PROCESS t_prcs_ent_42;
-- ent[41]
t_prcs_ent_41: PROCESS
BEGIN
	ent(41) <= '0';
WAIT;
END PROCESS t_prcs_ent_41;
-- ent[40]
t_prcs_ent_40: PROCESS
BEGIN
	ent(40) <= '0';
WAIT;
END PROCESS t_prcs_ent_40;
-- ent[39]
t_prcs_ent_39: PROCESS
BEGIN
	ent(39) <= '0';
WAIT;
END PROCESS t_prcs_ent_39;
-- ent[38]
t_prcs_ent_38: PROCESS
BEGIN
	ent(38) <= '0';
WAIT;
END PROCESS t_prcs_ent_38;
-- ent[37]
t_prcs_ent_37: PROCESS
BEGIN
	ent(37) <= '0';
WAIT;
END PROCESS t_prcs_ent_37;
-- ent[36]
t_prcs_ent_36: PROCESS
BEGIN
	ent(36) <= '0';
WAIT;
END PROCESS t_prcs_ent_36;
-- ent[35]
t_prcs_ent_35: PROCESS
BEGIN
	ent(35) <= '0';
WAIT;
END PROCESS t_prcs_ent_35;
-- ent[34]
t_prcs_ent_34: PROCESS
BEGIN
	ent(34) <= '0';
WAIT;
END PROCESS t_prcs_ent_34;
-- ent[33]
t_prcs_ent_33: PROCESS
BEGIN
	ent(33) <= '0';
WAIT;
END PROCESS t_prcs_ent_33;
-- ent[32]
t_prcs_ent_32: PROCESS
BEGIN
	ent(32) <= '0';
WAIT;
END PROCESS t_prcs_ent_32;
-- ent[31]
t_prcs_ent_31: PROCESS
BEGIN
	ent(31) <= '0';
WAIT;
END PROCESS t_prcs_ent_31;
-- ent[30]
t_prcs_ent_30: PROCESS
BEGIN
	ent(30) <= '0';
WAIT;
END PROCESS t_prcs_ent_30;
-- ent[29]
t_prcs_ent_29: PROCESS
BEGIN
	ent(29) <= '0';
WAIT;
END PROCESS t_prcs_ent_29;
-- ent[28]
t_prcs_ent_28: PROCESS
BEGIN
	ent(28) <= '0';
WAIT;
END PROCESS t_prcs_ent_28;
-- ent[27]
t_prcs_ent_27: PROCESS
BEGIN
	ent(27) <= '0';
WAIT;
END PROCESS t_prcs_ent_27;
-- ent[26]
t_prcs_ent_26: PROCESS
BEGIN
	ent(26) <= '0';
WAIT;
END PROCESS t_prcs_ent_26;
-- ent[25]
t_prcs_ent_25: PROCESS
BEGIN
	ent(25) <= '0';
WAIT;
END PROCESS t_prcs_ent_25;
-- ent[24]
t_prcs_ent_24: PROCESS
BEGIN
	ent(24) <= '0';
WAIT;
END PROCESS t_prcs_ent_24;
-- ent[23]
t_prcs_ent_23: PROCESS
BEGIN
	ent(23) <= '0';
WAIT;
END PROCESS t_prcs_ent_23;
-- ent[22]
t_prcs_ent_22: PROCESS
BEGIN
	ent(22) <= '0';
WAIT;
END PROCESS t_prcs_ent_22;
-- ent[21]
t_prcs_ent_21: PROCESS
BEGIN
	ent(21) <= '0';
WAIT;
END PROCESS t_prcs_ent_21;
-- ent[20]
t_prcs_ent_20: PROCESS
BEGIN
	ent(20) <= '0';
WAIT;
END PROCESS t_prcs_ent_20;
-- ent[19]
t_prcs_ent_19: PROCESS
BEGIN
	ent(19) <= '0';
WAIT;
END PROCESS t_prcs_ent_19;
-- ent[18]
t_prcs_ent_18: PROCESS
BEGIN
	ent(18) <= '0';
WAIT;
END PROCESS t_prcs_ent_18;
-- ent[17]
t_prcs_ent_17: PROCESS
BEGIN
	ent(17) <= '0';
WAIT;
END PROCESS t_prcs_ent_17;
-- ent[16]
t_prcs_ent_16: PROCESS
BEGIN
	ent(16) <= '0';
WAIT;
END PROCESS t_prcs_ent_16;
-- ent[15]
t_prcs_ent_15: PROCESS
BEGIN
	ent(15) <= '0';
WAIT;
END PROCESS t_prcs_ent_15;
-- ent[14]
t_prcs_ent_14: PROCESS
BEGIN
	ent(14) <= '0';
WAIT;
END PROCESS t_prcs_ent_14;
-- ent[13]
t_prcs_ent_13: PROCESS
BEGIN
	ent(13) <= '0';
WAIT;
END PROCESS t_prcs_ent_13;
-- ent[12]
t_prcs_ent_12: PROCESS
BEGIN
	ent(12) <= '0';
WAIT;
END PROCESS t_prcs_ent_12;
-- ent[11]
t_prcs_ent_11: PROCESS
BEGIN
	ent(11) <= '0';
WAIT;
END PROCESS t_prcs_ent_11;
-- ent[10]
t_prcs_ent_10: PROCESS
BEGIN
	ent(10) <= '0';
WAIT;
END PROCESS t_prcs_ent_10;
-- ent[9]
t_prcs_ent_9: PROCESS
BEGIN
	ent(9) <= '0';
WAIT;
END PROCESS t_prcs_ent_9;
-- ent[8]
t_prcs_ent_8: PROCESS
BEGIN
	ent(8) <= '0';
WAIT;
END PROCESS t_prcs_ent_8;
-- ent[7]
t_prcs_ent_7: PROCESS
BEGIN
	ent(7) <= '0';
WAIT;
END PROCESS t_prcs_ent_7;
-- ent[6]
t_prcs_ent_6: PROCESS
BEGIN
	ent(6) <= '0';
WAIT;
END PROCESS t_prcs_ent_6;
-- ent[5]
t_prcs_ent_5: PROCESS
BEGIN
	ent(5) <= '0';
WAIT;
END PROCESS t_prcs_ent_5;
-- ent[4]
t_prcs_ent_4: PROCESS
BEGIN
	ent(4) <= '0';
WAIT;
END PROCESS t_prcs_ent_4;
-- ent[3]
t_prcs_ent_3: PROCESS
BEGIN
	ent(3) <= '0';
WAIT;
END PROCESS t_prcs_ent_3;
-- ent[2]
t_prcs_ent_2: PROCESS
BEGIN
	ent(2) <= '1';
WAIT;
END PROCESS t_prcs_ent_2;
-- ent[1]
t_prcs_ent_1: PROCESS
BEGIN
	ent(1) <= '0';
WAIT;
END PROCESS t_prcs_ent_1;
-- ent[0]
t_prcs_ent_0: PROCESS
BEGIN
	ent(0) <= '1';
WAIT;
END PROCESS t_prcs_ent_0;
END Kmeans_Result_arch;
