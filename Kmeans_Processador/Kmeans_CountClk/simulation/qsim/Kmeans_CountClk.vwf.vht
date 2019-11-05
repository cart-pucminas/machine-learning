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
-- Generated on "06/29/2017 14:16:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Kmeans_CountClk
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Kmeans_CountClk_vhd_vec_tst IS
END Kmeans_CountClk_vhd_vec_tst;
ARCHITECTURE Kmeans_CountClk_arch OF Kmeans_CountClk_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL continue : STD_LOGIC;
SIGNAL countClk : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL dado : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL en_Count : STD_LOGIC;
SIGNAL en_MemoryInitialize : STD_LOGIC;
SIGNAL next_State : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL nrst : STD_LOGIC;
SIGNAL o_countClk : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL readDone : STD_LOGIC;
COMPONENT Kmeans_CountClk
	PORT (
	clk : IN STD_LOGIC;
	continue : IN STD_LOGIC;
	countClk : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	dado : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	en_Count : IN STD_LOGIC;
	en_MemoryInitialize : IN STD_LOGIC;
	next_State : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	nrst : IN STD_LOGIC;
	o_countClk : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
	readDone : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Kmeans_CountClk
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	continue => continue,
	countClk => countClk,
	dado => dado,
	en_Count => en_Count,
	en_MemoryInitialize => en_MemoryInitialize,
	next_State => next_State,
	nrst => nrst,
	o_countClk => o_countClk,
	readDone => readDone
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- continue
t_prcs_continue: PROCESS
BEGIN
	continue <= '0';
WAIT;
END PROCESS t_prcs_continue;
-- countClk[63]
t_prcs_countClk_63: PROCESS
BEGIN
	countClk(63) <= '0';
WAIT;
END PROCESS t_prcs_countClk_63;
-- countClk[62]
t_prcs_countClk_62: PROCESS
BEGIN
	countClk(62) <= '0';
WAIT;
END PROCESS t_prcs_countClk_62;
-- countClk[61]
t_prcs_countClk_61: PROCESS
BEGIN
	countClk(61) <= '0';
WAIT;
END PROCESS t_prcs_countClk_61;
-- countClk[60]
t_prcs_countClk_60: PROCESS
BEGIN
	countClk(60) <= '0';
WAIT;
END PROCESS t_prcs_countClk_60;
-- countClk[59]
t_prcs_countClk_59: PROCESS
BEGIN
	countClk(59) <= '0';
WAIT;
END PROCESS t_prcs_countClk_59;
-- countClk[58]
t_prcs_countClk_58: PROCESS
BEGIN
	countClk(58) <= '0';
WAIT;
END PROCESS t_prcs_countClk_58;
-- countClk[57]
t_prcs_countClk_57: PROCESS
BEGIN
	countClk(57) <= '0';
WAIT;
END PROCESS t_prcs_countClk_57;
-- countClk[56]
t_prcs_countClk_56: PROCESS
BEGIN
	countClk(56) <= '0';
WAIT;
END PROCESS t_prcs_countClk_56;
-- countClk[55]
t_prcs_countClk_55: PROCESS
BEGIN
	countClk(55) <= '0';
WAIT;
END PROCESS t_prcs_countClk_55;
-- countClk[54]
t_prcs_countClk_54: PROCESS
BEGIN
	countClk(54) <= '0';
WAIT;
END PROCESS t_prcs_countClk_54;
-- countClk[53]
t_prcs_countClk_53: PROCESS
BEGIN
	countClk(53) <= '0';
WAIT;
END PROCESS t_prcs_countClk_53;
-- countClk[52]
t_prcs_countClk_52: PROCESS
BEGIN
	countClk(52) <= '0';
WAIT;
END PROCESS t_prcs_countClk_52;
-- countClk[51]
t_prcs_countClk_51: PROCESS
BEGIN
	countClk(51) <= '0';
WAIT;
END PROCESS t_prcs_countClk_51;
-- countClk[50]
t_prcs_countClk_50: PROCESS
BEGIN
	countClk(50) <= '0';
WAIT;
END PROCESS t_prcs_countClk_50;
-- countClk[49]
t_prcs_countClk_49: PROCESS
BEGIN
	countClk(49) <= '0';
WAIT;
END PROCESS t_prcs_countClk_49;
-- countClk[48]
t_prcs_countClk_48: PROCESS
BEGIN
	countClk(48) <= '0';
WAIT;
END PROCESS t_prcs_countClk_48;
-- countClk[47]
t_prcs_countClk_47: PROCESS
BEGIN
	countClk(47) <= '0';
WAIT;
END PROCESS t_prcs_countClk_47;
-- countClk[46]
t_prcs_countClk_46: PROCESS
BEGIN
	countClk(46) <= '0';
WAIT;
END PROCESS t_prcs_countClk_46;
-- countClk[45]
t_prcs_countClk_45: PROCESS
BEGIN
	countClk(45) <= '0';
WAIT;
END PROCESS t_prcs_countClk_45;
-- countClk[44]
t_prcs_countClk_44: PROCESS
BEGIN
	countClk(44) <= '0';
WAIT;
END PROCESS t_prcs_countClk_44;
-- countClk[43]
t_prcs_countClk_43: PROCESS
BEGIN
	countClk(43) <= '0';
WAIT;
END PROCESS t_prcs_countClk_43;
-- countClk[42]
t_prcs_countClk_42: PROCESS
BEGIN
	countClk(42) <= '0';
WAIT;
END PROCESS t_prcs_countClk_42;
-- countClk[41]
t_prcs_countClk_41: PROCESS
BEGIN
	countClk(41) <= '0';
WAIT;
END PROCESS t_prcs_countClk_41;
-- countClk[40]
t_prcs_countClk_40: PROCESS
BEGIN
	countClk(40) <= '0';
WAIT;
END PROCESS t_prcs_countClk_40;
-- countClk[39]
t_prcs_countClk_39: PROCESS
BEGIN
	countClk(39) <= '0';
WAIT;
END PROCESS t_prcs_countClk_39;
-- countClk[38]
t_prcs_countClk_38: PROCESS
BEGIN
	countClk(38) <= '0';
WAIT;
END PROCESS t_prcs_countClk_38;
-- countClk[37]
t_prcs_countClk_37: PROCESS
BEGIN
	countClk(37) <= '0';
WAIT;
END PROCESS t_prcs_countClk_37;
-- countClk[36]
t_prcs_countClk_36: PROCESS
BEGIN
	countClk(36) <= '0';
WAIT;
END PROCESS t_prcs_countClk_36;
-- countClk[35]
t_prcs_countClk_35: PROCESS
BEGIN
	countClk(35) <= '0';
WAIT;
END PROCESS t_prcs_countClk_35;
-- countClk[34]
t_prcs_countClk_34: PROCESS
BEGIN
	countClk(34) <= '0';
WAIT;
END PROCESS t_prcs_countClk_34;
-- countClk[33]
t_prcs_countClk_33: PROCESS
BEGIN
	countClk(33) <= '0';
WAIT;
END PROCESS t_prcs_countClk_33;
-- countClk[32]
t_prcs_countClk_32: PROCESS
BEGIN
	countClk(32) <= '0';
WAIT;
END PROCESS t_prcs_countClk_32;
-- countClk[31]
t_prcs_countClk_31: PROCESS
BEGIN
	countClk(31) <= '0';
WAIT;
END PROCESS t_prcs_countClk_31;
-- countClk[30]
t_prcs_countClk_30: PROCESS
BEGIN
	countClk(30) <= '0';
WAIT;
END PROCESS t_prcs_countClk_30;
-- countClk[29]
t_prcs_countClk_29: PROCESS
BEGIN
	countClk(29) <= '0';
WAIT;
END PROCESS t_prcs_countClk_29;
-- countClk[28]
t_prcs_countClk_28: PROCESS
BEGIN
	countClk(28) <= '0';
WAIT;
END PROCESS t_prcs_countClk_28;
-- countClk[27]
t_prcs_countClk_27: PROCESS
BEGIN
	countClk(27) <= '0';
WAIT;
END PROCESS t_prcs_countClk_27;
-- countClk[26]
t_prcs_countClk_26: PROCESS
BEGIN
	countClk(26) <= '0';
WAIT;
END PROCESS t_prcs_countClk_26;
-- countClk[25]
t_prcs_countClk_25: PROCESS
BEGIN
	countClk(25) <= '0';
WAIT;
END PROCESS t_prcs_countClk_25;
-- countClk[24]
t_prcs_countClk_24: PROCESS
BEGIN
	countClk(24) <= '0';
WAIT;
END PROCESS t_prcs_countClk_24;
-- countClk[23]
t_prcs_countClk_23: PROCESS
BEGIN
	countClk(23) <= '0';
WAIT;
END PROCESS t_prcs_countClk_23;
-- countClk[22]
t_prcs_countClk_22: PROCESS
BEGIN
	countClk(22) <= '0';
WAIT;
END PROCESS t_prcs_countClk_22;
-- countClk[21]
t_prcs_countClk_21: PROCESS
BEGIN
	countClk(21) <= '0';
WAIT;
END PROCESS t_prcs_countClk_21;
-- countClk[20]
t_prcs_countClk_20: PROCESS
BEGIN
	countClk(20) <= '0';
WAIT;
END PROCESS t_prcs_countClk_20;
-- countClk[19]
t_prcs_countClk_19: PROCESS
BEGIN
	countClk(19) <= '0';
WAIT;
END PROCESS t_prcs_countClk_19;
-- countClk[18]
t_prcs_countClk_18: PROCESS
BEGIN
	countClk(18) <= '0';
WAIT;
END PROCESS t_prcs_countClk_18;
-- countClk[17]
t_prcs_countClk_17: PROCESS
BEGIN
	countClk(17) <= '0';
WAIT;
END PROCESS t_prcs_countClk_17;
-- countClk[16]
t_prcs_countClk_16: PROCESS
BEGIN
	countClk(16) <= '0';
WAIT;
END PROCESS t_prcs_countClk_16;
-- countClk[15]
t_prcs_countClk_15: PROCESS
BEGIN
	countClk(15) <= '0';
WAIT;
END PROCESS t_prcs_countClk_15;
-- countClk[14]
t_prcs_countClk_14: PROCESS
BEGIN
	countClk(14) <= '0';
WAIT;
END PROCESS t_prcs_countClk_14;
-- countClk[13]
t_prcs_countClk_13: PROCESS
BEGIN
	countClk(13) <= '0';
WAIT;
END PROCESS t_prcs_countClk_13;
-- countClk[12]
t_prcs_countClk_12: PROCESS
BEGIN
	countClk(12) <= '0';
WAIT;
END PROCESS t_prcs_countClk_12;
-- countClk[11]
t_prcs_countClk_11: PROCESS
BEGIN
	countClk(11) <= '0';
WAIT;
END PROCESS t_prcs_countClk_11;
-- countClk[10]
t_prcs_countClk_10: PROCESS
BEGIN
	countClk(10) <= '0';
WAIT;
END PROCESS t_prcs_countClk_10;
-- countClk[9]
t_prcs_countClk_9: PROCESS
BEGIN
	countClk(9) <= '0';
WAIT;
END PROCESS t_prcs_countClk_9;
-- countClk[8]
t_prcs_countClk_8: PROCESS
BEGIN
	countClk(8) <= '0';
WAIT;
END PROCESS t_prcs_countClk_8;
-- countClk[7]
t_prcs_countClk_7: PROCESS
BEGIN
	countClk(7) <= '0';
WAIT;
END PROCESS t_prcs_countClk_7;
-- countClk[6]
t_prcs_countClk_6: PROCESS
BEGIN
	countClk(6) <= '0';
WAIT;
END PROCESS t_prcs_countClk_6;
-- countClk[5]
t_prcs_countClk_5: PROCESS
BEGIN
	countClk(5) <= '0';
WAIT;
END PROCESS t_prcs_countClk_5;
-- countClk[4]
t_prcs_countClk_4: PROCESS
BEGIN
	countClk(4) <= '0';
WAIT;
END PROCESS t_prcs_countClk_4;
-- countClk[3]
t_prcs_countClk_3: PROCESS
BEGIN
	countClk(3) <= '0';
WAIT;
END PROCESS t_prcs_countClk_3;
-- countClk[2]
t_prcs_countClk_2: PROCESS
BEGIN
	countClk(2) <= '0';
	WAIT FOR 180000 ps;
	countClk(2) <= '1';
	WAIT FOR 70000 ps;
	countClk(2) <= '0';
WAIT;
END PROCESS t_prcs_countClk_2;
-- countClk[1]
t_prcs_countClk_1: PROCESS
BEGIN
	countClk(1) <= '0';
	WAIT FOR 100000 ps;
	countClk(1) <= '1';
	WAIT FOR 80000 ps;
	countClk(1) <= '0';
WAIT;
END PROCESS t_prcs_countClk_1;
-- countClk[0]
t_prcs_countClk_0: PROCESS
BEGIN
	countClk(0) <= '0';
	WAIT FOR 60000 ps;
	countClk(0) <= '1';
	WAIT FOR 40000 ps;
	countClk(0) <= '0';
	WAIT FOR 40000 ps;
	countClk(0) <= '1';
	WAIT FOR 40000 ps;
	countClk(0) <= '0';
	WAIT FOR 40000 ps;
	countClk(0) <= '1';
	WAIT FOR 30000 ps;
	countClk(0) <= '0';
WAIT;
END PROCESS t_prcs_countClk_0;

-- nrst
t_prcs_nrst: PROCESS
BEGIN
	nrst <= '0';
	WAIT FOR 20000 ps;
	nrst <= '1';
WAIT;
END PROCESS t_prcs_nrst;

-- en_Count
t_prcs_en_Count: PROCESS
BEGIN
	en_Count <= '0';
	WAIT FOR 240000 ps;
	en_Count <= '1';
	WAIT FOR 40000 ps;
	en_Count <= '0';
WAIT;
END PROCESS t_prcs_en_Count;

-- en_MemoryInitialize
t_prcs_en_MemoryInitialize: PROCESS
BEGIN
	en_MemoryInitialize <= '1';
	WAIT FOR 40000 ps;
	en_MemoryInitialize <= '0';
WAIT;
END PROCESS t_prcs_en_MemoryInitialize;

-- readDone
t_prcs_readDone: PROCESS
BEGIN
	readDone <= '0';
	WAIT FOR 50000 ps;
	readDone <= '1';
	WAIT FOR 10000 ps;
	readDone <= '0';
	WAIT FOR 30000 ps;
	readDone <= '1';
	WAIT FOR 10000 ps;
	readDone <= '0';
WAIT;
END PROCESS t_prcs_readDone;
END Kmeans_CountClk_arch;
