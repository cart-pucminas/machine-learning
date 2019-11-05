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

-- DATE "03/21/2017 15:41:08"

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

ENTITY 	Kmeans_MemoryInitialize IS
    PORT (
	clk : IN std_logic;
	nrst : IN std_logic;
	nPontos : IN std_logic_vector(13 DOWNTO 0);
	en_MemoryInitialize : IN std_logic;
	initAddr : IN std_logic_vector(14 DOWNTO 0);
	reg8 : IN std_logic_vector(1 DOWNTO 0);
	addr_Rom : OUT std_logic_vector(14 DOWNTO 0);
	addr_Ram : OUT std_logic_vector(14 DOWNTO 0);
	next_State : OUT std_logic_vector(3 DOWNTO 0)
	);
END Kmeans_MemoryInitialize;

-- Design Ports Information
-- addr_Rom[0]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Rom[1]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Rom[2]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Rom[3]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Rom[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Rom[5]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Rom[6]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Rom[7]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Rom[8]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Rom[9]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Rom[10]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Rom[11]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Rom[12]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Rom[13]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Rom[14]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram[0]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram[1]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram[2]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram[3]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram[4]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram[5]	=>  Location: PIN_AJ28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram[6]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram[7]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram[8]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram[9]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram[10]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram[11]	=>  Location: PIN_AK25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram[12]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram[13]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_Ram[14]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_State[0]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_State[1]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_State[2]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_State[3]	=>  Location: PIN_AJ18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[0]	=>  Location: PIN_T30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nrst	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_MemoryInitialize	=>  Location: PIN_T29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[1]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[2]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[3]	=>  Location: PIN_AJ30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[4]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[5]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[6]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[7]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[8]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[9]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[10]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[11]	=>  Location: PIN_AG29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[12]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[13]	=>  Location: PIN_AA27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[14]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[13]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg8[0]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[12]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg8[1]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[11]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[10]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[9]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[8]	=>  Location: PIN_AG24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[7]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[6]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[5]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[4]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[3]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[2]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[1]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[0]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Kmeans_MemoryInitialize IS
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
SIGNAL ww_nPontos : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_en_MemoryInitialize : std_logic;
SIGNAL ww_initAddr : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_reg8 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_addr_Rom : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_addr_Ram : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_next_State : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \nrst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \addr_Rom[0]~output_o\ : std_logic;
SIGNAL \addr_Rom[1]~output_o\ : std_logic;
SIGNAL \addr_Rom[2]~output_o\ : std_logic;
SIGNAL \addr_Rom[3]~output_o\ : std_logic;
SIGNAL \addr_Rom[4]~output_o\ : std_logic;
SIGNAL \addr_Rom[5]~output_o\ : std_logic;
SIGNAL \addr_Rom[6]~output_o\ : std_logic;
SIGNAL \addr_Rom[7]~output_o\ : std_logic;
SIGNAL \addr_Rom[8]~output_o\ : std_logic;
SIGNAL \addr_Rom[9]~output_o\ : std_logic;
SIGNAL \addr_Rom[10]~output_o\ : std_logic;
SIGNAL \addr_Rom[11]~output_o\ : std_logic;
SIGNAL \addr_Rom[12]~output_o\ : std_logic;
SIGNAL \addr_Rom[13]~output_o\ : std_logic;
SIGNAL \addr_Rom[14]~output_o\ : std_logic;
SIGNAL \addr_Ram[0]~output_o\ : std_logic;
SIGNAL \addr_Ram[1]~output_o\ : std_logic;
SIGNAL \addr_Ram[2]~output_o\ : std_logic;
SIGNAL \addr_Ram[3]~output_o\ : std_logic;
SIGNAL \addr_Ram[4]~output_o\ : std_logic;
SIGNAL \addr_Ram[5]~output_o\ : std_logic;
SIGNAL \addr_Ram[6]~output_o\ : std_logic;
SIGNAL \addr_Ram[7]~output_o\ : std_logic;
SIGNAL \addr_Ram[8]~output_o\ : std_logic;
SIGNAL \addr_Ram[9]~output_o\ : std_logic;
SIGNAL \addr_Ram[10]~output_o\ : std_logic;
SIGNAL \addr_Ram[11]~output_o\ : std_logic;
SIGNAL \addr_Ram[12]~output_o\ : std_logic;
SIGNAL \addr_Ram[13]~output_o\ : std_logic;
SIGNAL \addr_Ram[14]~output_o\ : std_logic;
SIGNAL \next_State[0]~output_o\ : std_logic;
SIGNAL \next_State[1]~output_o\ : std_logic;
SIGNAL \next_State[2]~output_o\ : std_logic;
SIGNAL \next_State[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \initAddr[0]~input_o\ : std_logic;
SIGNAL \s_countData[0]~14_combout\ : std_logic;
SIGNAL \nrst~input_o\ : std_logic;
SIGNAL \nrst~inputclkctrl_outclk\ : std_logic;
SIGNAL \nPontos[13]~input_o\ : std_logic;
SIGNAL \reg8[0]~input_o\ : std_logic;
SIGNAL \reg8[1]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][13]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][13]~combout\ : std_logic;
SIGNAL \nPontos[12]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][12]~combout\ : std_logic;
SIGNAL \nPontos[11]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][11]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][12]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][11]~combout\ : std_logic;
SIGNAL \nPontos[10]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][10]~combout\ : std_logic;
SIGNAL \nPontos[9]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][9]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][10]~combout\ : std_logic;
SIGNAL \nPontos[8]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][8]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][9]~combout\ : std_logic;
SIGNAL \nPontos[7]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][7]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][8]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][7]~combout\ : std_logic;
SIGNAL \nPontos[6]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][6]~combout\ : std_logic;
SIGNAL \nPontos[5]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][5]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][6]~combout\ : std_logic;
SIGNAL \nPontos[4]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][4]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][5]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][4]~combout\ : std_logic;
SIGNAL \nPontos[3]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][3]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][3]~combout\ : std_logic;
SIGNAL \nPontos[2]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][2]~combout\ : std_logic;
SIGNAL \nPontos[1]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][1]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][2]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][1]~combout\ : std_logic;
SIGNAL \nPontos[0]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][0]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~27\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \s_countData[0]~15\ : std_logic;
SIGNAL \s_countData[1]~16_combout\ : std_logic;
SIGNAL \en_MemoryInitialize~input_o\ : std_logic;
SIGNAL \s_countData[1]~17\ : std_logic;
SIGNAL \s_countData[2]~18_combout\ : std_logic;
SIGNAL \s_countData[2]~19\ : std_logic;
SIGNAL \s_countData[3]~20_combout\ : std_logic;
SIGNAL \s_countData[3]~21\ : std_logic;
SIGNAL \s_countData[4]~22_combout\ : std_logic;
SIGNAL \s_countData[4]~23\ : std_logic;
SIGNAL \s_countData[5]~24_combout\ : std_logic;
SIGNAL \s_countData[5]~25\ : std_logic;
SIGNAL \s_countData[6]~26_combout\ : std_logic;
SIGNAL \s_countData[6]~27\ : std_logic;
SIGNAL \s_countData[7]~28_combout\ : std_logic;
SIGNAL \s_countData[7]~29\ : std_logic;
SIGNAL \s_countData[8]~30_combout\ : std_logic;
SIGNAL \s_countData[8]~31\ : std_logic;
SIGNAL \s_countData[9]~32_combout\ : std_logic;
SIGNAL \s_countData[9]~33\ : std_logic;
SIGNAL \s_countData[10]~34_combout\ : std_logic;
SIGNAL \s_countData[10]~35\ : std_logic;
SIGNAL \s_countData[11]~36_combout\ : std_logic;
SIGNAL \s_countData[11]~37\ : std_logic;
SIGNAL \s_countData[12]~38_combout\ : std_logic;
SIGNAL \s_countData[12]~39\ : std_logic;
SIGNAL \s_countData[13]~40_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][0]~combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~26_combout\ : std_logic;
SIGNAL \LessThan0~28_combout\ : std_logic;
SIGNAL \s_addr_Rom[0]~15_combout\ : std_logic;
SIGNAL \s_addr_Rom[0]~feeder_combout\ : std_logic;
SIGNAL \s_addr_Rom[0]~17_combout\ : std_logic;
SIGNAL \initAddr[1]~input_o\ : std_logic;
SIGNAL \s_addr_Rom[0]~16\ : std_logic;
SIGNAL \s_addr_Rom[1]~18_combout\ : std_logic;
SIGNAL \initAddr[2]~input_o\ : std_logic;
SIGNAL \s_addr_Rom[1]~19\ : std_logic;
SIGNAL \s_addr_Rom[2]~20_combout\ : std_logic;
SIGNAL \initAddr[3]~input_o\ : std_logic;
SIGNAL \s_addr_Rom[2]~21\ : std_logic;
SIGNAL \s_addr_Rom[3]~22_combout\ : std_logic;
SIGNAL \initAddr[4]~input_o\ : std_logic;
SIGNAL \s_addr_Rom[3]~23\ : std_logic;
SIGNAL \s_addr_Rom[4]~24_combout\ : std_logic;
SIGNAL \initAddr[5]~input_o\ : std_logic;
SIGNAL \s_addr_Rom[4]~25\ : std_logic;
SIGNAL \s_addr_Rom[5]~26_combout\ : std_logic;
SIGNAL \initAddr[6]~input_o\ : std_logic;
SIGNAL \s_addr_Rom[5]~27\ : std_logic;
SIGNAL \s_addr_Rom[6]~28_combout\ : std_logic;
SIGNAL \initAddr[7]~input_o\ : std_logic;
SIGNAL \s_addr_Rom[6]~29\ : std_logic;
SIGNAL \s_addr_Rom[7]~30_combout\ : std_logic;
SIGNAL \initAddr[8]~input_o\ : std_logic;
SIGNAL \s_addr_Rom[7]~31\ : std_logic;
SIGNAL \s_addr_Rom[8]~32_combout\ : std_logic;
SIGNAL \initAddr[9]~input_o\ : std_logic;
SIGNAL \s_addr_Rom[8]~33\ : std_logic;
SIGNAL \s_addr_Rom[9]~34_combout\ : std_logic;
SIGNAL \initAddr[10]~input_o\ : std_logic;
SIGNAL \s_addr_Rom[9]~35\ : std_logic;
SIGNAL \s_addr_Rom[10]~36_combout\ : std_logic;
SIGNAL \initAddr[11]~input_o\ : std_logic;
SIGNAL \s_addr_Rom[10]~37\ : std_logic;
SIGNAL \s_addr_Rom[11]~38_combout\ : std_logic;
SIGNAL \initAddr[12]~input_o\ : std_logic;
SIGNAL \s_addr_Rom[11]~39\ : std_logic;
SIGNAL \s_addr_Rom[12]~40_combout\ : std_logic;
SIGNAL \initAddr[13]~input_o\ : std_logic;
SIGNAL \s_addr_Rom[12]~41\ : std_logic;
SIGNAL \s_addr_Rom[13]~42_combout\ : std_logic;
SIGNAL \initAddr[14]~input_o\ : std_logic;
SIGNAL \s_addr_Rom[13]~43\ : std_logic;
SIGNAL \s_addr_Rom[14]~44_combout\ : std_logic;
SIGNAL \s_addr_Ram[0]~feeder_combout\ : std_logic;
SIGNAL \s_addr_Ram[1]~feeder_combout\ : std_logic;
SIGNAL \s_addr_Ram[2]~feeder_combout\ : std_logic;
SIGNAL \s_addr_Ram[3]~feeder_combout\ : std_logic;
SIGNAL \s_addr_Ram[4]~feeder_combout\ : std_logic;
SIGNAL \s_addr_Ram[5]~feeder_combout\ : std_logic;
SIGNAL \s_addr_Ram[6]~feeder_combout\ : std_logic;
SIGNAL \s_addr_Ram[7]~feeder_combout\ : std_logic;
SIGNAL \s_addr_Ram[8]~feeder_combout\ : std_logic;
SIGNAL \s_addr_Ram[9]~feeder_combout\ : std_logic;
SIGNAL \s_addr_Ram[10]~feeder_combout\ : std_logic;
SIGNAL \s_addr_Ram[11]~feeder_combout\ : std_logic;
SIGNAL \s_addr_Ram[12]~feeder_combout\ : std_logic;
SIGNAL \s_addr_Ram[13]~feeder_combout\ : std_logic;
SIGNAL \s_blockState[0]~feeder_combout\ : std_logic;
SIGNAL s_blockState : std_logic_vector(3 DOWNTO 0);
SIGNAL s_addr_Ram : std_logic_vector(14 DOWNTO 0);
SIGNAL s_countData : std_logic_vector(13 DOWNTO 0);
SIGNAL s_addr_Rom : std_logic_vector(14 DOWNTO 0);
SIGNAL ALT_INV_s_blockState : std_logic_vector(0 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_nrst <= nrst;
ww_nPontos <= nPontos;
ww_en_MemoryInitialize <= en_MemoryInitialize;
ww_initAddr <= initAddr;
ww_reg8 <= reg8;
addr_Rom <= ww_addr_Rom;
addr_Ram <= ww_addr_Ram;
next_State <= ww_next_State;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\nrst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \nrst~input_o\);
ALT_INV_s_blockState(0) <= NOT s_blockState(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X104_Y0_N9
\addr_Rom[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Rom(0),
	devoe => ww_devoe,
	o => \addr_Rom[0]~output_o\);

-- Location: IOOBUF_X117_Y5_N9
\addr_Rom[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Rom(1),
	devoe => ww_devoe,
	o => \addr_Rom[1]~output_o\);

-- Location: IOOBUF_X117_Y7_N2
\addr_Rom[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Rom(2),
	devoe => ww_devoe,
	o => \addr_Rom[2]~output_o\);

-- Location: IOOBUF_X113_Y0_N16
\addr_Rom[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Rom(3),
	devoe => ww_devoe,
	o => \addr_Rom[3]~output_o\);

-- Location: IOOBUF_X117_Y6_N9
\addr_Rom[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Rom(4),
	devoe => ww_devoe,
	o => \addr_Rom[4]~output_o\);

-- Location: IOOBUF_X117_Y7_N9
\addr_Rom[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Rom(5),
	devoe => ww_devoe,
	o => \addr_Rom[5]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\addr_Rom[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Rom(6),
	devoe => ww_devoe,
	o => \addr_Rom[6]~output_o\);

-- Location: IOOBUF_X115_Y0_N16
\addr_Rom[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Rom(7),
	devoe => ww_devoe,
	o => \addr_Rom[7]~output_o\);

-- Location: IOOBUF_X115_Y0_N23
\addr_Rom[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Rom(8),
	devoe => ww_devoe,
	o => \addr_Rom[8]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\addr_Rom[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Rom(9),
	devoe => ww_devoe,
	o => \addr_Rom[9]~output_o\);

-- Location: IOOBUF_X117_Y6_N2
\addr_Rom[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Rom(10),
	devoe => ww_devoe,
	o => \addr_Rom[10]~output_o\);

-- Location: IOOBUF_X90_Y0_N9
\addr_Rom[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Rom(11),
	devoe => ww_devoe,
	o => \addr_Rom[11]~output_o\);

-- Location: IOOBUF_X117_Y5_N2
\addr_Rom[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Rom(12),
	devoe => ww_devoe,
	o => \addr_Rom[12]~output_o\);

-- Location: IOOBUF_X117_Y8_N2
\addr_Rom[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Rom(13),
	devoe => ww_devoe,
	o => \addr_Rom[13]~output_o\);

-- Location: IOOBUF_X90_Y0_N2
\addr_Rom[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Rom(14),
	devoe => ww_devoe,
	o => \addr_Rom[14]~output_o\);

-- Location: IOOBUF_X117_Y8_N9
\addr_Ram[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Ram(0),
	devoe => ww_devoe,
	o => \addr_Ram[0]~output_o\);

-- Location: IOOBUF_X108_Y0_N2
\addr_Ram[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Ram(1),
	devoe => ww_devoe,
	o => \addr_Ram[1]~output_o\);

-- Location: IOOBUF_X88_Y0_N23
\addr_Ram[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Ram(2),
	devoe => ww_devoe,
	o => \addr_Ram[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\addr_Ram[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Ram(3),
	devoe => ww_devoe,
	o => \addr_Ram[3]~output_o\);

-- Location: IOOBUF_X108_Y0_N9
\addr_Ram[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Ram(4),
	devoe => ww_devoe,
	o => \addr_Ram[4]~output_o\);

-- Location: IOOBUF_X104_Y0_N2
\addr_Ram[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Ram(5),
	devoe => ww_devoe,
	o => \addr_Ram[5]~output_o\);

-- Location: IOOBUF_X117_Y10_N2
\addr_Ram[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Ram(6),
	devoe => ww_devoe,
	o => \addr_Ram[6]~output_o\);

-- Location: IOOBUF_X92_Y0_N9
\addr_Ram[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Ram(7),
	devoe => ww_devoe,
	o => \addr_Ram[7]~output_o\);

-- Location: IOOBUF_X88_Y0_N2
\addr_Ram[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Ram(8),
	devoe => ww_devoe,
	o => \addr_Ram[8]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\addr_Ram[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Ram(9),
	devoe => ww_devoe,
	o => \addr_Ram[9]~output_o\);

-- Location: IOOBUF_X92_Y0_N23
\addr_Ram[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Ram(10),
	devoe => ww_devoe,
	o => \addr_Ram[10]~output_o\);

-- Location: IOOBUF_X92_Y0_N2
\addr_Ram[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Ram(11),
	devoe => ww_devoe,
	o => \addr_Ram[11]~output_o\);

-- Location: IOOBUF_X113_Y0_N23
\addr_Ram[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Ram(12),
	devoe => ww_devoe,
	o => \addr_Ram[12]~output_o\);

-- Location: IOOBUF_X88_Y0_N9
\addr_Ram[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_addr_Ram(13),
	devoe => ww_devoe,
	o => \addr_Ram[13]~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\addr_Ram[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \addr_Ram[14]~output_o\);

-- Location: IOOBUF_X106_Y0_N9
\next_State[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_blockState(0),
	devoe => ww_devoe,
	o => \next_State[0]~output_o\);

-- Location: IOOBUF_X111_Y0_N16
\next_State[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_blockState(1),
	devoe => ww_devoe,
	o => \next_State[1]~output_o\);

-- Location: IOOBUF_X92_Y91_N2
\next_State[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \next_State[2]~output_o\);

-- Location: IOOBUF_X68_Y0_N9
\next_State[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \next_State[3]~output_o\);

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
\initAddr[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initAddr(0),
	o => \initAddr[0]~input_o\);

-- Location: LCCOMB_X111_Y4_N4
\s_countData[0]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_countData[0]~14_combout\ = s_countData(0) $ (VCC)
-- \s_countData[0]~15\ = CARRY(s_countData(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_countData(0),
	datad => VCC,
	combout => \s_countData[0]~14_combout\,
	cout => \s_countData[0]~15\);

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

-- Location: IOIBUF_X97_Y0_N1
\nPontos[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(13),
	o => \nPontos[13]~input_o\);

-- Location: IOIBUF_X106_Y0_N1
\reg8[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg8(0),
	o => \reg8[0]~input_o\);

-- Location: IOIBUF_X106_Y0_N15
\reg8[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg8(1),
	o => \reg8[1]~input_o\);

-- Location: LCCOMB_X109_Y4_N14
\Mult0|mult_core|decoder_node[1][13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][13]~combout\ = LCELL((\nPontos[13]~input_o\ & (\reg8[0]~input_o\ $ (\reg8[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nPontos[13]~input_o\,
	datac => \reg8[0]~input_o\,
	datad => \reg8[1]~input_o\,
	combout => \Mult0|mult_core|decoder_node[1][13]~combout\);

-- Location: LCCOMB_X109_Y4_N20
\Mult0|mult_core|decoder_node[0][13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][13]~combout\ = LCELL((\nPontos[13]~input_o\ & !\reg8[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nPontos[13]~input_o\,
	datac => \reg8[0]~input_o\,
	combout => \Mult0|mult_core|decoder_node[0][13]~combout\);

-- Location: IOIBUF_X92_Y0_N15
\nPontos[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(12),
	o => \nPontos[12]~input_o\);

-- Location: LCCOMB_X107_Y4_N28
\Mult0|mult_core|decoder_node[1][12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][12]~combout\ = LCELL((\nPontos[12]~input_o\ & (\reg8[0]~input_o\ $ (\reg8[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg8[0]~input_o\,
	datac => \nPontos[12]~input_o\,
	datad => \reg8[1]~input_o\,
	combout => \Mult0|mult_core|decoder_node[1][12]~combout\);

-- Location: IOIBUF_X99_Y0_N1
\nPontos[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(11),
	o => \nPontos[11]~input_o\);

-- Location: LCCOMB_X107_Y4_N8
\Mult0|mult_core|decoder_node[1][11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][11]~combout\ = LCELL((\nPontos[11]~input_o\ & (\reg8[0]~input_o\ $ (\reg8[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg8[0]~input_o\,
	datac => \nPontos[11]~input_o\,
	datad => \reg8[1]~input_o\,
	combout => \Mult0|mult_core|decoder_node[1][11]~combout\);

-- Location: LCCOMB_X107_Y4_N22
\Mult0|mult_core|decoder_node[0][12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][12]~combout\ = LCELL((\nPontos[12]~input_o\ & !\reg8[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nPontos[12]~input_o\,
	datad => \reg8[0]~input_o\,
	combout => \Mult0|mult_core|decoder_node[0][12]~combout\);

-- Location: LCCOMB_X107_Y4_N14
\Mult0|mult_core|decoder_node[0][11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][11]~combout\ = LCELL((\nPontos[11]~input_o\ & !\reg8[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nPontos[11]~input_o\,
	datad => \reg8[0]~input_o\,
	combout => \Mult0|mult_core|decoder_node[0][11]~combout\);

-- Location: IOIBUF_X95_Y0_N8
\nPontos[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(10),
	o => \nPontos[10]~input_o\);

-- Location: LCCOMB_X107_Y4_N20
\Mult0|mult_core|decoder_node[1][10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][10]~combout\ = LCELL((\nPontos[10]~input_o\ & (\reg8[0]~input_o\ $ (\reg8[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg8[0]~input_o\,
	datac => \nPontos[10]~input_o\,
	datad => \reg8[1]~input_o\,
	combout => \Mult0|mult_core|decoder_node[1][10]~combout\);

-- Location: IOIBUF_X104_Y0_N15
\nPontos[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(9),
	o => \nPontos[9]~input_o\);

-- Location: LCCOMB_X109_Y4_N2
\Mult0|mult_core|decoder_node[1][9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][9]~combout\ = LCELL((\nPontos[9]~input_o\ & (\reg8[0]~input_o\ $ (\reg8[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[0]~input_o\,
	datac => \nPontos[9]~input_o\,
	datad => \reg8[1]~input_o\,
	combout => \Mult0|mult_core|decoder_node[1][9]~combout\);

-- Location: LCCOMB_X107_Y4_N30
\Mult0|mult_core|decoder_node[0][10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][10]~combout\ = LCELL((\nPontos[10]~input_o\ & !\reg8[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nPontos[10]~input_o\,
	datad => \reg8[0]~input_o\,
	combout => \Mult0|mult_core|decoder_node[0][10]~combout\);

-- Location: IOIBUF_X104_Y0_N22
\nPontos[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(8),
	o => \nPontos[8]~input_o\);

-- Location: LCCOMB_X109_Y4_N6
\Mult0|mult_core|decoder_node[1][8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][8]~combout\ = LCELL((\nPontos[8]~input_o\ & (\reg8[0]~input_o\ $ (\reg8[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nPontos[8]~input_o\,
	datac => \reg8[0]~input_o\,
	datad => \reg8[1]~input_o\,
	combout => \Mult0|mult_core|decoder_node[1][8]~combout\);

-- Location: LCCOMB_X109_Y4_N12
\Mult0|mult_core|decoder_node[0][9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][9]~combout\ = LCELL((!\reg8[0]~input_o\ & \nPontos[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[0]~input_o\,
	datac => \nPontos[9]~input_o\,
	combout => \Mult0|mult_core|decoder_node[0][9]~combout\);

-- Location: IOIBUF_X99_Y0_N15
\nPontos[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(7),
	o => \nPontos[7]~input_o\);

-- Location: LCCOMB_X107_Y4_N12
\Mult0|mult_core|decoder_node[1][7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][7]~combout\ = LCELL((\nPontos[7]~input_o\ & (\reg8[0]~input_o\ $ (\reg8[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg8[0]~input_o\,
	datac => \nPontos[7]~input_o\,
	datad => \reg8[1]~input_o\,
	combout => \Mult0|mult_core|decoder_node[1][7]~combout\);

-- Location: LCCOMB_X109_Y4_N28
\Mult0|mult_core|decoder_node[0][8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][8]~combout\ = LCELL((\nPontos[8]~input_o\ & !\reg8[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nPontos[8]~input_o\,
	datac => \reg8[0]~input_o\,
	combout => \Mult0|mult_core|decoder_node[0][8]~combout\);

-- Location: LCCOMB_X107_Y4_N2
\Mult0|mult_core|decoder_node[0][7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][7]~combout\ = LCELL((\nPontos[7]~input_o\ & !\reg8[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nPontos[7]~input_o\,
	datad => \reg8[0]~input_o\,
	combout => \Mult0|mult_core|decoder_node[0][7]~combout\);

-- Location: IOIBUF_X88_Y0_N15
\nPontos[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(6),
	o => \nPontos[6]~input_o\);

-- Location: LCCOMB_X109_Y4_N22
\Mult0|mult_core|decoder_node[1][6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][6]~combout\ = LCELL((\nPontos[6]~input_o\ & (\reg8[0]~input_o\ $ (\reg8[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[0]~input_o\,
	datac => \nPontos[6]~input_o\,
	datad => \reg8[1]~input_o\,
	combout => \Mult0|mult_core|decoder_node[1][6]~combout\);

-- Location: IOIBUF_X97_Y0_N8
\nPontos[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(5),
	o => \nPontos[5]~input_o\);

-- Location: LCCOMB_X109_Y4_N18
\Mult0|mult_core|decoder_node[1][5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][5]~combout\ = LCELL((\nPontos[5]~input_o\ & (\reg8[0]~input_o\ $ (\reg8[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[0]~input_o\,
	datac => \nPontos[5]~input_o\,
	datad => \reg8[1]~input_o\,
	combout => \Mult0|mult_core|decoder_node[1][5]~combout\);

-- Location: LCCOMB_X109_Y4_N8
\Mult0|mult_core|decoder_node[0][6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][6]~combout\ = LCELL((!\reg8[0]~input_o\ & \nPontos[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[0]~input_o\,
	datac => \nPontos[6]~input_o\,
	combout => \Mult0|mult_core|decoder_node[0][6]~combout\);

-- Location: IOIBUF_X99_Y0_N8
\nPontos[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(4),
	o => \nPontos[4]~input_o\);

-- Location: LCCOMB_X107_Y4_N0
\Mult0|mult_core|decoder_node[1][4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][4]~combout\ = LCELL((\nPontos[4]~input_o\ & (\reg8[0]~input_o\ $ (\reg8[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg8[0]~input_o\,
	datac => \nPontos[4]~input_o\,
	datad => \reg8[1]~input_o\,
	combout => \Mult0|mult_core|decoder_node[1][4]~combout\);

-- Location: LCCOMB_X109_Y4_N16
\Mult0|mult_core|decoder_node[0][5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][5]~combout\ = LCELL((!\reg8[0]~input_o\ & \nPontos[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[0]~input_o\,
	datac => \nPontos[5]~input_o\,
	combout => \Mult0|mult_core|decoder_node[0][5]~combout\);

-- Location: LCCOMB_X107_Y4_N10
\Mult0|mult_core|decoder_node[0][4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][4]~combout\ = LCELL((\nPontos[4]~input_o\ & !\reg8[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nPontos[4]~input_o\,
	datad => \reg8[0]~input_o\,
	combout => \Mult0|mult_core|decoder_node[0][4]~combout\);

-- Location: IOIBUF_X95_Y0_N15
\nPontos[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(3),
	o => \nPontos[3]~input_o\);

-- Location: LCCOMB_X107_Y4_N4
\Mult0|mult_core|decoder_node[1][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][3]~combout\ = LCELL((\nPontos[3]~input_o\ & (\reg8[0]~input_o\ $ (\reg8[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg8[0]~input_o\,
	datac => \nPontos[3]~input_o\,
	datad => \reg8[1]~input_o\,
	combout => \Mult0|mult_core|decoder_node[1][3]~combout\);

-- Location: LCCOMB_X107_Y4_N26
\Mult0|mult_core|decoder_node[0][3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][3]~combout\ = LCELL((\nPontos[3]~input_o\ & !\reg8[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nPontos[3]~input_o\,
	datad => \reg8[0]~input_o\,
	combout => \Mult0|mult_core|decoder_node[0][3]~combout\);

-- Location: IOIBUF_X95_Y0_N1
\nPontos[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(2),
	o => \nPontos[2]~input_o\);

-- Location: LCCOMB_X107_Y4_N24
\Mult0|mult_core|decoder_node[1][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][2]~combout\ = LCELL((\nPontos[2]~input_o\ & (\reg8[0]~input_o\ $ (\reg8[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg8[0]~input_o\,
	datac => \nPontos[2]~input_o\,
	datad => \reg8[1]~input_o\,
	combout => \Mult0|mult_core|decoder_node[1][2]~combout\);

-- Location: IOIBUF_X108_Y0_N15
\nPontos[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(1),
	o => \nPontos[1]~input_o\);

-- Location: LCCOMB_X109_Y4_N30
\Mult0|mult_core|decoder_node[1][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][1]~combout\ = LCELL((\nPontos[1]~input_o\ & (\reg8[1]~input_o\ $ (\reg8[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datac => \reg8[0]~input_o\,
	datad => \nPontos[1]~input_o\,
	combout => \Mult0|mult_core|decoder_node[1][1]~combout\);

-- Location: LCCOMB_X107_Y4_N6
\Mult0|mult_core|decoder_node[0][2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][2]~combout\ = LCELL((\nPontos[2]~input_o\ & !\reg8[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nPontos[2]~input_o\,
	datad => \reg8[0]~input_o\,
	combout => \Mult0|mult_core|decoder_node[0][2]~combout\);

-- Location: LCCOMB_X109_Y4_N4
\Mult0|mult_core|decoder_node[0][1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][1]~combout\ = LCELL((!\reg8[0]~input_o\ & \nPontos[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg8[0]~input_o\,
	datad => \nPontos[1]~input_o\,
	combout => \Mult0|mult_core|decoder_node[0][1]~combout\);

-- Location: IOIBUF_X108_Y0_N22
\nPontos[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nPontos(0),
	o => \nPontos[0]~input_o\);

-- Location: LCCOMB_X109_Y4_N10
\Mult0|mult_core|decoder_node[1][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][0]~combout\ = LCELL((\nPontos[0]~input_o\ & (\reg8[1]~input_o\ $ (\reg8[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg8[1]~input_o\,
	datac => \reg8[0]~input_o\,
	datad => \nPontos[0]~input_o\,
	combout => \Mult0|mult_core|decoder_node[1][0]~combout\);

-- Location: LCCOMB_X108_Y4_N0
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\Mult0|mult_core|decoder_node[0][1]~combout\ & (\Mult0|mult_core|decoder_node[1][0]~combout\ $ (VCC))) # (!\Mult0|mult_core|decoder_node[0][1]~combout\ & 
-- (\Mult0|mult_core|decoder_node[1][0]~combout\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\Mult0|mult_core|decoder_node[0][1]~combout\ & \Mult0|mult_core|decoder_node[1][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[0][1]~combout\,
	datab => \Mult0|mult_core|decoder_node[1][0]~combout\,
	datad => VCC,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X108_Y4_N2
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|decoder_node[1][1]~combout\ & ((\Mult0|mult_core|decoder_node[0][2]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\Mult0|mult_core|decoder_node[0][2]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\Mult0|mult_core|decoder_node[1][1]~combout\ & ((\Mult0|mult_core|decoder_node[0][2]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|decoder_node[0][2]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult0|mult_core|decoder_node[1][1]~combout\ & (!\Mult0|mult_core|decoder_node[0][2]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\Mult0|mult_core|decoder_node[1][1]~combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\Mult0|mult_core|decoder_node[0][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][1]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][2]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X108_Y4_N4
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\Mult0|mult_core|decoder_node[0][3]~combout\ $ (\Mult0|mult_core|decoder_node[1][2]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult0|mult_core|decoder_node[0][3]~combout\ & ((\Mult0|mult_core|decoder_node[1][2]~combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\Mult0|mult_core|decoder_node[0][3]~combout\ & (\Mult0|mult_core|decoder_node[1][2]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[0][3]~combout\,
	datab => \Mult0|mult_core|decoder_node[1][2]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X108_Y4_N6
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\Mult0|mult_core|decoder_node[0][4]~combout\ & ((\Mult0|mult_core|decoder_node[1][3]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\Mult0|mult_core|decoder_node[1][3]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\Mult0|mult_core|decoder_node[0][4]~combout\ & ((\Mult0|mult_core|decoder_node[1][3]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|decoder_node[1][3]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult0|mult_core|decoder_node[0][4]~combout\ & (!\Mult0|mult_core|decoder_node[1][3]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\Mult0|mult_core|decoder_node[0][4]~combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult0|mult_core|decoder_node[1][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[0][4]~combout\,
	datab => \Mult0|mult_core|decoder_node[1][3]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X108_Y4_N8
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\Mult0|mult_core|decoder_node[1][4]~combout\ $ (\Mult0|mult_core|decoder_node[0][5]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult0|mult_core|decoder_node[1][4]~combout\ & ((\Mult0|mult_core|decoder_node[0][5]~combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # 
-- (!\Mult0|mult_core|decoder_node[1][4]~combout\ & (\Mult0|mult_core|decoder_node[0][5]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][4]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][5]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X108_Y4_N10
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\Mult0|mult_core|decoder_node[1][5]~combout\ & ((\Mult0|mult_core|decoder_node[0][6]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ & VCC)) # 
-- (!\Mult0|mult_core|decoder_node[0][6]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)))) # (!\Mult0|mult_core|decoder_node[1][5]~combout\ & ((\Mult0|mult_core|decoder_node[0][6]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\Mult0|mult_core|decoder_node[0][6]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((\Mult0|mult_core|decoder_node[1][5]~combout\ & (!\Mult0|mult_core|decoder_node[0][6]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # 
-- (!\Mult0|mult_core|decoder_node[1][5]~combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\Mult0|mult_core|decoder_node[0][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][5]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][6]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X108_Y4_N12
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = ((\Mult0|mult_core|decoder_node[0][7]~combout\ $ (\Mult0|mult_core|decoder_node[1][6]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\Mult0|mult_core|decoder_node[0][7]~combout\ & ((\Mult0|mult_core|decoder_node[1][6]~combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))) # 
-- (!\Mult0|mult_core|decoder_node[0][7]~combout\ & (\Mult0|mult_core|decoder_node[1][6]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[0][7]~combout\,
	datab => \Mult0|mult_core|decoder_node[1][6]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X108_Y4_N14
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\Mult0|mult_core|decoder_node[1][7]~combout\ & ((\Mult0|mult_core|decoder_node[0][8]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ & VCC)) # 
-- (!\Mult0|mult_core|decoder_node[0][8]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)))) # (!\Mult0|mult_core|decoder_node[1][7]~combout\ & ((\Mult0|mult_core|decoder_node[0][8]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\Mult0|mult_core|decoder_node[0][8]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((\Mult0|mult_core|decoder_node[1][7]~combout\ & (!\Mult0|mult_core|decoder_node[0][8]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # 
-- (!\Mult0|mult_core|decoder_node[1][7]~combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\Mult0|mult_core|decoder_node[0][8]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][7]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][8]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X108_Y4_N16
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = ((\Mult0|mult_core|decoder_node[1][8]~combout\ $ (\Mult0|mult_core|decoder_node[0][9]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ = CARRY((\Mult0|mult_core|decoder_node[1][8]~combout\ & ((\Mult0|mult_core|decoder_node[0][9]~combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\))) # 
-- (!\Mult0|mult_core|decoder_node[1][8]~combout\ & (\Mult0|mult_core|decoder_node[0][9]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][8]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][9]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X108_Y4_N18
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ = (\Mult0|mult_core|decoder_node[1][9]~combout\ & ((\Mult0|mult_core|decoder_node[0][10]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ & VCC)) # 
-- (!\Mult0|mult_core|decoder_node[0][10]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\)))) # (!\Mult0|mult_core|decoder_node[1][9]~combout\ & ((\Mult0|mult_core|decoder_node[0][10]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\)) # (!\Mult0|mult_core|decoder_node[0][10]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ = CARRY((\Mult0|mult_core|decoder_node[1][9]~combout\ & (!\Mult0|mult_core|decoder_node[0][10]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\)) # 
-- (!\Mult0|mult_core|decoder_node[1][9]~combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (!\Mult0|mult_core|decoder_node[0][10]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][9]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][10]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X108_Y4_N20
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ = ((\Mult0|mult_core|decoder_node[0][11]~combout\ $ (\Mult0|mult_core|decoder_node[1][10]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ = CARRY((\Mult0|mult_core|decoder_node[0][11]~combout\ & ((\Mult0|mult_core|decoder_node[1][10]~combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\))) # 
-- (!\Mult0|mult_core|decoder_node[0][11]~combout\ & (\Mult0|mult_core|decoder_node[1][10]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[0][11]~combout\,
	datab => \Mult0|mult_core|decoder_node[1][10]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\);

-- Location: LCCOMB_X108_Y4_N22
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ = (\Mult0|mult_core|decoder_node[1][11]~combout\ & ((\Mult0|mult_core|decoder_node[0][12]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ & VCC)) # 
-- (!\Mult0|mult_core|decoder_node[0][12]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\)))) # (!\Mult0|mult_core|decoder_node[1][11]~combout\ & ((\Mult0|mult_core|decoder_node[0][12]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\)) # (!\Mult0|mult_core|decoder_node[0][12]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ = CARRY((\Mult0|mult_core|decoder_node[1][11]~combout\ & (!\Mult0|mult_core|decoder_node[0][12]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\)) # 
-- (!\Mult0|mult_core|decoder_node[1][11]~combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (!\Mult0|mult_core|decoder_node[0][12]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][11]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][12]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\);

-- Location: LCCOMB_X108_Y4_N24
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ = ((\Mult0|mult_core|decoder_node[0][13]~combout\ $ (\Mult0|mult_core|decoder_node[1][12]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\ = CARRY((\Mult0|mult_core|decoder_node[0][13]~combout\ & ((\Mult0|mult_core|decoder_node[1][12]~combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\))) # 
-- (!\Mult0|mult_core|decoder_node[0][13]~combout\ & (\Mult0|mult_core|decoder_node[1][12]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[0][13]~combout\,
	datab => \Mult0|mult_core|decoder_node[1][12]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\);

-- Location: LCCOMB_X108_Y4_N26
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\ = (\Mult0|mult_core|decoder_node[1][13]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\)) # (!\Mult0|mult_core|decoder_node[1][13]~combout\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\) # (GND)))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~27\ = CARRY((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\) # (!\Mult0|mult_core|decoder_node[1][13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|decoder_node[1][13]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~27\);

-- Location: LCCOMB_X108_Y4_N28
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\ = !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~27\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\);

-- Location: LCCOMB_X111_Y4_N6
\s_countData[1]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_countData[1]~16_combout\ = (s_countData(1) & (!\s_countData[0]~15\)) # (!s_countData(1) & ((\s_countData[0]~15\) # (GND)))
-- \s_countData[1]~17\ = CARRY((!\s_countData[0]~15\) # (!s_countData(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countData(1),
	datad => VCC,
	cin => \s_countData[0]~15\,
	combout => \s_countData[1]~16_combout\,
	cout => \s_countData[1]~17\);

-- Location: IOIBUF_X117_Y46_N1
\en_MemoryInitialize~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_MemoryInitialize,
	o => \en_MemoryInitialize~input_o\);

-- Location: FF_X111_Y4_N7
\s_countData[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_countData[1]~16_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	sclr => \LessThan0~28_combout\,
	ena => \en_MemoryInitialize~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countData(1));

-- Location: LCCOMB_X111_Y4_N8
\s_countData[2]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_countData[2]~18_combout\ = (s_countData(2) & (\s_countData[1]~17\ $ (GND))) # (!s_countData(2) & (!\s_countData[1]~17\ & VCC))
-- \s_countData[2]~19\ = CARRY((s_countData(2) & !\s_countData[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countData(2),
	datad => VCC,
	cin => \s_countData[1]~17\,
	combout => \s_countData[2]~18_combout\,
	cout => \s_countData[2]~19\);

-- Location: FF_X111_Y4_N9
\s_countData[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_countData[2]~18_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	sclr => \LessThan0~28_combout\,
	ena => \en_MemoryInitialize~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countData(2));

-- Location: LCCOMB_X111_Y4_N10
\s_countData[3]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_countData[3]~20_combout\ = (s_countData(3) & (!\s_countData[2]~19\)) # (!s_countData(3) & ((\s_countData[2]~19\) # (GND)))
-- \s_countData[3]~21\ = CARRY((!\s_countData[2]~19\) # (!s_countData(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countData(3),
	datad => VCC,
	cin => \s_countData[2]~19\,
	combout => \s_countData[3]~20_combout\,
	cout => \s_countData[3]~21\);

-- Location: FF_X111_Y4_N11
\s_countData[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_countData[3]~20_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	sclr => \LessThan0~28_combout\,
	ena => \en_MemoryInitialize~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countData(3));

-- Location: LCCOMB_X111_Y4_N12
\s_countData[4]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_countData[4]~22_combout\ = (s_countData(4) & (\s_countData[3]~21\ $ (GND))) # (!s_countData(4) & (!\s_countData[3]~21\ & VCC))
-- \s_countData[4]~23\ = CARRY((s_countData(4) & !\s_countData[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countData(4),
	datad => VCC,
	cin => \s_countData[3]~21\,
	combout => \s_countData[4]~22_combout\,
	cout => \s_countData[4]~23\);

-- Location: FF_X111_Y4_N13
\s_countData[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_countData[4]~22_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	sclr => \LessThan0~28_combout\,
	ena => \en_MemoryInitialize~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countData(4));

-- Location: LCCOMB_X111_Y4_N14
\s_countData[5]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_countData[5]~24_combout\ = (s_countData(5) & (!\s_countData[4]~23\)) # (!s_countData(5) & ((\s_countData[4]~23\) # (GND)))
-- \s_countData[5]~25\ = CARRY((!\s_countData[4]~23\) # (!s_countData(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countData(5),
	datad => VCC,
	cin => \s_countData[4]~23\,
	combout => \s_countData[5]~24_combout\,
	cout => \s_countData[5]~25\);

-- Location: FF_X111_Y4_N15
\s_countData[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_countData[5]~24_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	sclr => \LessThan0~28_combout\,
	ena => \en_MemoryInitialize~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countData(5));

-- Location: LCCOMB_X111_Y4_N16
\s_countData[6]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_countData[6]~26_combout\ = (s_countData(6) & (\s_countData[5]~25\ $ (GND))) # (!s_countData(6) & (!\s_countData[5]~25\ & VCC))
-- \s_countData[6]~27\ = CARRY((s_countData(6) & !\s_countData[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countData(6),
	datad => VCC,
	cin => \s_countData[5]~25\,
	combout => \s_countData[6]~26_combout\,
	cout => \s_countData[6]~27\);

-- Location: FF_X111_Y4_N17
\s_countData[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_countData[6]~26_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	sclr => \LessThan0~28_combout\,
	ena => \en_MemoryInitialize~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countData(6));

-- Location: LCCOMB_X111_Y4_N18
\s_countData[7]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_countData[7]~28_combout\ = (s_countData(7) & (!\s_countData[6]~27\)) # (!s_countData(7) & ((\s_countData[6]~27\) # (GND)))
-- \s_countData[7]~29\ = CARRY((!\s_countData[6]~27\) # (!s_countData(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countData(7),
	datad => VCC,
	cin => \s_countData[6]~27\,
	combout => \s_countData[7]~28_combout\,
	cout => \s_countData[7]~29\);

-- Location: FF_X111_Y4_N19
\s_countData[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_countData[7]~28_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	sclr => \LessThan0~28_combout\,
	ena => \en_MemoryInitialize~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countData(7));

-- Location: LCCOMB_X111_Y4_N20
\s_countData[8]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_countData[8]~30_combout\ = (s_countData(8) & (\s_countData[7]~29\ $ (GND))) # (!s_countData(8) & (!\s_countData[7]~29\ & VCC))
-- \s_countData[8]~31\ = CARRY((s_countData(8) & !\s_countData[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countData(8),
	datad => VCC,
	cin => \s_countData[7]~29\,
	combout => \s_countData[8]~30_combout\,
	cout => \s_countData[8]~31\);

-- Location: FF_X111_Y4_N21
\s_countData[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_countData[8]~30_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	sclr => \LessThan0~28_combout\,
	ena => \en_MemoryInitialize~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countData(8));

-- Location: LCCOMB_X111_Y4_N22
\s_countData[9]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_countData[9]~32_combout\ = (s_countData(9) & (!\s_countData[8]~31\)) # (!s_countData(9) & ((\s_countData[8]~31\) # (GND)))
-- \s_countData[9]~33\ = CARRY((!\s_countData[8]~31\) # (!s_countData(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countData(9),
	datad => VCC,
	cin => \s_countData[8]~31\,
	combout => \s_countData[9]~32_combout\,
	cout => \s_countData[9]~33\);

-- Location: FF_X111_Y4_N23
\s_countData[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_countData[9]~32_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	sclr => \LessThan0~28_combout\,
	ena => \en_MemoryInitialize~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countData(9));

-- Location: LCCOMB_X111_Y4_N24
\s_countData[10]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_countData[10]~34_combout\ = (s_countData(10) & (\s_countData[9]~33\ $ (GND))) # (!s_countData(10) & (!\s_countData[9]~33\ & VCC))
-- \s_countData[10]~35\ = CARRY((s_countData(10) & !\s_countData[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countData(10),
	datad => VCC,
	cin => \s_countData[9]~33\,
	combout => \s_countData[10]~34_combout\,
	cout => \s_countData[10]~35\);

-- Location: FF_X111_Y4_N25
\s_countData[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_countData[10]~34_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	sclr => \LessThan0~28_combout\,
	ena => \en_MemoryInitialize~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countData(10));

-- Location: LCCOMB_X111_Y4_N26
\s_countData[11]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_countData[11]~36_combout\ = (s_countData(11) & (!\s_countData[10]~35\)) # (!s_countData(11) & ((\s_countData[10]~35\) # (GND)))
-- \s_countData[11]~37\ = CARRY((!\s_countData[10]~35\) # (!s_countData(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countData(11),
	datad => VCC,
	cin => \s_countData[10]~35\,
	combout => \s_countData[11]~36_combout\,
	cout => \s_countData[11]~37\);

-- Location: FF_X111_Y4_N27
\s_countData[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_countData[11]~36_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	sclr => \LessThan0~28_combout\,
	ena => \en_MemoryInitialize~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countData(11));

-- Location: LCCOMB_X111_Y4_N28
\s_countData[12]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_countData[12]~38_combout\ = (s_countData(12) & (\s_countData[11]~37\ $ (GND))) # (!s_countData(12) & (!\s_countData[11]~37\ & VCC))
-- \s_countData[12]~39\ = CARRY((s_countData(12) & !\s_countData[11]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_countData(12),
	datad => VCC,
	cin => \s_countData[11]~37\,
	combout => \s_countData[12]~38_combout\,
	cout => \s_countData[12]~39\);

-- Location: FF_X111_Y4_N29
\s_countData[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_countData[12]~38_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	sclr => \LessThan0~28_combout\,
	ena => \en_MemoryInitialize~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countData(12));

-- Location: LCCOMB_X111_Y4_N30
\s_countData[13]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_countData[13]~40_combout\ = s_countData(13) $ (\s_countData[12]~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countData(13),
	cin => \s_countData[12]~39\,
	combout => \s_countData[13]~40_combout\);

-- Location: FF_X111_Y4_N31
\s_countData[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_countData[13]~40_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	sclr => \LessThan0~28_combout\,
	ena => \en_MemoryInitialize~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countData(13));

-- Location: LCCOMB_X109_Y4_N24
\Mult0|mult_core|decoder_node[0][0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][0]~combout\ = LCELL((!\reg8[0]~input_o\ & \nPontos[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg8[0]~input_o\,
	datad => \nPontos[0]~input_o\,
	combout => \Mult0|mult_core|decoder_node[0][0]~combout\);

-- Location: LCCOMB_X112_Y4_N0
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\Mult0|mult_core|decoder_node[0][0]~combout\ & !s_countData(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[0][0]~combout\,
	datab => s_countData(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X112_Y4_N2
\LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (s_countData(1) & !\LessThan0~1_cout\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & ((s_countData(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datab => s_countData(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X112_Y4_N4
\LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((s_countData(2) & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & !\LessThan0~3_cout\)) # (!s_countData(2) & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countData(2),
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X112_Y4_N6
\LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((s_countData(3) & ((!\LessThan0~5_cout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\))) # (!s_countData(3) & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countData(3),
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X112_Y4_N8
\LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((s_countData(4) & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & !\LessThan0~7_cout\)) # (!s_countData(4) & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countData(4),
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X112_Y4_N10
\LessThan0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((s_countData(5) & ((!\LessThan0~9_cout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\))) # (!s_countData(5) & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countData(5),
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X112_Y4_N12
\LessThan0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((s_countData(6) & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & !\LessThan0~11_cout\)) # (!s_countData(6) & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countData(6),
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X112_Y4_N14
\LessThan0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (s_countData(7) & !\LessThan0~13_cout\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & ((s_countData(7)) # (!\LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datab => s_countData(7),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X112_Y4_N16
\LessThan0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((!\LessThan0~15_cout\) # (!s_countData(8)))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (!s_countData(8) & !\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datab => s_countData(8),
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X112_Y4_N18
\LessThan0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & (s_countData(9) & !\LessThan0~17_cout\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & ((s_countData(9)) # (!\LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datab => s_countData(9),
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X112_Y4_N20
\LessThan0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & ((!\LessThan0~19_cout\) # (!s_countData(10)))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & (!s_countData(10) & 
-- !\LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datab => s_countData(10),
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X112_Y4_N22
\LessThan0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((s_countData(11) & ((!\LessThan0~21_cout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\))) # (!s_countData(11) & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & 
-- !\LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countData(11),
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X112_Y4_N24
\LessThan0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & ((!\LessThan0~23_cout\) # (!s_countData(12)))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & (!s_countData(12) & 
-- !\LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	datab => s_countData(12),
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X112_Y4_N26
\LessThan0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~26_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ & ((\LessThan0~25_cout\) # (!s_countData(13)))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ & (\LessThan0~25_cout\ & !s_countData(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\,
	datad => s_countData(13),
	cin => \LessThan0~25_cout\,
	combout => \LessThan0~26_combout\);

-- Location: LCCOMB_X111_Y4_N2
\LessThan0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~28_combout\ = (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\ & !\LessThan0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\,
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\,
	datad => \LessThan0~26_combout\,
	combout => \LessThan0~28_combout\);

-- Location: FF_X111_Y4_N5
\s_countData[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_countData[0]~14_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	sclr => \LessThan0~28_combout\,
	ena => \en_MemoryInitialize~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_countData(0));

-- Location: LCCOMB_X114_Y4_N2
\s_addr_Rom[0]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Rom[0]~15_combout\ = (\initAddr[0]~input_o\ & (s_countData(0) $ (VCC))) # (!\initAddr[0]~input_o\ & (s_countData(0) & VCC))
-- \s_addr_Rom[0]~16\ = CARRY((\initAddr[0]~input_o\ & s_countData(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \initAddr[0]~input_o\,
	datab => s_countData(0),
	datad => VCC,
	combout => \s_addr_Rom[0]~15_combout\,
	cout => \s_addr_Rom[0]~16\);

-- Location: LCCOMB_X113_Y4_N8
\s_addr_Rom[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Rom[0]~feeder_combout\ = \s_addr_Rom[0]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr_Rom[0]~15_combout\,
	combout => \s_addr_Rom[0]~feeder_combout\);

-- Location: LCCOMB_X113_Y4_N6
\s_addr_Rom[0]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Rom[0]~17_combout\ = (\en_MemoryInitialize~input_o\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\) # ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\) # (\LessThan0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\,
	datac => \LessThan0~26_combout\,
	datad => \en_MemoryInitialize~input_o\,
	combout => \s_addr_Rom[0]~17_combout\);

-- Location: FF_X113_Y4_N9
\s_addr_Rom[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Rom[0]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Rom(0));

-- Location: IOIBUF_X115_Y0_N8
\initAddr[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initAddr(1),
	o => \initAddr[1]~input_o\);

-- Location: LCCOMB_X114_Y4_N4
\s_addr_Rom[1]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Rom[1]~18_combout\ = (s_countData(1) & ((\initAddr[1]~input_o\ & (\s_addr_Rom[0]~16\ & VCC)) # (!\initAddr[1]~input_o\ & (!\s_addr_Rom[0]~16\)))) # (!s_countData(1) & ((\initAddr[1]~input_o\ & (!\s_addr_Rom[0]~16\)) # (!\initAddr[1]~input_o\ & 
-- ((\s_addr_Rom[0]~16\) # (GND)))))
-- \s_addr_Rom[1]~19\ = CARRY((s_countData(1) & (!\initAddr[1]~input_o\ & !\s_addr_Rom[0]~16\)) # (!s_countData(1) & ((!\s_addr_Rom[0]~16\) # (!\initAddr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countData(1),
	datab => \initAddr[1]~input_o\,
	datad => VCC,
	cin => \s_addr_Rom[0]~16\,
	combout => \s_addr_Rom[1]~18_combout\,
	cout => \s_addr_Rom[1]~19\);

-- Location: FF_X114_Y4_N5
\s_addr_Rom[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Rom[1]~18_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Rom(1));

-- Location: IOIBUF_X117_Y15_N1
\initAddr[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initAddr(2),
	o => \initAddr[2]~input_o\);

-- Location: LCCOMB_X114_Y4_N6
\s_addr_Rom[2]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Rom[2]~20_combout\ = ((s_countData(2) $ (\initAddr[2]~input_o\ $ (!\s_addr_Rom[1]~19\)))) # (GND)
-- \s_addr_Rom[2]~21\ = CARRY((s_countData(2) & ((\initAddr[2]~input_o\) # (!\s_addr_Rom[1]~19\))) # (!s_countData(2) & (\initAddr[2]~input_o\ & !\s_addr_Rom[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countData(2),
	datab => \initAddr[2]~input_o\,
	datad => VCC,
	cin => \s_addr_Rom[1]~19\,
	combout => \s_addr_Rom[2]~20_combout\,
	cout => \s_addr_Rom[2]~21\);

-- Location: FF_X114_Y4_N7
\s_addr_Rom[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Rom[2]~20_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Rom(2));

-- Location: IOIBUF_X117_Y11_N8
\initAddr[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initAddr(3),
	o => \initAddr[3]~input_o\);

-- Location: LCCOMB_X114_Y4_N8
\s_addr_Rom[3]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Rom[3]~22_combout\ = (s_countData(3) & ((\initAddr[3]~input_o\ & (\s_addr_Rom[2]~21\ & VCC)) # (!\initAddr[3]~input_o\ & (!\s_addr_Rom[2]~21\)))) # (!s_countData(3) & ((\initAddr[3]~input_o\ & (!\s_addr_Rom[2]~21\)) # (!\initAddr[3]~input_o\ & 
-- ((\s_addr_Rom[2]~21\) # (GND)))))
-- \s_addr_Rom[3]~23\ = CARRY((s_countData(3) & (!\initAddr[3]~input_o\ & !\s_addr_Rom[2]~21\)) # (!s_countData(3) & ((!\s_addr_Rom[2]~21\) # (!\initAddr[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countData(3),
	datab => \initAddr[3]~input_o\,
	datad => VCC,
	cin => \s_addr_Rom[2]~21\,
	combout => \s_addr_Rom[3]~22_combout\,
	cout => \s_addr_Rom[3]~23\);

-- Location: FF_X114_Y4_N9
\s_addr_Rom[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Rom[3]~22_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Rom(3));

-- Location: IOIBUF_X117_Y13_N1
\initAddr[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initAddr(4),
	o => \initAddr[4]~input_o\);

-- Location: LCCOMB_X114_Y4_N10
\s_addr_Rom[4]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Rom[4]~24_combout\ = ((s_countData(4) $ (\initAddr[4]~input_o\ $ (!\s_addr_Rom[3]~23\)))) # (GND)
-- \s_addr_Rom[4]~25\ = CARRY((s_countData(4) & ((\initAddr[4]~input_o\) # (!\s_addr_Rom[3]~23\))) # (!s_countData(4) & (\initAddr[4]~input_o\ & !\s_addr_Rom[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countData(4),
	datab => \initAddr[4]~input_o\,
	datad => VCC,
	cin => \s_addr_Rom[3]~23\,
	combout => \s_addr_Rom[4]~24_combout\,
	cout => \s_addr_Rom[4]~25\);

-- Location: FF_X114_Y4_N11
\s_addr_Rom[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Rom[4]~24_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Rom(4));

-- Location: IOIBUF_X117_Y13_N8
\initAddr[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initAddr(5),
	o => \initAddr[5]~input_o\);

-- Location: LCCOMB_X114_Y4_N12
\s_addr_Rom[5]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Rom[5]~26_combout\ = (\initAddr[5]~input_o\ & ((s_countData(5) & (\s_addr_Rom[4]~25\ & VCC)) # (!s_countData(5) & (!\s_addr_Rom[4]~25\)))) # (!\initAddr[5]~input_o\ & ((s_countData(5) & (!\s_addr_Rom[4]~25\)) # (!s_countData(5) & 
-- ((\s_addr_Rom[4]~25\) # (GND)))))
-- \s_addr_Rom[5]~27\ = CARRY((\initAddr[5]~input_o\ & (!s_countData(5) & !\s_addr_Rom[4]~25\)) # (!\initAddr[5]~input_o\ & ((!\s_addr_Rom[4]~25\) # (!s_countData(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \initAddr[5]~input_o\,
	datab => s_countData(5),
	datad => VCC,
	cin => \s_addr_Rom[4]~25\,
	combout => \s_addr_Rom[5]~26_combout\,
	cout => \s_addr_Rom[5]~27\);

-- Location: FF_X114_Y4_N13
\s_addr_Rom[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Rom[5]~26_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Rom(5));

-- Location: IOIBUF_X117_Y10_N8
\initAddr[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initAddr(6),
	o => \initAddr[6]~input_o\);

-- Location: LCCOMB_X114_Y4_N14
\s_addr_Rom[6]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Rom[6]~28_combout\ = ((\initAddr[6]~input_o\ $ (s_countData(6) $ (!\s_addr_Rom[5]~27\)))) # (GND)
-- \s_addr_Rom[6]~29\ = CARRY((\initAddr[6]~input_o\ & ((s_countData(6)) # (!\s_addr_Rom[5]~27\))) # (!\initAddr[6]~input_o\ & (s_countData(6) & !\s_addr_Rom[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \initAddr[6]~input_o\,
	datab => s_countData(6),
	datad => VCC,
	cin => \s_addr_Rom[5]~27\,
	combout => \s_addr_Rom[6]~28_combout\,
	cout => \s_addr_Rom[6]~29\);

-- Location: FF_X114_Y4_N15
\s_addr_Rom[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Rom[6]~28_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Rom(6));

-- Location: IOIBUF_X117_Y17_N1
\initAddr[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initAddr(7),
	o => \initAddr[7]~input_o\);

-- Location: LCCOMB_X114_Y4_N16
\s_addr_Rom[7]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Rom[7]~30_combout\ = (\initAddr[7]~input_o\ & ((s_countData(7) & (\s_addr_Rom[6]~29\ & VCC)) # (!s_countData(7) & (!\s_addr_Rom[6]~29\)))) # (!\initAddr[7]~input_o\ & ((s_countData(7) & (!\s_addr_Rom[6]~29\)) # (!s_countData(7) & 
-- ((\s_addr_Rom[6]~29\) # (GND)))))
-- \s_addr_Rom[7]~31\ = CARRY((\initAddr[7]~input_o\ & (!s_countData(7) & !\s_addr_Rom[6]~29\)) # (!\initAddr[7]~input_o\ & ((!\s_addr_Rom[6]~29\) # (!s_countData(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \initAddr[7]~input_o\,
	datab => s_countData(7),
	datad => VCC,
	cin => \s_addr_Rom[6]~29\,
	combout => \s_addr_Rom[7]~30_combout\,
	cout => \s_addr_Rom[7]~31\);

-- Location: FF_X114_Y4_N17
\s_addr_Rom[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Rom[7]~30_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Rom(7));

-- Location: IOIBUF_X117_Y17_N8
\initAddr[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initAddr(8),
	o => \initAddr[8]~input_o\);

-- Location: LCCOMB_X114_Y4_N18
\s_addr_Rom[8]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Rom[8]~32_combout\ = ((s_countData(8) $ (\initAddr[8]~input_o\ $ (!\s_addr_Rom[7]~31\)))) # (GND)
-- \s_addr_Rom[8]~33\ = CARRY((s_countData(8) & ((\initAddr[8]~input_o\) # (!\s_addr_Rom[7]~31\))) # (!s_countData(8) & (\initAddr[8]~input_o\ & !\s_addr_Rom[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countData(8),
	datab => \initAddr[8]~input_o\,
	datad => VCC,
	cin => \s_addr_Rom[7]~31\,
	combout => \s_addr_Rom[8]~32_combout\,
	cout => \s_addr_Rom[8]~33\);

-- Location: FF_X114_Y4_N19
\s_addr_Rom[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Rom[8]~32_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Rom(8));

-- Location: IOIBUF_X117_Y14_N1
\initAddr[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initAddr(9),
	o => \initAddr[9]~input_o\);

-- Location: LCCOMB_X114_Y4_N20
\s_addr_Rom[9]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Rom[9]~34_combout\ = (\initAddr[9]~input_o\ & ((s_countData(9) & (\s_addr_Rom[8]~33\ & VCC)) # (!s_countData(9) & (!\s_addr_Rom[8]~33\)))) # (!\initAddr[9]~input_o\ & ((s_countData(9) & (!\s_addr_Rom[8]~33\)) # (!s_countData(9) & 
-- ((\s_addr_Rom[8]~33\) # (GND)))))
-- \s_addr_Rom[9]~35\ = CARRY((\initAddr[9]~input_o\ & (!s_countData(9) & !\s_addr_Rom[8]~33\)) # (!\initAddr[9]~input_o\ & ((!\s_addr_Rom[8]~33\) # (!s_countData(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \initAddr[9]~input_o\,
	datab => s_countData(9),
	datad => VCC,
	cin => \s_addr_Rom[8]~33\,
	combout => \s_addr_Rom[9]~34_combout\,
	cout => \s_addr_Rom[9]~35\);

-- Location: FF_X114_Y4_N21
\s_addr_Rom[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Rom[9]~34_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Rom(9));

-- Location: IOIBUF_X117_Y18_N8
\initAddr[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initAddr(10),
	o => \initAddr[10]~input_o\);

-- Location: LCCOMB_X114_Y4_N22
\s_addr_Rom[10]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Rom[10]~36_combout\ = ((\initAddr[10]~input_o\ $ (s_countData(10) $ (!\s_addr_Rom[9]~35\)))) # (GND)
-- \s_addr_Rom[10]~37\ = CARRY((\initAddr[10]~input_o\ & ((s_countData(10)) # (!\s_addr_Rom[9]~35\))) # (!\initAddr[10]~input_o\ & (s_countData(10) & !\s_addr_Rom[9]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \initAddr[10]~input_o\,
	datab => s_countData(10),
	datad => VCC,
	cin => \s_addr_Rom[9]~35\,
	combout => \s_addr_Rom[10]~36_combout\,
	cout => \s_addr_Rom[10]~37\);

-- Location: FF_X114_Y4_N23
\s_addr_Rom[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Rom[10]~36_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Rom(10));

-- Location: IOIBUF_X117_Y11_N1
\initAddr[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initAddr(11),
	o => \initAddr[11]~input_o\);

-- Location: LCCOMB_X114_Y4_N24
\s_addr_Rom[11]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Rom[11]~38_combout\ = (s_countData(11) & ((\initAddr[11]~input_o\ & (\s_addr_Rom[10]~37\ & VCC)) # (!\initAddr[11]~input_o\ & (!\s_addr_Rom[10]~37\)))) # (!s_countData(11) & ((\initAddr[11]~input_o\ & (!\s_addr_Rom[10]~37\)) # 
-- (!\initAddr[11]~input_o\ & ((\s_addr_Rom[10]~37\) # (GND)))))
-- \s_addr_Rom[11]~39\ = CARRY((s_countData(11) & (!\initAddr[11]~input_o\ & !\s_addr_Rom[10]~37\)) # (!s_countData(11) & ((!\s_addr_Rom[10]~37\) # (!\initAddr[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_countData(11),
	datab => \initAddr[11]~input_o\,
	datad => VCC,
	cin => \s_addr_Rom[10]~37\,
	combout => \s_addr_Rom[11]~38_combout\,
	cout => \s_addr_Rom[11]~39\);

-- Location: FF_X114_Y4_N25
\s_addr_Rom[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Rom[11]~38_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Rom(11));

-- Location: IOIBUF_X117_Y15_N8
\initAddr[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initAddr(12),
	o => \initAddr[12]~input_o\);

-- Location: LCCOMB_X114_Y4_N26
\s_addr_Rom[12]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Rom[12]~40_combout\ = ((\initAddr[12]~input_o\ $ (s_countData(12) $ (!\s_addr_Rom[11]~39\)))) # (GND)
-- \s_addr_Rom[12]~41\ = CARRY((\initAddr[12]~input_o\ & ((s_countData(12)) # (!\s_addr_Rom[11]~39\))) # (!\initAddr[12]~input_o\ & (s_countData(12) & !\s_addr_Rom[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \initAddr[12]~input_o\,
	datab => s_countData(12),
	datad => VCC,
	cin => \s_addr_Rom[11]~39\,
	combout => \s_addr_Rom[12]~40_combout\,
	cout => \s_addr_Rom[12]~41\);

-- Location: FF_X114_Y4_N27
\s_addr_Rom[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Rom[12]~40_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Rom(12));

-- Location: IOIBUF_X117_Y14_N8
\initAddr[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initAddr(13),
	o => \initAddr[13]~input_o\);

-- Location: LCCOMB_X114_Y4_N28
\s_addr_Rom[13]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Rom[13]~42_combout\ = (\initAddr[13]~input_o\ & ((s_countData(13) & (\s_addr_Rom[12]~41\ & VCC)) # (!s_countData(13) & (!\s_addr_Rom[12]~41\)))) # (!\initAddr[13]~input_o\ & ((s_countData(13) & (!\s_addr_Rom[12]~41\)) # (!s_countData(13) & 
-- ((\s_addr_Rom[12]~41\) # (GND)))))
-- \s_addr_Rom[13]~43\ = CARRY((\initAddr[13]~input_o\ & (!s_countData(13) & !\s_addr_Rom[12]~41\)) # (!\initAddr[13]~input_o\ & ((!\s_addr_Rom[12]~41\) # (!s_countData(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \initAddr[13]~input_o\,
	datab => s_countData(13),
	datad => VCC,
	cin => \s_addr_Rom[12]~41\,
	combout => \s_addr_Rom[13]~42_combout\,
	cout => \s_addr_Rom[13]~43\);

-- Location: FF_X114_Y4_N29
\s_addr_Rom[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Rom[13]~42_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Rom(13));

-- Location: IOIBUF_X115_Y0_N1
\initAddr[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initAddr(14),
	o => \initAddr[14]~input_o\);

-- Location: LCCOMB_X114_Y4_N30
\s_addr_Rom[14]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Rom[14]~44_combout\ = \initAddr[14]~input_o\ $ (!\s_addr_Rom[13]~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \initAddr[14]~input_o\,
	cin => \s_addr_Rom[13]~43\,
	combout => \s_addr_Rom[14]~44_combout\);

-- Location: FF_X114_Y4_N31
\s_addr_Rom[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Rom[14]~44_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Rom(14));

-- Location: LCCOMB_X113_Y4_N14
\s_addr_Ram[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Ram[0]~feeder_combout\ = s_countData(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_countData(0),
	combout => \s_addr_Ram[0]~feeder_combout\);

-- Location: FF_X113_Y4_N15
\s_addr_Ram[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Ram[0]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Ram(0));

-- Location: LCCOMB_X113_Y4_N24
\s_addr_Ram[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Ram[1]~feeder_combout\ = s_countData(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_countData(1),
	combout => \s_addr_Ram[1]~feeder_combout\);

-- Location: FF_X113_Y4_N25
\s_addr_Ram[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Ram[1]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Ram(1));

-- Location: LCCOMB_X113_Y4_N30
\s_addr_Ram[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Ram[2]~feeder_combout\ = s_countData(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_countData(2),
	combout => \s_addr_Ram[2]~feeder_combout\);

-- Location: FF_X113_Y4_N31
\s_addr_Ram[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Ram[2]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Ram(2));

-- Location: LCCOMB_X113_Y4_N20
\s_addr_Ram[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Ram[3]~feeder_combout\ = s_countData(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_countData(3),
	combout => \s_addr_Ram[3]~feeder_combout\);

-- Location: FF_X113_Y4_N21
\s_addr_Ram[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Ram[3]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Ram(3));

-- Location: LCCOMB_X113_Y4_N26
\s_addr_Ram[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Ram[4]~feeder_combout\ = s_countData(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_countData(4),
	combout => \s_addr_Ram[4]~feeder_combout\);

-- Location: FF_X113_Y4_N27
\s_addr_Ram[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Ram[4]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Ram(4));

-- Location: LCCOMB_X113_Y4_N12
\s_addr_Ram[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Ram[5]~feeder_combout\ = s_countData(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_countData(5),
	combout => \s_addr_Ram[5]~feeder_combout\);

-- Location: FF_X113_Y4_N13
\s_addr_Ram[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Ram[5]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Ram(5));

-- Location: LCCOMB_X113_Y4_N18
\s_addr_Ram[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Ram[6]~feeder_combout\ = s_countData(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_countData(6),
	combout => \s_addr_Ram[6]~feeder_combout\);

-- Location: FF_X113_Y4_N19
\s_addr_Ram[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Ram[6]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Ram(6));

-- Location: LCCOMB_X113_Y4_N4
\s_addr_Ram[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Ram[7]~feeder_combout\ = s_countData(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_countData(7),
	combout => \s_addr_Ram[7]~feeder_combout\);

-- Location: FF_X113_Y4_N5
\s_addr_Ram[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Ram[7]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Ram(7));

-- Location: LCCOMB_X113_Y4_N10
\s_addr_Ram[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Ram[8]~feeder_combout\ = s_countData(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_countData(8),
	combout => \s_addr_Ram[8]~feeder_combout\);

-- Location: FF_X113_Y4_N11
\s_addr_Ram[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Ram[8]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Ram(8));

-- Location: LCCOMB_X113_Y4_N28
\s_addr_Ram[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Ram[9]~feeder_combout\ = s_countData(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_countData(9),
	combout => \s_addr_Ram[9]~feeder_combout\);

-- Location: FF_X113_Y4_N29
\s_addr_Ram[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Ram[9]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Ram(9));

-- Location: LCCOMB_X113_Y4_N2
\s_addr_Ram[10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Ram[10]~feeder_combout\ = s_countData(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_countData(10),
	combout => \s_addr_Ram[10]~feeder_combout\);

-- Location: FF_X113_Y4_N3
\s_addr_Ram[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Ram[10]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Ram(10));

-- Location: LCCOMB_X113_Y4_N16
\s_addr_Ram[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Ram[11]~feeder_combout\ = s_countData(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_countData(11),
	combout => \s_addr_Ram[11]~feeder_combout\);

-- Location: FF_X113_Y4_N17
\s_addr_Ram[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Ram[11]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Ram(11));

-- Location: LCCOMB_X113_Y4_N22
\s_addr_Ram[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Ram[12]~feeder_combout\ = s_countData(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_countData(12),
	combout => \s_addr_Ram[12]~feeder_combout\);

-- Location: FF_X113_Y4_N23
\s_addr_Ram[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Ram[12]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Ram(12));

-- Location: LCCOMB_X113_Y4_N0
\s_addr_Ram[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_addr_Ram[13]~feeder_combout\ = s_countData(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_countData(13),
	combout => \s_addr_Ram[13]~feeder_combout\);

-- Location: FF_X113_Y4_N1
\s_addr_Ram[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_addr_Ram[13]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \s_addr_Rom[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_addr_Ram(13));

-- Location: LCCOMB_X111_Y4_N0
\s_blockState[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \s_blockState[0]~feeder_combout\ = \LessThan0~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~28_combout\,
	combout => \s_blockState[0]~feeder_combout\);

-- Location: FF_X111_Y4_N1
\s_blockState[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_blockState[0]~feeder_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \en_MemoryInitialize~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_blockState(0));

-- Location: FF_X111_Y4_N3
\s_blockState[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LessThan0~28_combout\,
	clrn => \nrst~inputclkctrl_outclk\,
	ena => \en_MemoryInitialize~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_blockState(1));

ww_addr_Rom(0) <= \addr_Rom[0]~output_o\;

ww_addr_Rom(1) <= \addr_Rom[1]~output_o\;

ww_addr_Rom(2) <= \addr_Rom[2]~output_o\;

ww_addr_Rom(3) <= \addr_Rom[3]~output_o\;

ww_addr_Rom(4) <= \addr_Rom[4]~output_o\;

ww_addr_Rom(5) <= \addr_Rom[5]~output_o\;

ww_addr_Rom(6) <= \addr_Rom[6]~output_o\;

ww_addr_Rom(7) <= \addr_Rom[7]~output_o\;

ww_addr_Rom(8) <= \addr_Rom[8]~output_o\;

ww_addr_Rom(9) <= \addr_Rom[9]~output_o\;

ww_addr_Rom(10) <= \addr_Rom[10]~output_o\;

ww_addr_Rom(11) <= \addr_Rom[11]~output_o\;

ww_addr_Rom(12) <= \addr_Rom[12]~output_o\;

ww_addr_Rom(13) <= \addr_Rom[13]~output_o\;

ww_addr_Rom(14) <= \addr_Rom[14]~output_o\;

ww_addr_Ram(0) <= \addr_Ram[0]~output_o\;

ww_addr_Ram(1) <= \addr_Ram[1]~output_o\;

ww_addr_Ram(2) <= \addr_Ram[2]~output_o\;

ww_addr_Ram(3) <= \addr_Ram[3]~output_o\;

ww_addr_Ram(4) <= \addr_Ram[4]~output_o\;

ww_addr_Ram(5) <= \addr_Ram[5]~output_o\;

ww_addr_Ram(6) <= \addr_Ram[6]~output_o\;

ww_addr_Ram(7) <= \addr_Ram[7]~output_o\;

ww_addr_Ram(8) <= \addr_Ram[8]~output_o\;

ww_addr_Ram(9) <= \addr_Ram[9]~output_o\;

ww_addr_Ram(10) <= \addr_Ram[10]~output_o\;

ww_addr_Ram(11) <= \addr_Ram[11]~output_o\;

ww_addr_Ram(12) <= \addr_Ram[12]~output_o\;

ww_addr_Ram(13) <= \addr_Ram[13]~output_o\;

ww_addr_Ram(14) <= \addr_Ram[14]~output_o\;

ww_next_State(0) <= \next_State[0]~output_o\;

ww_next_State(1) <= \next_State[1]~output_o\;

ww_next_State(2) <= \next_State[2]~output_o\;

ww_next_State(3) <= \next_State[3]~output_o\;
END structure;


