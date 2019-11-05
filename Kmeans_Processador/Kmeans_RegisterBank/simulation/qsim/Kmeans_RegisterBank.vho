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

-- DATE "03/23/2017 15:41:02"

-- 
-- Device: Altera EP4CGX150DF31I7 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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

ENTITY 	Kmeans_RegisterBank IS
    PORT (
	clk : IN std_logic;
	nrst : IN std_logic;
	nCentroids : IN std_logic_vector(9 DOWNTO 0);
	nIteracoes : IN std_logic_vector(6 DOWNTO 0);
	nPontos : IN std_logic_vector(14 DOWNTO 0);
	nDimensoes : IN std_logic_vector(3 DOWNTO 0);
	reg1 : OUT std_logic_vector(9 DOWNTO 0);
	reg2 : OUT std_logic_vector(6 DOWNTO 0);
	reg3 : OUT std_logic_vector(14 DOWNTO 0);
	reg5 : OUT std_logic_vector(14 DOWNTO 0);
	reg8 : OUT std_logic_vector(2 DOWNTO 0)
	);
END Kmeans_RegisterBank;

-- Design Ports Information
-- reg1[0]	=>  Location: PIN_T27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[1]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[3]	=>  Location: PIN_N30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[4]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[5]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[6]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[7]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[8]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg1[9]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg2[0]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg2[1]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg2[2]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg2[3]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg2[4]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg2[6]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[0]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[2]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[3]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[4]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[5]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[6]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[7]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[8]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[9]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[10]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[11]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[12]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[13]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg3[14]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[1]	=>  Location: PIN_AK10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[3]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[4]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[5]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[6]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[7]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[8]	=>  Location: PIN_AC16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[9]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[10]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[11]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[12]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[13]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg5[14]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg8[0]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg8[1]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg8[2]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nCentroids[0]	=>  Location: PIN_T30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nrst	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nCentroids[1]	=>  Location: PIN_T29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nCentroids[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nCentroids[3]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nCentroids[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nCentroids[5]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nCentroids[6]	=>  Location: PIN_B24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nCentroids[7]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nCentroids[8]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nCentroids[9]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nIteracoes[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nIteracoes[1]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nIteracoes[2]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nIteracoes[3]	=>  Location: PIN_M29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nIteracoes[4]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nIteracoes[5]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nIteracoes[6]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[0]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[14]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[1]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[2]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[3]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[4]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[5]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[6]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[7]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[8]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[9]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[10]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[11]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[12]	=>  Location: PIN_AJ13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[13]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nDimensoes[0]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nDimensoes[1]	=>  Location: PIN_AK15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nDimensoes[2]	=>  Location: PIN_AJ15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nDimensoes[3]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Kmeans_RegisterBank IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_nrst : std_logic;
SIGNAL ww_nCentroids : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_nIteracoes : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_nPontos : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_nDimensoes : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_reg1 : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_reg2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_reg3 : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_reg5 : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_reg8 : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \nrst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg1[0]~output_o\ : std_logic;
SIGNAL \reg1[1]~output_o\ : std_logic;
SIGNAL \reg1[2]~output_o\ : std_logic;
SIGNAL \reg1[3]~output_o\ : std_logic;
SIGNAL \reg1[4]~output_o\ : std_logic;
SIGNAL \reg1[5]~output_o\ : std_logic;
SIGNAL \reg1[6]~output_o\ : std_logic;
SIGNAL \reg1[7]~output_o\ : std_logic;
SIGNAL \reg1[8]~output_o\ : std_logic;
SIGNAL \reg1[9]~output_o\ : std_logic;
SIGNAL \reg2[0]~output_o\ : std_logic;
SIGNAL \reg2[1]~output_o\ : std_logic;
SIGNAL \reg2[2]~output_o\ : std_logic;
SIGNAL \reg2[3]~output_o\ : std_logic;
SIGNAL \reg2[4]~output_o\ : std_logic;
SIGNAL \reg2[5]~output_o\ : std_logic;
SIGNAL \reg2[6]~output_o\ : std_logic;
SIGNAL \reg3[0]~output_o\ : std_logic;
SIGNAL \reg3[1]~output_o\ : std_logic;
SIGNAL \reg3[2]~output_o\ : std_logic;
SIGNAL \reg3[3]~output_o\ : std_logic;
SIGNAL \reg3[4]~output_o\ : std_logic;
SIGNAL \reg3[5]~output_o\ : std_logic;
SIGNAL \reg3[6]~output_o\ : std_logic;
SIGNAL \reg3[7]~output_o\ : std_logic;
SIGNAL \reg3[8]~output_o\ : std_logic;
SIGNAL \reg3[9]~output_o\ : std_logic;
SIGNAL \reg3[10]~output_o\ : std_logic;
SIGNAL \reg3[11]~output_o\ : std_logic;
SIGNAL \reg3[12]~output_o\ : std_logic;
SIGNAL \reg3[13]~output_o\ : std_logic;
SIGNAL \reg3[14]~output_o\ : std_logic;
SIGNAL \reg5[0]~output_o\ : std_logic;
SIGNAL \reg5[1]~output_o\ : std_logic;
SIGNAL \reg5[2]~output_o\ : std_logic;
SIGNAL \reg5[3]~output_o\ : std_logic;
SIGNAL \reg5[4]~output_o\ : std_logic;
SIGNAL \reg5[5]~output_o\ : std_logic;
SIGNAL \reg5[6]~output_o\ : std_logic;
SIGNAL \reg5[7]~output_o\ : std_logic;
SIGNAL \reg5[8]~output_o\ : std_logic;
SIGNAL \reg5[9]~output_o\ : std_logic;
SIGNAL \reg5[10]~output_o\ : std_logic;
SIGNAL \reg5[11]~output_o\ : std_logic;
SIGNAL \reg5[12]~output_o\ : std_logic;
SIGNAL \reg5[13]~output_o\ : std_logic;
SIGNAL \reg5[14]~output_o\ : std_logic;
SIGNAL \reg8[0]~output_o\ : std_logic;
SIGNAL \reg8[1]~output_o\ : std_logic;
SIGNAL \reg8[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \nCentroids[0]~input_o\ : std_logic;
SIGNAL \nrst~input_o\ : std_logic;
SIGNAL \nrst~inputclkctrl_outclk\ : std_logic;
SIGNAL \nCentroids[1]~input_o\ : std_logic;
SIGNAL \s_reg1[1]~feeder_combout\ : std_logic;
SIGNAL \nCentroids[2]~input_o\ : std_logic;
SIGNAL \s_reg1[2]~feeder_combout\ : std_logic;
SIGNAL \nCentroids[3]~input_o\ : std_logic;
SIGNAL \s_reg1[3]~feeder_combout\ : std_logic;
SIGNAL \nCentroids[4]~input_o\ : std_logic;
SIGNAL \s_reg1[4]~feeder_combout\ : std_logic;
SIGNAL \nCentroids[5]~input_o\ : std_logic;
SIGNAL \s_reg1[5]~feeder_combout\ : std_logic;
SIGNAL \nCentroids[6]~input_o\ : std_logic;
SIGNAL \s_reg1[6]~feeder_combout\ : std_logic;
SIGNAL \nCentroids[7]~input_o\ : std_logic;
SIGNAL \s_reg1[7]~feeder_combout\ : std_logic;
SIGNAL \nCentroids[8]~input_o\ : std_logic;
SIGNAL \s_reg1[8]~feeder_combout\ : std_logic;
SIGNAL \nCentroids[9]~input_o\ : std_logic;
SIGNAL \s_reg1[9]~feeder_combout\ : std_logic;
SIGNAL \nIteracoes[0]~input_o\ : std_logic;
SIGNAL \s_reg2[0]~feeder_combout\ : std_logic;
SIGNAL \nIteracoes[1]~input_o\ : std_logic;
SIGNAL \s_reg2[1]~feeder_combout\ : std_logic;
SIGNAL \nIteracoes[2]~input_o\ : std_logic;
SIGNAL \s_reg2[2]~feeder_combout\ : std_logic;
SIGNAL \nIteracoes[3]~input_o\ : std_logic;
SIGNAL \s_reg2[3]~feeder_combout\ : std_logic;
SIGNAL \nIteracoes[4]~input_o\ : std_logic;
SIGNAL \s_reg2[4]~feeder_combout\ : std_logic;
SIGNAL \nIteracoes[5]~input_o\ : std_logic;
SIGNAL \s_reg2[5]~feeder_combout\ : std_logic;
SIGNAL \nIteracoes[6]~input_o\ : std_logic;
SIGNAL \s_reg2[6]~feeder_combout\ : std_logic;
SIGNAL \nPontos[0]~input_o\ : std_logic;
SIGNAL \nPontos[5]~input_o\ : std_logic;
SIGNAL \nPontos[7]~input_o\ : std_logic;
SIGNAL \nPontos[6]~input_o\ : std_logic;
SIGNAL \nPontos[4]~input_o\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \nPontos[9]~input_o\ : std_logic;
SIGNAL \nPontos[8]~input_o\ : std_logic;
SIGNAL \nPontos[1]~input_o\ : std_logic;
SIGNAL \nPontos[2]~input_o\ : std_logic;
SIGNAL \nPontos[3]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \nPontos[12]~input_o\ : std_logic;
SIGNAL \nPontos[11]~input_o\ : std_logic;
SIGNAL \nPontos[10]~input_o\ : std_logic;
SIGNAL \nPontos[13]~input_o\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \nPontos[14]~input_o\ : std_logic;
SIGNAL \s_nPontos[0]~0_combout\ : std_logic;
SIGNAL \s_nPontos[1]~1_combout\ : std_logic;
SIGNAL \s_nPontos[2]~2_combout\ : std_logic;
SIGNAL \s_reg3[2]~feeder_combout\ : std_logic;
SIGNAL \s_nPontos[3]~3_combout\ : std_logic;
SIGNAL \s_nPontos[4]~4_combout\ : std_logic;
SIGNAL \s_reg3[4]~feeder_combout\ : std_logic;
SIGNAL \s_nPontos[5]~5_combout\ : std_logic;
SIGNAL \s_reg3[5]~feeder_combout\ : std_logic;
SIGNAL \s_nPontos[6]~6_combout\ : std_logic;
SIGNAL \s_reg3[6]~feeder_combout\ : std_logic;
SIGNAL \s_nPontos[7]~7_combout\ : std_logic;
SIGNAL \s_reg3[7]~feeder_combout\ : std_logic;
SIGNAL \s_nPontos[8]~8_combout\ : std_logic;
SIGNAL \s_reg3[8]~feeder_combout\ : std_logic;
SIGNAL \s_nPontos[9]~9_combout\ : std_logic;
SIGNAL \s_reg3[9]~feeder_combout\ : std_logic;
SIGNAL \s_reg3[10]~feeder_combout\ : std_logic;
SIGNAL \s_reg3[13]~feeder_combout\ : std_logic;
SIGNAL \s_reg3[14]~feeder_combout\ : std_logic;
SIGNAL \nDimensoes[0]~input_o\ : std_logic;
SIGNAL \nDimensoes[1]~input_o\ : std_logic;
SIGNAL \nDimensoes[3]~input_o\ : std_logic;
SIGNAL \nDimensoes[2]~input_o\ : std_logic;
SIGNAL \s_reg8~0_combout\ : std_logic;
SIGNAL \s_reg8~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \s_reg5[0]~15_combout\ : std_logic;
SIGNAL \s_reg5[0]~16\ : std_logic;
SIGNAL \s_reg5[1]~17_combout\ : std_logic;
SIGNAL \s_reg8~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|_~36_combout\ : std_logic;
SIGNAL \s_reg5[1]~18\ : std_logic;
SIGNAL \s_reg5[2]~19_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \s_reg5[2]~20\ : std_logic;
SIGNAL \s_reg5[3]~21_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \s_reg5[3]~22\ : std_logic;
SIGNAL \s_reg5[4]~23_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \s_reg5[4]~24\ : std_logic;
SIGNAL \s_reg5[5]~25_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \s_reg5[5]~26\ : std_logic;
SIGNAL \s_reg5[6]~27_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \s_reg5[6]~28\ : std_logic;
SIGNAL \s_reg5[7]~29_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \s_reg5[7]~30\ : std_logic;
SIGNAL \s_reg5[8]~31_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \s_reg5[8]~32\ : std_logic;
SIGNAL \s_reg5[9]~33_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \s_reg5[9]~34\ : std_logic;
SIGNAL \s_reg5[10]~35_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \s_reg5[10]~36\ : std_logic;
SIGNAL \s_reg5[11]~37_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \s_reg5[11]~38\ : std_logic;
SIGNAL \s_reg5[12]~39_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \s_reg5[12]~40\ : std_logic;
SIGNAL \s_reg5[13]~41_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~23\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \s_reg5[13]~42\ : std_logic;
SIGNAL \s_reg5[14]~43_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|le5a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL s_reg8 : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le3a\ : std_logic_vector(16 DOWNTO 0);
SIGNAL s_reg3 : std_logic_vector(14 DOWNTO 0);
SIGNAL s_reg2 : std_logic_vector(6 DOWNTO 0);
SIGNAL s_reg1 : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le4a\ : std_logic_vector(16 DOWNTO 0);
SIGNAL s_reg5 : std_logic_vector(14 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_nrst <= nrst;
ww_nCentroids <= nCentroids;
ww_nIteracoes <= nIteracoes;
ww_nPontos <= nPontos;
ww_nDimensoes <= nDimensoes;
reg1 <= ww_reg1;
reg2 <= ww_reg2;
reg3 <= ww_reg3;
reg5 <= ww_reg5;
reg8 <= ww_reg8;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\nrst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \nrst~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X117_Y44_N9
\reg1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg1(0),
	devoe => ww_devoe,
	o => \reg1[0]~output_o\);

-- Location: IOOBUF_X117_Y44_N2
\reg1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg1(1),
	devoe => ww_devoe,
	o => \reg1[1]~output_o\);

-- Location: IOOBUF_X17_Y91_N2
\reg1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg1(2),
	devoe => ww_devoe,
	o => \reg1[2]~output_o\);

-- Location: IOOBUF_X117_Y53_N2
\reg1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg1(3),
	devoe => ww_devoe,
	o => \reg1[3]~output_o\);

-- Location: IOOBUF_X15_Y91_N16
\reg1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg1(4),
	devoe => ww_devoe,
	o => \reg1[4]~output_o\);

