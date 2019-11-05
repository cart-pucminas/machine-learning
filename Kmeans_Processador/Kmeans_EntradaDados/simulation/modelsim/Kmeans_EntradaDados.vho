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

-- DATE "06/19/2017 10:41:30"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Kmeans_EntradaDados IS
    PORT (
	nCentroids : OUT std_logic_vector(9 DOWNTO 0);
	nIteracoes : OUT std_logic_vector(6 DOWNTO 0);
	nPontos : OUT std_logic_vector(14 DOWNTO 0);
	nDimensoes : OUT std_logic_vector(3 DOWNTO 0);
	initAddr : OUT std_logic_vector(13 DOWNTO 0)
	);
END Kmeans_EntradaDados;

-- Design Ports Information
-- nCentroids[0]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nCentroids[1]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nCentroids[2]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nCentroids[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nCentroids[4]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nCentroids[5]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nCentroids[6]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nCentroids[7]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nCentroids[8]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nCentroids[9]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nIteracoes[0]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nIteracoes[1]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nIteracoes[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nIteracoes[3]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nIteracoes[4]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nIteracoes[5]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nIteracoes[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[0]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[2]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[4]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[5]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[6]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[7]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[8]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[9]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[10]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[11]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[12]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[13]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nPontos[14]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nDimensoes[0]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nDimensoes[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nDimensoes[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nDimensoes[3]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[0]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[2]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[3]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[4]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[6]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[7]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[8]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[9]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[10]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[11]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[12]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initAddr[13]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Kmeans_EntradaDados IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nCentroids : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_nIteracoes : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_nPontos : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_nDimensoes : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_initAddr : std_logic_vector(13 DOWNTO 0);
SIGNAL \nCentroids[0]~output_o\ : std_logic;
SIGNAL \nCentroids[1]~output_o\ : std_logic;
SIGNAL \nCentroids[2]~output_o\ : std_logic;
SIGNAL \nCentroids[3]~output_o\ : std_logic;
SIGNAL \nCentroids[4]~output_o\ : std_logic;
SIGNAL \nCentroids[5]~output_o\ : std_logic;
SIGNAL \nCentroids[6]~output_o\ : std_logic;
SIGNAL \nCentroids[7]~output_o\ : std_logic;
SIGNAL \nCentroids[8]~output_o\ : std_logic;
SIGNAL \nCentroids[9]~output_o\ : std_logic;
SIGNAL \nIteracoes[0]~output_o\ : std_logic;
SIGNAL \nIteracoes[1]~output_o\ : std_logic;
SIGNAL \nIteracoes[2]~output_o\ : std_logic;
SIGNAL \nIteracoes[3]~output_o\ : std_logic;
SIGNAL \nIteracoes[4]~output_o\ : std_logic;
SIGNAL \nIteracoes[5]~output_o\ : std_logic;
SIGNAL \nIteracoes[6]~output_o\ : std_logic;
SIGNAL \nPontos[0]~output_o\ : std_logic;
SIGNAL \nPontos[1]~output_o\ : std_logic;
SIGNAL \nPontos[2]~output_o\ : std_logic;
SIGNAL \nPontos[3]~output_o\ : std_logic;
SIGNAL \nPontos[4]~output_o\ : std_logic;
SIGNAL \nPontos[5]~output_o\ : std_logic;
SIGNAL \nPontos[6]~output_o\ : std_logic;
SIGNAL \nPontos[7]~output_o\ : std_logic;
SIGNAL \nPontos[8]~output_o\ : std_logic;
SIGNAL \nPontos[9]~output_o\ : std_logic;
SIGNAL \nPontos[10]~output_o\ : std_logic;
SIGNAL \nPontos[11]~output_o\ : std_logic;
SIGNAL \nPontos[12]~output_o\ : std_logic;
SIGNAL \nPontos[13]~output_o\ : std_logic;
SIGNAL \nPontos[14]~output_o\ : std_logic;
SIGNAL \nDimensoes[0]~output_o\ : std_logic;
SIGNAL \nDimensoes[1]~output_o\ : std_logic;
SIGNAL \nDimensoes[2]~output_o\ : std_logic;
SIGNAL \nDimensoes[3]~output_o\ : std_logic;
SIGNAL \initAddr[0]~output_o\ : std_logic;
SIGNAL \initAddr[1]~output_o\ : std_logic;
SIGNAL \initAddr[2]~output_o\ : std_logic;
SIGNAL \initAddr[3]~output_o\ : std_logic;
SIGNAL \initAddr[4]~output_o\ : std_logic;
SIGNAL \initAddr[5]~output_o\ : std_logic;
SIGNAL \initAddr[6]~output_o\ : std_logic;
SIGNAL \initAddr[7]~output_o\ : std_logic;
SIGNAL \initAddr[8]~output_o\ : std_logic;
SIGNAL \initAddr[9]~output_o\ : std_logic;
SIGNAL \initAddr[10]~output_o\ : std_logic;
SIGNAL \initAddr[11]~output_o\ : std_logic;
SIGNAL \initAddr[12]~output_o\ : std_logic;
SIGNAL \initAddr[13]~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

nCentroids <= ww_nCentroids;
nIteracoes <= ww_nIteracoes;
nPontos <= ww_nPontos;
nDimensoes <= ww_nDimensoes;
initAddr <= ww_initAddr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y62_N9
\nCentroids[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nCentroids[0]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\nCentroids[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \nCentroids[1]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\nCentroids[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nCentroids[2]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\nCentroids[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nCentroids[3]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\nCentroids[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nCentroids[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\nCentroids[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nCentroids[5]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\nCentroids[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nCentroids[6]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\nCentroids[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nCentroids[7]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\nCentroids[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nCentroids[8]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\nCentroids[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nCentroids[9]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\nIteracoes[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nIteracoes[0]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\nIteracoes[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nIteracoes[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\nIteracoes[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \nIteracoes[2]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\nIteracoes[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nIteracoes[3]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\nIteracoes[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nIteracoes[4]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\nIteracoes[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nIteracoes[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\nIteracoes[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nIteracoes[6]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\nPontos[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nPontos[0]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\nPontos[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nPontos[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\nPontos[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nPontos[2]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\nPontos[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nPontos[3]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\nPontos[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nPontos[4]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\nPontos[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nPontos[5]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\nPontos[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nPontos[6]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\nPontos[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nPontos[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\nPontos[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nPontos[8]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\nPontos[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nPontos[9]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\nPontos[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \nPontos[10]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\nPontos[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nPontos[11]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\nPontos[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nPontos[12]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\nPontos[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nPontos[13]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\nPontos[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nPontos[14]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\nDimensoes[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \nDimensoes[0]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\nDimensoes[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \nDimensoes[1]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\nDimensoes[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nDimensoes[2]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\nDimensoes[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \nDimensoes[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\initAddr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \initAddr[0]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\initAddr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \initAddr[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\initAddr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \initAddr[2]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\initAddr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \initAddr[3]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\initAddr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \initAddr[4]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\initAddr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \initAddr[5]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\initAddr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \initAddr[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\initAddr[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \initAddr[7]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\initAddr[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \initAddr[8]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\initAddr[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \initAddr[9]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\initAddr[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \initAddr[10]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\initAddr[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \initAddr[11]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\initAddr[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \initAddr[12]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\initAddr[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \initAddr[13]~output_o\);

ww_nCentroids(0) <= \nCentroids[0]~output_o\;

ww_nCentroids(1) <= \nCentroids[1]~output_o\;

ww_nCentroids(2) <= \nCentroids[2]~output_o\;

ww_nCentroids(3) <= \nCentroids[3]~output_o\;

ww_nCentroids(4) <= \nCentroids[4]~output_o\;

ww_nCentroids(5) <= \nCentroids[5]~output_o\;

ww_nCentroids(6) <= \nCentroids[6]~output_o\;

ww_nCentroids(7) <= \nCentroids[7]~output_o\;

ww_nCentroids(8) <= \nCentroids[8]~output_o\;

ww_nCentroids(9) <= \nCentroids[9]~output_o\;

ww_nIteracoes(0) <= \nIteracoes[0]~output_o\;

ww_nIteracoes(1) <= \nIteracoes[1]~output_o\;

ww_nIteracoes(2) <= \nIteracoes[2]~output_o\;

ww_nIteracoes(3) <= \nIteracoes[3]~output_o\;

ww_nIteracoes(4) <= \nIteracoes[4]~output_o\;

ww_nIteracoes(5) <= \nIteracoes[5]~output_o\;

ww_nIteracoes(6) <= \nIteracoes[6]~output_o\;

ww_nPontos(0) <= \nPontos[0]~output_o\;

ww_nPontos(1) <= \nPontos[1]~output_o\;

ww_nPontos(2) <= \nPontos[2]~output_o\;

ww_nPontos(3) <= \nPontos[3]~output_o\;

ww_nPontos(4) <= \nPontos[4]~output_o\;

ww_nPontos(5) <= \nPontos[5]~output_o\;

ww_nPontos(6) <= \nPontos[6]~output_o\;

ww_nPontos(7) <= \nPontos[7]~output_o\;

ww_nPontos(8) <= \nPontos[8]~output_o\;

ww_nPontos(9) <= \nPontos[9]~output_o\;

ww_nPontos(10) <= \nPontos[10]~output_o\;

ww_nPontos(11) <= \nPontos[11]~output_o\;

ww_nPontos(12) <= \nPontos[12]~output_o\;

ww_nPontos(13) <= \nPontos[13]~output_o\;

ww_nPontos(14) <= \nPontos[14]~output_o\;

ww_nDimensoes(0) <= \nDimensoes[0]~output_o\;

ww_nDimensoes(1) <= \nDimensoes[1]~output_o\;

ww_nDimensoes(2) <= \nDimensoes[2]~output_o\;

ww_nDimensoes(3) <= \nDimensoes[3]~output_o\;

ww_initAddr(0) <= \initAddr[0]~output_o\;

ww_initAddr(1) <= \initAddr[1]~output_o\;

ww_initAddr(2) <= \initAddr[2]~output_o\;

ww_initAddr(3) <= \initAddr[3]~output_o\;

ww_initAddr(4) <= \initAddr[4]~output_o\;

ww_initAddr(5) <= \initAddr[5]~output_o\;

ww_initAddr(6) <= \initAddr[6]~output_o\;

ww_initAddr(7) <= \initAddr[7]~output_o\;

ww_initAddr(8) <= \initAddr[8]~output_o\;

ww_initAddr(9) <= \initAddr[9]~output_o\;

ww_initAddr(10) <= \initAddr[10]~output_o\;

ww_initAddr(11) <= \initAddr[11]~output_o\;

ww_initAddr(12) <= \initAddr[12]~output_o\;

ww_initAddr(13) <= \initAddr[13]~output_o\;
END structure;


