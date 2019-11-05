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

-- DATE "04/05/2017 22:16:04"

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

ENTITY 	Kmeans_MapRamMemory IS
    PORT (
	aclr : IN std_logic;
	address : IN std_logic_vector(14 DOWNTO 0);
	clock : IN std_logic;
	data : IN std_logic_vector(9 DOWNTO 0);
	wren : IN std_logic;
	q : OUT std_logic_vector(9 DOWNTO 0)
	);
END Kmeans_MapRamMemory;

-- Design Ports Information
-- q[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[9]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wren	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[13]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[14]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aclr	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[8]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[9]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[10]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[11]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[12]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[8]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[9]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Kmeans_MapRamMemory IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_aclr : std_logic;
SIGNAL ww_address : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_data : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_wren : std_logic;
SIGNAL ww_q : std_logic_vector(9 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a38_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a39_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \aclr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \q[8]~output_o\ : std_logic;
SIGNAL \q[9]~output_o\ : std_logic;
SIGNAL \wren~input_o\ : std_logic;
SIGNAL \address[14]~input_o\ : std_logic;
SIGNAL \address[13]~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|decode3|w_anode302w[2]~0_combout\ : std_logic;
SIGNAL \aclr~input_o\ : std_logic;
SIGNAL \aclr~inputclkctrl_outclk\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \address[5]~input_o\ : std_logic;
SIGNAL \address[6]~input_o\ : std_logic;
SIGNAL \address[7]~input_o\ : std_logic;
SIGNAL \address[8]~input_o\ : std_logic;
SIGNAL \address[9]~input_o\ : std_logic;
SIGNAL \address[10]~input_o\ : std_logic;
SIGNAL \address[11]~input_o\ : std_logic;
SIGNAL \address[12]~input_o\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a30~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|decode3|w_anode273w[2]~0_combout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|decode3|w_anode294w[2]~0_combout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|mux2|result_node[0]~0_combout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|decode3|w_anode286w[2]~0_combout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|mux2|result_node[0]~1_combout\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a31~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|mux2|result_node[1]~2_combout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|mux2|result_node[1]~3_combout\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a32~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|mux2|result_node[2]~4_combout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|mux2|result_node[2]~5_combout\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a33~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|mux2|result_node[3]~6_combout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|mux2|result_node[3]~7_combout\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a34~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|mux2|result_node[4]~8_combout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|mux2|result_node[4]~9_combout\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|mux2|result_node[5]~10_combout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a35~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|mux2|result_node[5]~11_combout\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a26~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|mux2|result_node[6]~12_combout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a36~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|mux2|result_node[6]~13_combout\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a37~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|mux2|result_node[7]~14_combout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|mux2|result_node[7]~15_combout\ : std_logic;
SIGNAL \data[8]~input_o\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a38~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a28~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|mux2|result_node[8]~16_combout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|mux2|result_node[8]~17_combout\ : std_logic;
SIGNAL \data[9]~input_o\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a29~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|mux2|result_node[9]~18_combout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|ram_block1a39~portadataout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|mux2|result_node[9]~19_combout\ : std_logic;
SIGNAL \altsyncram_component|auto_generated|decode3|w_anode273w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|decode3|w_anode286w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|decode3|w_anode294w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \altsyncram_component|auto_generated|decode3|w_anode302w\ : std_logic_vector(2 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_aclr <= aclr;
ww_address <= address;
ww_clock <= clock;
ww_data <= data;
ww_wren <= wren;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \data[0]~input_o\;

\altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a10~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \data[0]~input_o\;

\altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a20~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \data[0]~input_o\;

\altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \data[0]~input_o\;

\altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a30~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \data[1]~input_o\;

\altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a21~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \data[1]~input_o\;

\altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a11~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \data[1]~input_o\;

\altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \data[1]~input_o\;

\altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a31~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \data[2]~input_o\;

\altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a12~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \data[2]~input_o\;

\altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a22~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \data[2]~input_o\;

\altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\(0) <= \data[2]~input_o\;

\altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a32~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \data[3]~input_o\;

\altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a23~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \data[3]~input_o\;

\altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a13~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \data[3]~input_o\;

\altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\(0) <= \data[3]~input_o\;

\altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a33~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \data[4]~input_o\;

\altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a14~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \data[4]~input_o\;

\altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a24~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \data[4]~input_o\;

\altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\(0) <= \data[4]~input_o\;

\altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a34~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \data[5]~input_o\;

\altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a25~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \data[5]~input_o\;

\altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a15~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \data[5]~input_o\;

\altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\(0) <= \data[5]~input_o\;

\altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a35~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \data[6]~input_o\;

\altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a16~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \data[6]~input_o\;

\altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a26~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \data[6]~input_o\;

\altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\(0) <= \data[6]~input_o\;

\altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a36~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \data[7]~input_o\;

\altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a27~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \data[7]~input_o\;

\altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a17~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \data[7]~input_o\;

\altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\(0) <= \data[7]~input_o\;

\altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a37~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \data[8]~input_o\;

\altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a18~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \data[8]~input_o\;

\altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a28~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \data[8]~input_o\;

\altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a38_PORTADATAIN_bus\(0) <= \data[8]~input_o\;

\altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a38~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \data[9]~input_o\;

\altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a29~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \data[9]~input_o\;

\altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a19~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \data[9]~input_o\;

\altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a9~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\altsyncram_component|auto_generated|ram_block1a39_PORTADATAIN_bus\(0) <= \data[9]~input_o\;

\altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\ <= (\address[12]~input_o\ & \address[11]~input_o\ & \address[10]~input_o\ & \address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\
& \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\altsyncram_component|auto_generated|ram_block1a39~portadataout\ <= \altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\(0);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\aclr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \aclr~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X66_Y91_N16
\q[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|mux2|result_node[0]~1_combout\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X66_Y91_N23
\q[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|mux2|result_node[1]~3_combout\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X61_Y91_N2
\q[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|mux2|result_node[2]~5_combout\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X70_Y91_N2
\q[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|mux2|result_node[3]~7_combout\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X63_Y91_N9
\q[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|mux2|result_node[4]~9_combout\,
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X72_Y91_N2
\q[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|mux2|result_node[5]~11_combout\,
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOOBUF_X70_Y91_N9
\q[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|mux2|result_node[6]~13_combout\,
	devoe => ww_devoe,
	o => \q[6]~output_o\);

-- Location: IOOBUF_X63_Y91_N2
\q[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|mux2|result_node[7]~15_combout\,
	devoe => ww_devoe,
	o => \q[7]~output_o\);

-- Location: IOOBUF_X68_Y91_N16
\q[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|mux2|result_node[8]~17_combout\,
	devoe => ww_devoe,
	o => \q[8]~output_o\);

-- Location: IOOBUF_X63_Y91_N16
\q[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altsyncram_component|auto_generated|mux2|result_node[9]~19_combout\,
	devoe => ww_devoe,
	o => \q[9]~output_o\);

-- Location: IOIBUF_X66_Y91_N8
\wren~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wren,
	o => \wren~input_o\);

-- Location: IOIBUF_X66_Y91_N1
\address[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(14),
	o => \address[14]~input_o\);

-- Location: IOIBUF_X68_Y91_N8
\address[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(13),
	o => \address[13]~input_o\);

-- Location: LCCOMB_X66_Y87_N20
\altsyncram_component|auto_generated|decode3|w_anode302w[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|decode3|w_anode302w\(2) = (\wren~input_o\ & (\address[14]~input_o\ & \address[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wren~input_o\,
	datac => \address[14]~input_o\,
	datad => \address[13]~input_o\,
	combout => \altsyncram_component|auto_generated|decode3|w_anode302w\(2));

-- Location: IOIBUF_X57_Y0_N15
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G29
\clock~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X66_Y87_N30
\altsyncram_component|auto_generated|decode3|w_anode302w[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|decode3|w_anode302w[2]~0_combout\ = (\address[14]~input_o\ & \address[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \address[14]~input_o\,
	datad => \address[13]~input_o\,
	combout => \altsyncram_component|auto_generated|decode3|w_anode302w[2]~0_combout\);

-- Location: IOIBUF_X57_Y0_N22
\aclr~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aclr,
	o => \aclr~input_o\);

-- Location: CLKCTRL_G28
\aclr~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \aclr~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \aclr~inputclkctrl_outclk\);

-- Location: IOIBUF_X75_Y91_N8
\data[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: IOIBUF_X79_Y91_N8
\address[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X79_Y91_N1
\address[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X77_Y91_N15
\address[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X61_Y91_N8
\address[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: IOIBUF_X79_Y91_N15
\address[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

-- Location: IOIBUF_X68_Y91_N1
\address[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(5),
	o => \address[5]~input_o\);

-- Location: IOIBUF_X77_Y91_N1
\address[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(6),
	o => \address[6]~input_o\);

-- Location: IOIBUF_X61_Y91_N15
\address[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(7),
	o => \address[7]~input_o\);

-- Location: IOIBUF_X53_Y91_N1
\address[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(8),
	o => \address[8]~input_o\);

-- Location: IOIBUF_X77_Y91_N8
\address[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(9),
	o => \address[9]~input_o\);

-- Location: IOIBUF_X75_Y91_N1
\address[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(10),
	o => \address[10]~input_o\);

-- Location: IOIBUF_X79_Y91_N22
\address[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(11),
	o => \address[11]~input_o\);

-- Location: IOIBUF_X53_Y91_N15
\address[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(12),
	o => \address[12]~input_o\);

-- Location: M9K_X65_Y87_N0
\altsyncram_component|auto_generated|ram_block1a30\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode302w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode302w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

-- Location: LCCOMB_X66_Y87_N16
\altsyncram_component|auto_generated|decode3|w_anode273w[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|decode3|w_anode273w\(2) = (\wren~input_o\ & (!\address[14]~input_o\ & !\address[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wren~input_o\,
	datac => \address[14]~input_o\,
	datad => \address[13]~input_o\,
	combout => \altsyncram_component|auto_generated|decode3|w_anode273w\(2));

-- Location: LCCOMB_X66_Y87_N10
\altsyncram_component|auto_generated|decode3|w_anode273w[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|decode3|w_anode273w[2]~0_combout\ = (!\address[14]~input_o\ & !\address[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \address[14]~input_o\,
	datad => \address[13]~input_o\,
	combout => \altsyncram_component|auto_generated|decode3|w_anode273w[2]~0_combout\);

-- Location: M9K_X65_Y88_N0
\altsyncram_component|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode273w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode273w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X66_Y87_N3
\altsyncram_component|auto_generated|address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \address[14]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \altsyncram_component|auto_generated|address_reg_a\(1));

-- Location: LCCOMB_X66_Y87_N12
\altsyncram_component|auto_generated|decode3|w_anode294w[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|decode3|w_anode294w\(2) = (\wren~input_o\ & (\address[14]~input_o\ & !\address[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wren~input_o\,
	datac => \address[14]~input_o\,
	datad => \address[13]~input_o\,
	combout => \altsyncram_component|auto_generated|decode3|w_anode294w\(2));

-- Location: LCCOMB_X66_Y87_N6
\altsyncram_component|auto_generated|decode3|w_anode294w[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|decode3|w_anode294w[2]~0_combout\ = (\address[14]~input_o\ & !\address[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \address[14]~input_o\,
	datad => \address[13]~input_o\,
	combout => \altsyncram_component|auto_generated|decode3|w_anode294w[2]~0_combout\);

-- Location: M9K_X81_Y89_N0
\altsyncram_component|auto_generated|ram_block1a20\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode294w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode294w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: LCCOMB_X66_Y87_N24
\altsyncram_component|auto_generated|address_reg_a[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\ = \address[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \address[13]~input_o\,
	combout => \altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\);

-- Location: FF_X66_Y87_N25
\altsyncram_component|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \altsyncram_component|auto_generated|address_reg_a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \altsyncram_component|auto_generated|address_reg_a\(0));

-- Location: LCCOMB_X66_Y87_N28
\altsyncram_component|auto_generated|mux2|result_node[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|mux2|result_node[0]~0_combout\ = (\altsyncram_component|auto_generated|address_reg_a\(1) & (((\altsyncram_component|auto_generated|ram_block1a20~portadataout\) # 
-- (\altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\altsyncram_component|auto_generated|address_reg_a\(1) & (\altsyncram_component|auto_generated|ram_block1a0~portadataout\ & ((!\altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ram_block1a0~portadataout\,
	datab => \altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \altsyncram_component|auto_generated|ram_block1a20~portadataout\,
	datad => \altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \altsyncram_component|auto_generated|mux2|result_node[0]~0_combout\);

-- Location: LCCOMB_X66_Y87_N8
\altsyncram_component|auto_generated|decode3|w_anode286w[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|decode3|w_anode286w\(2) = (\wren~input_o\ & (!\address[14]~input_o\ & \address[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wren~input_o\,
	datac => \address[14]~input_o\,
	datad => \address[13]~input_o\,
	combout => \altsyncram_component|auto_generated|decode3|w_anode286w\(2));

-- Location: LCCOMB_X66_Y87_N18
\altsyncram_component|auto_generated|decode3|w_anode286w[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|decode3|w_anode286w[2]~0_combout\ = (!\address[14]~input_o\ & \address[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \address[14]~input_o\,
	datad => \address[13]~input_o\,
	combout => \altsyncram_component|auto_generated|decode3|w_anode286w[2]~0_combout\);

-- Location: M9K_X81_Y87_N0
\altsyncram_component|auto_generated|ram_block1a10\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode286w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode286w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X66_Y87_N14
\altsyncram_component|auto_generated|mux2|result_node[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|mux2|result_node[0]~1_combout\ = (\altsyncram_component|auto_generated|mux2|result_node[0]~0_combout\ & ((\altsyncram_component|auto_generated|ram_block1a30~portadataout\) # 
-- ((!\altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\altsyncram_component|auto_generated|mux2|result_node[0]~0_combout\ & (((\altsyncram_component|auto_generated|ram_block1a10~portadataout\ & 
-- \altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ram_block1a30~portadataout\,
	datab => \altsyncram_component|auto_generated|mux2|result_node[0]~0_combout\,
	datac => \altsyncram_component|auto_generated|ram_block1a10~portadataout\,
	datad => \altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \altsyncram_component|auto_generated|mux2|result_node[0]~1_combout\);

-- Location: IOIBUF_X50_Y91_N8
\data[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: M9K_X65_Y90_N0
\altsyncram_component|auto_generated|ram_block1a21\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode294w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode294w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: M9K_X52_Y84_N0
\altsyncram_component|auto_generated|ram_block1a31\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode302w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode302w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\);

-- Location: M9K_X65_Y85_N0
\altsyncram_component|auto_generated|ram_block1a11\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode286w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode286w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: M9K_X81_Y86_N0
\altsyncram_component|auto_generated|ram_block1a1\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode273w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode273w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X66_Y87_N0
\altsyncram_component|auto_generated|mux2|result_node[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|mux2|result_node[1]~2_combout\ = (\altsyncram_component|auto_generated|address_reg_a\(1) & (((\altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\altsyncram_component|auto_generated|address_reg_a\(1) & 
-- ((\altsyncram_component|auto_generated|address_reg_a\(0) & (\altsyncram_component|auto_generated|ram_block1a11~portadataout\)) # (!\altsyncram_component|auto_generated|address_reg_a\(0) & 
-- ((\altsyncram_component|auto_generated|ram_block1a1~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ram_block1a11~portadataout\,
	datab => \altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \altsyncram_component|auto_generated|ram_block1a1~portadataout\,
	datad => \altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \altsyncram_component|auto_generated|mux2|result_node[1]~2_combout\);

-- Location: LCCOMB_X66_Y87_N26
\altsyncram_component|auto_generated|mux2|result_node[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|mux2|result_node[1]~3_combout\ = (\altsyncram_component|auto_generated|address_reg_a\(1) & ((\altsyncram_component|auto_generated|mux2|result_node[1]~2_combout\ & 
-- ((\altsyncram_component|auto_generated|ram_block1a31~portadataout\))) # (!\altsyncram_component|auto_generated|mux2|result_node[1]~2_combout\ & (\altsyncram_component|auto_generated|ram_block1a21~portadataout\)))) # 
-- (!\altsyncram_component|auto_generated|address_reg_a\(1) & (((\altsyncram_component|auto_generated|mux2|result_node[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|address_reg_a\(1),
	datab => \altsyncram_component|auto_generated|ram_block1a21~portadataout\,
	datac => \altsyncram_component|auto_generated|ram_block1a31~portadataout\,
	datad => \altsyncram_component|auto_generated|mux2|result_node[1]~2_combout\,
	combout => \altsyncram_component|auto_generated|mux2|result_node[1]~3_combout\);

-- Location: IOIBUF_X50_Y91_N15
\data[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: M9K_X65_Y83_N0
\altsyncram_component|auto_generated|ram_block1a12\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode286w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode286w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: M9K_X52_Y82_N0
\altsyncram_component|auto_generated|ram_block1a32\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode302w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode302w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\);

-- Location: M9K_X65_Y82_N0
\altsyncram_component|auto_generated|ram_block1a22\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode294w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode294w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: M9K_X52_Y83_N0
\altsyncram_component|auto_generated|ram_block1a2\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode273w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode273w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X66_Y83_N24
\altsyncram_component|auto_generated|mux2|result_node[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|mux2|result_node[2]~4_combout\ = (\altsyncram_component|auto_generated|address_reg_a\(0) & (((\altsyncram_component|auto_generated|address_reg_a\(1))))) # (!\altsyncram_component|auto_generated|address_reg_a\(0) & 
-- ((\altsyncram_component|auto_generated|address_reg_a\(1) & (\altsyncram_component|auto_generated|ram_block1a22~portadataout\)) # (!\altsyncram_component|auto_generated|address_reg_a\(1) & 
-- ((\altsyncram_component|auto_generated|ram_block1a2~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|address_reg_a\(0),
	datab => \altsyncram_component|auto_generated|ram_block1a22~portadataout\,
	datac => \altsyncram_component|auto_generated|address_reg_a\(1),
	datad => \altsyncram_component|auto_generated|ram_block1a2~portadataout\,
	combout => \altsyncram_component|auto_generated|mux2|result_node[2]~4_combout\);

-- Location: LCCOMB_X66_Y83_N2
\altsyncram_component|auto_generated|mux2|result_node[2]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|mux2|result_node[2]~5_combout\ = (\altsyncram_component|auto_generated|address_reg_a\(0) & ((\altsyncram_component|auto_generated|mux2|result_node[2]~4_combout\ & 
-- ((\altsyncram_component|auto_generated|ram_block1a32~portadataout\))) # (!\altsyncram_component|auto_generated|mux2|result_node[2]~4_combout\ & (\altsyncram_component|auto_generated|ram_block1a12~portadataout\)))) # 
-- (!\altsyncram_component|auto_generated|address_reg_a\(0) & (((\altsyncram_component|auto_generated|mux2|result_node[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ram_block1a12~portadataout\,
	datab => \altsyncram_component|auto_generated|ram_block1a32~portadataout\,
	datac => \altsyncram_component|auto_generated|address_reg_a\(0),
	datad => \altsyncram_component|auto_generated|mux2|result_node[2]~4_combout\,
	combout => \altsyncram_component|auto_generated|mux2|result_node[2]~5_combout\);

-- Location: IOIBUF_X72_Y91_N8
\data[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: M9K_X65_Y75_N0
\altsyncram_component|auto_generated|ram_block1a33\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode302w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode302w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\);

-- Location: M9K_X81_Y83_N0
\altsyncram_component|auto_generated|ram_block1a23\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode294w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode294w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: M9K_X81_Y78_N0
\altsyncram_component|auto_generated|ram_block1a13\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode286w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode286w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: M9K_X81_Y81_N0
\altsyncram_component|auto_generated|ram_block1a3\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode273w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode273w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X70_Y83_N24
\altsyncram_component|auto_generated|mux2|result_node[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|mux2|result_node[3]~6_combout\ = (\altsyncram_component|auto_generated|address_reg_a\(0) & ((\altsyncram_component|auto_generated|ram_block1a13~portadataout\) # 
-- ((\altsyncram_component|auto_generated|address_reg_a\(1))))) # (!\altsyncram_component|auto_generated|address_reg_a\(0) & (((!\altsyncram_component|auto_generated|address_reg_a\(1) & \altsyncram_component|auto_generated|ram_block1a3~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ram_block1a13~portadataout\,
	datab => \altsyncram_component|auto_generated|address_reg_a\(0),
	datac => \altsyncram_component|auto_generated|address_reg_a\(1),
	datad => \altsyncram_component|auto_generated|ram_block1a3~portadataout\,
	combout => \altsyncram_component|auto_generated|mux2|result_node[3]~6_combout\);

-- Location: LCCOMB_X70_Y83_N2
\altsyncram_component|auto_generated|mux2|result_node[3]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|mux2|result_node[3]~7_combout\ = (\altsyncram_component|auto_generated|address_reg_a\(1) & ((\altsyncram_component|auto_generated|mux2|result_node[3]~6_combout\ & 
-- (\altsyncram_component|auto_generated|ram_block1a33~portadataout\)) # (!\altsyncram_component|auto_generated|mux2|result_node[3]~6_combout\ & ((\altsyncram_component|auto_generated|ram_block1a23~portadataout\))))) # 
-- (!\altsyncram_component|auto_generated|address_reg_a\(1) & (((\altsyncram_component|auto_generated|mux2|result_node[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ram_block1a33~portadataout\,
	datab => \altsyncram_component|auto_generated|ram_block1a23~portadataout\,
	datac => \altsyncram_component|auto_generated|address_reg_a\(1),
	datad => \altsyncram_component|auto_generated|mux2|result_node[3]~6_combout\,
	combout => \altsyncram_component|auto_generated|mux2|result_node[3]~7_combout\);

-- Location: IOIBUF_X50_Y91_N1
\data[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(4),
	o => \data[4]~input_o\);

-- Location: M9K_X65_Y78_N0
\altsyncram_component|auto_generated|ram_block1a14\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode286w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode286w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: M9K_X65_Y74_N0
\altsyncram_component|auto_generated|ram_block1a34\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode302w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode302w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\);

-- Location: M9K_X65_Y76_N0
\altsyncram_component|auto_generated|ram_block1a24\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode294w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode294w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

-- Location: M9K_X52_Y80_N0
\altsyncram_component|auto_generated|ram_block1a4\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode273w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode273w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X66_Y83_N12
\altsyncram_component|auto_generated|mux2|result_node[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|mux2|result_node[4]~8_combout\ = (\altsyncram_component|auto_generated|address_reg_a\(0) & (((\altsyncram_component|auto_generated|address_reg_a\(1))))) # (!\altsyncram_component|auto_generated|address_reg_a\(0) & 
-- ((\altsyncram_component|auto_generated|address_reg_a\(1) & (\altsyncram_component|auto_generated|ram_block1a24~portadataout\)) # (!\altsyncram_component|auto_generated|address_reg_a\(1) & 
-- ((\altsyncram_component|auto_generated|ram_block1a4~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|address_reg_a\(0),
	datab => \altsyncram_component|auto_generated|ram_block1a24~portadataout\,
	datac => \altsyncram_component|auto_generated|address_reg_a\(1),
	datad => \altsyncram_component|auto_generated|ram_block1a4~portadataout\,
	combout => \altsyncram_component|auto_generated|mux2|result_node[4]~8_combout\);

-- Location: LCCOMB_X66_Y83_N6
\altsyncram_component|auto_generated|mux2|result_node[4]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|mux2|result_node[4]~9_combout\ = (\altsyncram_component|auto_generated|address_reg_a\(0) & ((\altsyncram_component|auto_generated|mux2|result_node[4]~8_combout\ & 
-- ((\altsyncram_component|auto_generated|ram_block1a34~portadataout\))) # (!\altsyncram_component|auto_generated|mux2|result_node[4]~8_combout\ & (\altsyncram_component|auto_generated|ram_block1a14~portadataout\)))) # 
-- (!\altsyncram_component|auto_generated|address_reg_a\(0) & (((\altsyncram_component|auto_generated|mux2|result_node[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ram_block1a14~portadataout\,
	datab => \altsyncram_component|auto_generated|ram_block1a34~portadataout\,
	datac => \altsyncram_component|auto_generated|address_reg_a\(0),
	datad => \altsyncram_component|auto_generated|mux2|result_node[4]~8_combout\,
	combout => \altsyncram_component|auto_generated|mux2|result_node[4]~9_combout\);

-- Location: IOIBUF_X82_Y91_N8
\data[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(5),
	o => \data[5]~input_o\);

-- Location: M9K_X65_Y79_N0
\altsyncram_component|auto_generated|ram_block1a15\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode286w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode286w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: M9K_X65_Y80_N0
\altsyncram_component|auto_generated|ram_block1a5\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode273w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode273w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X66_Y83_N8
\altsyncram_component|auto_generated|mux2|result_node[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|mux2|result_node[5]~10_combout\ = (\altsyncram_component|auto_generated|address_reg_a\(1) & (((\altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\altsyncram_component|auto_generated|address_reg_a\(1) & 
-- ((\altsyncram_component|auto_generated|address_reg_a\(0) & (\altsyncram_component|auto_generated|ram_block1a15~portadataout\)) # (!\altsyncram_component|auto_generated|address_reg_a\(0) & 
-- ((\altsyncram_component|auto_generated|ram_block1a5~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ram_block1a15~portadataout\,
	datab => \altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \altsyncram_component|auto_generated|address_reg_a\(0),
	datad => \altsyncram_component|auto_generated|ram_block1a5~portadataout\,
	combout => \altsyncram_component|auto_generated|mux2|result_node[5]~10_combout\);

-- Location: M9K_X65_Y71_N0
\altsyncram_component|auto_generated|ram_block1a35\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode302w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode302w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\);

-- Location: M9K_X81_Y76_N0
\altsyncram_component|auto_generated|ram_block1a25\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode294w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode294w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

-- Location: LCCOMB_X70_Y83_N4
\altsyncram_component|auto_generated|mux2|result_node[5]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|mux2|result_node[5]~11_combout\ = (\altsyncram_component|auto_generated|mux2|result_node[5]~10_combout\ & ((\altsyncram_component|auto_generated|ram_block1a35~portadataout\) # 
-- ((!\altsyncram_component|auto_generated|address_reg_a\(1))))) # (!\altsyncram_component|auto_generated|mux2|result_node[5]~10_combout\ & (((\altsyncram_component|auto_generated|address_reg_a\(1) & 
-- \altsyncram_component|auto_generated|ram_block1a25~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|mux2|result_node[5]~10_combout\,
	datab => \altsyncram_component|auto_generated|ram_block1a35~portadataout\,
	datac => \altsyncram_component|auto_generated|address_reg_a\(1),
	datad => \altsyncram_component|auto_generated|ram_block1a25~portadataout\,
	combout => \altsyncram_component|auto_generated|mux2|result_node[5]~11_combout\);

-- Location: IOIBUF_X77_Y91_N22
\data[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(6),
	o => \data[6]~input_o\);

-- Location: M9K_X81_Y79_N0
\altsyncram_component|auto_generated|ram_block1a26\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode294w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode294w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

-- Location: M9K_X81_Y80_N0
\altsyncram_component|auto_generated|ram_block1a6\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode273w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode273w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X70_Y83_N6
\altsyncram_component|auto_generated|mux2|result_node[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|mux2|result_node[6]~12_combout\ = (\altsyncram_component|auto_generated|address_reg_a\(0) & (((\altsyncram_component|auto_generated|address_reg_a\(1))))) # (!\altsyncram_component|auto_generated|address_reg_a\(0) & 
-- ((\altsyncram_component|auto_generated|address_reg_a\(1) & (\altsyncram_component|auto_generated|ram_block1a26~portadataout\)) # (!\altsyncram_component|auto_generated|address_reg_a\(1) & 
-- ((\altsyncram_component|auto_generated|ram_block1a6~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ram_block1a26~portadataout\,
	datab => \altsyncram_component|auto_generated|address_reg_a\(0),
	datac => \altsyncram_component|auto_generated|address_reg_a\(1),
	datad => \altsyncram_component|auto_generated|ram_block1a6~portadataout\,
	combout => \altsyncram_component|auto_generated|mux2|result_node[6]~12_combout\);

-- Location: M9K_X65_Y72_N0
\altsyncram_component|auto_generated|ram_block1a36\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode302w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode302w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\);

-- Location: M9K_X81_Y82_N0
\altsyncram_component|auto_generated|ram_block1a16\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode286w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode286w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X70_Y83_N16
\altsyncram_component|auto_generated|mux2|result_node[6]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|mux2|result_node[6]~13_combout\ = (\altsyncram_component|auto_generated|mux2|result_node[6]~12_combout\ & (((\altsyncram_component|auto_generated|ram_block1a36~portadataout\)) # 
-- (!\altsyncram_component|auto_generated|address_reg_a\(0)))) # (!\altsyncram_component|auto_generated|mux2|result_node[6]~12_combout\ & (\altsyncram_component|auto_generated|address_reg_a\(0) & 
-- ((\altsyncram_component|auto_generated|ram_block1a16~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|mux2|result_node[6]~12_combout\,
	datab => \altsyncram_component|auto_generated|address_reg_a\(0),
	datac => \altsyncram_component|auto_generated|ram_block1a36~portadataout\,
	datad => \altsyncram_component|auto_generated|ram_block1a16~portadataout\,
	combout => \altsyncram_component|auto_generated|mux2|result_node[6]~13_combout\);

-- Location: IOIBUF_X63_Y91_N22
\data[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(7),
	o => \data[7]~input_o\);

-- Location: M9K_X65_Y73_N0
\altsyncram_component|auto_generated|ram_block1a37\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode302w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode302w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\);

-- Location: M9K_X65_Y77_N0
\altsyncram_component|auto_generated|ram_block1a27\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode294w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode294w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: M9K_X65_Y84_N0
\altsyncram_component|auto_generated|ram_block1a7\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode273w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode273w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M9K_X65_Y81_N0
\altsyncram_component|auto_generated|ram_block1a17\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode286w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode286w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: LCCOMB_X66_Y84_N24
\altsyncram_component|auto_generated|mux2|result_node[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|mux2|result_node[7]~14_combout\ = (\altsyncram_component|auto_generated|address_reg_a\(1) & (((\altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\altsyncram_component|auto_generated|address_reg_a\(1) & 
-- ((\altsyncram_component|auto_generated|address_reg_a\(0) & ((\altsyncram_component|auto_generated|ram_block1a17~portadataout\))) # (!\altsyncram_component|auto_generated|address_reg_a\(0) & 
-- (\altsyncram_component|auto_generated|ram_block1a7~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ram_block1a7~portadataout\,
	datab => \altsyncram_component|auto_generated|ram_block1a17~portadataout\,
	datac => \altsyncram_component|auto_generated|address_reg_a\(1),
	datad => \altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \altsyncram_component|auto_generated|mux2|result_node[7]~14_combout\);

-- Location: LCCOMB_X66_Y84_N2
\altsyncram_component|auto_generated|mux2|result_node[7]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|mux2|result_node[7]~15_combout\ = (\altsyncram_component|auto_generated|address_reg_a\(1) & ((\altsyncram_component|auto_generated|mux2|result_node[7]~14_combout\ & 
-- (\altsyncram_component|auto_generated|ram_block1a37~portadataout\)) # (!\altsyncram_component|auto_generated|mux2|result_node[7]~14_combout\ & ((\altsyncram_component|auto_generated|ram_block1a27~portadataout\))))) # 
-- (!\altsyncram_component|auto_generated|address_reg_a\(1) & (((\altsyncram_component|auto_generated|mux2|result_node[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ram_block1a37~portadataout\,
	datab => \altsyncram_component|auto_generated|ram_block1a27~portadataout\,
	datac => \altsyncram_component|auto_generated|address_reg_a\(1),
	datad => \altsyncram_component|auto_generated|mux2|result_node[7]~14_combout\,
	combout => \altsyncram_component|auto_generated|mux2|result_node[7]~15_combout\);

-- Location: IOIBUF_X53_Y91_N8
\data[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(8),
	o => \data[8]~input_o\);

-- Location: M9K_X52_Y85_N0
\altsyncram_component|auto_generated|ram_block1a38\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode302w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode302w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a38_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\);

-- Location: M9K_X81_Y84_N0
\altsyncram_component|auto_generated|ram_block1a8\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode273w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode273w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: M9K_X81_Y88_N0
\altsyncram_component|auto_generated|ram_block1a28\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode294w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode294w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

-- Location: LCCOMB_X69_Y84_N0
\altsyncram_component|auto_generated|mux2|result_node[8]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|mux2|result_node[8]~16_combout\ = (\altsyncram_component|auto_generated|address_reg_a\(1) & (((\altsyncram_component|auto_generated|address_reg_a\(0)) # 
-- (\altsyncram_component|auto_generated|ram_block1a28~portadataout\)))) # (!\altsyncram_component|auto_generated|address_reg_a\(1) & (\altsyncram_component|auto_generated|ram_block1a8~portadataout\ & 
-- (!\altsyncram_component|auto_generated|address_reg_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|address_reg_a\(1),
	datab => \altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	datac => \altsyncram_component|auto_generated|address_reg_a\(0),
	datad => \altsyncram_component|auto_generated|ram_block1a28~portadataout\,
	combout => \altsyncram_component|auto_generated|mux2|result_node[8]~16_combout\);

-- Location: M9K_X81_Y85_N0
\altsyncram_component|auto_generated|ram_block1a18\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode286w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode286w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: LCCOMB_X69_Y85_N16
\altsyncram_component|auto_generated|mux2|result_node[8]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|mux2|result_node[8]~17_combout\ = (\altsyncram_component|auto_generated|mux2|result_node[8]~16_combout\ & ((\altsyncram_component|auto_generated|ram_block1a38~portadataout\) # 
-- ((!\altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\altsyncram_component|auto_generated|mux2|result_node[8]~16_combout\ & (((\altsyncram_component|auto_generated|address_reg_a\(0) & 
-- \altsyncram_component|auto_generated|ram_block1a18~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ram_block1a38~portadataout\,
	datab => \altsyncram_component|auto_generated|mux2|result_node[8]~16_combout\,
	datac => \altsyncram_component|auto_generated|address_reg_a\(0),
	datad => \altsyncram_component|auto_generated|ram_block1a18~portadataout\,
	combout => \altsyncram_component|auto_generated|mux2|result_node[8]~17_combout\);

-- Location: IOIBUF_X53_Y91_N22
\data[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(9),
	o => \data[9]~input_o\);

-- Location: M9K_X65_Y89_N0
\altsyncram_component|auto_generated|ram_block1a29\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode294w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode294w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

-- Location: M9K_X65_Y86_N0
\altsyncram_component|auto_generated|ram_block1a19\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode286w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode286w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: M9K_X52_Y86_N0
\altsyncram_component|auto_generated|ram_block1a9\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode273w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode273w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: LCCOMB_X66_Y87_N4
\altsyncram_component|auto_generated|mux2|result_node[9]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|mux2|result_node[9]~18_combout\ = (\altsyncram_component|auto_generated|address_reg_a\(1) & (((\altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\altsyncram_component|auto_generated|address_reg_a\(1) & 
-- ((\altsyncram_component|auto_generated|address_reg_a\(0) & (\altsyncram_component|auto_generated|ram_block1a19~portadataout\)) # (!\altsyncram_component|auto_generated|address_reg_a\(0) & 
-- ((\altsyncram_component|auto_generated|ram_block1a9~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ram_block1a19~portadataout\,
	datab => \altsyncram_component|auto_generated|ram_block1a9~portadataout\,
	datac => \altsyncram_component|auto_generated|address_reg_a\(1),
	datad => \altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \altsyncram_component|auto_generated|mux2|result_node[9]~18_combout\);

-- Location: M9K_X52_Y87_N0
\altsyncram_component|auto_generated|ram_block1a39\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:altsyncram_component|altsyncram_nsq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \altsyncram_component|auto_generated|decode3|w_anode302w\(2),
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	ena0 => \altsyncram_component|auto_generated|decode3|w_anode302w[2]~0_combout\,
	clr0 => \aclr~inputclkctrl_outclk\,
	portadatain => \altsyncram_component|auto_generated|ram_block1a39_PORTADATAIN_bus\,
	portaaddr => \altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\);

-- Location: LCCOMB_X66_Y87_N22
\altsyncram_component|auto_generated|mux2|result_node[9]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \altsyncram_component|auto_generated|mux2|result_node[9]~19_combout\ = (\altsyncram_component|auto_generated|mux2|result_node[9]~18_combout\ & (((\altsyncram_component|auto_generated|ram_block1a39~portadataout\) # 
-- (!\altsyncram_component|auto_generated|address_reg_a\(1))))) # (!\altsyncram_component|auto_generated|mux2|result_node[9]~18_combout\ & (\altsyncram_component|auto_generated|ram_block1a29~portadataout\ & 
-- ((\altsyncram_component|auto_generated|address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altsyncram_component|auto_generated|ram_block1a29~portadataout\,
	datab => \altsyncram_component|auto_generated|mux2|result_node[9]~18_combout\,
	datac => \altsyncram_component|auto_generated|ram_block1a39~portadataout\,
	datad => \altsyncram_component|auto_generated|address_reg_a\(1),
	combout => \altsyncram_component|auto_generated|mux2|result_node[9]~19_combout\);

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(7) <= \q[7]~output_o\;

ww_q(8) <= \q[8]~output_o\;

ww_q(9) <= \q[9]~output_o\;
END structure;


