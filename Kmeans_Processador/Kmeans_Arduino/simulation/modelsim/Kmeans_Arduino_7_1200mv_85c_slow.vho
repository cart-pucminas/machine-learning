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

-- DATE "06/28/2017 11:57:28"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Kmeans_Arduino IS
    PORT (
	scl : INOUT std_logic;
	sda : INOUT std_logic;
	in_progress : OUT std_logic;
	tx_done : OUT std_logic;
	tx_byte : INOUT std_logic_vector(7 DOWNTO 0);
	rx_byte : OUT std_logic_vector(7 DOWNTO 0);
	rx_data_rdy : OUT std_logic;
	rst : IN std_logic;
	dado : IN std_logic_vector(7 DOWNTO 0);
	readDone : OUT std_logic;
	clk : IN std_logic
	);
END Kmeans_Arduino;

-- Design Ports Information
-- in_progress	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_done	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_byte[7]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data_rdy	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readDone	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scl	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sda	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_byte[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_byte[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_byte[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_byte[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_byte[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_byte[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_byte[6]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_byte[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[4]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Kmeans_Arduino IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in_progress : std_logic;
SIGNAL ww_tx_done : std_logic;
SIGNAL ww_rx_byte : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rx_data_rdy : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_dado : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_readDone : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tx_byte[0]~input_o\ : std_logic;
SIGNAL \tx_byte[1]~input_o\ : std_logic;
SIGNAL \tx_byte[2]~input_o\ : std_logic;
SIGNAL \tx_byte[3]~input_o\ : std_logic;
SIGNAL \tx_byte[4]~input_o\ : std_logic;
SIGNAL \tx_byte[5]~input_o\ : std_logic;
SIGNAL \tx_byte[6]~input_o\ : std_logic;
SIGNAL \tx_byte[7]~input_o\ : std_logic;
SIGNAL \scl~output_o\ : std_logic;
SIGNAL \sda~output_o\ : std_logic;
SIGNAL \tx_byte[0]~output_o\ : std_logic;
SIGNAL \tx_byte[1]~output_o\ : std_logic;
SIGNAL \tx_byte[2]~output_o\ : std_logic;
SIGNAL \tx_byte[3]~output_o\ : std_logic;
SIGNAL \tx_byte[4]~output_o\ : std_logic;
SIGNAL \tx_byte[5]~output_o\ : std_logic;
SIGNAL \tx_byte[6]~output_o\ : std_logic;
SIGNAL \tx_byte[7]~output_o\ : std_logic;
SIGNAL \in_progress~output_o\ : std_logic;
SIGNAL \tx_done~output_o\ : std_logic;
SIGNAL \rx_byte[0]~output_o\ : std_logic;
SIGNAL \rx_byte[1]~output_o\ : std_logic;
SIGNAL \rx_byte[2]~output_o\ : std_logic;
SIGNAL \rx_byte[3]~output_o\ : std_logic;
SIGNAL \rx_byte[4]~output_o\ : std_logic;
SIGNAL \rx_byte[5]~output_o\ : std_logic;
SIGNAL \rx_byte[6]~output_o\ : std_logic;
SIGNAL \rx_byte[7]~output_o\ : std_logic;
SIGNAL \rx_data_rdy~output_o\ : std_logic;
SIGNAL \readDone~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sda~input_o\ : std_logic;
SIGNAL \sda_d~0_combout\ : std_logic;
SIGNAL \sda_d~q\ : std_logic;
SIGNAL \sda_d2~feeder_combout\ : std_logic;
SIGNAL \sda_d2~q\ : std_logic;
SIGNAL \scl~input_o\ : std_logic;
SIGNAL \scl_d~0_combout\ : std_logic;
SIGNAL \scl_d~q\ : std_logic;
SIGNAL \scl_d2~feeder_combout\ : std_logic;
SIGNAL \scl_d2~q\ : std_logic;
SIGNAL \start_strobe~0_combout\ : std_logic;
SIGNAL \start_strobe~q\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \stop_strobe~q\ : std_logic;
SIGNAL \state_fut~19_combout\ : std_logic;
SIGNAL \addr_buf[2]~11_combout\ : std_logic;
SIGNAL \process_2~1_combout\ : std_logic;
SIGNAL \scl_falling_strobe~q\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \state_fut~34_combout\ : std_logic;
SIGNAL \state_fut~39_combout\ : std_logic;
SIGNAL \state_fut.WAIT_ACK_1~q\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.WAIT_ACK_1~q\ : std_logic;
SIGNAL \process_2~2_combout\ : std_logic;
SIGNAL \scl_rising_strobe~q\ : std_logic;
SIGNAL \continue_read~0_combout\ : std_logic;
SIGNAL \state_fut~44_combout\ : std_logic;
SIGNAL \state_fut.WAIT_ACK_2~q\ : std_logic;
SIGNAL \state.WAIT_ACK_2~q\ : std_logic;
SIGNAL \state_fut~28_combout\ : std_logic;
SIGNAL \rw_command~0_combout\ : std_logic;
SIGNAL \rw_command~1_combout\ : std_logic;
SIGNAL \rw_command~q\ : std_logic;
SIGNAL \continue_read~1_combout\ : std_logic;
SIGNAL \continue_read~q\ : std_logic;
SIGNAL \state_fut~32_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \state_fut~24_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \state_fut~41_combout\ : std_logic;
SIGNAL \state_fut.WAIT_STOP~q\ : std_logic;
SIGNAL \state.WAIT_STOP~q\ : std_logic;
SIGNAL \state_fut~36_combout\ : std_logic;
SIGNAL \state_fut~33_combout\ : std_logic;
SIGNAL \state_fut~35_combout\ : std_logic;
SIGNAL \state_fut~37_combout\ : std_logic;
SIGNAL \state_fut~38_combout\ : std_logic;
SIGNAL \state_fut.WRITE_CMD~q\ : std_logic;
SIGNAL \state.WRITE_CMD~q\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \state_fut~20_combout\ : std_logic;
SIGNAL \state_fut~29_combout\ : std_logic;
SIGNAL \state_fut~30_combout\ : std_logic;
SIGNAL \state_fut.READ_ADDRESS~q\ : std_logic;
SIGNAL \state.READ_ADDRESS~q\ : std_logic;
SIGNAL \Decoder1~9_combout\ : std_logic;
SIGNAL \addr_buf[0]~0_combout\ : std_logic;
SIGNAL \addr_buf[2]~12_combout\ : std_logic;
SIGNAL \addr_buf[3]~4_combout\ : std_logic;
SIGNAL \addr_buf[1]~5_combout\ : std_logic;
SIGNAL \addr_buf[1]~10_combout\ : std_logic;
SIGNAL \addr_buf[0]~1_combout\ : std_logic;
SIGNAL \addr_buf[0]~2_combout\ : std_logic;
SIGNAL \addr_buf[0]~9_combout\ : std_logic;
SIGNAL \addr_buf[3]~13_combout\ : std_logic;
SIGNAL \tx_byte_buf[7]~1_combout\ : std_logic;
SIGNAL \addr_buf[5]~6_combout\ : std_logic;
SIGNAL \addr_buf[4]~3_combout\ : std_logic;
SIGNAL \addr_buf[6]~7_combout\ : std_logic;
SIGNAL \addr_buf[6]~8_combout\ : std_logic;
SIGNAL \tx_byte_buf[7]~0_combout\ : std_logic;
SIGNAL \tx_byte_buf[7]~2_combout\ : std_logic;
SIGNAL \state_fut~21_combout\ : std_logic;
SIGNAL \state_fut~22_combout\ : std_logic;
SIGNAL \state_fut~23_combout\ : std_logic;
SIGNAL \state_fut~45_combout\ : std_logic;
SIGNAL \state_fut~25_combout\ : std_logic;
SIGNAL \state_fut~27_combout\ : std_logic;
SIGNAL \state_fut.IDLE~q\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \bit_counter[3]~8_combout\ : std_logic;
SIGNAL \bit_counter[3]~7_combout\ : std_logic;
SIGNAL \bit_counter[3]~9_combout\ : std_logic;
SIGNAL \bit_counter[1]~13_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \bit_counter[3]~10_combout\ : std_logic;
SIGNAL \state_fut~26_combout\ : std_logic;
SIGNAL \state_fut~42_combout\ : std_logic;
SIGNAL \state_fut~43_combout\ : std_logic;
SIGNAL \state_fut.SEND_ACK_1~q\ : std_logic;
SIGNAL \state.SEND_ACK_1~q\ : std_logic;
SIGNAL \state_fut~31_combout\ : std_logic;
SIGNAL \state_fut~40_combout\ : std_logic;
SIGNAL \state_fut.READ_CMD~q\ : std_logic;
SIGNAL \state.READ_CMD~q\ : std_logic;
SIGNAL \bit_counter[1]~4_combout\ : std_logic;
SIGNAL \bit_counter[1]~5_combout\ : std_logic;
SIGNAL \bit_counter[1]~15_combout\ : std_logic;
SIGNAL \bit_counter[1]~14_combout\ : std_logic;
SIGNAL \bit_counter[1]~6_combout\ : std_logic;
SIGNAL \bit_counter[0]~12_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \bit_counter[2]~11_combout\ : std_logic;
SIGNAL \dado[4]~input_o\ : std_logic;
SIGNAL \tx_byte[4]~reg0feeder_combout\ : std_logic;
SIGNAL \tx_byte[4]~reg0_q\ : std_logic;
SIGNAL \tx_byte_buf[7]~3_combout\ : std_logic;
SIGNAL \tx_byte_buf[7]~4_combout\ : std_logic;
SIGNAL \tx_byte_buf[7]~5_combout\ : std_logic;
SIGNAL \dado[5]~input_o\ : std_logic;
SIGNAL \tx_byte[5]~reg0feeder_combout\ : std_logic;
SIGNAL \tx_byte[5]~reg0_q\ : std_logic;
SIGNAL \dado[6]~input_o\ : std_logic;
SIGNAL \tx_byte[6]~reg0feeder_combout\ : std_logic;
SIGNAL \tx_byte[6]~reg0_q\ : std_logic;
SIGNAL \tx_byte_buf[6]~feeder_combout\ : std_logic;
SIGNAL \dado[7]~input_o\ : std_logic;
SIGNAL \tx_byte[7]~reg0feeder_combout\ : std_logic;
SIGNAL \tx_byte[7]~reg0_q\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \dado[1]~input_o\ : std_logic;
SIGNAL \tx_byte[1]~reg0_q\ : std_logic;
SIGNAL \dado[0]~input_o\ : std_logic;
SIGNAL \tx_byte[0]~reg0feeder_combout\ : std_logic;
SIGNAL \tx_byte[0]~reg0_q\ : std_logic;
SIGNAL \dado[2]~input_o\ : std_logic;
SIGNAL \tx_byte[2]~reg0feeder_combout\ : std_logic;
SIGNAL \tx_byte[2]~reg0_q\ : std_logic;
SIGNAL \tx_byte_buf[2]~feeder_combout\ : std_logic;
SIGNAL \dado[3]~input_o\ : std_logic;
SIGNAL \tx_byte[3]~reg0feeder_combout\ : std_logic;
SIGNAL \tx_byte[3]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \sda_o~q\ : std_logic;
SIGNAL \sda_out_en~0_combout\ : std_logic;
SIGNAL \sda_out_en~q\ : std_logic;
SIGNAL \tx_done~0_combout\ : std_logic;
SIGNAL \tx_done~reg0_q\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \Decoder1~1_combout\ : std_logic;
SIGNAL \rx_data_buf[0]~0_combout\ : std_logic;
SIGNAL \Decoder1~2_combout\ : std_logic;
SIGNAL \rx_data_buf[1]~1_combout\ : std_logic;
SIGNAL \Decoder1~3_combout\ : std_logic;
SIGNAL \rx_data_buf[2]~2_combout\ : std_logic;
SIGNAL \Decoder1~4_combout\ : std_logic;
SIGNAL \rx_data_buf[3]~3_combout\ : std_logic;
SIGNAL \Decoder1~5_combout\ : std_logic;
SIGNAL \rx_data_buf[4]~4_combout\ : std_logic;
SIGNAL \Decoder1~6_combout\ : std_logic;
SIGNAL \rx_data_buf[5]~5_combout\ : std_logic;
SIGNAL \Decoder1~7_combout\ : std_logic;
SIGNAL \rx_data_buf[6]~6_combout\ : std_logic;
SIGNAL \Decoder1~8_combout\ : std_logic;
SIGNAL \rx_data_buf[7]~7_combout\ : std_logic;
SIGNAL \rx_data_rdy_reg~0_combout\ : std_logic;
SIGNAL \rx_data_rdy_reg~q\ : std_logic;
SIGNAL \readDone~reg0feeder_combout\ : std_logic;
SIGNAL \readDone~reg0_q\ : std_logic;
SIGNAL tx_byte_buf : std_logic_vector(7 DOWNTO 0);
SIGNAL addr_buf : std_logic_vector(6 DOWNTO 0);
SIGNAL bit_counter : std_logic_vector(3 DOWNTO 0);
SIGNAL rx_data_buf : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_state.READ_CMD~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

in_progress <= ww_in_progress;
tx_done <= ww_tx_done;
rx_byte <= ww_rx_byte;
rx_data_rdy <= ww_rx_data_rdy;
ww_rst <= rst;
ww_dado <= dado;
readDone <= ww_readDone;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_state.READ_CMD~q\ <= NOT \state.READ_CMD~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X45_Y73_N9
\scl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \scl~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\sda~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sda_o~q\,
	oe => \sda_out_en~q\,
	devoe => ww_devoe,
	o => \sda~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\tx_byte[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tx_byte[0]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \tx_byte[0]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\tx_byte[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tx_byte[1]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \tx_byte[1]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\tx_byte[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tx_byte[2]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \tx_byte[2]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\tx_byte[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tx_byte[3]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \tx_byte[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\tx_byte[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tx_byte[4]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \tx_byte[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\tx_byte[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tx_byte[5]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \tx_byte[5]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\tx_byte[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tx_byte[6]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \tx_byte[6]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\tx_byte[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tx_byte[7]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \tx_byte[7]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\in_progress~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state_fut.IDLE~q\,
	devoe => ww_devoe,
	o => \in_progress~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\tx_done~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tx_done~reg0_q\,
	devoe => ww_devoe,
	o => \tx_done~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\rx_byte[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx_data_buf(0),
	devoe => ww_devoe,
	o => \rx_byte[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\rx_byte[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx_data_buf(1),
	devoe => ww_devoe,
	o => \rx_byte[1]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\rx_byte[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx_data_buf(2),
	devoe => ww_devoe,
	o => \rx_byte[2]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\rx_byte[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx_data_buf(3),
	devoe => ww_devoe,
	o => \rx_byte[3]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\rx_byte[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx_data_buf(4),
	devoe => ww_devoe,
	o => \rx_byte[4]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\rx_byte[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx_data_buf(5),
	devoe => ww_devoe,
	o => \rx_byte[5]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\rx_byte[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx_data_buf(6),
	devoe => ww_devoe,
	o => \rx_byte[6]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\rx_byte[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx_data_buf(7),
	devoe => ww_devoe,
	o => \rx_byte[7]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\rx_data_rdy~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data_rdy_reg~q\,
	devoe => ww_devoe,
	o => \rx_data_rdy~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\readDone~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readDone~reg0_q\,
	devoe => ww_devoe,
	o => \readDone~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOIBUF_X49_Y73_N22
\sda~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sda,
	o => \sda~input_o\);

-- Location: LCCOMB_X49_Y69_N16
\sda_d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sda_d~0_combout\ = !\sda~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sda~input_o\,
	combout => \sda_d~0_combout\);

-- Location: FF_X49_Y69_N17
sda_d : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sda_d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sda_d~q\);

-- Location: LCCOMB_X45_Y69_N30
\sda_d2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sda_d2~feeder_combout\ = \sda_d~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sda_d~q\,
	combout => \sda_d2~feeder_combout\);

-- Location: FF_X45_Y69_N31
sda_d2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sda_d2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sda_d2~q\);

-- Location: IOIBUF_X45_Y73_N8
\scl~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => scl,
	o => \scl~input_o\);

-- Location: LCCOMB_X45_Y69_N2
\scl_d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \scl_d~0_combout\ = !\scl~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \scl~input_o\,
	combout => \scl_d~0_combout\);

-- Location: FF_X45_Y69_N3
scl_d : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \scl_d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scl_d~q\);

-- Location: LCCOMB_X45_Y69_N28
\scl_d2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \scl_d2~feeder_combout\ = \scl_d~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \scl_d~q\,
	combout => \scl_d2~feeder_combout\);

-- Location: FF_X45_Y69_N29
scl_d2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \scl_d2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scl_d2~q\);

-- Location: LCCOMB_X45_Y69_N16
\start_strobe~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \start_strobe~0_combout\ = (!\sda_d2~q\ & (!\scl_d~q\ & (\sda_d~q\ & !\scl_d2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda_d2~q\,
	datab => \scl_d~q\,
	datac => \sda_d~q\,
	datad => \scl_d2~q\,
	combout => \start_strobe~0_combout\);

-- Location: FF_X46_Y69_N29
start_strobe : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \start_strobe~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start_strobe~q\);

-- Location: LCCOMB_X45_Y69_N26
\process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (\sda_d2~q\ & (!\scl_d~q\ & (!\sda_d~q\ & !\scl_d2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda_d2~q\,
	datab => \scl_d~q\,
	datac => \sda_d~q\,
	datad => \scl_d2~q\,
	combout => \process_2~0_combout\);

-- Location: FF_X46_Y69_N7
stop_strobe : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \process_2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stop_strobe~q\);

-- Location: LCCOMB_X46_Y69_N12
\state_fut~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~19_combout\ = (!\start_strobe~q\ & !\stop_strobe~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start_strobe~q\,
	datad => \stop_strobe~q\,
	combout => \state_fut~19_combout\);

-- Location: LCCOMB_X49_Y69_N14
\addr_buf[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_buf[2]~11_combout\ = (bit_counter(1) & (!bit_counter(2) & bit_counter(0))) # (!bit_counter(1) & (bit_counter(2) & !bit_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(1),
	datab => bit_counter(2),
	datad => bit_counter(0),
	combout => \addr_buf[2]~11_combout\);

-- Location: LCCOMB_X45_Y69_N18
\process_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~1_combout\ = (!\scl_d2~q\ & \scl_d~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scl_d2~q\,
	datad => \scl_d~q\,
	combout => \process_2~1_combout\);

-- Location: FF_X47_Y69_N9
scl_falling_strobe : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \process_2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scl_falling_strobe~q\);

-- Location: LCCOMB_X47_Y69_N20
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!bit_counter(3) & (bit_counter(2) & (bit_counter(0) & bit_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(3),
	datab => bit_counter(2),
	datac => bit_counter(0),
	datad => bit_counter(1),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X48_Y69_N18
\state_fut~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~34_combout\ = (\state.READ_CMD~q\ & (\scl_falling_strobe~q\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_CMD~q\,
	datac => \scl_falling_strobe~q\,
	datad => \Equal2~0_combout\,
	combout => \state_fut~34_combout\);

-- Location: LCCOMB_X45_Y69_N4
\state_fut~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~39_combout\ = (\state_fut~29_combout\ & (\state_fut~19_combout\ & (\state_fut~34_combout\))) # (!\state_fut~29_combout\ & (((\state_fut.WAIT_ACK_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_fut~19_combout\,
	datab => \state_fut~34_combout\,
	datac => \state_fut.WAIT_ACK_1~q\,
	datad => \state_fut~29_combout\,
	combout => \state_fut~39_combout\);

-- Location: FF_X45_Y69_N5
\state_fut.WAIT_ACK_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_fut~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_fut.WAIT_ACK_1~q\);

-- Location: IOIBUF_X0_Y36_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X46_Y69_N23
\state.WAIT_ACK_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state_fut.WAIT_ACK_1~q\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WAIT_ACK_1~q\);

-- Location: LCCOMB_X45_Y69_N6
\process_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~2_combout\ = (\scl_d2~q\ & !\scl_d~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scl_d2~q\,
	datad => \scl_d~q\,
	combout => \process_2~2_combout\);

-- Location: FF_X46_Y69_N13
scl_rising_strobe : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \process_2~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scl_rising_strobe~q\);

-- Location: LCCOMB_X45_Y69_N10
\continue_read~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \continue_read~0_combout\ = (\state.WAIT_ACK_1~q\ & \scl_rising_strobe~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.WAIT_ACK_1~q\,
	datad => \scl_rising_strobe~q\,
	combout => \continue_read~0_combout\);

-- Location: LCCOMB_X45_Y69_N22
\state_fut~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~44_combout\ = (\state_fut~19_combout\ & ((\continue_read~0_combout\) # ((\state_fut.WAIT_ACK_2~q\ & !\state_fut~29_combout\)))) # (!\state_fut~19_combout\ & (((\state_fut.WAIT_ACK_2~q\ & !\state_fut~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_fut~19_combout\,
	datab => \continue_read~0_combout\,
	datac => \state_fut.WAIT_ACK_2~q\,
	datad => \state_fut~29_combout\,
	combout => \state_fut~44_combout\);

-- Location: FF_X45_Y69_N23
\state_fut.WAIT_ACK_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_fut~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_fut.WAIT_ACK_2~q\);

-- Location: FF_X48_Y69_N27
\state.WAIT_ACK_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state_fut.WAIT_ACK_2~q\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WAIT_ACK_2~q\);

-- Location: LCCOMB_X48_Y69_N10
\state_fut~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~28_combout\ = (\state.WAIT_ACK_2~q\) # ((\state.SEND_ACK_1~q\) # ((\state.READ_CMD~q\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_CMD~q\,
	datab => \state.WAIT_ACK_2~q\,
	datac => \state.SEND_ACK_1~q\,
	datad => \Equal2~0_combout\,
	combout => \state_fut~28_combout\);

-- Location: LCCOMB_X49_Y69_N20
\rw_command~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rw_command~0_combout\ = (\state.READ_ADDRESS~q\ & (\scl_rising_strobe~q\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_ADDRESS~q\,
	datab => \scl_rising_strobe~q\,
	datad => \Equal2~0_combout\,
	combout => \rw_command~0_combout\);

-- Location: LCCOMB_X49_Y69_N4
\rw_command~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rw_command~1_combout\ = (\rw_command~0_combout\ & (!\sda_d~q\)) # (!\rw_command~0_combout\ & ((\rw_command~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sda_d~q\,
	datac => \rw_command~q\,
	datad => \rw_command~0_combout\,
	combout => \rw_command~1_combout\);

-- Location: FF_X49_Y69_N5
rw_command : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rw_command~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rw_command~q\);

-- Location: LCCOMB_X49_Y69_N18
\continue_read~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \continue_read~1_combout\ = (\scl_rising_strobe~q\ & ((\state.WAIT_ACK_1~q\ & ((\sda_d~q\))) # (!\state.WAIT_ACK_1~q\ & (\continue_read~q\)))) # (!\scl_rising_strobe~q\ & (((\continue_read~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scl_rising_strobe~q\,
	datab => \state.WAIT_ACK_1~q\,
	datac => \continue_read~q\,
	datad => \sda_d~q\,
	combout => \continue_read~1_combout\);

-- Location: FF_X49_Y69_N19
continue_read : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \continue_read~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \continue_read~q\);

-- Location: LCCOMB_X48_Y69_N30
\state_fut~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~32_combout\ = (\state.WAIT_ACK_2~q\ & (!\continue_read~q\ & \scl_falling_strobe~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WAIT_ACK_2~q\,
	datab => \continue_read~q\,
	datad => \scl_falling_strobe~q\,
	combout => \state_fut~32_combout\);

-- Location: LCCOMB_X47_Y69_N24
\process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (!bit_counter(1) & (\scl_falling_strobe~q\ & (!bit_counter(0) & !bit_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(1),
	datab => \scl_falling_strobe~q\,
	datac => bit_counter(0),
	datad => bit_counter(2),
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X47_Y69_N8
\state_fut~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~24_combout\ = (!\state.WRITE_CMD~q\ & !\state.READ_ADDRESS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_CMD~q\,
	datad => \state.READ_ADDRESS~q\,
	combout => \state_fut~24_combout\);

-- Location: LCCOMB_X48_Y69_N12
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state_fut.WAIT_STOP~q\ & (!\state_fut~24_combout\ & ((!bit_counter(3)) # (!\process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_fut.WAIT_STOP~q\,
	datab => \process_1~0_combout\,
	datac => bit_counter(3),
	datad => \state_fut~24_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X48_Y69_N24
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\state_fut.WAIT_STOP~q\ & (!\scl_falling_strobe~q\ & ((\state.SEND_ACK_1~q\) # (\state.WAIT_ACK_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SEND_ACK_1~q\,
	datab => \state.WAIT_ACK_2~q\,
	datac => \state_fut.WAIT_STOP~q\,
	datad => \scl_falling_strobe~q\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X48_Y69_N22
\Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (\state.WAIT_STOP~q\) # (((\state.WAIT_ACK_1~q\ & !\scl_rising_strobe~q\)) # (!\state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WAIT_ACK_1~q\,
	datab => \scl_rising_strobe~q\,
	datac => \state.WAIT_STOP~q\,
	datad => \state.IDLE~q\,
	combout => \Selector7~3_combout\);

-- Location: LCCOMB_X48_Y69_N2
\Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\state.READ_CMD~q\ & (\state_fut.WAIT_STOP~q\ & ((!\Equal2~0_combout\) # (!\scl_falling_strobe~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_CMD~q\,
	datab => \scl_falling_strobe~q\,
	datac => \state_fut.WAIT_STOP~q\,
	datad => \Equal2~0_combout\,
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X48_Y69_N6
\Selector7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = (\state_fut~32_combout\) # ((\Selector7~2_combout\) # ((\state_fut.WAIT_STOP~q\ & \Selector7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_fut.WAIT_STOP~q\,
	datab => \state_fut~32_combout\,
	datac => \Selector7~3_combout\,
	datad => \Selector7~2_combout\,
	combout => \Selector7~4_combout\);

-- Location: LCCOMB_X48_Y69_N4
\state_fut~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~41_combout\ = (\state_fut~19_combout\ & ((\Selector7~0_combout\) # ((\Selector7~1_combout\) # (\Selector7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \Selector7~1_combout\,
	datac => \state_fut~19_combout\,
	datad => \Selector7~4_combout\,
	combout => \state_fut~41_combout\);

-- Location: FF_X48_Y69_N5
\state_fut.WAIT_STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_fut~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_fut.WAIT_STOP~q\);

-- Location: FF_X48_Y69_N25
\state.WAIT_STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state_fut.WAIT_STOP~q\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WAIT_STOP~q\);

-- Location: LCCOMB_X48_Y69_N8
\state_fut~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~36_combout\ = (!\state.SEND_ACK_1~q\ & (!\state.WAIT_ACK_2~q\ & (!\state.WAIT_STOP~q\ & \state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SEND_ACK_1~q\,
	datab => \state.WAIT_ACK_2~q\,
	datac => \state.WAIT_STOP~q\,
	datad => \state.IDLE~q\,
	combout => \state_fut~36_combout\);

-- Location: LCCOMB_X48_Y69_N14
\state_fut~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~33_combout\ = (!\state.READ_CMD~q\ & (bit_counter(3) & (!\state.WAIT_ACK_1~q\ & \process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_CMD~q\,
	datab => bit_counter(3),
	datac => \state.WAIT_ACK_1~q\,
	datad => \process_1~0_combout\,
	combout => \state_fut~33_combout\);

-- Location: LCCOMB_X48_Y69_N20
\state_fut~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~35_combout\ = (\state_fut~33_combout\) # ((\state.WAIT_ACK_1~q\ & (\scl_rising_strobe~q\)) # (!\state.WAIT_ACK_1~q\ & ((\state_fut~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WAIT_ACK_1~q\,
	datab => \scl_rising_strobe~q\,
	datac => \state_fut~33_combout\,
	datad => \state_fut~34_combout\,
	combout => \state_fut~35_combout\);

-- Location: LCCOMB_X48_Y69_N0
\state_fut~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~37_combout\ = ((\state_fut~32_combout\) # ((\state_fut~36_combout\ & \state_fut~35_combout\))) # (!\state_fut~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_fut~19_combout\,
	datab => \state_fut~32_combout\,
	datac => \state_fut~36_combout\,
	datad => \state_fut~35_combout\,
	combout => \state_fut~37_combout\);

-- Location: LCCOMB_X48_Y69_N16
\state_fut~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~38_combout\ = (!\state_fut~37_combout\ & ((\state_fut~31_combout\ & (!\rw_command~q\)) # (!\state_fut~31_combout\ & ((\state_fut.WRITE_CMD~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_fut~31_combout\,
	datab => \rw_command~q\,
	datac => \state_fut.WRITE_CMD~q\,
	datad => \state_fut~37_combout\,
	combout => \state_fut~38_combout\);

-- Location: FF_X48_Y69_N17
\state_fut.WRITE_CMD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_fut~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_fut.WRITE_CMD~q\);

-- Location: FF_X47_Y69_N1
\state.WRITE_CMD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state_fut.WRITE_CMD~q\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WRITE_CMD~q\);

-- Location: LCCOMB_X47_Y69_N22
\process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (bit_counter(3) & \process_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bit_counter(3),
	datad => \process_1~0_combout\,
	combout => \process_1~1_combout\);

-- Location: LCCOMB_X46_Y69_N26
\state_fut~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~20_combout\ = (\state_fut~19_combout\ & (((!\state.WRITE_CMD~q\ & !\state.READ_ADDRESS~q\)) # (!\process_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_fut~19_combout\,
	datab => \state.WRITE_CMD~q\,
	datac => \state.READ_ADDRESS~q\,
	datad => \process_1~1_combout\,
	combout => \state_fut~20_combout\);

-- Location: LCCOMB_X45_Y69_N12
\state_fut~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~29_combout\ = (\continue_read~0_combout\) # (((\scl_falling_strobe~q\ & \state_fut~28_combout\)) # (!\state_fut~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \continue_read~0_combout\,
	datab => \scl_falling_strobe~q\,
	datac => \state_fut~28_combout\,
	datad => \state_fut~20_combout\,
	combout => \state_fut~29_combout\);

-- Location: LCCOMB_X45_Y69_N0
\state_fut~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~30_combout\ = (\stop_strobe~q\ & (((\state_fut.READ_ADDRESS~q\ & !\state_fut~29_combout\)))) # (!\stop_strobe~q\ & ((\start_strobe~q\) # ((\state_fut.READ_ADDRESS~q\ & !\state_fut~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop_strobe~q\,
	datab => \start_strobe~q\,
	datac => \state_fut.READ_ADDRESS~q\,
	datad => \state_fut~29_combout\,
	combout => \state_fut~30_combout\);

-- Location: FF_X45_Y69_N1
\state_fut.READ_ADDRESS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_fut~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_fut.READ_ADDRESS~q\);

-- Location: FF_X46_Y69_N21
\state.READ_ADDRESS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state_fut.READ_ADDRESS~q\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.READ_ADDRESS~q\);

-- Location: LCCOMB_X46_Y69_N30
\Decoder1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~9_combout\ = (\scl_rising_strobe~q\ & !bit_counter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \scl_rising_strobe~q\,
	datad => bit_counter(3),
	combout => \Decoder1~9_combout\);

-- Location: LCCOMB_X50_Y69_N2
\addr_buf[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_buf[0]~0_combout\ = (\state.READ_ADDRESS~q\ & (!bit_counter(0) & (!\Equal2~1_combout\ & \Decoder1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_ADDRESS~q\,
	datab => bit_counter(0),
	datac => \Equal2~1_combout\,
	datad => \Decoder1~9_combout\,
	combout => \addr_buf[0]~0_combout\);

-- Location: LCCOMB_X50_Y69_N30
\addr_buf[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_buf[2]~12_combout\ = (\addr_buf[2]~11_combout\ & ((\addr_buf[0]~0_combout\ & (!\sda_d~q\)) # (!\addr_buf[0]~0_combout\ & ((addr_buf(2)))))) # (!\addr_buf[2]~11_combout\ & (((addr_buf(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_buf[2]~11_combout\,
	datab => \sda_d~q\,
	datac => addr_buf(2),
	datad => \addr_buf[0]~0_combout\,
	combout => \addr_buf[2]~12_combout\);

-- Location: FF_X50_Y69_N31
\addr_buf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \addr_buf[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_buf(2));

-- Location: LCCOMB_X46_Y69_N16
\addr_buf[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_buf[3]~4_combout\ = (bit_counter(0) & (\state.READ_ADDRESS~q\ & (\Decoder1~9_combout\ & !\Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(0),
	datab => \state.READ_ADDRESS~q\,
	datac => \Decoder1~9_combout\,
	datad => \Equal2~1_combout\,
	combout => \addr_buf[3]~4_combout\);

-- Location: LCCOMB_X50_Y69_N0
\addr_buf[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_buf[1]~5_combout\ = (\addr_buf[3]~4_combout\ & (bit_counter(0) $ (bit_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(0),
	datac => bit_counter(1),
	datad => \addr_buf[3]~4_combout\,
	combout => \addr_buf[1]~5_combout\);

-- Location: LCCOMB_X50_Y69_N20
\addr_buf[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_buf[1]~10_combout\ = (\Add1~0_combout\ & ((\addr_buf[1]~5_combout\ & (!\sda_d~q\)) # (!\addr_buf[1]~5_combout\ & ((addr_buf(1)))))) # (!\Add1~0_combout\ & (((addr_buf(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda_d~q\,
	datab => \Add1~0_combout\,
	datac => addr_buf(1),
	datad => \addr_buf[1]~5_combout\,
	combout => \addr_buf[1]~10_combout\);

-- Location: FF_X50_Y69_N21
\addr_buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \addr_buf[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_buf(1));

-- Location: LCCOMB_X50_Y69_N16
\addr_buf[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_buf[0]~1_combout\ = (!\sda_d~q\ & (\addr_buf[0]~0_combout\ & (bit_counter(0) $ (bit_counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda_d~q\,
	datab => bit_counter(0),
	datac => bit_counter(1),
	datad => \addr_buf[0]~0_combout\,
	combout => \addr_buf[0]~1_combout\);

-- Location: LCCOMB_X50_Y69_N10
\addr_buf[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_buf[0]~2_combout\ = (\addr_buf[0]~0_combout\ & (bit_counter(0) $ (bit_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(0),
	datac => bit_counter(1),
	datad => \addr_buf[0]~0_combout\,
	combout => \addr_buf[0]~2_combout\);

-- Location: LCCOMB_X50_Y69_N26
\addr_buf[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_buf[0]~9_combout\ = (\Add1~0_combout\ & ((\addr_buf[0]~1_combout\) # ((addr_buf(0) & !\addr_buf[0]~2_combout\)))) # (!\Add1~0_combout\ & (((addr_buf(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \addr_buf[0]~1_combout\,
	datac => addr_buf(0),
	datad => \addr_buf[0]~2_combout\,
	combout => \addr_buf[0]~9_combout\);

-- Location: FF_X50_Y69_N27
\addr_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \addr_buf[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_buf(0));

-- Location: LCCOMB_X50_Y69_N12
\addr_buf[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_buf[3]~13_combout\ = (\addr_buf[2]~11_combout\ & ((\addr_buf[3]~4_combout\ & (!\sda_d~q\)) # (!\addr_buf[3]~4_combout\ & ((addr_buf(3)))))) # (!\addr_buf[2]~11_combout\ & (((addr_buf(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_buf[2]~11_combout\,
	datab => \sda_d~q\,
	datac => addr_buf(3),
	datad => \addr_buf[3]~4_combout\,
	combout => \addr_buf[3]~13_combout\);

-- Location: FF_X50_Y69_N13
\addr_buf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \addr_buf[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_buf(3));

-- Location: LCCOMB_X50_Y69_N6
\tx_byte_buf[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_byte_buf[7]~1_combout\ = (!addr_buf(2) & (!addr_buf(1) & (addr_buf(0) & !addr_buf(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_buf(2),
	datab => addr_buf(1),
	datac => addr_buf(0),
	datad => addr_buf(3),
	combout => \tx_byte_buf[7]~1_combout\);

-- Location: LCCOMB_X50_Y69_N8
\addr_buf[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_buf[5]~6_combout\ = (\Add1~0_combout\ & (((addr_buf(5))))) # (!\Add1~0_combout\ & ((\addr_buf[1]~5_combout\ & (!\sda_d~q\)) # (!\addr_buf[1]~5_combout\ & ((addr_buf(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda_d~q\,
	datab => \Add1~0_combout\,
	datac => addr_buf(5),
	datad => \addr_buf[1]~5_combout\,
	combout => \addr_buf[5]~6_combout\);

-- Location: FF_X50_Y69_N9
\addr_buf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \addr_buf[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_buf(5));

-- Location: LCCOMB_X50_Y69_N22
\addr_buf[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_buf[4]~3_combout\ = (\Add1~0_combout\ & (((addr_buf(4))))) # (!\Add1~0_combout\ & ((\addr_buf[0]~1_combout\) # ((!\addr_buf[0]~2_combout\ & addr_buf(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr_buf[0]~2_combout\,
	datab => \Add1~0_combout\,
	datac => addr_buf(4),
	datad => \addr_buf[0]~1_combout\,
	combout => \addr_buf[4]~3_combout\);

-- Location: FF_X50_Y69_N23
\addr_buf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \addr_buf[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_buf(4));

-- Location: LCCOMB_X50_Y69_N14
\addr_buf[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_buf[6]~7_combout\ = (bit_counter(2) & (bit_counter(1) & bit_counter(0))) # (!bit_counter(2) & (!bit_counter(1) & !bit_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(2),
	datab => bit_counter(1),
	datac => bit_counter(0),
	combout => \addr_buf[6]~7_combout\);

-- Location: LCCOMB_X50_Y69_N18
\addr_buf[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_buf[6]~8_combout\ = (\addr_buf[6]~7_combout\ & ((\addr_buf[0]~0_combout\ & (!\sda_d~q\)) # (!\addr_buf[0]~0_combout\ & ((addr_buf(6)))))) # (!\addr_buf[6]~7_combout\ & (((addr_buf(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda_d~q\,
	datab => \addr_buf[6]~7_combout\,
	datac => addr_buf(6),
	datad => \addr_buf[0]~0_combout\,
	combout => \addr_buf[6]~8_combout\);

-- Location: FF_X50_Y69_N19
\addr_buf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \addr_buf[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_buf(6));

-- Location: LCCOMB_X50_Y69_N24
\tx_byte_buf[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_byte_buf[7]~0_combout\ = (!addr_buf(5) & (!addr_buf(4) & !addr_buf(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => addr_buf(5),
	datac => addr_buf(4),
	datad => addr_buf(6),
	combout => \tx_byte_buf[7]~0_combout\);

-- Location: LCCOMB_X46_Y69_N20
\tx_byte_buf[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_byte_buf[7]~2_combout\ = (\tx_byte_buf[7]~1_combout\ & (\tx_byte_buf[7]~0_combout\ & (\state.READ_ADDRESS~q\ & \process_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_byte_buf[7]~1_combout\,
	datab => \tx_byte_buf[7]~0_combout\,
	datac => \state.READ_ADDRESS~q\,
	datad => \process_1~1_combout\,
	combout => \tx_byte_buf[7]~2_combout\);

-- Location: LCCOMB_X46_Y69_N10
\state_fut~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~21_combout\ = (\state.IDLE~q\ & (\state.WAIT_ACK_1~q\ & (\scl_rising_strobe~q\))) # (!\state.IDLE~q\ & (((\start_strobe~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WAIT_ACK_1~q\,
	datab => \state.IDLE~q\,
	datac => \scl_rising_strobe~q\,
	datad => \start_strobe~q\,
	combout => \state_fut~21_combout\);

-- Location: LCCOMB_X46_Y69_N18
\state_fut~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~22_combout\ = (!\state.WAIT_ACK_1~q\ & (\state.IDLE~q\ & \scl_falling_strobe~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WAIT_ACK_1~q\,
	datab => \state.IDLE~q\,
	datac => \scl_falling_strobe~q\,
	combout => \state_fut~22_combout\);

-- Location: LCCOMB_X46_Y69_N2
\state_fut~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~23_combout\ = (\state_fut~21_combout\) # ((\state_fut~22_combout\ & ((\Equal2~0_combout\) # (!\state.READ_CMD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_fut~21_combout\,
	datab => \state.READ_CMD~q\,
	datac => \Equal2~0_combout\,
	datad => \state_fut~22_combout\,
	combout => \state_fut~23_combout\);

-- Location: LCCOMB_X46_Y69_N24
\state_fut~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~45_combout\ = (!\state.READ_ADDRESS~q\ & (!\state.WRITE_CMD~q\ & (!\state.WAIT_STOP~q\ & \state_fut~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_ADDRESS~q\,
	datab => \state.WRITE_CMD~q\,
	datac => \state.WAIT_STOP~q\,
	datad => \state_fut~23_combout\,
	combout => \state_fut~45_combout\);

-- Location: LCCOMB_X46_Y69_N28
\state_fut~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~25_combout\ = (\state_fut~20_combout\ & ((\state_fut.IDLE~q\) # (\state_fut~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_fut~20_combout\,
	datab => \state_fut.IDLE~q\,
	datad => \state_fut~45_combout\,
	combout => \state_fut~25_combout\);

-- Location: LCCOMB_X46_Y69_N8
\state_fut~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~27_combout\ = (\state_fut~25_combout\) # ((\state_fut~26_combout\ & ((\tx_byte_buf[7]~2_combout\))) # (!\state_fut~26_combout\ & (!\stop_strobe~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_fut~26_combout\,
	datab => \stop_strobe~q\,
	datac => \tx_byte_buf[7]~2_combout\,
	datad => \state_fut~25_combout\,
	combout => \state_fut~27_combout\);

-- Location: FF_X46_Y69_N9
\state_fut.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_fut~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_fut.IDLE~q\);

-- Location: FF_X46_Y69_N5
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state_fut.IDLE~q\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: LCCOMB_X46_Y69_N4
\bit_counter[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_counter[3]~8_combout\ = (\state.IDLE~q\ & (\state_fut~19_combout\ & ((!bit_counter(3)) # (!\state.READ_CMD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_CMD~q\,
	datab => bit_counter(3),
	datac => \state.IDLE~q\,
	datad => \state_fut~19_combout\,
	combout => \bit_counter[3]~8_combout\);

-- Location: LCCOMB_X47_Y69_N14
\bit_counter[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_counter[3]~7_combout\ = (\process_1~1_combout\ & (\state_fut~24_combout\ & ((!\state.READ_CMD~q\) # (!\Equal2~1_combout\)))) # (!\process_1~1_combout\ & (((!\state.READ_CMD~q\)) # (!\Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~1_combout\,
	datab => \Equal2~1_combout\,
	datac => \state.READ_CMD~q\,
	datad => \state_fut~24_combout\,
	combout => \bit_counter[3]~7_combout\);

-- Location: LCCOMB_X47_Y69_N16
\bit_counter[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_counter[3]~9_combout\ = (\bit_counter[3]~8_combout\ & (\bit_counter[3]~7_combout\ & !\bit_counter[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit_counter[3]~8_combout\,
	datac => \bit_counter[3]~7_combout\,
	datad => \bit_counter[1]~6_combout\,
	combout => \bit_counter[3]~9_combout\);

-- Location: LCCOMB_X47_Y69_N6
\bit_counter[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_counter[1]~13_combout\ = (bit_counter(1) & ((\bit_counter[1]~6_combout\) # ((!bit_counter(0) & \bit_counter[3]~9_combout\)))) # (!bit_counter(1) & (bit_counter(0) & ((\bit_counter[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(0),
	datab => \bit_counter[1]~6_combout\,
	datac => bit_counter(1),
	datad => \bit_counter[3]~9_combout\,
	combout => \bit_counter[1]~13_combout\);

-- Location: FF_X47_Y69_N7
\bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bit_counter[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(1));

-- Location: LCCOMB_X47_Y69_N2
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (bit_counter(2) & (bit_counter(0) & bit_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(2),
	datac => bit_counter(0),
	datad => bit_counter(1),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X47_Y69_N26
\bit_counter[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_counter[3]~10_combout\ = (bit_counter(3) & ((\bit_counter[1]~6_combout\) # ((!\Equal2~1_combout\ & \bit_counter[3]~9_combout\)))) # (!bit_counter(3) & (\Equal2~1_combout\ & ((\bit_counter[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \bit_counter[1]~6_combout\,
	datac => bit_counter(3),
	datad => \bit_counter[3]~9_combout\,
	combout => \bit_counter[3]~10_combout\);

-- Location: FF_X47_Y69_N27
\bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bit_counter[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(3));

-- Location: LCCOMB_X46_Y69_N0
\state_fut~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~26_combout\ = (\state_fut~19_combout\ & (((!\process_1~0_combout\) # (!\state.WRITE_CMD~q\)) # (!bit_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_fut~19_combout\,
	datab => bit_counter(3),
	datac => \state.WRITE_CMD~q\,
	datad => \process_1~0_combout\,
	combout => \state_fut~26_combout\);

-- Location: LCCOMB_X46_Y69_N6
\state_fut~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~42_combout\ = (\state_fut~20_combout\ & (\state_fut.SEND_ACK_1~q\ & !\state_fut~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_fut~20_combout\,
	datab => \state_fut.SEND_ACK_1~q\,
	datad => \state_fut~45_combout\,
	combout => \state_fut~42_combout\);

-- Location: LCCOMB_X46_Y69_N14
\state_fut~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~43_combout\ = (\state_fut~42_combout\) # ((\state_fut~26_combout\ & ((\tx_byte_buf[7]~2_combout\))) # (!\state_fut~26_combout\ & (\state_fut~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_fut~19_combout\,
	datab => \state_fut~26_combout\,
	datac => \tx_byte_buf[7]~2_combout\,
	datad => \state_fut~42_combout\,
	combout => \state_fut~43_combout\);

-- Location: FF_X46_Y69_N15
\state_fut.SEND_ACK_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_fut~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_fut.SEND_ACK_1~q\);

-- Location: FF_X48_Y69_N31
\state.SEND_ACK_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state_fut.SEND_ACK_1~q\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SEND_ACK_1~q\);

-- Location: LCCOMB_X48_Y69_N26
\state_fut~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~31_combout\ = (\scl_falling_strobe~q\ & ((\state.SEND_ACK_1~q\) # ((\continue_read~q\ & \state.WAIT_ACK_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SEND_ACK_1~q\,
	datab => \continue_read~q\,
	datac => \state.WAIT_ACK_2~q\,
	datad => \scl_falling_strobe~q\,
	combout => \state_fut~31_combout\);

-- Location: LCCOMB_X48_Y69_N28
\state_fut~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_fut~40_combout\ = (!\state_fut~37_combout\ & ((\state_fut~31_combout\ & (\rw_command~q\)) # (!\state_fut~31_combout\ & ((\state_fut.READ_CMD~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_fut~31_combout\,
	datab => \rw_command~q\,
	datac => \state_fut.READ_CMD~q\,
	datad => \state_fut~37_combout\,
	combout => \state_fut~40_combout\);

-- Location: FF_X48_Y69_N29
\state_fut.READ_CMD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_fut~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_fut.READ_CMD~q\);

-- Location: FF_X47_Y69_N15
\state.READ_CMD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state_fut.READ_CMD~q\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.READ_CMD~q\);

-- Location: LCCOMB_X47_Y69_N12
\bit_counter[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_counter[1]~4_combout\ = (((\state.IDLE~q\) # (!bit_counter(0))) # (!bit_counter(2))) # (!bit_counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(1),
	datab => bit_counter(2),
	datac => \state.IDLE~q\,
	datad => bit_counter(0),
	combout => \bit_counter[1]~4_combout\);

-- Location: LCCOMB_X47_Y69_N10
\bit_counter[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_counter[1]~5_combout\ = ((bit_counter(3)) # ((!\scl_falling_strobe~q\ & \bit_counter[1]~4_combout\))) # (!\state.READ_CMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_CMD~q\,
	datab => bit_counter(3),
	datac => \scl_falling_strobe~q\,
	datad => \bit_counter[1]~4_combout\,
	combout => \bit_counter[1]~5_combout\);

-- Location: LCCOMB_X47_Y69_N30
\bit_counter[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_counter[1]~15_combout\ = ((bit_counter(3) & ((!\process_1~0_combout\))) # (!bit_counter(3) & (!\scl_rising_strobe~q\))) # (!\state.READ_ADDRESS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(3),
	datab => \state.READ_ADDRESS~q\,
	datac => \scl_rising_strobe~q\,
	datad => \process_1~0_combout\,
	combout => \bit_counter[1]~15_combout\);

-- Location: LCCOMB_X47_Y69_N0
\bit_counter[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_counter[1]~14_combout\ = ((bit_counter(3) & ((!\process_1~0_combout\))) # (!bit_counter(3) & (!\scl_rising_strobe~q\))) # (!\state.WRITE_CMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scl_rising_strobe~q\,
	datab => bit_counter(3),
	datac => \state.WRITE_CMD~q\,
	datad => \process_1~0_combout\,
	combout => \bit_counter[1]~14_combout\);

-- Location: LCCOMB_X47_Y69_N28
\bit_counter[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_counter[1]~6_combout\ = (\bit_counter[1]~5_combout\ & (\state_fut~19_combout\ & (\bit_counter[1]~15_combout\ & \bit_counter[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_counter[1]~5_combout\,
	datab => \state_fut~19_combout\,
	datac => \bit_counter[1]~15_combout\,
	datad => \bit_counter[1]~14_combout\,
	combout => \bit_counter[1]~6_combout\);

-- Location: LCCOMB_X47_Y69_N4
\bit_counter[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_counter[0]~12_combout\ = (\bit_counter[1]~6_combout\ & (((bit_counter(0))))) # (!\bit_counter[1]~6_combout\ & (\bit_counter[3]~7_combout\ & (!bit_counter(0) & \bit_counter[3]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_counter[1]~6_combout\,
	datab => \bit_counter[3]~7_combout\,
	datac => bit_counter(0),
	datad => \bit_counter[3]~8_combout\,
	combout => \bit_counter[0]~12_combout\);

-- Location: FF_X47_Y69_N5
\bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bit_counter[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(0));

-- Location: LCCOMB_X50_Y69_N28
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = bit_counter(2) $ (((bit_counter(0) & bit_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(2),
	datab => bit_counter(0),
	datac => bit_counter(1),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X47_Y69_N18
\bit_counter[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit_counter[2]~11_combout\ = (\Add1~0_combout\ & ((\bit_counter[3]~9_combout\) # ((\bit_counter[1]~6_combout\ & bit_counter(2))))) # (!\Add1~0_combout\ & (\bit_counter[1]~6_combout\ & (bit_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \bit_counter[1]~6_combout\,
	datac => bit_counter(2),
	datad => \bit_counter[3]~9_combout\,
	combout => \bit_counter[2]~11_combout\);

-- Location: FF_X47_Y69_N19
\bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bit_counter[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(2));

-- Location: IOIBUF_X52_Y73_N8
\dado[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(4),
	o => \dado[4]~input_o\);

-- Location: LCCOMB_X49_Y69_N30
\tx_byte[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_byte[4]~reg0feeder_combout\ = \dado[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[4]~input_o\,
	combout => \tx_byte[4]~reg0feeder_combout\);

-- Location: FF_X49_Y69_N31
\tx_byte[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_byte[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_byte[4]~reg0_q\);

-- Location: LCCOMB_X49_Y69_N22
\tx_byte_buf[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_byte_buf[7]~3_combout\ = ((!\state.WAIT_ACK_1~q\) # (!\sda_d~q\)) # (!\scl_rising_strobe~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scl_rising_strobe~q\,
	datab => \sda_d~q\,
	datad => \state.WAIT_ACK_1~q\,
	combout => \tx_byte_buf[7]~3_combout\);

-- Location: LCCOMB_X49_Y69_N12
\tx_byte_buf[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_byte_buf[7]~4_combout\ = (((!\tx_byte_buf[7]~0_combout\) # (!bit_counter(3))) # (!\rw_command~q\)) # (!\state.READ_ADDRESS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_ADDRESS~q\,
	datab => \rw_command~q\,
	datac => bit_counter(3),
	datad => \tx_byte_buf[7]~0_combout\,
	combout => \tx_byte_buf[7]~4_combout\);

-- Location: LCCOMB_X49_Y69_N8
\tx_byte_buf[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_byte_buf[7]~5_combout\ = ((\tx_byte_buf[7]~1_combout\ & (\process_1~0_combout\ & !\tx_byte_buf[7]~4_combout\))) # (!\tx_byte_buf[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_byte_buf[7]~1_combout\,
	datab => \process_1~0_combout\,
	datac => \tx_byte_buf[7]~3_combout\,
	datad => \tx_byte_buf[7]~4_combout\,
	combout => \tx_byte_buf[7]~5_combout\);

-- Location: FF_X49_Y69_N23
\tx_byte_buf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tx_byte[4]~reg0_q\,
	sload => VCC,
	ena => \tx_byte_buf[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_byte_buf(4));

-- Location: IOIBUF_X52_Y73_N15
\dado[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(5),
	o => \dado[5]~input_o\);

-- Location: LCCOMB_X52_Y69_N8
\tx_byte[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_byte[5]~reg0feeder_combout\ = \dado[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[5]~input_o\,
	combout => \tx_byte[5]~reg0feeder_combout\);

-- Location: FF_X52_Y69_N9
\tx_byte[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_byte[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_byte[5]~reg0_q\);

-- Location: FF_X49_Y69_N27
\tx_byte_buf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tx_byte[5]~reg0_q\,
	sload => VCC,
	ena => \tx_byte_buf[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_byte_buf(5));

-- Location: IOIBUF_X54_Y73_N1
\dado[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(6),
	o => \dado[6]~input_o\);

-- Location: LCCOMB_X49_Y69_N10
\tx_byte[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_byte[6]~reg0feeder_combout\ = \dado[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[6]~input_o\,
	combout => \tx_byte[6]~reg0feeder_combout\);

-- Location: FF_X49_Y69_N11
\tx_byte[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_byte[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_byte[6]~reg0_q\);

-- Location: LCCOMB_X49_Y69_N2
\tx_byte_buf[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_byte_buf[6]~feeder_combout\ = \tx_byte[6]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_byte[6]~reg0_q\,
	combout => \tx_byte_buf[6]~feeder_combout\);

-- Location: FF_X49_Y69_N3
\tx_byte_buf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_byte_buf[6]~feeder_combout\,
	ena => \tx_byte_buf[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_byte_buf(6));

-- Location: IOIBUF_X58_Y73_N1
\dado[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(7),
	o => \dado[7]~input_o\);

-- Location: LCCOMB_X57_Y69_N28
\tx_byte[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_byte[7]~reg0feeder_combout\ = \dado[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[7]~input_o\,
	combout => \tx_byte[7]~reg0feeder_combout\);

-- Location: FF_X57_Y69_N29
\tx_byte[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_byte[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_byte[7]~reg0_q\);

-- Location: FF_X49_Y69_N7
\tx_byte_buf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tx_byte[7]~reg0_q\,
	sload => VCC,
	ena => \tx_byte_buf[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_byte_buf(7));

-- Location: LCCOMB_X49_Y69_N6
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (bit_counter(1) & (((bit_counter(0))))) # (!bit_counter(1) & ((bit_counter(0) & (tx_byte_buf(6))) # (!bit_counter(0) & ((tx_byte_buf(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(1),
	datab => tx_byte_buf(6),
	datac => tx_byte_buf(7),
	datad => bit_counter(0),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X49_Y69_N26
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (bit_counter(1) & ((\Mux0~2_combout\ & (tx_byte_buf(4))) # (!\Mux0~2_combout\ & ((tx_byte_buf(5)))))) # (!bit_counter(1) & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(1),
	datab => tx_byte_buf(4),
	datac => tx_byte_buf(5),
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: IOIBUF_X49_Y73_N15
\dado[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(1),
	o => \dado[1]~input_o\);

-- Location: FF_X49_Y69_N15
\tx_byte[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dado[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_byte[1]~reg0_q\);

-- Location: FF_X49_Y69_N21
\tx_byte_buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tx_byte[1]~reg0_q\,
	sload => VCC,
	ena => \tx_byte_buf[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_byte_buf(1));

-- Location: IOIBUF_X38_Y73_N22
\dado[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(0),
	o => \dado[0]~input_o\);

-- Location: LCCOMB_X41_Y69_N4
\tx_byte[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_byte[0]~reg0feeder_combout\ = \dado[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[0]~input_o\,
	combout => \tx_byte[0]~reg0feeder_combout\);

-- Location: FF_X41_Y69_N5
\tx_byte[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_byte[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_byte[0]~reg0_q\);

-- Location: FF_X49_Y69_N29
\tx_byte_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tx_byte[0]~reg0_q\,
	sload => VCC,
	ena => \tx_byte_buf[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_byte_buf(0));

-- Location: IOIBUF_X58_Y73_N8
\dado[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(2),
	o => \dado[2]~input_o\);

-- Location: LCCOMB_X57_Y69_N8
\tx_byte[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_byte[2]~reg0feeder_combout\ = \dado[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[2]~input_o\,
	combout => \tx_byte[2]~reg0feeder_combout\);

-- Location: FF_X57_Y69_N9
\tx_byte[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_byte[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_byte[2]~reg0_q\);

-- Location: LCCOMB_X49_Y69_N0
\tx_byte_buf[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_byte_buf[2]~feeder_combout\ = \tx_byte[2]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx_byte[2]~reg0_q\,
	combout => \tx_byte_buf[2]~feeder_combout\);

-- Location: FF_X49_Y69_N1
\tx_byte_buf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_byte_buf[2]~feeder_combout\,
	ena => \tx_byte_buf[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_byte_buf(2));

-- Location: IOIBUF_X60_Y73_N1
\dado[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dado(3),
	o => \dado[3]~input_o\);

-- Location: LCCOMB_X57_Y69_N2
\tx_byte[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_byte[3]~reg0feeder_combout\ = \dado[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dado[3]~input_o\,
	combout => \tx_byte[3]~reg0feeder_combout\);

-- Location: FF_X57_Y69_N3
\tx_byte[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_byte[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_byte[3]~reg0_q\);

-- Location: FF_X49_Y69_N25
\tx_byte_buf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tx_byte[3]~reg0_q\,
	sload => VCC,
	ena => \tx_byte_buf[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_byte_buf(3));

-- Location: LCCOMB_X49_Y69_N24
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (bit_counter(1) & (((bit_counter(0))))) # (!bit_counter(1) & ((bit_counter(0) & (tx_byte_buf(2))) # (!bit_counter(0) & ((tx_byte_buf(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(1),
	datab => tx_byte_buf(2),
	datac => tx_byte_buf(3),
	datad => bit_counter(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X49_Y69_N28
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (bit_counter(1) & ((\Mux0~0_combout\ & ((tx_byte_buf(0)))) # (!\Mux0~0_combout\ & (tx_byte_buf(1))))) # (!bit_counter(1) & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(1),
	datab => tx_byte_buf(1),
	datac => tx_byte_buf(0),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X50_Y69_N4
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (bit_counter(2) & ((\Mux0~1_combout\))) # (!bit_counter(2) & (\Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(2),
	datac => \Mux0~3_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~4_combout\);

-- Location: FF_X50_Y69_N5
sda_o : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~4_combout\,
	sclr => \ALT_INV_state.READ_CMD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sda_o~q\);

-- Location: LCCOMB_X45_Y69_N24
\sda_out_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sda_out_en~0_combout\ = (\state.READ_CMD~q\) # (\state.SEND_ACK_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.READ_CMD~q\,
	datad => \state.SEND_ACK_1~q\,
	combout => \sda_out_en~0_combout\);

-- Location: FF_X45_Y69_N25
sda_out_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sda_out_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sda_out_en~q\);

-- Location: LCCOMB_X45_Y69_N20
\tx_done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_done~0_combout\ = (!\stop_strobe~q\ & (!\start_strobe~q\ & ((\tx_done~reg0_q\) # (\state.WAIT_STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop_strobe~q\,
	datab => \start_strobe~q\,
	datac => \tx_done~reg0_q\,
	datad => \state.WAIT_STOP~q\,
	combout => \tx_done~0_combout\);

-- Location: FF_X45_Y69_N21
\tx_done~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_done~reg0_q\);

-- Location: LCCOMB_X46_Y69_N22
\Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~0_combout\ = (\scl_rising_strobe~q\ & (\state.WRITE_CMD~q\ & !bit_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scl_rising_strobe~q\,
	datab => \state.WRITE_CMD~q\,
	datad => bit_counter(3),
	combout => \Decoder1~0_combout\);

-- Location: LCCOMB_X42_Y69_N12
\Decoder1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~1_combout\ = (bit_counter(2) & (bit_counter(0) & (bit_counter(1) & \Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(2),
	datab => bit_counter(0),
	datac => bit_counter(1),
	datad => \Decoder1~0_combout\,
	combout => \Decoder1~1_combout\);

-- Location: LCCOMB_X42_Y69_N0
\rx_data_buf[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_data_buf[0]~0_combout\ = (\Decoder1~1_combout\ & (!\sda_d~q\)) # (!\Decoder1~1_combout\ & ((rx_data_buf(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda_d~q\,
	datac => rx_data_buf(0),
	datad => \Decoder1~1_combout\,
	combout => \rx_data_buf[0]~0_combout\);

-- Location: FF_X42_Y69_N1
\rx_data_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_data_buf[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data_buf(0));

-- Location: LCCOMB_X42_Y69_N18
\Decoder1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~2_combout\ = (bit_counter(2) & (!bit_counter(0) & (bit_counter(1) & \Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(2),
	datab => bit_counter(0),
	datac => bit_counter(1),
	datad => \Decoder1~0_combout\,
	combout => \Decoder1~2_combout\);

-- Location: LCCOMB_X42_Y69_N30
\rx_data_buf[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_data_buf[1]~1_combout\ = (\Decoder1~2_combout\ & (!\sda_d~q\)) # (!\Decoder1~2_combout\ & ((rx_data_buf(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda_d~q\,
	datac => rx_data_buf(1),
	datad => \Decoder1~2_combout\,
	combout => \rx_data_buf[1]~1_combout\);

-- Location: FF_X42_Y69_N31
\rx_data_buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_data_buf[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data_buf(1));

-- Location: LCCOMB_X42_Y69_N24
\Decoder1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~3_combout\ = (bit_counter(2) & (bit_counter(0) & (!bit_counter(1) & \Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(2),
	datab => bit_counter(0),
	datac => bit_counter(1),
	datad => \Decoder1~0_combout\,
	combout => \Decoder1~3_combout\);

-- Location: LCCOMB_X42_Y69_N28
\rx_data_buf[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_data_buf[2]~2_combout\ = (\Decoder1~3_combout\ & (!\sda_d~q\)) # (!\Decoder1~3_combout\ & ((rx_data_buf(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda_d~q\,
	datac => rx_data_buf(2),
	datad => \Decoder1~3_combout\,
	combout => \rx_data_buf[2]~2_combout\);

-- Location: FF_X42_Y69_N29
\rx_data_buf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_data_buf[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data_buf(2));

-- Location: LCCOMB_X42_Y69_N6
\Decoder1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~4_combout\ = (bit_counter(2) & (!bit_counter(0) & (!bit_counter(1) & \Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(2),
	datab => bit_counter(0),
	datac => bit_counter(1),
	datad => \Decoder1~0_combout\,
	combout => \Decoder1~4_combout\);

-- Location: LCCOMB_X42_Y69_N26
\rx_data_buf[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_data_buf[3]~3_combout\ = (\Decoder1~4_combout\ & (!\sda_d~q\)) # (!\Decoder1~4_combout\ & ((rx_data_buf(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda_d~q\,
	datac => rx_data_buf(3),
	datad => \Decoder1~4_combout\,
	combout => \rx_data_buf[3]~3_combout\);

-- Location: FF_X42_Y69_N27
\rx_data_buf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_data_buf[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data_buf(3));

-- Location: LCCOMB_X42_Y69_N16
\Decoder1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~5_combout\ = (!bit_counter(2) & (bit_counter(0) & (bit_counter(1) & \Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(2),
	datab => bit_counter(0),
	datac => bit_counter(1),
	datad => \Decoder1~0_combout\,
	combout => \Decoder1~5_combout\);

-- Location: LCCOMB_X42_Y69_N8
\rx_data_buf[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_data_buf[4]~4_combout\ = (\Decoder1~5_combout\ & (!\sda_d~q\)) # (!\Decoder1~5_combout\ & ((rx_data_buf(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda_d~q\,
	datac => rx_data_buf(4),
	datad => \Decoder1~5_combout\,
	combout => \rx_data_buf[4]~4_combout\);

-- Location: FF_X42_Y69_N9
\rx_data_buf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_data_buf[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data_buf(4));

-- Location: LCCOMB_X42_Y69_N2
\Decoder1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~6_combout\ = (!bit_counter(2) & (!bit_counter(0) & (bit_counter(1) & \Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(2),
	datab => bit_counter(0),
	datac => bit_counter(1),
	datad => \Decoder1~0_combout\,
	combout => \Decoder1~6_combout\);

-- Location: LCCOMB_X42_Y69_N14
\rx_data_buf[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_data_buf[5]~5_combout\ = (\Decoder1~6_combout\ & (!\sda_d~q\)) # (!\Decoder1~6_combout\ & ((rx_data_buf(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda_d~q\,
	datac => rx_data_buf(5),
	datad => \Decoder1~6_combout\,
	combout => \rx_data_buf[5]~5_combout\);

-- Location: FF_X42_Y69_N15
\rx_data_buf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_data_buf[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data_buf(5));

-- Location: LCCOMB_X42_Y69_N20
\Decoder1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~7_combout\ = (!bit_counter(2) & (bit_counter(0) & (!bit_counter(1) & \Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(2),
	datab => bit_counter(0),
	datac => bit_counter(1),
	datad => \Decoder1~0_combout\,
	combout => \Decoder1~7_combout\);

-- Location: LCCOMB_X42_Y69_N4
\rx_data_buf[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_data_buf[6]~6_combout\ = (\Decoder1~7_combout\ & (!\sda_d~q\)) # (!\Decoder1~7_combout\ & ((rx_data_buf(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda_d~q\,
	datac => rx_data_buf(6),
	datad => \Decoder1~7_combout\,
	combout => \rx_data_buf[6]~6_combout\);

-- Location: FF_X42_Y69_N5
\rx_data_buf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_data_buf[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data_buf(6));

-- Location: LCCOMB_X42_Y69_N10
\Decoder1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~8_combout\ = (!bit_counter(2) & (!bit_counter(0) & (!bit_counter(1) & \Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(2),
	datab => bit_counter(0),
	datac => bit_counter(1),
	datad => \Decoder1~0_combout\,
	combout => \Decoder1~8_combout\);

-- Location: LCCOMB_X42_Y69_N22
\rx_data_buf[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_data_buf[7]~7_combout\ = (\Decoder1~8_combout\ & (!\sda_d~q\)) # (!\Decoder1~8_combout\ & ((rx_data_buf(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda_d~q\,
	datac => rx_data_buf(7),
	datad => \Decoder1~8_combout\,
	combout => \rx_data_buf[7]~7_combout\);

-- Location: FF_X42_Y69_N23
\rx_data_buf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_data_buf[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_data_buf(7));

-- Location: LCCOMB_X45_Y69_N14
\rx_data_rdy_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rx_data_rdy_reg~0_combout\ = (\state.WRITE_CMD~q\ & (\Equal2~0_combout\ & \scl_rising_strobe~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_CMD~q\,
	datac => \Equal2~0_combout\,
	datad => \scl_rising_strobe~q\,
	combout => \rx_data_rdy_reg~0_combout\);

-- Location: FF_X45_Y69_N15
rx_data_rdy_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_data_rdy_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data_rdy_reg~q\);

-- Location: LCCOMB_X45_Y69_N8
\readDone~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \readDone~reg0feeder_combout\ = \state.WAIT_STOP~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.WAIT_STOP~q\,
	combout => \readDone~reg0feeder_combout\);

-- Location: FF_X45_Y69_N9
\readDone~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \readDone~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \readDone~reg0_q\);

-- Location: IOIBUF_X40_Y73_N8
\tx_byte[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => tx_byte(0),
	o => \tx_byte[0]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\tx_byte[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => tx_byte(1),
	o => \tx_byte[1]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\tx_byte[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => tx_byte(2),
	o => \tx_byte[2]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\tx_byte[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => tx_byte(3),
	o => \tx_byte[3]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\tx_byte[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => tx_byte(4),
	o => \tx_byte[4]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\tx_byte[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => tx_byte(5),
	o => \tx_byte[5]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\tx_byte[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => tx_byte(6),
	o => \tx_byte[6]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\tx_byte[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => tx_byte(7),
	o => \tx_byte[7]~input_o\);

ww_in_progress <= \in_progress~output_o\;

ww_tx_done <= \tx_done~output_o\;

ww_rx_byte(0) <= \rx_byte[0]~output_o\;

ww_rx_byte(1) <= \rx_byte[1]~output_o\;

ww_rx_byte(2) <= \rx_byte[2]~output_o\;

ww_rx_byte(3) <= \rx_byte[3]~output_o\;

ww_rx_byte(4) <= \rx_byte[4]~output_o\;

ww_rx_byte(5) <= \rx_byte[5]~output_o\;

ww_rx_byte(6) <= \rx_byte[6]~output_o\;

ww_rx_byte(7) <= \rx_byte[7]~output_o\;

ww_rx_data_rdy <= \rx_data_rdy~output_o\;

ww_readDone <= \readDone~output_o\;

scl <= \scl~output_o\;

sda <= \sda~output_o\;

tx_byte(0) <= \tx_byte[0]~output_o\;

tx_byte(1) <= \tx_byte[1]~output_o\;

tx_byte(2) <= \tx_byte[2]~output_o\;

tx_byte(3) <= \tx_byte[3]~output_o\;

tx_byte(4) <= \tx_byte[4]~output_o\;

tx_byte(5) <= \tx_byte[5]~output_o\;

tx_byte(6) <= \tx_byte[6]~output_o\;

tx_byte(7) <= \tx_byte[7]~output_o\;
END structure;


