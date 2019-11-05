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

-- DATE "06/21/2017 11:03:16"

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


LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Kmeans_Result IS
    PORT (
	en_Saida : IN std_logic;
	ent : IN std_logic_vector(9 DOWNTO 0);
	saida : OUT std_logic_vector(9 DOWNTO 0);
	hex0 : OUT std_logic;
	hex1 : OUT std_logic;
	hex2 : OUT std_logic;
	hex3 : OUT std_logic;
	hex4 : OUT std_logic;
	hex5 : OUT std_logic;
	hex6 : OUT std_logic
	);
END Kmeans_Result;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_A24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[7]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[8]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[9]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex6	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_Saida	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[0]	=>  Location: PIN_B24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[1]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[2]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[3]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[4]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[5]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[6]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[7]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[8]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ent[9]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Kmeans_Result IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_en_Saida : std_logic;
SIGNAL ww_ent : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_hex0 : std_logic;
SIGNAL ww_hex1 : std_logic;
SIGNAL ww_hex2 : std_logic;
SIGNAL ww_hex3 : std_logic;
SIGNAL ww_hex4 : std_logic;
SIGNAL ww_hex5 : std_logic;
SIGNAL ww_hex6 : std_logic;
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \saida[7]~output_o\ : std_logic;
SIGNAL \saida[8]~output_o\ : std_logic;
SIGNAL \saida[9]~output_o\ : std_logic;
SIGNAL \hex0~output_o\ : std_logic;
SIGNAL \hex1~output_o\ : std_logic;
SIGNAL \hex2~output_o\ : std_logic;
SIGNAL \hex3~output_o\ : std_logic;
SIGNAL \hex4~output_o\ : std_logic;
SIGNAL \hex5~output_o\ : std_logic;
SIGNAL \hex6~output_o\ : std_logic;
SIGNAL \en_Saida~input_o\ : std_logic;
SIGNAL \ent[0]~input_o\ : std_logic;
SIGNAL \saida~0_combout\ : std_logic;
SIGNAL \ent[1]~input_o\ : std_logic;
SIGNAL \saida~1_combout\ : std_logic;
SIGNAL \ent[2]~input_o\ : std_logic;
SIGNAL \saida~2_combout\ : std_logic;
SIGNAL \ent[3]~input_o\ : std_logic;
SIGNAL \saida~3_combout\ : std_logic;
SIGNAL \ent[4]~input_o\ : std_logic;
SIGNAL \saida~4_combout\ : std_logic;
SIGNAL \ent[5]~input_o\ : std_logic;
SIGNAL \saida~5_combout\ : std_logic;
SIGNAL \ent[6]~input_o\ : std_logic;
SIGNAL \saida~6_combout\ : std_logic;
SIGNAL \ent[7]~input_o\ : std_logic;
SIGNAL \saida~7_combout\ : std_logic;
SIGNAL \ent[8]~input_o\ : std_logic;
SIGNAL \saida~8_combout\ : std_logic;
SIGNAL \ent[9]~input_o\ : std_logic;
SIGNAL \saida~9_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \hex0$latch~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_en_Saida <= en_Saida;
ww_ent <= ent;
saida <= ww_saida;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
hex4 <= ww_hex4;
hex5 <= ww_hex5;
hex6 <= ww_hex6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X90_Y91_N9
\saida[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~0_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

-- Location: IOOBUF_X92_Y91_N23
\saida[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~1_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

-- Location: IOOBUF_X86_Y91_N9
\saida[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~2_combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

-- Location: IOOBUF_X95_Y91_N16
\saida[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~3_combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

-- Location: IOOBUF_X82_Y91_N9
\saida[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~4_combout\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

-- Location: IOOBUF_X90_Y91_N2
\saida[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~5_combout\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

-- Location: IOOBUF_X95_Y91_N23
\saida[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~6_combout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

-- Location: IOOBUF_X84_Y91_N9
\saida[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~7_combout\,
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

-- Location: IOOBUF_X92_Y91_N16
\saida[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~8_combout\,
	devoe => ww_devoe,
	o => \saida[8]~output_o\);

-- Location: IOOBUF_X86_Y91_N2
\saida[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~9_combout\,
	devoe => ww_devoe,
	o => \saida[9]~output_o\);

-- Location: IOOBUF_X77_Y91_N2
\hex0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0$latch~combout\,
	devoe => ww_devoe,
	o => \hex0~output_o\);

-- Location: IOOBUF_X3_Y91_N9
\hex1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex1~output_o\);

-- Location: IOOBUF_X90_Y0_N2
\hex2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex2~output_o\);

-- Location: IOOBUF_X77_Y91_N9
\hex3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0$latch~combout\,
	devoe => ww_devoe,
	o => \hex3~output_o\);

-- Location: IOOBUF_X79_Y91_N16
\hex4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0$latch~combout\,
	devoe => ww_devoe,
	o => \hex4~output_o\);

-- Location: IOOBUF_X79_Y91_N23
\hex5~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0$latch~combout\,
	devoe => ww_devoe,
	o => \hex5~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\hex6~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex6~output_o\);

-- Location: IOIBUF_X92_Y91_N8
\en_Saida~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_Saida,
	o => \en_Saida~input_o\);

-- Location: IOIBUF_X90_Y91_N15
\ent[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(0),
	o => \ent[0]~input_o\);

-- Location: LCCOMB_X91_Y90_N16
\saida~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~0_combout\ = (\en_Saida~input_o\ & \ent[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datac => \ent[0]~input_o\,
	combout => \saida~0_combout\);

-- Location: IOIBUF_X95_Y91_N8
\ent[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(1),
	o => \ent[1]~input_o\);

-- Location: LCCOMB_X91_Y90_N2
\saida~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~1_combout\ = (\en_Saida~input_o\ & \ent[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datad => \ent[1]~input_o\,
	combout => \saida~1_combout\);

-- Location: IOIBUF_X84_Y91_N1
\ent[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(2),
	o => \ent[2]~input_o\);

-- Location: LCCOMB_X91_Y90_N28
\saida~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~2_combout\ = (\en_Saida~input_o\ & \ent[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datac => \ent[2]~input_o\,
	combout => \saida~2_combout\);

-- Location: IOIBUF_X88_Y91_N8
\ent[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(3),
	o => \ent[3]~input_o\);

-- Location: LCCOMB_X91_Y90_N6
\saida~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~3_combout\ = (\en_Saida~input_o\ & \ent[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datad => \ent[3]~input_o\,
	combout => \saida~3_combout\);

-- Location: IOIBUF_X92_Y91_N1
\ent[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(4),
	o => \ent[4]~input_o\);

-- Location: LCCOMB_X91_Y90_N0
\saida~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~4_combout\ = (\en_Saida~input_o\ & \ent[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datac => \ent[4]~input_o\,
	combout => \saida~4_combout\);

-- Location: IOIBUF_X95_Y91_N1
\ent[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(5),
	o => \ent[5]~input_o\);

-- Location: LCCOMB_X91_Y90_N10
\saida~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~5_combout\ = (\en_Saida~input_o\ & \ent[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datad => \ent[5]~input_o\,
	combout => \saida~5_combout\);

-- Location: IOIBUF_X88_Y91_N1
\ent[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(6),
	o => \ent[6]~input_o\);

-- Location: LCCOMB_X91_Y90_N20
\saida~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~6_combout\ = (\en_Saida~input_o\ & \ent[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datac => \ent[6]~input_o\,
	combout => \saida~6_combout\);

-- Location: IOIBUF_X86_Y91_N15
\ent[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(7),
	o => \ent[7]~input_o\);

-- Location: LCCOMB_X91_Y90_N22
\saida~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~7_combout\ = (\en_Saida~input_o\ & \ent[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datad => \ent[7]~input_o\,
	combout => \saida~7_combout\);

-- Location: IOIBUF_X97_Y91_N8
\ent[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(8),
	o => \ent[8]~input_o\);

-- Location: LCCOMB_X91_Y90_N8
\saida~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~8_combout\ = (\en_Saida~input_o\ & \ent[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datad => \ent[8]~input_o\,
	combout => \saida~8_combout\);

-- Location: IOIBUF_X90_Y91_N22
\ent[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ent(9),
	o => \ent[9]~input_o\);

-- Location: LCCOMB_X91_Y90_N26
\saida~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~9_combout\ = (\en_Saida~input_o\ & \ent[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_Saida~input_o\,
	datac => \ent[9]~input_o\,
	combout => \saida~9_combout\);

-- Location: LCCOMB_X91_Y90_N30
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\ent[7]~input_o\ & (!\ent[4]~input_o\ & (!\ent[6]~input_o\ & !\ent[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent[7]~input_o\,
	datab => \ent[4]~input_o\,
	datac => \ent[6]~input_o\,
	datad => \ent[5]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X91_Y90_N12
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\ent[2]~input_o\ & (!\ent[3]~input_o\ & (\ent[0]~input_o\ & !\ent[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ent[2]~input_o\,
	datab => \ent[3]~input_o\,
	datac => \ent[0]~input_o\,
	datad => \ent[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X91_Y90_N24
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & (!\ent[8]~input_o\ & (!\ent[9]~input_o\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \ent[8]~input_o\,
	datac => \ent[9]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X91_Y90_N18
\hex0$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \hex0$latch~combout\ = (\en_Saida~input_o\ & (!\Equal0~2_combout\)) # (!\en_Saida~input_o\ & ((\hex0$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => \hex0$latch~combout\,
	datad => \en_Saida~input_o\,
	combout => \hex0$latch~combout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;

ww_saida(7) <= \saida[7]~output_o\;

ww_saida(8) <= \saida[8]~output_o\;

ww_saida(9) <= \saida[9]~output_o\;

ww_hex0 <= \hex0~output_o\;

ww_hex1 <= \hex1~output_o\;

ww_hex2 <= \hex2~output_o\;

ww_hex3 <= \hex3~output_o\;

ww_hex4 <= \hex4~output_o\;

ww_hex5 <= \hex5~output_o\;

ww_hex6 <= \hex6~output_o\;
END structure;


