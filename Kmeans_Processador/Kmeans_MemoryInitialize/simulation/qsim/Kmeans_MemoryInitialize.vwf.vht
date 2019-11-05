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
-- Generated on "03/21/2017 15:41:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Kmeans_MemoryInitialize
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Kmeans_MemoryInitialize_vhd_vec_tst IS
END Kmeans_MemoryInitialize_vhd_vec_tst;
ARCHITECTURE Kmeans_MemoryInitialize_arch OF Kmeans_MemoryInitialize_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr_Ram : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL addr_Rom : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL en_MemoryInitialize : STD_LOGIC;
SIGNAL initAddr : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL next_State : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL nPontos : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL nrst : STD_LOGIC;
SIGNAL reg8 : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT Kmeans_MemoryInitialize
	PORT (
	addr_Ram : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
	addr_Rom : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
	clk : IN STD_LOGIC;
	en_MemoryInitialize : IN STD_LOGIC;
	initAddr : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
	next_State : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	nPontos : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
	nrst : IN STD_LOGIC;
	reg8 : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Kmeans_MemoryInitialize
	PORT MAP (
-- list connections between master ports and signals
	addr_Ram => addr_Ram,
	addr_Rom => addr_Rom,
	clk => clk,
	en_MemoryInitialize => en_MemoryInitialize,
	initAddr => initAddr,
	next_State => next_State,
	nPontos => nPontos,
	nrst => nrst,
	reg8 => reg8
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
	WAIT FOR 570000 ps;
	nrst <= '0';
	WAIT FOR 40000 ps;
	nrst <= '1';
	WAIT FOR 320000 ps;
	nrst <= '0';
	WAIT FOR 40000 ps;
	nrst <= '1';
WAIT;
END PROCESS t_prcs_nrst;

-- en_MemoryInitialize
t_prcs_en_MemoryInitialize: PROCESS
BEGIN
	en_MemoryInitialize <= '1';
WAIT;
END PROCESS t_prcs_en_MemoryInitialize;
-- initAddr[14]
t_prcs_initAddr_14: PROCESS
BEGIN
	initAddr(14) <= '0';
WAIT;
END PROCESS t_prcs_initAddr_14;
-- initAddr[13]
t_prcs_initAddr_13: PROCESS
BEGIN
	initAddr(13) <= '0';
WAIT;
END PROCESS t_prcs_initAddr_13;
-- initAddr[12]
t_prcs_initAddr_12: PROCESS
BEGIN
	initAddr(12) <= '0';
WAIT;
END PROCESS t_prcs_initAddr_12;
-- initAddr[11]
t_prcs_initAddr_11: PROCESS
BEGIN
	initAddr(11) <= '0';
WAIT;
END PROCESS t_prcs_initAddr_11;
-- initAddr[10]
t_prcs_initAddr_10: PROCESS
BEGIN
	initAddr(10) <= '0';
WAIT;
END PROCESS t_prcs_initAddr_10;
-- initAddr[9]
t_prcs_initAddr_9: PROCESS
BEGIN
	initAddr(9) <= '0';
WAIT;
END PROCESS t_prcs_initAddr_9;
-- initAddr[8]
t_prcs_initAddr_8: PROCESS
BEGIN
	initAddr(8) <= '0';
WAIT;
END PROCESS t_prcs_initAddr_8;
-- initAddr[7]
t_prcs_initAddr_7: PROCESS
BEGIN
	initAddr(7) <= '0';
WAIT;
END PROCESS t_prcs_initAddr_7;
-- initAddr[6]
t_prcs_initAddr_6: PROCESS
BEGIN
	initAddr(6) <= '0';
WAIT;
END PROCESS t_prcs_initAddr_6;
-- initAddr[5]
t_prcs_initAddr_5: PROCESS
BEGIN
	initAddr(5) <= '0';
WAIT;
END PROCESS t_prcs_initAddr_5;
-- initAddr[4]
t_prcs_initAddr_4: PROCESS
BEGIN
	initAddr(4) <= '0';
WAIT;
END PROCESS t_prcs_initAddr_4;
-- initAddr[3]
t_prcs_initAddr_3: PROCESS
BEGIN
	initAddr(3) <= '0';
WAIT;
END PROCESS t_prcs_initAddr_3;
-- initAddr[2]
t_prcs_initAddr_2: PROCESS
BEGIN
	initAddr(2) <= '0';
WAIT;
END PROCESS t_prcs_initAddr_2;
-- initAddr[1]
t_prcs_initAddr_1: PROCESS
BEGIN
	initAddr(1) <= '0';
WAIT;
END PROCESS t_prcs_initAddr_1;
-- initAddr[0]
t_prcs_initAddr_0: PROCESS
BEGIN
	initAddr(0) <= '0';
WAIT;
END PROCESS t_prcs_initAddr_0;
-- nPontos[13]
t_prcs_nPontos_13: PROCESS
BEGIN
	nPontos(13) <= '0';
WAIT;
END PROCESS t_prcs_nPontos_13;
-- nPontos[12]
t_prcs_nPontos_12: PROCESS
BEGIN
	nPontos(12) <= '0';
WAIT;
END PROCESS t_prcs_nPontos_12;
-- nPontos[11]
t_prcs_nPontos_11: PROCESS
BEGIN
	nPontos(11) <= '0';
WAIT;
END PROCESS t_prcs_nPontos_11;
-- nPontos[10]
t_prcs_nPontos_10: PROCESS
BEGIN
	nPontos(10) <= '0';
WAIT;
END PROCESS t_prcs_nPontos_10;
-- nPontos[9]
t_prcs_nPontos_9: PROCESS
BEGIN
	nPontos(9) <= '0';
WAIT;
END PROCESS t_prcs_nPontos_9;
-- nPontos[8]
t_prcs_nPontos_8: PROCESS
BEGIN
	nPontos(8) <= '0';
WAIT;
END PROCESS t_prcs_nPontos_8;
-- nPontos[7]
t_prcs_nPontos_7: PROCESS
BEGIN
	nPontos(7) <= '0';
WAIT;
END PROCESS t_prcs_nPontos_7;
-- nPontos[6]
t_prcs_nPontos_6: PROCESS
BEGIN
	nPontos(6) <= '0';
WAIT;
END PROCESS t_prcs_nPontos_6;
-- nPontos[5]
t_prcs_nPontos_5: PROCESS
BEGIN
	nPontos(5) <= '0';
WAIT;
END PROCESS t_prcs_nPontos_5;
-- nPontos[4]
t_prcs_nPontos_4: PROCESS
BEGIN
	nPontos(4) <= '0';
WAIT;
END PROCESS t_prcs_nPontos_4;
-- nPontos[3]
t_prcs_nPontos_3: PROCESS
BEGIN
	nPontos(3) <= '0';
WAIT;
END PROCESS t_prcs_nPontos_3;
-- nPontos[2]
t_prcs_nPontos_2: PROCESS
BEGIN
	nPontos(2) <= '0';
WAIT;
END PROCESS t_prcs_nPontos_2;
-- nPontos[1]
t_prcs_nPontos_1: PROCESS
BEGIN
	nPontos(1) <= '1';
WAIT;
END PROCESS t_prcs_nPontos_1;
-- nPontos[0]
t_prcs_nPontos_0: PROCESS
BEGIN
	nPontos(0) <= '1';
WAIT;
END PROCESS t_prcs_nPontos_0;
-- reg8[1]
t_prcs_reg8_1: PROCESS
BEGIN
	reg8(1) <= '0';
WAIT;
END PROCESS t_prcs_reg8_1;
-- reg8[0]
t_prcs_reg8_0: PROCESS
BEGIN
	reg8(0) <= '0';
	WAIT FOR 15000 ps;
	reg8(0) <= '1';
WAIT;
END PROCESS t_prcs_reg8_0;
END Kmeans_MemoryInitialize_arch;