-- Location: IOOBUF_X117_Y21_N9
\reg1[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg1(5),
	devoe => ww_devoe,
	o => \reg1[5]~output_o\);

-- Location: IOOBUF_X90_Y91_N9
\reg1[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg1(6),
	devoe => ww_devoe,
	o => \reg1[6]~output_o\);

-- Location: IOOBUF_X66_Y91_N9
\reg1[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg1(7),
	devoe => ww_devoe,
	o => \reg1[7]~output_o\);

-- Location: IOOBUF_X17_Y91_N9
\reg1[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg1(8),
	devoe => ww_devoe,
	o => \reg1[8]~output_o\);

-- Location: IOOBUF_X26_Y91_N16
\reg1[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg1(9),
	devoe => ww_devoe,
	o => \reg1[9]~output_o\);

-- Location: IOOBUF_X84_Y0_N2
\reg2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg2(0),
	devoe => ww_devoe,
	o => \reg2[0]~output_o\);

-- Location: IOOBUF_X86_Y0_N2
\reg2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg2(1),
	devoe => ww_devoe,
	o => \reg2[1]~output_o\);

-- Location: IOOBUF_X84_Y0_N16
\reg2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg2(2),
	devoe => ww_devoe,
	o => \reg2[2]~output_o\);

-- Location: IOOBUF_X117_Y58_N2
\reg2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg2(3),
	devoe => ww_devoe,
	o => \reg2[3]~output_o\);

-- Location: IOOBUF_X82_Y0_N2
\reg2[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg2(4),
	devoe => ww_devoe,
	o => \reg2[4]~output_o\);

-- Location: IOOBUF_X82_Y91_N9
\reg2[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg2(5),
	devoe => ww_devoe,
	o => \reg2[5]~output_o\);

