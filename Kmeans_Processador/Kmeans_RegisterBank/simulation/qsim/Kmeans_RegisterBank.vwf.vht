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
-- Generated on "03/23/2017 15:41:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Kmeans_RegisterBank
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Kmeans_RegisterBank_vhd_vec_tst IS
END Kmeans_RegisterBank_vhd_vec_tst;
ARCHITECTURE Kmeans_RegisterBank_arch OF Kmeans_RegisterBank_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL nCentroids : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL nDimensoes : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL nIteracoes : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL nPontos : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL nrst : STD_LOGIC;
SIGNAL reg1 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL reg2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL reg3 : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL reg5 : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL reg8 : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT Kmeans_RegisterBank
	PORT (
	clk : IN STD_LOGIC;
	nCentroids : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	nDimensoes : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	nIteracoes : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	nPontos : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
	nrst : IN STD_LOGIC;
	reg1 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	reg2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	reg3 : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
	reg5 : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
	reg8 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Kmeans_RegisterBank
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	nCentroids => nCentroids,
	nDimensoes => nDimensoes,
	nIteracoes => nIteracoes,
	nPontos => nPontos,
	nrst => nrst,
	reg1 => reg1,
	reg2 => reg2,
	reg3 => reg3,
	reg5 => reg5,
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
WAIT;
END PROCESS t_prcs_nrst;
-- nCentroids[9]
t_prcs_nCentroids_9: PROCESS
BEGIN
	nCentroids(9) <= '0';
WAIT;
END PROCESS t_prcs_nCentroids_9;
-- nCentroids[8]
t_prcs_nCentroids_8: PROCESS
BEGIN
	nCentroids(8) <= '0';
WAIT;
END PROCESS t_prcs_nCentroids_8;
-- nCentroids[7]
t_prcs_nCentroids_7: PROCESS
BEGIN
	nCentroids(7) <= '0';
WAIT;
END PROCESS t_prcs_nCentroids_7;
-- nCentroids[6]
t_prcs_nCentroids_6: PROCESS
BEGIN
	nCentroids(6) <= '0';
WAIT;
END PROCESS t_prcs_nCentroids_6;
-- nCentroids[5]
t_prcs_nCentroids_5: PROCESS
BEGIN
	nCentroids(5) <= '0';
WAIT;
END PROCESS t_prcs_nCentroids_5;
-- nCentroids[4]
t_prcs_nCentroids_4: PROCESS
BEGIN
	nCentroids(4) <= '0';
WAIT;
END PROCESS t_prcs_nCentroids_4;
-- nCentroids[3]
t_prcs_nCentroids_3: PROCESS
BEGIN
	nCentroids(3) <= '0';
WAIT;
END PROCESS t_prcs_nCentroids_3;
-- nCentroids[2]
t_prcs_nCentroids_2: PROCESS
BEGIN
	nCentroids(2) <= '0';
WAIT;
END PROCESS t_prcs_nCentroids_2;
-- nCentroids[1]
t_prcs_nCentroids_1: PROCESS
BEGIN
	nCentroids(1) <= '1';
WAIT;
END PROCESS t_prcs_nCentroids_1;
-- nCentroids[0]
t_prcs_nCentroids_0: PROCESS
BEGIN
	nCentroids(0) <= '0';
WAIT;
END PROCESS t_prcs_nCentroids_0;
-- nDimensoes[3]
t_prcs_nDimensoes_3: PROCESS
BEGIN
	nDimensoes(3) <= '0';
WAIT;
END PROCESS t_prcs_nDimensoes_3;
-- nDimensoes[2]
t_prcs_nDimensoes_2: PROCESS
BEGIN
	nDimensoes(2) <= '1';
WAIT;
END PROCESS t_prcs_nDimensoes_2;
-- nDimensoes[1]
t_prcs_nDimensoes_1: PROCESS
BEGIN
	nDimensoes(1) <= '1';
WAIT;
END PROCESS t_prcs_nDimensoes_1;
-- nDimensoes[0]
t_prcs_nDimensoes_0: PROCESS
BEGIN
	nDimensoes(0) <= '0';
WAIT;
END PROCESS t_prcs_nDimensoes_0;
-- nIteracoes[6]
t_prcs_nIteracoes_6: PROCESS
BEGIN
	nIteracoes(6) <= '0';
WAIT;
END PROCESS t_prcs_nIteracoes_6;
-- nIteracoes[5]
t_prcs_nIteracoes_5: PROCESS
BEGIN
	nIteracoes(5) <= '0';
WAIT;
END PROCESS t_prcs_nIteracoes_5;
-- nIteracoes[4]
t_prcs_nIteracoes_4: PROCESS
BEGIN
	nIteracoes(4) <= '0';
WAIT;
END PROCESS t_prcs_nIteracoes_4;
-- nIteracoes[3]
t_prcs_nIteracoes_3: PROCESS
BEGIN
	nIteracoes(3) <= '0';
WAIT;
END PROCESS t_prcs_nIteracoes_3;
-- nIteracoes[2]
t_prcs_nIteracoes_2: PROCESS
BEGIN
	nIteracoes(2) <= '0';
WAIT;
END PROCESS t_prcs_nIteracoes_2;
-- nIteracoes[1]
t_prcs_nIteracoes_1: PROCESS
BEGIN
	nIteracoes(1) <= '1';
WAIT;
END PROCESS t_prcs_nIteracoes_1;
-- nIteracoes[0]
t_prcs_nIteracoes_0: PROCESS
BEGIN
	nIteracoes(0) <= '0';
WAIT;
END PROCESS t_prcs_nIteracoes_0;
-- nPontos[14]
t_prcs_nPontos_14: PROCESS
BEGIN
	nPontos(14) <= '0';
WAIT;
END PROCESS t_prcs_nPontos_14;
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
	nPontos(2) <= '1';
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
	nPontos(0) <= '0';
WAIT;
END PROCESS t_prcs_nPontos_0;
END Kmeans_RegisterBank_arch;