-- Location: IOOBUF_X68_Y91_N9
\reg2[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg2(6),
	devoe => ww_devoe,
	o => \reg2[6]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\reg3[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg3(0),
	devoe => ww_devoe,
	o => \reg3[0]~output_o\);

-- Location: IOOBUF_X39_Y0_N2
\reg3[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg3(1),
	devoe => ww_devoe,
	o => \reg3[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\reg3[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg3(2),
	devoe => ww_devoe,
	o => \reg3[2]~output_o\);

-- Location: IOOBUF_X39_Y0_N23
\reg3[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg3(3),
	devoe => ww_devoe,
	o => \reg3[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\reg3[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg3(4),
	devoe => ww_devoe,
	o => \reg3[4]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\reg3[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg3(5),
	devoe => ww_devoe,
	o => \reg3[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\reg3[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg3(6),
	devoe => ww_devoe,
	o => \reg3[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\reg3[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg3(7),
	devoe => ww_devoe,
	o => \reg3[7]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\reg3[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg3(8),
	devoe => ww_devoe,
	o => \reg3[8]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\reg3[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg3(9),
	devoe => ww_devoe,
	o => \reg3[9]~output_o\);

-- Location: IOOBUF_X50_Y0_N9
\reg3[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg3(10),
	devoe => ww_devoe,
	o => \reg3[10]~output_o\);

-- Location: IOOBUF_X48_Y0_N23
\reg3[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg3(11),
	devoe => ww_devoe,
	o => \reg3[11]~output_o\);

-- Location: IOOBUF_X53_Y0_N2
\reg3[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg3(12),
	devoe => ww_devoe,
	o => \reg3[12]~output_o\);

-- Location: IOOBUF_X61_Y0_N16
\reg3[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg3(13),
	devoe => ww_devoe,
	o => \reg3[13]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\reg3[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg3(14),
	devoe => ww_devoe,
	o => \reg3[14]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\reg5[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg5(0),
	devoe => ww_devoe,
	o => \reg5[0]~output_o\);

-- Location: IOOBUF_X44_Y0_N2
\reg5[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg5(1),
	devoe => ww_devoe,
	o => \reg5[1]~output_o\);

-- Location: IOOBUF_X39_Y0_N9
\reg5[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg5(2),
	devoe => ww_devoe,
	o => \reg5[2]~output_o\);

-- Location: IOOBUF_X41_Y0_N2
\reg5[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg5(3),
	devoe => ww_devoe,
	o => \reg5[3]~output_o\);

-- Location: IOOBUF_X37_Y0_N9
\reg5[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg5(4),
	devoe => ww_devoe,
	o => \reg5[4]~output_o\);

-- Location: IOOBUF_X61_Y0_N23
\reg5[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg5(5),
	devoe => ww_devoe,
	o => \reg5[5]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\reg5[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg5(6),
	devoe => ww_devoe,
	o => \reg5[6]~output_o\);

-- Location: IOOBUF_X53_Y0_N23
\reg5[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg5(7),
	devoe => ww_devoe,
	o => \reg5[7]~output_o\);

-- Location: IOOBUF_X48_Y0_N9
\reg5[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg5(8),
	devoe => ww_devoe,
	o => \reg5[8]~output_o\);

-- Location: IOOBUF_X53_Y0_N16
\reg5[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg5(9),
	devoe => ww_devoe,
	o => \reg5[9]~output_o\);

-- Location: IOOBUF_X46_Y0_N23
\reg5[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg5(10),
	devoe => ww_devoe,
	o => \reg5[10]~output_o\);

-- Location: IOOBUF_X44_Y0_N9
\reg5[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg5(11),
	devoe => ww_devoe,
	o => \reg5[11]~output_o\);

-- Location: IOOBUF_X41_Y0_N9
\reg5[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg5(12),
	devoe => ww_devoe,
	o => \reg5[12]~output_o\);

-- Location: IOOBUF_X50_Y0_N16
\reg5[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg5(13),
	devoe => ww_devoe,
	o => \reg5[13]~output_o\);

-- Location: IOOBUF_X46_Y0_N16
\reg5[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg5(14),
	devoe => ww_devoe,
	o => \reg5[14]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\reg8[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg8(0),
	devoe => ww_devoe,
	o => \reg8[0]~output_o\);

-- Location: IOOBUF_X48_Y0_N16
\reg8[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg8(1),
	devoe => ww_devoe,
	o => \reg8[1]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\reg8[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_reg8(2),
	devoe => ww_devoe,
	o => \reg8[2]~output_o\);

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

-- Location: IOIBUF_X117_Y46_N8
\nCentroids[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nCentroids(0),
	o => \nCentroids[0]~input_o\);

-- Location: IOIBUF_X57_Y0_N22
\nrst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nrst,
	o => \nrst~input_o\);

-- Location: CLKCTRL_G28
\nrst~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \nrst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \nrst~inputclkctrl_outclk\);

-- Location: FF_X116_Y44_N21
\s_reg1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \nCentroids[0]~input_o\,
	clrn => \nrst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg1(0));

-- Location: IOIBUF_X117_Y46_N1
\nCentroids[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nCentroids(1),
	o => \nCentroids[1]~input_o\);

-- Location: LCCOMB_X116_Y44_N18
\s_reg1[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg1[1]~feeder_combout\ = \nCentroids[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nCentroids[1]~input_o\,
	combout => \s_reg1[1]~feeder_combout\);

-- Location: FF_X116_Y44_N19
\s_reg1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg1[1]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg1(1));

-- Location: IOIBUF_X19_Y91_N22
\nCentroids[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nCentroids(2),
	o => \nCentroids[2]~input_o\);

-- Location: LCCOMB_X18_Y90_N24
\s_reg1[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg1[2]~feeder_combout\ = \nCentroids[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nCentroids[2]~input_o\,
	combout => \s_reg1[2]~feeder_combout\);

-- Location: FF_X18_Y90_N25
\s_reg1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg1[2]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg1(2));

-- Location: IOIBUF_X117_Y53_N8
\nCentroids[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nCentroids(3),
	o => \nCentroids[3]~input_o\);

-- Location: LCCOMB_X116_Y53_N20
\s_reg1[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg1[3]~feeder_combout\ = \nCentroids[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nCentroids[3]~input_o\,
	combout => \s_reg1[3]~feeder_combout\);

-- Location: FF_X116_Y53_N21
\s_reg1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg1[3]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg1(3));

-- Location: IOIBUF_X15_Y91_N1
\nCentroids[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nCentroids(4),
	o => \nCentroids[4]~input_o\);

-- Location: LCCOMB_X15_Y90_N0
\s_reg1[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg1[4]~feeder_combout\ = \nCentroids[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nCentroids[4]~input_o\,
	combout => \s_reg1[4]~feeder_combout\);

-- Location: FF_X15_Y90_N1
\s_reg1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg1[4]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg1(4));

-- Location: IOIBUF_X117_Y21_N1
\nCentroids[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nCentroids(5),
	o => \nCentroids[5]~input_o\);

-- Location: LCCOMB_X116_Y21_N20
\s_reg1[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg1[5]~feeder_combout\ = \nCentroids[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nCentroids[5]~input_o\,
	combout => \s_reg1[5]~feeder_combout\);

-- Location: FF_X116_Y21_N21
\s_reg1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg1[5]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg1(5));

-- Location: IOIBUF_X90_Y91_N15
\nCentroids[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nCentroids(6),
	o => \nCentroids[6]~input_o\);

-- Location: LCCOMB_X91_Y90_N16
\s_reg1[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg1[6]~feeder_combout\ = \nCentroids[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nCentroids[6]~input_o\,
	combout => \s_reg1[6]~feeder_combout\);

-- Location: FF_X91_Y90_N17
\s_reg1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg1[6]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg1(6));

-- Location: IOIBUF_X66_Y91_N1
\nCentroids[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nCentroids(7),
	o => \nCentroids[7]~input_o\);

-- Location: LCCOMB_X66_Y90_N4
\s_reg1[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg1[7]~feeder_combout\ = \nCentroids[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nCentroids[7]~input_o\,
	combout => \s_reg1[7]~feeder_combout\);

-- Location: FF_X66_Y90_N5
\s_reg1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg1[7]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg1(7));

-- Location: IOIBUF_X17_Y91_N15
\nCentroids[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nCentroids(8),
	o => \nCentroids[8]~input_o\);

-- Location: LCCOMB_X18_Y90_N26
\s_reg1[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg1[8]~feeder_combout\ = \nCentroids[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nCentroids[8]~input_o\,
	combout => \s_reg1[8]~feeder_combout\);

-- Location: FF_X18_Y90_N27
\s_reg1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg1[8]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg1(8));

-- Location: IOIBUF_X26_Y91_N8
\nCentroids[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nCentroids(9),
	o => \nCentroids[9]~input_o\);

-- Location: LCCOMB_X26_Y90_N12
\s_reg1[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg1[9]~feeder_combout\ = \nCentroids[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nCentroids[9]~input_o\,
	combout => \s_reg1[9]~feeder_combout\);

-- Location: FF_X26_Y90_N13
\s_reg1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg1[9]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg1(9));

-- Location: IOIBUF_X86_Y0_N22
\nIteracoes[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nIteracoes(0),
	o => \nIteracoes[0]~input_o\);

-- Location: LCCOMB_X86_Y1_N24
\s_reg2[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg2[0]~feeder_combout\ = \nIteracoes[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nIteracoes[0]~input_o\,
	combout => \s_reg2[0]~feeder_combout\);

-- Location: FF_X86_Y1_N25
\s_reg2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg2[0]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg2(0));

-- Location: IOIBUF_X86_Y0_N15
\nIteracoes[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nIteracoes(1),
	o => \nIteracoes[1]~input_o\);

-- Location: LCCOMB_X86_Y1_N30
\s_reg2[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg2[1]~feeder_combout\ = \nIteracoes[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nIteracoes[1]~input_o\,
	combout => \s_reg2[1]~feeder_combout\);

-- Location: FF_X86_Y1_N31
\s_reg2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg2[1]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg2(1));

-- Location: IOIBUF_X84_Y0_N22
\nIteracoes[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nIteracoes(2),
	o => \nIteracoes[2]~input_o\);

-- Location: LCCOMB_X84_Y1_N8
\s_reg2[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg2[2]~feeder_combout\ = \nIteracoes[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nIteracoes[2]~input_o\,
	combout => \s_reg2[2]~feeder_combout\);

-- Location: FF_X84_Y1_N9
\s_reg2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg2[2]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg2(2));

-- Location: IOIBUF_X117_Y58_N8
\nIteracoes[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nIteracoes(3),
	o => \nIteracoes[3]~input_o\);

-- Location: LCCOMB_X116_Y58_N20
\s_reg2[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg2[3]~feeder_combout\ = \nIteracoes[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nIteracoes[3]~input_o\,
	combout => \s_reg2[3]~feeder_combout\);

-- Location: FF_X116_Y58_N21
\s_reg2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg2[3]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg2(3));

-- Location: IOIBUF_X84_Y0_N8
\nIteracoes[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nIteracoes(4),
	o => \nIteracoes[4]~input_o\);

-- Location: LCCOMB_X84_Y1_N2
\s_reg2[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg2[4]~feeder_combout\ = \nIteracoes[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nIteracoes[4]~input_o\,
	combout => \s_reg2[4]~feeder_combout\);

-- Location: FF_X84_Y1_N3
\s_reg2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg2[4]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg2(4));

-- Location: IOIBUF_X82_Y91_N1
\nIteracoes[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nIteracoes(5),
	o => \nIteracoes[5]~input_o\);

-- Location: LCCOMB_X82_Y90_N4
\s_reg2[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg2[5]~feeder_combout\ = \nIteracoes[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nIteracoes[5]~input_o\,
	combout => \s_reg2[5]~feeder_combout\);

-- Location: FF_X82_Y90_N5
\s_reg2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg2[5]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg2(5));

-- Location: IOIBUF_X68_Y91_N1
\nIteracoes[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nIteracoes(6),
	o => \nIteracoes[6]~input_o\);

-- Location: LCCOMB_X68_Y90_N24
\s_reg2[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg2[6]~feeder_combout\ = \nIteracoes[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nIteracoes[6]~input_o\,
	combout => \s_reg2[6]~feeder_combout\);

-- Location: FF_X68_Y90_N25
\s_reg2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg2[6]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg2(6));

-- Location: IOIBUF_X41_Y0_N15
\nPontos[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(0),
	o => \nPontos[0]~input_o\);

-- Location: IOIBUF_X37_Y0_N15
\nPontos[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(5),
	o => \nPontos[5]~input_o\);

-- Location: IOIBUF_X37_Y0_N22
\nPontos[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(7),
	o => \nPontos[7]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\nPontos[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(6),
	o => \nPontos[6]~input_o\);

-- Location: IOIBUF_X41_Y0_N22
\nPontos[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(4),
	o => \nPontos[4]~input_o\);

-- Location: LCCOMB_X41_Y3_N12
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\nPontos[5]~input_o\) # ((\nPontos[7]~input_o\) # ((\nPontos[6]~input_o\) # (\nPontos[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nPontos[5]~input_o\,
	datab => \nPontos[7]~input_o\,
	datac => \nPontos[6]~input_o\,
	datad => \nPontos[4]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: IOIBUF_X34_Y0_N22
\nPontos[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(9),
	o => \nPontos[9]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\nPontos[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(8),
	o => \nPontos[8]~input_o\);

-- Location: IOIBUF_X44_Y0_N15
\nPontos[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(1),
	o => \nPontos[1]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\nPontos[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(2),
	o => \nPontos[2]~input_o\);

-- Location: IOIBUF_X44_Y0_N22
\nPontos[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(3),
	o => \nPontos[3]~input_o\);

-- Location: LCCOMB_X44_Y3_N18
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\nPontos[0]~input_o\) # ((\nPontos[1]~input_o\) # ((\nPontos[2]~input_o\) # (\nPontos[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nPontos[0]~input_o\,
	datab => \nPontos[1]~input_o\,
	datac => \nPontos[2]~input_o\,
	datad => \nPontos[3]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X41_Y3_N30
\LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~1_combout\) # ((\nPontos[9]~input_o\) # ((\nPontos[8]~input_o\) # (\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \nPontos[9]~input_o\,
	datac => \nPontos[8]~input_o\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: IOIBUF_X53_Y0_N8
\nPontos[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(12),
	o => \nPontos[12]~input_o\);

-- Location: IOIBUF_X48_Y0_N1
\nPontos[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(11),
	o => \nPontos[11]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\nPontos[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(10),
	o => \nPontos[10]~input_o\);

-- Location: IOIBUF_X61_Y0_N1
\nPontos[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(13),
	o => \nPontos[13]~input_o\);

-- Location: LCCOMB_X48_Y3_N14
\LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\nPontos[12]~input_o\ & (\nPontos[11]~input_o\ & (\nPontos[10]~input_o\ & \nPontos[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nPontos[12]~input_o\,
	datab => \nPontos[11]~input_o\,
	datac => \nPontos[10]~input_o\,
	datad => \nPontos[13]~input_o\,
	combout => \LessThan0~3_combout\);

-- Location: IOIBUF_X39_Y0_N15
\nPontos[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(14),
	o => \nPontos[14]~input_o\);

-- Location: LCCOMB_X44_Y3_N28
\s_nPontos[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_nPontos[0]~0_combout\ = (\nPontos[0]~input_o\ & (((!\nPontos[14]~input_o\) # (!\LessThan0~3_combout\)) # (!\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nPontos[0]~input_o\,
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~3_combout\,
	datad => \nPontos[14]~input_o\,
	combout => \s_nPontos[0]~0_combout\);

-- Location: FF_X44_Y3_N29
\s_reg3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_nPontos[0]~0_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg3(0));

-- Location: LCCOMB_X44_Y3_N22
\s_nPontos[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_nPontos[1]~1_combout\ = (\nPontos[1]~input_o\ & (((!\LessThan0~2_combout\) # (!\LessThan0~3_combout\)) # (!\nPontos[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nPontos[14]~input_o\,
	datab => \nPontos[1]~input_o\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~2_combout\,
	combout => \s_nPontos[1]~1_combout\);

-- Location: FF_X44_Y3_N23
\s_reg3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_nPontos[1]~1_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg3(1));

-- Location: LCCOMB_X44_Y3_N8
\s_nPontos[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_nPontos[2]~2_combout\ = (\nPontos[2]~input_o\ & (((!\LessThan0~2_combout\) # (!\LessThan0~3_combout\)) # (!\nPontos[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nPontos[14]~input_o\,
	datab => \nPontos[2]~input_o\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~2_combout\,
	combout => \s_nPontos[2]~2_combout\);

-- Location: LCCOMB_X39_Y3_N0
\s_reg3[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg3[2]~feeder_combout\ = \s_nPontos[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_nPontos[2]~2_combout\,
	combout => \s_reg3[2]~feeder_combout\);

-- Location: FF_X39_Y3_N1
\s_reg3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg3[2]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg3(2));

-- Location: LCCOMB_X44_Y3_N4
\s_nPontos[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_nPontos[3]~3_combout\ = (\nPontos[3]~input_o\ & (((!\LessThan0~2_combout\) # (!\LessThan0~3_combout\)) # (!\nPontos[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nPontos[14]~input_o\,
	datab => \nPontos[3]~input_o\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~2_combout\,
	combout => \s_nPontos[3]~3_combout\);

-- Location: FF_X44_Y3_N5
\s_reg3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_nPontos[3]~3_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg3(3));

-- Location: LCCOMB_X41_Y3_N0
\s_nPontos[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_nPontos[4]~4_combout\ = (\nPontos[4]~input_o\ & (((!\LessThan0~3_combout\) # (!\nPontos[14]~input_o\)) # (!\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \nPontos[4]~input_o\,
	datac => \nPontos[14]~input_o\,
	datad => \LessThan0~3_combout\,
	combout => \s_nPontos[4]~4_combout\);

-- Location: LCCOMB_X41_Y3_N28
\s_reg3[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg3[4]~feeder_combout\ = \s_nPontos[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_nPontos[4]~4_combout\,
	combout => \s_reg3[4]~feeder_combout\);

-- Location: FF_X41_Y3_N29
\s_reg3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg3[4]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg3(4));

-- Location: LCCOMB_X41_Y3_N18
\s_nPontos[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_nPontos[5]~5_combout\ = (\nPontos[5]~input_o\ & (((!\LessThan0~3_combout\) # (!\nPontos[14]~input_o\)) # (!\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \nPontos[14]~input_o\,
	datac => \nPontos[5]~input_o\,
	datad => \LessThan0~3_combout\,
	combout => \s_nPontos[5]~5_combout\);

-- Location: LCCOMB_X41_Y3_N2
\s_reg3[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg3[5]~feeder_combout\ = \s_nPontos[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_nPontos[5]~5_combout\,
	combout => \s_reg3[5]~feeder_combout\);

-- Location: FF_X41_Y3_N3
\s_reg3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg3[5]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg3(5));

-- Location: LCCOMB_X41_Y3_N20
\s_nPontos[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_nPontos[6]~6_combout\ = (\nPontos[6]~input_o\ & (((!\LessThan0~3_combout\) # (!\nPontos[14]~input_o\)) # (!\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \nPontos[14]~input_o\,
	datac => \nPontos[6]~input_o\,
	datad => \LessThan0~3_combout\,
	combout => \s_nPontos[6]~6_combout\);

-- Location: LCCOMB_X41_Y3_N4
\s_reg3[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg3[6]~feeder_combout\ = \s_nPontos[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_nPontos[6]~6_combout\,
	combout => \s_reg3[6]~feeder_combout\);

-- Location: FF_X41_Y3_N5
\s_reg3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg3[6]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg3(6));

-- Location: LCCOMB_X41_Y3_N6
\s_nPontos[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_nPontos[7]~7_combout\ = (\nPontos[7]~input_o\ & (((!\LessThan0~3_combout\) # (!\nPontos[14]~input_o\)) # (!\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \nPontos[14]~input_o\,
	datac => \nPontos[7]~input_o\,
	datad => \LessThan0~3_combout\,
	combout => \s_nPontos[7]~7_combout\);

-- Location: LCCOMB_X41_Y3_N26
\s_reg3[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg3[7]~feeder_combout\ = \s_nPontos[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_nPontos[7]~7_combout\,
	combout => \s_reg3[7]~feeder_combout\);

-- Location: FF_X41_Y3_N27
\s_reg3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg3[7]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg3(7));

-- Location: LCCOMB_X41_Y3_N24
\s_nPontos[8]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_nPontos[8]~8_combout\ = (\nPontos[8]~input_o\ & (((!\LessThan0~3_combout\) # (!\nPontos[14]~input_o\)) # (!\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \nPontos[14]~input_o\,
	datac => \nPontos[8]~input_o\,
	datad => \LessThan0~3_combout\,
	combout => \s_nPontos[8]~8_combout\);

-- Location: LCCOMB_X41_Y3_N16
\s_reg3[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg3[8]~feeder_combout\ = \s_nPontos[8]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_nPontos[8]~8_combout\,
	combout => \s_reg3[8]~feeder_combout\);

-- Location: FF_X41_Y3_N17
\s_reg3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg3[8]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg3(8));

-- Location: LCCOMB_X41_Y3_N10
\s_nPontos[9]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_nPontos[9]~9_combout\ = (\nPontos[9]~input_o\ & (((!\LessThan0~3_combout\) # (!\nPontos[14]~input_o\)) # (!\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \nPontos[14]~input_o\,
	datac => \nPontos[9]~input_o\,
	datad => \LessThan0~3_combout\,
	combout => \s_nPontos[9]~9_combout\);

-- Location: LCCOMB_X41_Y3_N22
\s_reg3[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg3[9]~feeder_combout\ = \s_nPontos[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_nPontos[9]~9_combout\,
	combout => \s_reg3[9]~feeder_combout\);

-- Location: FF_X41_Y3_N23
\s_reg3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg3[9]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg3(9));

-- Location: LCCOMB_X48_Y3_N28
\s_reg3[10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg3[10]~feeder_combout\ = \nPontos[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nPontos[10]~input_o\,
	combout => \s_reg3[10]~feeder_combout\);

-- Location: FF_X48_Y3_N29
\s_reg3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg3[10]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg3(10));

-- Location: FF_X48_Y3_N11
\s_reg3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \nPontos[11]~input_o\,
	clrn => \nrst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg3(11));

-- Location: FF_X48_Y3_N1
\s_reg3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \nPontos[12]~input_o\,
	clrn => \nrst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg3(12));

-- Location: LCCOMB_X58_Y3_N28
\s_reg3[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg3[13]~feeder_combout\ = \nPontos[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nPontos[13]~input_o\,
	combout => \s_reg3[13]~feeder_combout\);

-- Location: FF_X58_Y3_N29
\s_reg3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg3[13]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg3(13));

-- Location: LCCOMB_X39_Y3_N2
\s_reg3[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg3[14]~feeder_combout\ = \nPontos[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nPontos[14]~input_o\,
	combout => \s_reg3[14]~feeder_combout\);

-- Location: FF_X39_Y3_N3
\s_reg3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg3[14]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg3(14));

-- Location: IOIBUF_X63_Y0_N1
\nDimensoes[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nDimensoes(0),
	o => \nDimensoes[0]~input_o\);

-- Location: IOIBUF_X63_Y0_N15
\nDimensoes[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nDimensoes(1),
	o => \nDimensoes[1]~input_o\);

-- Location: IOIBUF_X61_Y0_N8
\nDimensoes[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nDimensoes(3),
	o => \nDimensoes[3]~input_o\);

-- Location: IOIBUF_X63_Y0_N22
\nDimensoes[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nDimensoes(2),
	o => \nDimensoes[2]~input_o\);

-- Location: LCCOMB_X55_Y3_N8
\s_reg8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg8~0_combout\ = (\nDimensoes[0]~input_o\ & (\nDimensoes[1]~input_o\)) # (!\nDimensoes[0]~input_o\ & (!\nDimensoes[1]~input_o\ & ((\nDimensoes[3]~input_o\) # (\nDimensoes[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nDimensoes[0]~input_o\,
	datab => \nDimensoes[1]~input_o\,
	datac => \nDimensoes[3]~input_o\,
	datad => \nDimensoes[2]~input_o\,
	combout => \s_reg8~0_combout\);

-- Location: FF_X47_Y3_N9
\s_reg8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_reg8~0_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg8(0));

-- Location: LCCOMB_X55_Y3_N14
\s_reg8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg8~1_combout\ = (\nDimensoes[0]~input_o\ & (((\nDimensoes[2]~input_o\)))) # (!\nDimensoes[0]~input_o\ & ((\nDimensoes[1]~input_o\ & ((\nDimensoes[2]~input_o\))) # (!\nDimensoes[1]~input_o\ & (\nDimensoes[3]~input_o\ & !\nDimensoes[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nDimensoes[0]~input_o\,
	datab => \nDimensoes[1]~input_o\,
	datac => \nDimensoes[3]~input_o\,
	datad => \nDimensoes[2]~input_o\,
	combout => \s_reg8~1_combout\);

-- Location: FF_X47_Y3_N11
\s_reg8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_reg8~1_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg8(1));

-- Location: LCCOMB_X44_Y3_N6
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = s_reg8(0) $ (s_reg8(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_reg8(0),
	datad => s_reg8(1),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X44_Y3_N24
\Mult0|auto_generated|le3a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(0) = LCELL(s_reg8(1) $ (((\s_nPontos[0]~0_combout\) # (s_reg8(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_nPontos[0]~0_combout\,
	datac => s_reg8(0),
	datad => s_reg8(1),
	combout => \Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X45_Y3_N2
\s_reg5[0]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg5[0]~15_combout\ = (\Add0~0_combout\ & (\Mult0|auto_generated|le3a\(0) $ (VCC))) # (!\Add0~0_combout\ & (\Mult0|auto_generated|le3a\(0) & VCC))
-- \s_reg5[0]~16\ = CARRY((\Add0~0_combout\ & \Mult0|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Mult0|auto_generated|le3a\(0),
	datad => VCC,
	combout => \s_reg5[0]~15_combout\,
	cout => \s_reg5[0]~16\);

-- Location: FF_X45_Y3_N3
\s_reg5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg5[0]~15_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg5(0));

-- Location: LCCOMB_X44_Y3_N10
\Mult0|auto_generated|le3a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(1) = LCELL((s_reg8(0) & (((!\s_nPontos[0]~0_combout\ & !s_reg8(1))))) # (!s_reg8(0) & (\s_nPontos[1]~1_combout\ $ (((s_reg8(1)))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nPontos[1]~1_combout\,
	datab => \s_nPontos[0]~0_combout\,
	datac => s_reg8(0),
	datad => s_reg8(1),
	combout => \Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X45_Y3_N4
\s_reg5[1]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg5[1]~17_combout\ = (\Mult0|auto_generated|le3a\(1) & (!\s_reg5[0]~16\)) # (!\Mult0|auto_generated|le3a\(1) & ((\s_reg5[0]~16\) # (GND)))
-- \s_reg5[1]~18\ = CARRY((!\s_reg5[0]~16\) # (!\Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \s_reg5[0]~16\,
	combout => \s_reg5[1]~17_combout\,
	cout => \s_reg5[1]~18\);

-- Location: FF_X45_Y3_N5
\s_reg5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg5[1]~17_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg5(1));

-- Location: LCCOMB_X55_Y3_N4
\s_reg8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg8~2_combout\ = (\nDimensoes[3]~input_o\ & ((\nDimensoes[0]~input_o\) # ((\nDimensoes[1]~input_o\) # (\nDimensoes[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nDimensoes[0]~input_o\,
	datab => \nDimensoes[1]~input_o\,
	datac => \nDimensoes[3]~input_o\,
	datad => \nDimensoes[2]~input_o\,
	combout => \s_reg8~2_combout\);

-- Location: FF_X47_Y3_N5
\s_reg8[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_reg8~2_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg8(2));

-- Location: LCCOMB_X47_Y3_N2
\Mult0|auto_generated|cs2a[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|cs2a[1]~0_combout\ = (s_reg8(2) & ((s_reg8(1)) # (s_reg8(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_reg8(1),
	datac => s_reg8(0),
	datad => s_reg8(2),
	combout => \Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X47_Y3_N24
\Mult0|auto_generated|le3a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(2) = LCELL((s_reg8(0) & (((!\s_nPontos[1]~1_combout\ & !s_reg8(1))))) # (!s_reg8(0) & (\s_nPontos[2]~2_combout\ $ (((s_reg8(1)))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nPontos[2]~2_combout\,
	datab => \s_nPontos[1]~1_combout\,
	datac => s_reg8(0),
	datad => s_reg8(1),
	combout => \Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X46_Y3_N4
\Mult0|auto_generated|op_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~0_combout\ = (\Mult0|auto_generated|cs2a[1]~0_combout\ & (\Mult0|auto_generated|le3a\(2) $ (VCC))) # (!\Mult0|auto_generated|cs2a[1]~0_combout\ & (\Mult0|auto_generated|le3a\(2) & VCC))
-- \Mult0|auto_generated|op_1~1\ = CARRY((\Mult0|auto_generated|cs2a[1]~0_combout\ & \Mult0|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \Mult0|auto_generated|le3a\(2),
	datad => VCC,
	combout => \Mult0|auto_generated|op_1~0_combout\,
	cout => \Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X47_Y3_N4
\Mult0|auto_generated|_~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|_~36_combout\ = s_reg8(2) $ (((s_reg8(0)) # (s_reg8(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_reg8(0),
	datac => s_reg8(2),
	datad => s_reg8(1),
	combout => \Mult0|auto_generated|_~36_combout\);

-- Location: LCCOMB_X48_Y3_N8
\Mult0|auto_generated|le4a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(0) = LCELL(\Mult0|auto_generated|cs2a[1]~0_combout\ $ (((\s_nPontos[0]~0_combout\ & \Mult0|auto_generated|_~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nPontos[0]~0_combout\,
	datac => \Mult0|auto_generated|_~36_combout\,
	datad => \Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X45_Y3_N6
\s_reg5[2]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg5[2]~19_combout\ = ((\Mult0|auto_generated|op_1~0_combout\ $ (\Mult0|auto_generated|le4a\(0) $ (!\s_reg5[1]~18\)))) # (GND)
-- \s_reg5[2]~20\ = CARRY((\Mult0|auto_generated|op_1~0_combout\ & ((\Mult0|auto_generated|le4a\(0)) # (!\s_reg5[1]~18\))) # (!\Mult0|auto_generated|op_1~0_combout\ & (\Mult0|auto_generated|le4a\(0) & !\s_reg5[1]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~0_combout\,
	datab => \Mult0|auto_generated|le4a\(0),
	datad => VCC,
	cin => \s_reg5[1]~18\,
	combout => \s_reg5[2]~19_combout\,
	cout => \s_reg5[2]~20\);

-- Location: FF_X45_Y3_N7
\s_reg5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg5[2]~19_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg5(2));

-- Location: LCCOMB_X47_Y3_N22
\Mult0|auto_generated|le3a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(3) = LCELL((s_reg8(0) & (!s_reg8(1) & (!\s_nPontos[2]~2_combout\))) # (!s_reg8(0) & (s_reg8(1) $ (((\s_nPontos[3]~3_combout\))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_reg8(1),
	datab => \s_nPontos[2]~2_combout\,
	datac => s_reg8(0),
	datad => \s_nPontos[3]~3_combout\,
	combout => \Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X46_Y3_N6
\Mult0|auto_generated|op_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~2_combout\ = (\Mult0|auto_generated|le3a\(3) & (!\Mult0|auto_generated|op_1~1\)) # (!\Mult0|auto_generated|le3a\(3) & ((\Mult0|auto_generated|op_1~1\) # (GND)))
-- \Mult0|auto_generated|op_1~3\ = CARRY((!\Mult0|auto_generated|op_1~1\) # (!\Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~1\,
	combout => \Mult0|auto_generated|op_1~2_combout\,
	cout => \Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X45_Y3_N0
\Mult0|auto_generated|le4a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(1) = LCELL((\Mult0|auto_generated|_~36_combout\ & ((\Mult0|auto_generated|cs2a[1]~0_combout\ $ (\s_nPontos[1]~1_combout\)))) # (!\Mult0|auto_generated|_~36_combout\ & (!\s_nPontos[0]~0_combout\ & 
-- (\Mult0|auto_generated|cs2a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|_~36_combout\,
	datab => \s_nPontos[0]~0_combout\,
	datac => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \s_nPontos[1]~1_combout\,
	combout => \Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X45_Y3_N8
\s_reg5[3]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg5[3]~21_combout\ = (\Mult0|auto_generated|op_1~2_combout\ & ((\Mult0|auto_generated|le4a\(1) & (\s_reg5[2]~20\ & VCC)) # (!\Mult0|auto_generated|le4a\(1) & (!\s_reg5[2]~20\)))) # (!\Mult0|auto_generated|op_1~2_combout\ & 
-- ((\Mult0|auto_generated|le4a\(1) & (!\s_reg5[2]~20\)) # (!\Mult0|auto_generated|le4a\(1) & ((\s_reg5[2]~20\) # (GND)))))
-- \s_reg5[3]~22\ = CARRY((\Mult0|auto_generated|op_1~2_combout\ & (!\Mult0|auto_generated|le4a\(1) & !\s_reg5[2]~20\)) # (!\Mult0|auto_generated|op_1~2_combout\ & ((!\s_reg5[2]~20\) # (!\Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~2_combout\,
	datab => \Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \s_reg5[2]~20\,
	combout => \s_reg5[3]~21_combout\,
	cout => \s_reg5[3]~22\);

-- Location: FF_X45_Y3_N9
\s_reg5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg5[3]~21_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg5(3));

-- Location: LCCOMB_X48_Y3_N20
\Mult0|auto_generated|le5a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(0) = LCELL((\s_nPontos[0]~0_combout\ & (s_reg8(2) & ((s_reg8(0)) # (s_reg8(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nPontos[0]~0_combout\,
	datab => s_reg8(2),
	datac => s_reg8(0),
	datad => s_reg8(1),
	combout => \Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X47_Y3_N6
\Mult0|auto_generated|le3a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(4) = LCELL((s_reg8(0) & (!s_reg8(1) & ((!\s_nPontos[3]~3_combout\)))) # (!s_reg8(0) & (s_reg8(1) $ ((\s_nPontos[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_reg8(1),
	datab => \s_nPontos[4]~4_combout\,
	datac => s_reg8(0),
	datad => \s_nPontos[3]~3_combout\,
	combout => \Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X47_Y3_N12
\Mult0|auto_generated|le4a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(2) = LCELL((\Mult0|auto_generated|_~36_combout\ & (\s_nPontos[2]~2_combout\ $ (((\Mult0|auto_generated|cs2a[1]~0_combout\))))) # (!\Mult0|auto_generated|_~36_combout\ & (((!\s_nPontos[1]~1_combout\ & 
-- \Mult0|auto_generated|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nPontos[2]~2_combout\,
	datab => \s_nPontos[1]~1_combout\,
	datac => \Mult0|auto_generated|_~36_combout\,
	datad => \Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X46_Y3_N8
\Mult0|auto_generated|op_1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~4_combout\ = ((\Mult0|auto_generated|le3a\(4) $ (\Mult0|auto_generated|le4a\(2) $ (!\Mult0|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|auto_generated|op_1~5\ = CARRY((\Mult0|auto_generated|le3a\(4) & ((\Mult0|auto_generated|le4a\(2)) # (!\Mult0|auto_generated|op_1~3\))) # (!\Mult0|auto_generated|le3a\(4) & (\Mult0|auto_generated|le4a\(2) & !\Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(4),
	datab => \Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~3\,
	combout => \Mult0|auto_generated|op_1~4_combout\,
	cout => \Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X45_Y3_N10
\s_reg5[4]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg5[4]~23_combout\ = ((\Mult0|auto_generated|le5a\(0) $ (\Mult0|auto_generated|op_1~4_combout\ $ (!\s_reg5[3]~22\)))) # (GND)
-- \s_reg5[4]~24\ = CARRY((\Mult0|auto_generated|le5a\(0) & ((\Mult0|auto_generated|op_1~4_combout\) # (!\s_reg5[3]~22\))) # (!\Mult0|auto_generated|le5a\(0) & (\Mult0|auto_generated|op_1~4_combout\ & !\s_reg5[3]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(0),
	datab => \Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \s_reg5[3]~22\,
	combout => \s_reg5[4]~23_combout\,
	cout => \s_reg5[4]~24\);

-- Location: FF_X45_Y3_N11
\s_reg5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg5[4]~23_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg5(4));

-- Location: LCCOMB_X44_Y3_N12
\Mult0|auto_generated|le5a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(1) = LCELL((\s_nPontos[1]~1_combout\ & (s_reg8(2) & ((s_reg8(0)) # (s_reg8(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nPontos[1]~1_combout\,
	datab => s_reg8(0),
	datac => s_reg8(2),
	datad => s_reg8(1),
	combout => \Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X47_Y3_N30
\Mult0|auto_generated|le4a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(3) = LCELL((\Mult0|auto_generated|_~36_combout\ & (\s_nPontos[3]~3_combout\ $ (((\Mult0|auto_generated|cs2a[1]~0_combout\))))) # (!\Mult0|auto_generated|_~36_combout\ & (((!\s_nPontos[2]~2_combout\ & 
-- \Mult0|auto_generated|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nPontos[3]~3_combout\,
	datab => \s_nPontos[2]~2_combout\,
	datac => \Mult0|auto_generated|_~36_combout\,
	datad => \Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X47_Y3_N16
\Mult0|auto_generated|le3a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(5) = LCELL((s_reg8(0) & (!s_reg8(1) & (!\s_nPontos[4]~4_combout\))) # (!s_reg8(0) & (s_reg8(1) $ (((\s_nPontos[5]~5_combout\))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_reg8(1),
	datab => \s_nPontos[4]~4_combout\,
	datac => s_reg8(0),
	datad => \s_nPontos[5]~5_combout\,
	combout => \Mult0|auto_generated|le3a\(5));

-- Location: LCCOMB_X46_Y3_N10
\Mult0|auto_generated|op_1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~6_combout\ = (\Mult0|auto_generated|le4a\(3) & ((\Mult0|auto_generated|le3a\(5) & (\Mult0|auto_generated|op_1~5\ & VCC)) # (!\Mult0|auto_generated|le3a\(5) & (!\Mult0|auto_generated|op_1~5\)))) # (!\Mult0|auto_generated|le4a\(3) 
-- & ((\Mult0|auto_generated|le3a\(5) & (!\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|le3a\(5) & ((\Mult0|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|auto_generated|op_1~7\ = CARRY((\Mult0|auto_generated|le4a\(3) & (!\Mult0|auto_generated|le3a\(5) & !\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|le4a\(3) & ((!\Mult0|auto_generated|op_1~5\) # (!\Mult0|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(3),
	datab => \Mult0|auto_generated|le3a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~5\,
	combout => \Mult0|auto_generated|op_1~6_combout\,
	cout => \Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X45_Y3_N12
\s_reg5[5]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg5[5]~25_combout\ = (\Mult0|auto_generated|le5a\(1) & ((\Mult0|auto_generated|op_1~6_combout\ & (\s_reg5[4]~24\ & VCC)) # (!\Mult0|auto_generated|op_1~6_combout\ & (!\s_reg5[4]~24\)))) # (!\Mult0|auto_generated|le5a\(1) & 
-- ((\Mult0|auto_generated|op_1~6_combout\ & (!\s_reg5[4]~24\)) # (!\Mult0|auto_generated|op_1~6_combout\ & ((\s_reg5[4]~24\) # (GND)))))
-- \s_reg5[5]~26\ = CARRY((\Mult0|auto_generated|le5a\(1) & (!\Mult0|auto_generated|op_1~6_combout\ & !\s_reg5[4]~24\)) # (!\Mult0|auto_generated|le5a\(1) & ((!\s_reg5[4]~24\) # (!\Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(1),
	datab => \Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \s_reg5[4]~24\,
	combout => \s_reg5[5]~25_combout\,
	cout => \s_reg5[5]~26\);

-- Location: FF_X45_Y3_N13
\s_reg5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg5[5]~25_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg5(5));

-- Location: LCCOMB_X44_Y3_N2
\Mult0|auto_generated|le5a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(2) = LCELL((\s_nPontos[2]~2_combout\ & (s_reg8(2) & ((s_reg8(1)) # (s_reg8(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nPontos[2]~2_combout\,
	datab => s_reg8(2),
	datac => s_reg8(1),
	datad => s_reg8(0),
	combout => \Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X47_Y3_N18
\Mult0|auto_generated|le3a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(6) = LCELL((s_reg8(0) & (!s_reg8(1) & ((!\s_nPontos[5]~5_combout\)))) # (!s_reg8(0) & (s_reg8(1) $ ((\s_nPontos[6]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_reg8(1),
	datab => \s_nPontos[6]~6_combout\,
	datac => s_reg8(0),
	datad => \s_nPontos[5]~5_combout\,
	combout => \Mult0|auto_generated|le3a\(6));

-- Location: LCCOMB_X47_Y3_N0
\Mult0|auto_generated|le4a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(4) = LCELL((\Mult0|auto_generated|_~36_combout\ & ((\s_nPontos[4]~4_combout\ $ (\Mult0|auto_generated|cs2a[1]~0_combout\)))) # (!\Mult0|auto_generated|_~36_combout\ & (!\s_nPontos[3]~3_combout\ & 
-- ((\Mult0|auto_generated|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nPontos[3]~3_combout\,
	datab => \s_nPontos[4]~4_combout\,
	datac => \Mult0|auto_generated|_~36_combout\,
	datad => \Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X46_Y3_N12
\Mult0|auto_generated|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~8_combout\ = ((\Mult0|auto_generated|le3a\(6) $ (\Mult0|auto_generated|le4a\(4) $ (!\Mult0|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|auto_generated|op_1~9\ = CARRY((\Mult0|auto_generated|le3a\(6) & ((\Mult0|auto_generated|le4a\(4)) # (!\Mult0|auto_generated|op_1~7\))) # (!\Mult0|auto_generated|le3a\(6) & (\Mult0|auto_generated|le4a\(4) & !\Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(6),
	datab => \Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~7\,
	combout => \Mult0|auto_generated|op_1~8_combout\,
	cout => \Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X45_Y3_N14
\s_reg5[6]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg5[6]~27_combout\ = ((\Mult0|auto_generated|le5a\(2) $ (\Mult0|auto_generated|op_1~8_combout\ $ (!\s_reg5[5]~26\)))) # (GND)
-- \s_reg5[6]~28\ = CARRY((\Mult0|auto_generated|le5a\(2) & ((\Mult0|auto_generated|op_1~8_combout\) # (!\s_reg5[5]~26\))) # (!\Mult0|auto_generated|le5a\(2) & (\Mult0|auto_generated|op_1~8_combout\ & !\s_reg5[5]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(2),
	datab => \Mult0|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \s_reg5[5]~26\,
	combout => \s_reg5[6]~27_combout\,
	cout => \s_reg5[6]~28\);

-- Location: FF_X45_Y3_N15
\s_reg5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg5[6]~27_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg5(6));

-- Location: LCCOMB_X44_Y3_N0
\Mult0|auto_generated|le5a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(3) = LCELL((s_reg8(2) & (\s_nPontos[3]~3_combout\ & ((s_reg8(1)) # (s_reg8(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_reg8(1),
	datab => s_reg8(2),
	datac => \s_nPontos[3]~3_combout\,
	datad => s_reg8(0),
	combout => \Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X47_Y3_N10
\Mult0|auto_generated|le3a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(7) = LCELL((s_reg8(0) & (((!\s_nPontos[6]~6_combout\ & !s_reg8(1))))) # (!s_reg8(0) & (\s_nPontos[7]~7_combout\ $ (((s_reg8(1)))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nPontos[7]~7_combout\,
	datab => \s_nPontos[6]~6_combout\,
	datac => s_reg8(1),
	datad => s_reg8(0),
	combout => \Mult0|auto_generated|le3a\(7));

-- Location: LCCOMB_X47_Y3_N26
\Mult0|auto_generated|le4a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(5) = LCELL((\Mult0|auto_generated|_~36_combout\ & (\s_nPontos[5]~5_combout\ $ (((\Mult0|auto_generated|cs2a[1]~0_combout\))))) # (!\Mult0|auto_generated|_~36_combout\ & (((!\s_nPontos[4]~4_combout\ & 
-- \Mult0|auto_generated|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nPontos[5]~5_combout\,
	datab => \s_nPontos[4]~4_combout\,
	datac => \Mult0|auto_generated|_~36_combout\,
	datad => \Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X46_Y3_N14
\Mult0|auto_generated|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~10_combout\ = (\Mult0|auto_generated|le3a\(7) & ((\Mult0|auto_generated|le4a\(5) & (\Mult0|auto_generated|op_1~9\ & VCC)) # (!\Mult0|auto_generated|le4a\(5) & (!\Mult0|auto_generated|op_1~9\)))) # 
-- (!\Mult0|auto_generated|le3a\(7) & ((\Mult0|auto_generated|le4a\(5) & (!\Mult0|auto_generated|op_1~9\)) # (!\Mult0|auto_generated|le4a\(5) & ((\Mult0|auto_generated|op_1~9\) # (GND)))))
-- \Mult0|auto_generated|op_1~11\ = CARRY((\Mult0|auto_generated|le3a\(7) & (!\Mult0|auto_generated|le4a\(5) & !\Mult0|auto_generated|op_1~9\)) # (!\Mult0|auto_generated|le3a\(7) & ((!\Mult0|auto_generated|op_1~9\) # (!\Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(7),
	datab => \Mult0|auto_generated|le4a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~9\,
	combout => \Mult0|auto_generated|op_1~10_combout\,
	cout => \Mult0|auto_generated|op_1~11\);

-- Location: LCCOMB_X45_Y3_N16
\s_reg5[7]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg5[7]~29_combout\ = (\Mult0|auto_generated|le5a\(3) & ((\Mult0|auto_generated|op_1~10_combout\ & (\s_reg5[6]~28\ & VCC)) # (!\Mult0|auto_generated|op_1~10_combout\ & (!\s_reg5[6]~28\)))) # (!\Mult0|auto_generated|le5a\(3) & 
-- ((\Mult0|auto_generated|op_1~10_combout\ & (!\s_reg5[6]~28\)) # (!\Mult0|auto_generated|op_1~10_combout\ & ((\s_reg5[6]~28\) # (GND)))))
-- \s_reg5[7]~30\ = CARRY((\Mult0|auto_generated|le5a\(3) & (!\Mult0|auto_generated|op_1~10_combout\ & !\s_reg5[6]~28\)) # (!\Mult0|auto_generated|le5a\(3) & ((!\s_reg5[6]~28\) # (!\Mult0|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(3),
	datab => \Mult0|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \s_reg5[6]~28\,
	combout => \s_reg5[7]~29_combout\,
	cout => \s_reg5[7]~30\);

-- Location: FF_X45_Y3_N17
\s_reg5[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg5[7]~29_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg5(7));

-- Location: LCCOMB_X44_Y3_N26
\Mult0|auto_generated|le5a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(4) = LCELL((\s_nPontos[4]~4_combout\ & (s_reg8(2) & ((s_reg8(1)) # (s_reg8(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nPontos[4]~4_combout\,
	datab => s_reg8(2),
	datac => s_reg8(1),
	datad => s_reg8(0),
	combout => \Mult0|auto_generated|le5a\(4));

-- Location: LCCOMB_X47_Y3_N20
\Mult0|auto_generated|le4a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(6) = LCELL((\Mult0|auto_generated|_~36_combout\ & ((\s_nPontos[6]~6_combout\ $ (\Mult0|auto_generated|cs2a[1]~0_combout\)))) # (!\Mult0|auto_generated|_~36_combout\ & (!\s_nPontos[5]~5_combout\ & 
-- ((\Mult0|auto_generated|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nPontos[5]~5_combout\,
	datab => \s_nPontos[6]~6_combout\,
	datac => \Mult0|auto_generated|_~36_combout\,
	datad => \Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(6));

-- Location: LCCOMB_X47_Y3_N8
\Mult0|auto_generated|le3a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(8) = LCELL((s_reg8(0) & (!\s_nPontos[7]~7_combout\ & ((!s_reg8(1))))) # (!s_reg8(0) & ((\s_nPontos[8]~8_combout\ $ (s_reg8(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nPontos[7]~7_combout\,
	datab => \s_nPontos[8]~8_combout\,
	datac => s_reg8(0),
	datad => s_reg8(1),
	combout => \Mult0|auto_generated|le3a\(8));

-- Location: LCCOMB_X46_Y3_N16
\Mult0|auto_generated|op_1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~12_combout\ = ((\Mult0|auto_generated|le4a\(6) $ (\Mult0|auto_generated|le3a\(8) $ (!\Mult0|auto_generated|op_1~11\)))) # (GND)
-- \Mult0|auto_generated|op_1~13\ = CARRY((\Mult0|auto_generated|le4a\(6) & ((\Mult0|auto_generated|le3a\(8)) # (!\Mult0|auto_generated|op_1~11\))) # (!\Mult0|auto_generated|le4a\(6) & (\Mult0|auto_generated|le3a\(8) & !\Mult0|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(6),
	datab => \Mult0|auto_generated|le3a\(8),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~11\,
	combout => \Mult0|auto_generated|op_1~12_combout\,
	cout => \Mult0|auto_generated|op_1~13\);

-- Location: LCCOMB_X45_Y3_N18
\s_reg5[8]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg5[8]~31_combout\ = ((\Mult0|auto_generated|le5a\(4) $ (\Mult0|auto_generated|op_1~12_combout\ $ (!\s_reg5[7]~30\)))) # (GND)
-- \s_reg5[8]~32\ = CARRY((\Mult0|auto_generated|le5a\(4) & ((\Mult0|auto_generated|op_1~12_combout\) # (!\s_reg5[7]~30\))) # (!\Mult0|auto_generated|le5a\(4) & (\Mult0|auto_generated|op_1~12_combout\ & !\s_reg5[7]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(4),
	datab => \Mult0|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \s_reg5[7]~30\,
	combout => \s_reg5[8]~31_combout\,
	cout => \s_reg5[8]~32\);

-- Location: FF_X45_Y3_N19
\s_reg5[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg5[8]~31_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg5(8));

-- Location: LCCOMB_X44_Y3_N20
\Mult0|auto_generated|le5a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(5) = LCELL((\s_nPontos[5]~5_combout\ & (s_reg8(2) & ((s_reg8(1)) # (s_reg8(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nPontos[5]~5_combout\,
	datab => s_reg8(1),
	datac => s_reg8(2),
	datad => s_reg8(0),
	combout => \Mult0|auto_generated|le5a\(5));

-- Location: LCCOMB_X46_Y3_N30
\Mult0|auto_generated|le3a[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(9) = LCELL((s_reg8(0) & (((!\s_nPontos[8]~8_combout\ & !s_reg8(1))))) # (!s_reg8(0) & (\s_nPontos[9]~9_combout\ $ (((s_reg8(1)))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nPontos[9]~9_combout\,
	datab => \s_nPontos[8]~8_combout\,
	datac => s_reg8(1),
	datad => s_reg8(0),
	combout => \Mult0|auto_generated|le3a\(9));

-- Location: LCCOMB_X47_Y3_N14
\Mult0|auto_generated|le4a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(7) = LCELL((\Mult0|auto_generated|_~36_combout\ & (\s_nPontos[7]~7_combout\ $ (((\Mult0|auto_generated|cs2a[1]~0_combout\))))) # (!\Mult0|auto_generated|_~36_combout\ & (((!\s_nPontos[6]~6_combout\ & 
-- \Mult0|auto_generated|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nPontos[7]~7_combout\,
	datab => \s_nPontos[6]~6_combout\,
	datac => \Mult0|auto_generated|_~36_combout\,
	datad => \Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(7));

-- Location: LCCOMB_X46_Y3_N18
\Mult0|auto_generated|op_1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~14_combout\ = (\Mult0|auto_generated|le3a\(9) & ((\Mult0|auto_generated|le4a\(7) & (\Mult0|auto_generated|op_1~13\ & VCC)) # (!\Mult0|auto_generated|le4a\(7) & (!\Mult0|auto_generated|op_1~13\)))) # 
-- (!\Mult0|auto_generated|le3a\(9) & ((\Mult0|auto_generated|le4a\(7) & (!\Mult0|auto_generated|op_1~13\)) # (!\Mult0|auto_generated|le4a\(7) & ((\Mult0|auto_generated|op_1~13\) # (GND)))))
-- \Mult0|auto_generated|op_1~15\ = CARRY((\Mult0|auto_generated|le3a\(9) & (!\Mult0|auto_generated|le4a\(7) & !\Mult0|auto_generated|op_1~13\)) # (!\Mult0|auto_generated|le3a\(9) & ((!\Mult0|auto_generated|op_1~13\) # (!\Mult0|auto_generated|le4a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(9),
	datab => \Mult0|auto_generated|le4a\(7),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~13\,
	combout => \Mult0|auto_generated|op_1~14_combout\,
	cout => \Mult0|auto_generated|op_1~15\);

-- Location: LCCOMB_X45_Y3_N20
\s_reg5[9]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg5[9]~33_combout\ = (\Mult0|auto_generated|le5a\(5) & ((\Mult0|auto_generated|op_1~14_combout\ & (\s_reg5[8]~32\ & VCC)) # (!\Mult0|auto_generated|op_1~14_combout\ & (!\s_reg5[8]~32\)))) # (!\Mult0|auto_generated|le5a\(5) & 
-- ((\Mult0|auto_generated|op_1~14_combout\ & (!\s_reg5[8]~32\)) # (!\Mult0|auto_generated|op_1~14_combout\ & ((\s_reg5[8]~32\) # (GND)))))
-- \s_reg5[9]~34\ = CARRY((\Mult0|auto_generated|le5a\(5) & (!\Mult0|auto_generated|op_1~14_combout\ & !\s_reg5[8]~32\)) # (!\Mult0|auto_generated|le5a\(5) & ((!\s_reg5[8]~32\) # (!\Mult0|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(5),
	datab => \Mult0|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \s_reg5[8]~32\,
	combout => \s_reg5[9]~33_combout\,
	cout => \s_reg5[9]~34\);

-- Location: FF_X45_Y3_N21
\s_reg5[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg5[9]~33_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg5(9));

-- Location: LCCOMB_X48_Y3_N22
\Mult0|auto_generated|le3a[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(10) = LCELL((s_reg8(0) & (!\s_nPontos[9]~9_combout\ & ((!s_reg8(1))))) # (!s_reg8(0) & ((\nPontos[10]~input_o\ $ (s_reg8(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_reg8(0),
	datab => \s_nPontos[9]~9_combout\,
	datac => \nPontos[10]~input_o\,
	datad => s_reg8(1),
	combout => \Mult0|auto_generated|le3a\(10));

-- Location: LCCOMB_X47_Y3_N28
\Mult0|auto_generated|le4a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(8) = LCELL((\Mult0|auto_generated|_~36_combout\ & ((\s_nPontos[8]~8_combout\ $ (\Mult0|auto_generated|cs2a[1]~0_combout\)))) # (!\Mult0|auto_generated|_~36_combout\ & (!\s_nPontos[7]~7_combout\ & 
-- ((\Mult0|auto_generated|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nPontos[7]~7_combout\,
	datab => \s_nPontos[8]~8_combout\,
	datac => \Mult0|auto_generated|_~36_combout\,
	datad => \Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(8));

-- Location: LCCOMB_X46_Y3_N20
\Mult0|auto_generated|op_1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~16_combout\ = ((\Mult0|auto_generated|le3a\(10) $ (\Mult0|auto_generated|le4a\(8) $ (!\Mult0|auto_generated|op_1~15\)))) # (GND)
-- \Mult0|auto_generated|op_1~17\ = CARRY((\Mult0|auto_generated|le3a\(10) & ((\Mult0|auto_generated|le4a\(8)) # (!\Mult0|auto_generated|op_1~15\))) # (!\Mult0|auto_generated|le3a\(10) & (\Mult0|auto_generated|le4a\(8) & !\Mult0|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(10),
	datab => \Mult0|auto_generated|le4a\(8),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~15\,
	combout => \Mult0|auto_generated|op_1~16_combout\,
	cout => \Mult0|auto_generated|op_1~17\);

-- Location: LCCOMB_X44_Y3_N30
\Mult0|auto_generated|le5a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(6) = LCELL((s_reg8(2) & (\s_nPontos[6]~6_combout\ & ((s_reg8(1)) # (s_reg8(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_reg8(2),
	datab => s_reg8(1),
	datac => \s_nPontos[6]~6_combout\,
	datad => s_reg8(0),
	combout => \Mult0|auto_generated|le5a\(6));

-- Location: LCCOMB_X45_Y3_N22
\s_reg5[10]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg5[10]~35_combout\ = ((\Mult0|auto_generated|op_1~16_combout\ $ (\Mult0|auto_generated|le5a\(6) $ (!\s_reg5[9]~34\)))) # (GND)
-- \s_reg5[10]~36\ = CARRY((\Mult0|auto_generated|op_1~16_combout\ & ((\Mult0|auto_generated|le5a\(6)) # (!\s_reg5[9]~34\))) # (!\Mult0|auto_generated|op_1~16_combout\ & (\Mult0|auto_generated|le5a\(6) & !\s_reg5[9]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~16_combout\,
	datab => \Mult0|auto_generated|le5a\(6),
	datad => VCC,
	cin => \s_reg5[9]~34\,
	combout => \s_reg5[10]~35_combout\,
	cout => \s_reg5[10]~36\);

-- Location: FF_X45_Y3_N23
\s_reg5[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg5[10]~35_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg5(10));

-- Location: LCCOMB_X44_Y3_N16
\Mult0|auto_generated|le5a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(7) = LCELL((s_reg8(2) & (\s_nPontos[7]~7_combout\ & ((s_reg8(1)) # (s_reg8(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_reg8(2),
	datab => s_reg8(1),
	datac => \s_nPontos[7]~7_combout\,
	datad => s_reg8(0),
	combout => \Mult0|auto_generated|le5a\(7));

-- Location: LCCOMB_X48_Y3_N2
\Mult0|auto_generated|le3a[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(11) = LCELL((s_reg8(0) & (((!\nPontos[10]~input_o\ & !s_reg8(1))))) # (!s_reg8(0) & (\nPontos[11]~input_o\ $ (((s_reg8(1)))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_reg8(0),
	datab => \nPontos[11]~input_o\,
	datac => \nPontos[10]~input_o\,
	datad => s_reg8(1),
	combout => \Mult0|auto_generated|le3a\(11));

-- Location: LCCOMB_X46_Y3_N0
\Mult0|auto_generated|le4a[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(9) = LCELL((\Mult0|auto_generated|_~36_combout\ & (\Mult0|auto_generated|cs2a[1]~0_combout\ $ (((\s_nPontos[9]~9_combout\))))) # (!\Mult0|auto_generated|_~36_combout\ & (\Mult0|auto_generated|cs2a[1]~0_combout\ & 
-- (!\s_nPontos[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \s_nPontos[8]~8_combout\,
	datac => \s_nPontos[9]~9_combout\,
	datad => \Mult0|auto_generated|_~36_combout\,
	combout => \Mult0|auto_generated|le4a\(9));

-- Location: LCCOMB_X46_Y3_N22
\Mult0|auto_generated|op_1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~18_combout\ = (\Mult0|auto_generated|le3a\(11) & ((\Mult0|auto_generated|le4a\(9) & (\Mult0|auto_generated|op_1~17\ & VCC)) # (!\Mult0|auto_generated|le4a\(9) & (!\Mult0|auto_generated|op_1~17\)))) # 
-- (!\Mult0|auto_generated|le3a\(11) & ((\Mult0|auto_generated|le4a\(9) & (!\Mult0|auto_generated|op_1~17\)) # (!\Mult0|auto_generated|le4a\(9) & ((\Mult0|auto_generated|op_1~17\) # (GND)))))
-- \Mult0|auto_generated|op_1~19\ = CARRY((\Mult0|auto_generated|le3a\(11) & (!\Mult0|auto_generated|le4a\(9) & !\Mult0|auto_generated|op_1~17\)) # (!\Mult0|auto_generated|le3a\(11) & ((!\Mult0|auto_generated|op_1~17\) # (!\Mult0|auto_generated|le4a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(11),
	datab => \Mult0|auto_generated|le4a\(9),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~17\,
	combout => \Mult0|auto_generated|op_1~18_combout\,
	cout => \Mult0|auto_generated|op_1~19\);

-- Location: LCCOMB_X45_Y3_N24
\s_reg5[11]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg5[11]~37_combout\ = (\Mult0|auto_generated|le5a\(7) & ((\Mult0|auto_generated|op_1~18_combout\ & (\s_reg5[10]~36\ & VCC)) # (!\Mult0|auto_generated|op_1~18_combout\ & (!\s_reg5[10]~36\)))) # (!\Mult0|auto_generated|le5a\(7) & 
-- ((\Mult0|auto_generated|op_1~18_combout\ & (!\s_reg5[10]~36\)) # (!\Mult0|auto_generated|op_1~18_combout\ & ((\s_reg5[10]~36\) # (GND)))))
-- \s_reg5[11]~38\ = CARRY((\Mult0|auto_generated|le5a\(7) & (!\Mult0|auto_generated|op_1~18_combout\ & !\s_reg5[10]~36\)) # (!\Mult0|auto_generated|le5a\(7) & ((!\s_reg5[10]~36\) # (!\Mult0|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(7),
	datab => \Mult0|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \s_reg5[10]~36\,
	combout => \s_reg5[11]~37_combout\,
	cout => \s_reg5[11]~38\);

-- Location: FF_X45_Y3_N25
\s_reg5[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg5[11]~37_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg5(11));

-- Location: LCCOMB_X48_Y3_N24
\Mult0|auto_generated|le3a[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(12) = LCELL((s_reg8(0) & (!\nPontos[11]~input_o\ & ((!s_reg8(1))))) # (!s_reg8(0) & ((\nPontos[12]~input_o\ $ (s_reg8(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nPontos[11]~input_o\,
	datab => \nPontos[12]~input_o\,
	datac => s_reg8(1),
	datad => s_reg8(0),
	combout => \Mult0|auto_generated|le3a\(12));

-- Location: LCCOMB_X46_Y3_N2
\Mult0|auto_generated|le4a[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(10) = LCELL((\Mult0|auto_generated|_~36_combout\ & ((\nPontos[10]~input_o\ $ (\Mult0|auto_generated|cs2a[1]~0_combout\)))) # (!\Mult0|auto_generated|_~36_combout\ & (!\s_nPontos[9]~9_combout\ & 
-- ((\Mult0|auto_generated|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|_~36_combout\,
	datab => \s_nPontos[9]~9_combout\,
	datac => \nPontos[10]~input_o\,
	datad => \Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(10));

-- Location: LCCOMB_X46_Y3_N24
\Mult0|auto_generated|op_1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~20_combout\ = ((\Mult0|auto_generated|le3a\(12) $ (\Mult0|auto_generated|le4a\(10) $ (!\Mult0|auto_generated|op_1~19\)))) # (GND)
-- \Mult0|auto_generated|op_1~21\ = CARRY((\Mult0|auto_generated|le3a\(12) & ((\Mult0|auto_generated|le4a\(10)) # (!\Mult0|auto_generated|op_1~19\))) # (!\Mult0|auto_generated|le3a\(12) & (\Mult0|auto_generated|le4a\(10) & !\Mult0|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(12),
	datab => \Mult0|auto_generated|le4a\(10),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~19\,
	combout => \Mult0|auto_generated|op_1~20_combout\,
	cout => \Mult0|auto_generated|op_1~21\);

-- Location: LCCOMB_X44_Y3_N14
\Mult0|auto_generated|le5a[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(8) = LCELL((s_reg8(2) & (\s_nPontos[8]~8_combout\ & ((s_reg8(1)) # (s_reg8(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_reg8(2),
	datab => s_reg8(1),
	datac => \s_nPontos[8]~8_combout\,
	datad => s_reg8(0),
	combout => \Mult0|auto_generated|le5a\(8));

-- Location: LCCOMB_X45_Y3_N26
\s_reg5[12]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg5[12]~39_combout\ = ((\Mult0|auto_generated|op_1~20_combout\ $ (\Mult0|auto_generated|le5a\(8) $ (!\s_reg5[11]~38\)))) # (GND)
-- \s_reg5[12]~40\ = CARRY((\Mult0|auto_generated|op_1~20_combout\ & ((\Mult0|auto_generated|le5a\(8)) # (!\s_reg5[11]~38\))) # (!\Mult0|auto_generated|op_1~20_combout\ & (\Mult0|auto_generated|le5a\(8) & !\s_reg5[11]~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~20_combout\,
	datab => \Mult0|auto_generated|le5a\(8),
	datad => VCC,
	cin => \s_reg5[11]~38\,
	combout => \s_reg5[12]~39_combout\,
	cout => \s_reg5[12]~40\);

-- Location: FF_X45_Y3_N27
\s_reg5[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg5[12]~39_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg5(12));

-- Location: LCCOMB_X48_Y3_N4
\Mult0|auto_generated|le5a[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(9) = LCELL((s_reg8(2) & (\s_nPontos[9]~9_combout\ & ((s_reg8(1)) # (s_reg8(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_reg8(1),
	datab => s_reg8(2),
	datac => \s_nPontos[9]~9_combout\,
	datad => s_reg8(0),
	combout => \Mult0|auto_generated|le5a\(9));

-- Location: LCCOMB_X48_Y3_N12
\Mult0|auto_generated|le4a[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(11) = LCELL((\Mult0|auto_generated|_~36_combout\ & (\Mult0|auto_generated|cs2a[1]~0_combout\ $ ((\nPontos[11]~input_o\)))) # (!\Mult0|auto_generated|_~36_combout\ & (\Mult0|auto_generated|cs2a[1]~0_combout\ & 
-- ((!\nPontos[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \nPontos[11]~input_o\,
	datac => \Mult0|auto_generated|_~36_combout\,
	datad => \nPontos[10]~input_o\,
	combout => \Mult0|auto_generated|le4a\(11));

-- Location: LCCOMB_X48_Y3_N30
\Mult0|auto_generated|le3a[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(13) = LCELL((s_reg8(0) & (!\nPontos[12]~input_o\ & ((!s_reg8(1))))) # (!s_reg8(0) & ((\nPontos[13]~input_o\ $ (s_reg8(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nPontos[12]~input_o\,
	datab => \nPontos[13]~input_o\,
	datac => s_reg8(1),
	datad => s_reg8(0),
	combout => \Mult0|auto_generated|le3a\(13));

-- Location: LCCOMB_X46_Y3_N26
\Mult0|auto_generated|op_1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~22_combout\ = (\Mult0|auto_generated|le4a\(11) & ((\Mult0|auto_generated|le3a\(13) & (\Mult0|auto_generated|op_1~21\ & VCC)) # (!\Mult0|auto_generated|le3a\(13) & (!\Mult0|auto_generated|op_1~21\)))) # 
-- (!\Mult0|auto_generated|le4a\(11) & ((\Mult0|auto_generated|le3a\(13) & (!\Mult0|auto_generated|op_1~21\)) # (!\Mult0|auto_generated|le3a\(13) & ((\Mult0|auto_generated|op_1~21\) # (GND)))))
-- \Mult0|auto_generated|op_1~23\ = CARRY((\Mult0|auto_generated|le4a\(11) & (!\Mult0|auto_generated|le3a\(13) & !\Mult0|auto_generated|op_1~21\)) # (!\Mult0|auto_generated|le4a\(11) & ((!\Mult0|auto_generated|op_1~21\) # 
-- (!\Mult0|auto_generated|le3a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(11),
	datab => \Mult0|auto_generated|le3a\(13),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~21\,
	combout => \Mult0|auto_generated|op_1~22_combout\,
	cout => \Mult0|auto_generated|op_1~23\);

-- Location: LCCOMB_X45_Y3_N28
\s_reg5[13]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg5[13]~41_combout\ = (\Mult0|auto_generated|le5a\(9) & ((\Mult0|auto_generated|op_1~22_combout\ & (\s_reg5[12]~40\ & VCC)) # (!\Mult0|auto_generated|op_1~22_combout\ & (!\s_reg5[12]~40\)))) # (!\Mult0|auto_generated|le5a\(9) & 
-- ((\Mult0|auto_generated|op_1~22_combout\ & (!\s_reg5[12]~40\)) # (!\Mult0|auto_generated|op_1~22_combout\ & ((\s_reg5[12]~40\) # (GND)))))
-- \s_reg5[13]~42\ = CARRY((\Mult0|auto_generated|le5a\(9) & (!\Mult0|auto_generated|op_1~22_combout\ & !\s_reg5[12]~40\)) # (!\Mult0|auto_generated|le5a\(9) & ((!\s_reg5[12]~40\) # (!\Mult0|auto_generated|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(9),
	datab => \Mult0|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \s_reg5[12]~40\,
	combout => \s_reg5[13]~41_combout\,
	cout => \s_reg5[13]~42\);

-- Location: FF_X45_Y3_N29
\s_reg5[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg5[13]~41_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg5(13));

-- Location: LCCOMB_X48_Y3_N6
\Mult0|auto_generated|le5a[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(10) = LCELL((s_reg8(2) & (\nPontos[10]~input_o\ & ((s_reg8(0)) # (s_reg8(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_reg8(0),
	datab => s_reg8(2),
	datac => \nPontos[10]~input_o\,
	datad => s_reg8(1),
	combout => \Mult0|auto_generated|le5a\(10));

-- Location: LCCOMB_X48_Y3_N18
\Mult0|auto_generated|le3a[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(14) = LCELL((s_reg8(0) & (((!s_reg8(1) & !\nPontos[13]~input_o\)))) # (!s_reg8(0) & (\nPontos[14]~input_o\ $ ((s_reg8(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nPontos[14]~input_o\,
	datab => s_reg8(0),
	datac => s_reg8(1),
	datad => \nPontos[13]~input_o\,
	combout => \Mult0|auto_generated|le3a\(14));

-- Location: LCCOMB_X48_Y3_N16
\Mult0|auto_generated|le4a[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(12) = LCELL((\Mult0|auto_generated|_~36_combout\ & (\Mult0|auto_generated|cs2a[1]~0_combout\ $ (((\nPontos[12]~input_o\))))) # (!\Mult0|auto_generated|_~36_combout\ & (\Mult0|auto_generated|cs2a[1]~0_combout\ & 
-- (!\nPontos[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \Mult0|auto_generated|_~36_combout\,
	datac => \nPontos[11]~input_o\,
	datad => \nPontos[12]~input_o\,
	combout => \Mult0|auto_generated|le4a\(12));

-- Location: LCCOMB_X46_Y3_N28
\Mult0|auto_generated|op_1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~24_combout\ = \Mult0|auto_generated|le3a\(14) $ (\Mult0|auto_generated|op_1~23\ $ (!\Mult0|auto_generated|le4a\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le3a\(14),
	datad => \Mult0|auto_generated|le4a\(12),
	cin => \Mult0|auto_generated|op_1~23\,
	combout => \Mult0|auto_generated|op_1~24_combout\);

-- Location: LCCOMB_X45_Y3_N30
\s_reg5[14]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_reg5[14]~43_combout\ = \Mult0|auto_generated|le5a\(10) $ (\s_reg5[13]~42\ $ (!\Mult0|auto_generated|op_1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(10),
	datad => \Mult0|auto_generated|op_1~24_combout\,
	cin => \s_reg5[13]~42\,
	combout => \s_reg5[14]~43_combout\);

-- Location: FF_X45_Y3_N31
\s_reg5[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_reg5[14]~43_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_reg5(14));

ww_reg1(0) <= \reg1[0]~output_o\;

ww_reg1(1) <= \reg1[1]~output_o\;

ww_reg1(2) <= \reg1[2]~output_o\;

ww_reg1(3) <= \reg1[3]~output_o\;

ww_reg1(4) <= \reg1[4]~output_o\;

ww_reg1(5) <= \reg1[5]~output_o\;

ww_reg1(6) <= \reg1[6]~output_o\;

ww_reg1(7) <= \reg1[7]~output_o\;

ww_reg1(8) <= \reg1[8]~output_o\;

ww_reg1(9) <= \reg1[9]~output_o\;

ww_reg2(0) <= \reg2[0]~output_o\;

ww_reg2(1) <= \reg2[1]~output_o\;

ww_reg2(2) <= \reg2[2]~output_o\;

ww_reg2(3) <= \reg2[3]~output_o\;

ww_reg2(4) <= \reg2[4]~output_o\;

ww_reg2(5) <= \reg2[5]~output_o\;

ww_reg2(6) <= \reg2[6]~output_o\;

ww_reg3(0) <= \reg3[0]~output_o\;

ww_reg3(1) <= \reg3[1]~output_o\;

ww_reg3(2) <= \reg3[2]~output_o\;

ww_reg3(3) <= \reg3[3]~output_o\;

ww_reg3(4) <= \reg3[4]~output_o\;

ww_reg3(5) <= \reg3[5]~output_o\;

ww_reg3(6) <= \reg3[6]~output_o\;

ww_reg3(7) <= \reg3[7]~output_o\;

ww_reg3(8) <= \reg3[8]~output_o\;

ww_reg3(9) <= \reg3[9]~output_o\;

ww_reg3(10) <= \reg3[10]~output_o\;

ww_reg3(11) <= \reg3[11]~output_o\;

ww_reg3(12) <= \reg3[12]~output_o\;

ww_reg3(13) <= \reg3[13]~output_o\;

ww_reg3(14) <= \reg3[14]~output_o\;

ww_reg5(0) <= \reg5[0]~output_o\;

ww_reg5(1) <= \reg5[1]~output_o\;

ww_reg5(2) <= \reg5[2]~output_o\;

ww_reg5(3) <= \reg5[3]~output_o\;

ww_reg5(4) <= \reg5[4]~output_o\;

ww_reg5(5) <= \reg5[5]~output_o\;

ww_reg5(6) <= \reg5[6]~output_o\;

ww_reg5(7) <= \reg5[7]~output_o\;

ww_reg5(8) <= \reg5[8]~output_o\;

ww_reg5(9) <= \reg5[9]~output_o\;

ww_reg5(10) <= \reg5[10]~output_o\;

ww_reg5(11) <= \reg5[11]~output_o\;

ww_reg5(12) <= \reg5[12]~output_o\;

ww_reg5(13) <= \reg5[13]~output_o\;

ww_reg5(14) <= \reg5[14]~output_o\;

ww_reg8(0) <= \reg8[0]~output_o\;

ww_reg8(1) <= \reg8[1]~output_o\;

ww_reg8(2) <= \reg8[2]~output_o\;
END structure;


