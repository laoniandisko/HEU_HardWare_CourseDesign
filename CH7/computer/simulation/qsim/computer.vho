-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "11/22/2022 13:10:25"

-- 
-- Device: Altera EP4CE55F23C8 Package FBGA484
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	computer0 IS
    PORT (
	PC_B : OUT std_logic;
	M : OUT std_logic_vector(24 DOWNTO 1);
	T1 : OUT std_logic;
	CLK1 : IN std_logic;
	STEP : IN std_logic;
	uaddr : OUT std_logic_vector(6 DOWNTO 1);
	RST1 : IN std_logic;
	T2 : OUT std_logic;
	T3 : OUT std_logic;
	\bus\ : OUT std_logic_vector(7 DOWNTO 0);
	d0 : IN std_logic_vector(7 DOWNTO 0);
	LDAR : OUT std_logic;
	T4 : OUT std_logic;
	LDPC : OUT std_logic;
	LOAD : OUT std_logic;
	I : OUT std_logic_vector(7 DOWNTO 0);
	SEL : OUT std_logic_vector(2 DOWNTO 0);
	RAM_B : OUT std_logic;
	SW_B : OUT std_logic;
	SWA : IN std_logic;
	SWB : IN std_logic;
	LED_B : OUT std_logic;
	\in\ : OUT std_logic_vector(7 DOWNTO 0);
	led : OUT std_logic_vector(7 DOWNTO 0)
	);
END computer0;

-- Design Ports Information
-- PC_B	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[24]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[23]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[22]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[21]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[20]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[19]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[18]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[17]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[16]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[15]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[14]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[13]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[12]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[11]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[10]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[9]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[8]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[7]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[6]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[5]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[4]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[3]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uaddr[6]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uaddr[5]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uaddr[4]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uaddr[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uaddr[2]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uaddr[1]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T2	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T3	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus[7]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus[6]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus[5]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus[4]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus[3]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus[2]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus[1]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus[0]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LDAR	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T4	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LDPC	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[7]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[6]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[5]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[4]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[3]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[2]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[0]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[0]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_B	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_B	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_B	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[7]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[6]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[5]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[2]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[1]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[0]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST1	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[7]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[6]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[2]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[0]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STEP	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWB	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWA	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK1	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF computer0 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_PC_B : std_logic;
SIGNAL ww_M : std_logic_vector(24 DOWNTO 1);
SIGNAL ww_T1 : std_logic;
SIGNAL ww_CLK1 : std_logic;
SIGNAL ww_STEP : std_logic;
SIGNAL ww_uaddr : std_logic_vector(6 DOWNTO 1);
SIGNAL ww_RST1 : std_logic;
SIGNAL ww_T2 : std_logic;
SIGNAL ww_T3 : std_logic;
SIGNAL \ww_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_d0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LDAR : std_logic;
SIGNAL ww_T4 : std_logic;
SIGNAL ww_LDPC : std_logic;
SIGNAL ww_LOAD : std_logic;
SIGNAL ww_I : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SEL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RAM_B : std_logic;
SIGNAL ww_SW_B : std_logic;
SIGNAL ww_SWA : std_logic;
SIGNAL ww_SWB : std_logic;
SIGNAL ww_LED_B : std_logic;
SIGNAL \ww_in\ : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst|srom|rom_block|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst2|inst|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst15|inst1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst15|inst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst21~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst20~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst22~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst39|inst7~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst36~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst39|inst6~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst23~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst39|inst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst15|inst13~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \STEP~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst25~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PC_B~output_o\ : std_logic;
SIGNAL \M[24]~output_o\ : std_logic;
SIGNAL \M[23]~output_o\ : std_logic;
SIGNAL \M[22]~output_o\ : std_logic;
SIGNAL \M[21]~output_o\ : std_logic;
SIGNAL \M[20]~output_o\ : std_logic;
SIGNAL \M[19]~output_o\ : std_logic;
SIGNAL \M[18]~output_o\ : std_logic;
SIGNAL \M[17]~output_o\ : std_logic;
SIGNAL \M[16]~output_o\ : std_logic;
SIGNAL \M[15]~output_o\ : std_logic;
SIGNAL \M[14]~output_o\ : std_logic;
SIGNAL \M[13]~output_o\ : std_logic;
SIGNAL \M[12]~output_o\ : std_logic;
SIGNAL \M[11]~output_o\ : std_logic;
SIGNAL \M[10]~output_o\ : std_logic;
SIGNAL \M[9]~output_o\ : std_logic;
SIGNAL \M[8]~output_o\ : std_logic;
SIGNAL \M[7]~output_o\ : std_logic;
SIGNAL \M[6]~output_o\ : std_logic;
SIGNAL \M[5]~output_o\ : std_logic;
SIGNAL \M[4]~output_o\ : std_logic;
SIGNAL \M[3]~output_o\ : std_logic;
SIGNAL \M[2]~output_o\ : std_logic;
SIGNAL \M[1]~output_o\ : std_logic;
SIGNAL \T1~output_o\ : std_logic;
SIGNAL \uaddr[6]~output_o\ : std_logic;
SIGNAL \uaddr[5]~output_o\ : std_logic;
SIGNAL \uaddr[4]~output_o\ : std_logic;
SIGNAL \uaddr[3]~output_o\ : std_logic;
SIGNAL \uaddr[2]~output_o\ : std_logic;
SIGNAL \uaddr[1]~output_o\ : std_logic;
SIGNAL \T2~output_o\ : std_logic;
SIGNAL \T3~output_o\ : std_logic;
SIGNAL \bus[7]~output_o\ : std_logic;
SIGNAL \bus[6]~output_o\ : std_logic;
SIGNAL \bus[5]~output_o\ : std_logic;
SIGNAL \bus[4]~output_o\ : std_logic;
SIGNAL \bus[3]~output_o\ : std_logic;
SIGNAL \bus[2]~output_o\ : std_logic;
SIGNAL \bus[1]~output_o\ : std_logic;
SIGNAL \bus[0]~output_o\ : std_logic;
SIGNAL \LDAR~output_o\ : std_logic;
SIGNAL \T4~output_o\ : std_logic;
SIGNAL \LDPC~output_o\ : std_logic;
SIGNAL \LOAD~output_o\ : std_logic;
SIGNAL \I[7]~output_o\ : std_logic;
SIGNAL \I[6]~output_o\ : std_logic;
SIGNAL \I[5]~output_o\ : std_logic;
SIGNAL \I[4]~output_o\ : std_logic;
SIGNAL \I[3]~output_o\ : std_logic;
SIGNAL \I[2]~output_o\ : std_logic;
SIGNAL \I[1]~output_o\ : std_logic;
SIGNAL \I[0]~output_o\ : std_logic;
SIGNAL \SEL[2]~output_o\ : std_logic;
SIGNAL \SEL[1]~output_o\ : std_logic;
SIGNAL \SEL[0]~output_o\ : std_logic;
SIGNAL \RAM_B~output_o\ : std_logic;
SIGNAL \SW_B~output_o\ : std_logic;
SIGNAL \LED_B~output_o\ : std_logic;
SIGNAL \in[7]~output_o\ : std_logic;
SIGNAL \in[6]~output_o\ : std_logic;
SIGNAL \in[5]~output_o\ : std_logic;
SIGNAL \in[4]~output_o\ : std_logic;
SIGNAL \in[3]~output_o\ : std_logic;
SIGNAL \in[2]~output_o\ : std_logic;
SIGNAL \in[1]~output_o\ : std_logic;
SIGNAL \in[0]~output_o\ : std_logic;
SIGNAL \led[7]~output_o\ : std_logic;
SIGNAL \led[6]~output_o\ : std_logic;
SIGNAL \led[5]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \inst15|inst1~feeder_combout\ : std_logic;
SIGNAL \STEP~input_o\ : std_logic;
SIGNAL \STEP~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst15|inst1~q\ : std_logic;
SIGNAL \inst15|inst2~q\ : std_logic;
SIGNAL \inst15|inst3~feeder_combout\ : std_logic;
SIGNAL \inst15|inst3~q\ : std_logic;
SIGNAL \inst15|inst4~q\ : std_logic;
SIGNAL \CLK1~input_o\ : std_logic;
SIGNAL \inst15|inst13~combout\ : std_logic;
SIGNAL \inst15|inst13~clkctrl_outclk\ : std_logic;
SIGNAL \inst15|inst12~0_combout\ : std_logic;
SIGNAL \inst15|inst~feeder_combout\ : std_logic;
SIGNAL \inst15|inst~q\ : std_logic;
SIGNAL \inst15|inst~clkctrl_outclk\ : std_logic;
SIGNAL \RST1~input_o\ : std_logic;
SIGNAL \inst15|inst1~clkctrl_outclk\ : std_logic;
SIGNAL \inst8|inst45~feeder_combout\ : std_logic;
SIGNAL \inst8|inst45~q\ : std_logic;
SIGNAL \inst23~combout\ : std_logic;
SIGNAL \inst23~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|9~0_combout\ : std_logic;
SIGNAL \inst39|inst~0_combout\ : std_logic;
SIGNAL \inst3|109~0_combout\ : std_logic;
SIGNAL \inst3|109~1_combout\ : std_logic;
SIGNAL \d0[2]~input_o\ : std_logic;
SIGNAL \inst30|17~q\ : std_logic;
SIGNAL \inst20~combout\ : std_logic;
SIGNAL \inst20~clkctrl_outclk\ : std_logic;
SIGNAL \inst29|17~q\ : std_logic;
SIGNAL \inst9|inst2|48~0_combout\ : std_logic;
SIGNAL \inst9|inst2|45~0_combout\ : std_logic;
SIGNAL \d0[0]~input_o\ : std_logic;
SIGNAL \inst30|19~q\ : std_logic;
SIGNAL \inst29|19~q\ : std_logic;
SIGNAL \inst9|inst2|46~0_combout\ : std_logic;
SIGNAL \inst9|inst2|43~0_combout\ : std_logic;
SIGNAL \inst9|inst2|80~0_combout\ : std_logic;
SIGNAL \inst21~combout\ : std_logic;
SIGNAL \inst21~clkctrl_outclk\ : std_logic;
SIGNAL \inst31|19~feeder_combout\ : std_logic;
SIGNAL \inst24~combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|latch_signal[0]~15_combout\ : std_logic;
SIGNAL \inst22~combout\ : std_logic;
SIGNAL \inst22~clkctrl_outclk\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~7_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|safe_q[7]~8_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|safe_q[0]~7_combout\ : std_logic;
SIGNAL \inst31|19~q\ : std_logic;
SIGNAL \inst3|8~0_combout\ : std_logic;
SIGNAL \inst3|8~1_combout\ : std_logic;
SIGNAL \inst31|18~feeder_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|latch_signal[1]~14_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~6_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|safe_q[1]~6_combout\ : std_logic;
SIGNAL \inst31|18~q\ : std_logic;
SIGNAL \inst31|17~feeder_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|latch_signal[2]~13_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~5_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|safe_q[2]~5_combout\ : std_logic;
SIGNAL \inst31|17~q\ : std_logic;
SIGNAL \inst30|16~q\ : std_logic;
SIGNAL \inst29|16~q\ : std_logic;
SIGNAL \inst9|inst2|52~0_combout\ : std_logic;
SIGNAL \inst9|inst2|51~0_combout\ : std_logic;
SIGNAL \inst9|inst2|74~0_combout\ : std_logic;
SIGNAL \inst9|inst2|77~combout\ : std_logic;
SIGNAL \d0[3]~input_o\ : std_logic;
SIGNAL \d0[4]~input_o\ : std_logic;
SIGNAL \inst29|15~q\ : std_logic;
SIGNAL \inst30|15~q\ : std_logic;
SIGNAL \inst9|inst|43~0_combout\ : std_logic;
SIGNAL \inst9|inst|46~0_combout\ : std_logic;
SIGNAL \inst30|18~q\ : std_logic;
SIGNAL \inst9|inst2|47~0_combout\ : std_logic;
SIGNAL \inst9|inst2|78~0_combout\ : std_logic;
SIGNAL \inst9|inst2|78~1_combout\ : std_logic;
SIGNAL \inst9|inst2|78~2_combout\ : std_logic;
SIGNAL \inst9|inst|80~combout\ : std_logic;
SIGNAL \inst39|inst34|14~feeder_combout\ : std_logic;
SIGNAL \inst39|inst34|14~q\ : std_logic;
SIGNAL \inst3|81~combout\ : std_logic;
SIGNAL \inst39|inst33|14~q\ : std_logic;
SIGNAL \inst33|18~feeder_combout\ : std_logic;
SIGNAL \inst33|18~q\ : std_logic;
SIGNAL \inst39|inst7~combout\ : std_logic;
SIGNAL \inst39|inst7~clkctrl_outclk\ : std_logic;
SIGNAL \inst39|inst32|14~feeder_combout\ : std_logic;
SIGNAL \inst39|inst32|14~q\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~8_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~9_combout\ : std_logic;
SIGNAL \inst39|inst34|13~feeder_combout\ : std_logic;
SIGNAL \inst39|inst34|13~q\ : std_logic;
SIGNAL \inst39|inst33|13~q\ : std_logic;
SIGNAL \inst39|inst32|13~feeder_combout\ : std_logic;
SIGNAL \inst39|inst32|13~q\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~4_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~5_combout\ : std_logic;
SIGNAL \d0[6]~input_o\ : std_logic;
SIGNAL \inst29|13~q\ : std_logic;
SIGNAL \inst30|13~q\ : std_logic;
SIGNAL \inst9|inst|48~0_combout\ : std_logic;
SIGNAL \inst9|inst|45~0_combout\ : std_logic;
SIGNAL \inst30|14~q\ : std_logic;
SIGNAL \inst29|14~q\ : std_logic;
SIGNAL \inst9|inst|47~0_combout\ : std_logic;
SIGNAL \inst9|inst|44~0_combout\ : std_logic;
SIGNAL \inst9|inst|74~0_combout\ : std_logic;
SIGNAL \inst9|inst|74~1_combout\ : std_logic;
SIGNAL \inst9|inst|75~0_combout\ : std_logic;
SIGNAL \inst9|inst|82~combout\ : std_logic;
SIGNAL \inst31|12~feeder_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|latch_signal[7]~8_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|latch_signal[6]~9_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|latch_signal[5]~10_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|latch_signal[4]~11_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|latch_signal[3]~12_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~4_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~3_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]~2_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]~1_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~0_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|safe_q[7]~0_combout\ : std_logic;
SIGNAL \inst31|12~q\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~6_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~7_combout\ : std_logic;
SIGNAL \inst31|13~0_combout\ : std_logic;
SIGNAL \inst31|13~feeder_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|safe_q[6]~1_combout\ : std_logic;
SIGNAL \inst31|13~q\ : std_logic;
SIGNAL \d0[5]~input_o\ : std_logic;
SIGNAL \inst9|inst|81~0_combout\ : std_logic;
SIGNAL \inst9|inst|81~1_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~10_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~11_combout\ : std_logic;
SIGNAL \inst31|14~0_combout\ : std_logic;
SIGNAL \inst31|14~feeder_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|safe_q[5]~2_combout\ : std_logic;
SIGNAL \inst31|14~q\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~14_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~15_combout\ : std_logic;
SIGNAL \inst39|inst34|15~feeder_combout\ : std_logic;
SIGNAL \inst39|inst34|15~q\ : std_logic;
SIGNAL \inst39|inst33|15~q\ : std_logic;
SIGNAL \inst39|inst32|15~feeder_combout\ : std_logic;
SIGNAL \inst39|inst32|15~q\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~12_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~13_combout\ : std_logic;
SIGNAL \inst31|15~0_combout\ : std_logic;
SIGNAL \inst31|15~feeder_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|safe_q[4]~3_combout\ : std_logic;
SIGNAL \inst31|15~q\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~18_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~19_combout\ : std_logic;
SIGNAL \inst39|inst34|16~feeder_combout\ : std_logic;
SIGNAL \inst39|inst34|16~q\ : std_logic;
SIGNAL \inst39|inst33|16~q\ : std_logic;
SIGNAL \inst39|inst32|16~feeder_combout\ : std_logic;
SIGNAL \inst39|inst32|16~q\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~16_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~17_combout\ : std_logic;
SIGNAL \inst31|16~0_combout\ : std_logic;
SIGNAL \inst31|16~feeder_combout\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|safe_q[3]~4_combout\ : std_logic;
SIGNAL \inst31|16~q\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~26_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~27_combout\ : std_logic;
SIGNAL \inst39|inst34|19~q\ : std_logic;
SIGNAL \inst39|inst33|19~q\ : std_logic;
SIGNAL \inst39|inst32|19~feeder_combout\ : std_logic;
SIGNAL \inst39|inst32|19~q\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~24_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~25_combout\ : std_logic;
SIGNAL \inst31|19~0_combout\ : std_logic;
SIGNAL \inst33|19~feeder_combout\ : std_logic;
SIGNAL \inst33|19~q\ : std_logic;
SIGNAL \inst39|inst6~combout\ : std_logic;
SIGNAL \inst39|inst6~clkctrl_outclk\ : std_logic;
SIGNAL \inst39|inst33|18~feeder_combout\ : std_logic;
SIGNAL \inst39|inst33|18~q\ : std_logic;
SIGNAL \inst31|18~1_combout\ : std_logic;
SIGNAL \inst31|18~2_combout\ : std_logic;
SIGNAL \inst39|inst34|18~feeder_combout\ : std_logic;
SIGNAL \inst39|inst34|18~q\ : std_logic;
SIGNAL \inst39|inst32|18~feeder_combout\ : std_logic;
SIGNAL \inst39|inst32|18~q\ : std_logic;
SIGNAL \inst31|18~5_combout\ : std_logic;
SIGNAL \d0[1]~input_o\ : std_logic;
SIGNAL \inst9|inst2|79~0_combout\ : std_logic;
SIGNAL \inst9|inst2|81~combout\ : std_logic;
SIGNAL \inst31|18~3_combout\ : std_logic;
SIGNAL \inst31|18~4_combout\ : std_logic;
SIGNAL \inst31|18~0_combout\ : std_logic;
SIGNAL \inst29|18~q\ : std_logic;
SIGNAL \inst9|inst2|44~0_combout\ : std_logic;
SIGNAL \inst9|inst2|78~3_combout\ : std_logic;
SIGNAL \inst9|inst2|82~combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~22_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~23_combout\ : std_logic;
SIGNAL \inst39|inst34|17~q\ : std_logic;
SIGNAL \inst39|inst33|17~q\ : std_logic;
SIGNAL \inst39|inst32|17~q\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~20_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~21_combout\ : std_logic;
SIGNAL \inst31|17~0_combout\ : std_logic;
SIGNAL \inst33|17~q\ : std_logic;
SIGNAL \inst33|16~q\ : std_logic;
SIGNAL \inst39|inst~1_combout\ : std_logic;
SIGNAL \inst39|inst~combout\ : std_logic;
SIGNAL \inst39|inst~clkctrl_outclk\ : std_logic;
SIGNAL \inst39|inst34|12~feeder_combout\ : std_logic;
SIGNAL \inst39|inst34|12~q\ : std_logic;
SIGNAL \inst39|inst33|12~q\ : std_logic;
SIGNAL \inst39|inst32|12~feeder_combout\ : std_logic;
SIGNAL \inst39|inst32|12~q\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \d0[7]~input_o\ : std_logic;
SIGNAL \inst29|12~q\ : std_logic;
SIGNAL \inst9|inst|52~0_combout\ : std_logic;
SIGNAL \inst9|inst|77~0_combout\ : std_logic;
SIGNAL \inst9|inst|74~2_combout\ : std_logic;
SIGNAL \inst9|inst|77~combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|_~3_combout\ : std_logic;
SIGNAL \inst31|12~0_combout\ : std_logic;
SIGNAL \inst30|12~q\ : std_logic;
SIGNAL \inst9|inst|51~0_combout\ : std_logic;
SIGNAL \inst4|inst11~2_combout\ : std_logic;
SIGNAL \inst4|inst~0_combout\ : std_logic;
SIGNAL \inst4|inst11~0_combout\ : std_logic;
SIGNAL \inst4|inst11~1_combout\ : std_logic;
SIGNAL \inst4|inst~combout\ : std_logic;
SIGNAL \inst8|inst44~1_combout\ : std_logic;
SIGNAL \inst8|inst44~3_combout\ : std_logic;
SIGNAL \inst8|inst44~0_combout\ : std_logic;
SIGNAL \inst8|inst44~_emulated_q\ : std_logic;
SIGNAL \inst8|inst44~2_combout\ : std_logic;
SIGNAL \inst25~combout\ : std_logic;
SIGNAL \inst25~clkctrl_outclk\ : std_logic;
SIGNAL \inst33|12~feeder_combout\ : std_logic;
SIGNAL \inst33|12~q\ : std_logic;
SIGNAL \inst4|inst24~0_combout\ : std_logic;
SIGNAL \inst8|inst43~1_combout\ : std_logic;
SIGNAL \inst8|inst43~3_combout\ : std_logic;
SIGNAL \inst8|inst43~0_combout\ : std_logic;
SIGNAL \inst8|inst43~_emulated_q\ : std_logic;
SIGNAL \inst8|inst43~2_combout\ : std_logic;
SIGNAL \inst4|inst~1_combout\ : std_logic;
SIGNAL \inst33|13~feeder_combout\ : std_logic;
SIGNAL \inst33|13~q\ : std_logic;
SIGNAL \inst4|inst25~0_combout\ : std_logic;
SIGNAL \inst8|inst42~1_combout\ : std_logic;
SIGNAL \inst8|inst42~3_combout\ : std_logic;
SIGNAL \inst8|inst42~0_combout\ : std_logic;
SIGNAL \inst8|inst42~_emulated_q\ : std_logic;
SIGNAL \inst8|inst42~2_combout\ : std_logic;
SIGNAL \inst4|inst9~0_combout\ : std_logic;
SIGNAL \SWB~input_o\ : std_logic;
SIGNAL \inst33|14~q\ : std_logic;
SIGNAL \inst4|inst9~1_combout\ : std_logic;
SIGNAL \inst4|inst9~2_combout\ : std_logic;
SIGNAL \inst8|inst41~1_combout\ : std_logic;
SIGNAL \inst8|inst41~3_combout\ : std_logic;
SIGNAL \inst8|inst41~0_combout\ : std_logic;
SIGNAL \inst8|inst41~_emulated_q\ : std_logic;
SIGNAL \inst8|inst41~2_combout\ : std_logic;
SIGNAL \inst4|inst10~0_combout\ : std_logic;
SIGNAL \SWA~input_o\ : std_logic;
SIGNAL \inst33|15~feeder_combout\ : std_logic;
SIGNAL \inst33|15~q\ : std_logic;
SIGNAL \inst4|inst10~1_combout\ : std_logic;
SIGNAL \inst4|inst10~2_combout\ : std_logic;
SIGNAL \inst8|inst40~1_combout\ : std_logic;
SIGNAL \inst8|inst40~3_combout\ : std_logic;
SIGNAL \inst8|inst40~0_combout\ : std_logic;
SIGNAL \inst8|inst40~_emulated_q\ : std_logic;
SIGNAL \inst8|inst40~2_combout\ : std_logic;
SIGNAL \inst6|inst~0_combout\ : std_logic;
SIGNAL \inst5|inst~0_combout\ : std_logic;
SIGNAL \inst7|inst~0_combout\ : std_logic;
SIGNAL \inst5|inst~1_combout\ : std_logic;
SIGNAL \inst26|inst7~combout\ : std_logic;
SIGNAL \inst26|inst8~combout\ : std_logic;
SIGNAL \inst26|inst6~combout\ : std_logic;
SIGNAL \inst36~combout\ : std_logic;
SIGNAL \inst36~clkctrl_outclk\ : std_logic;
SIGNAL \inst32|12~feeder_combout\ : std_logic;
SIGNAL \inst32|12~q\ : std_logic;
SIGNAL \inst32|13~feeder_combout\ : std_logic;
SIGNAL \inst32|13~q\ : std_logic;
SIGNAL \inst32|14~feeder_combout\ : std_logic;
SIGNAL \inst32|14~q\ : std_logic;
SIGNAL \inst32|15~feeder_combout\ : std_logic;
SIGNAL \inst32|15~q\ : std_logic;
SIGNAL \inst32|16~feeder_combout\ : std_logic;
SIGNAL \inst32|16~q\ : std_logic;
SIGNAL \inst32|17~feeder_combout\ : std_logic;
SIGNAL \inst32|17~q\ : std_logic;
SIGNAL \inst32|18~feeder_combout\ : std_logic;
SIGNAL \inst32|18~q\ : std_logic;
SIGNAL \inst32|19~feeder_combout\ : std_logic;
SIGNAL \inst32|19~q\ : std_logic;
SIGNAL \inst2|inst|srom|rom_block|auto_generated|q_a\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst10|inst|sram|ram_block|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \inst26|ALT_INV_inst7~combout\ : std_logic;
SIGNAL \inst3|ALT_INV_9~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_109~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_8~1_combout\ : std_logic;
SIGNAL \ALT_INV_RST1~input_o\ : std_logic;
SIGNAL \inst17|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q[7]~8_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_inst40~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_inst41~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_inst42~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_inst43~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_inst44~0_combout\ : std_logic;
SIGNAL \inst26|ALT_INV_inst6~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

PC_B <= ww_PC_B;
M <= ww_M;
T1 <= ww_T1;
ww_CLK1 <= CLK1;
ww_STEP <= STEP;
uaddr <= ww_uaddr;
ww_RST1 <= RST1;
T2 <= ww_T2;
T3 <= ww_T3;
\bus\ <= \ww_bus\;
ww_d0 <= d0;
LDAR <= ww_LDAR;
T4 <= ww_T4;
LDPC <= ww_LDPC;
LOAD <= ww_LOAD;
I <= ww_I;
SEL <= ww_SEL;
RAM_B <= ww_RAM_B;
SW_B <= ww_SW_B;
ww_SWA <= SWA;
ww_SWB <= SWB;
LED_B <= ww_LED_B;
\in\ <= \ww_in\;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|inst|srom|rom_block|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst8|inst45~q\ & \inst8|inst44~2_combout\ & \inst8|inst43~2_combout\ & \inst8|inst42~2_combout\ & \inst8|inst41~2_combout\ & \inst8|inst40~2_combout\);

\inst2|inst|srom|rom_block|auto_generated|q_a\(6) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\inst2|inst|srom|rom_block|auto_generated|q_a\(7) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);
\inst2|inst|srom|rom_block|auto_generated|q_a\(8) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\(2);
\inst2|inst|srom|rom_block|auto_generated|q_a\(12) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\(3);
\inst2|inst|srom|rom_block|auto_generated|q_a\(13) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\(4);
\inst2|inst|srom|rom_block|auto_generated|q_a\(14) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\(5);
\inst2|inst|srom|rom_block|auto_generated|q_a\(15) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\(6);
\inst2|inst|srom|rom_block|auto_generated|q_a\(16) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\(7);

\inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst8|inst45~q\ & \inst8|inst44~2_combout\ & \inst8|inst43~2_combout\ & \inst8|inst42~2_combout\ & \inst8|inst41~2_combout\ & \inst8|inst40~2_combout\);

\inst2|inst|srom|rom_block|auto_generated|q_a\(0) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst2|inst|srom|rom_block|auto_generated|q_a\(1) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst2|inst|srom|rom_block|auto_generated|q_a\(2) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst2|inst|srom|rom_block|auto_generated|q_a\(3) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst2|inst|srom|rom_block|auto_generated|q_a\(4) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst2|inst|srom|rom_block|auto_generated|q_a\(5) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst2|inst|srom|rom_block|auto_generated|q_a\(9) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst2|inst|srom|rom_block|auto_generated|q_a\(10) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst2|inst|srom|rom_block|auto_generated|q_a\(11) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst2|inst|srom|rom_block|auto_generated|q_a\(17) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst2|inst|srom|rom_block|auto_generated|q_a\(18) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst2|inst|srom|rom_block|auto_generated|q_a\(19) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst2|inst|srom|rom_block|auto_generated|q_a\(20) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst2|inst|srom|rom_block|auto_generated|q_a\(21) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst2|inst|srom|rom_block|auto_generated|q_a\(22) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst2|inst|srom|rom_block|auto_generated|q_a\(23) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst31|12~0_combout\ & \inst31|13~0_combout\ & \inst31|14~0_combout\ & \inst31|15~0_combout\ & \inst31|16~0_combout\
& \inst31|17~0_combout\ & \inst31|18~0_combout\ & \inst31|19~0_combout\);

\inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst31|12~q\ & \inst31|13~q\ & \inst31|14~q\ & \inst31|15~q\ & \inst31|16~q\ & \inst31|17~q\ & \inst31|18~q\ & \inst31|19~q\);

\inst10|inst|sram|ram_block|auto_generated|q_a\(0) <= \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst10|inst|sram|ram_block|auto_generated|q_a\(1) <= \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst10|inst|sram|ram_block|auto_generated|q_a\(2) <= \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst10|inst|sram|ram_block|auto_generated|q_a\(3) <= \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst10|inst|sram|ram_block|auto_generated|q_a\(4) <= \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst10|inst|sram|ram_block|auto_generated|q_a\(5) <= \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst10|inst|sram|ram_block|auto_generated|q_a\(6) <= \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst10|inst|sram|ram_block|auto_generated|q_a\(7) <= \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst15|inst1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst15|inst1~q\);

\inst15|inst~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst15|inst~q\);

\inst21~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst21~combout\);

\inst20~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst20~combout\);

\inst22~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst22~combout\);

\inst39|inst7~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst39|inst7~combout\);

\inst36~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst36~combout\);

\inst39|inst6~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst39|inst6~combout\);

\inst23~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst23~combout\);

\inst39|inst~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst39|inst~combout\);

\inst15|inst13~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst15|inst13~combout\);

\STEP~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \STEP~input_o\);

\inst25~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst25~combout\);
\inst6|ALT_INV_inst~0_combout\ <= NOT \inst6|inst~0_combout\;
\inst26|ALT_INV_inst7~combout\ <= NOT \inst26|inst7~combout\;
\inst3|ALT_INV_9~0_combout\ <= NOT \inst3|9~0_combout\;
\inst3|ALT_INV_109~1_combout\ <= NOT \inst3|109~1_combout\;
\inst3|ALT_INV_8~1_combout\ <= NOT \inst3|8~1_combout\;
\ALT_INV_RST1~input_o\ <= NOT \RST1~input_o\;
\inst17|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q[7]~8_combout\ <= NOT \inst17|LPM_COUNTER_component|auto_generated|safe_q[7]~8_combout\;
\inst8|ALT_INV_inst40~0_combout\ <= NOT \inst8|inst40~0_combout\;
\inst8|ALT_INV_inst41~0_combout\ <= NOT \inst8|inst41~0_combout\;
\inst8|ALT_INV_inst42~0_combout\ <= NOT \inst8|inst42~0_combout\;
\inst8|ALT_INV_inst43~0_combout\ <= NOT \inst8|inst43~0_combout\;
\inst8|ALT_INV_inst44~0_combout\ <= NOT \inst8|inst44~0_combout\;
\inst26|ALT_INV_inst6~combout\ <= NOT \inst26|inst6~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X64_Y53_N2
\PC_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_inst~0_combout\,
	devoe => ww_devoe,
	o => \PC_B~output_o\);

-- Location: IOOBUF_X43_Y53_N9
\M[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \M[24]~output_o\);

-- Location: IOOBUF_X48_Y53_N2
\M[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \M[23]~output_o\);

-- Location: IOOBUF_X69_Y53_N9
\M[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \M[22]~output_o\);

-- Location: IOOBUF_X73_Y53_N23
\M[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \M[21]~output_o\);

-- Location: IOOBUF_X77_Y40_N23
\M[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \M[20]~output_o\);

-- Location: IOOBUF_X77_Y49_N2
\M[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \M[19]~output_o\);

-- Location: IOOBUF_X77_Y48_N23
\M[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \M[18]~output_o\);

-- Location: IOOBUF_X77_Y47_N23
\M[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \M[17]~output_o\);

-- Location: IOOBUF_X77_Y49_N9
\M[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \M[16]~output_o\);

-- Location: IOOBUF_X77_Y40_N16
\M[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \M[15]~output_o\);

-- Location: IOOBUF_X77_Y36_N2
\M[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \M[14]~output_o\);

-- Location: IOOBUF_X77_Y41_N2
\M[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \M[13]~output_o\);

-- Location: IOOBUF_X69_Y53_N2
\M[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \M[12]~output_o\);

-- Location: IOOBUF_X52_Y53_N2
\M[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \M[11]~output_o\);

-- Location: IOOBUF_X50_Y53_N2
\M[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \M[10]~output_o\);

-- Location: IOOBUF_X77_Y44_N16
\M[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \M[9]~output_o\);

-- Location: IOOBUF_X77_Y46_N16
\M[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \M[8]~output_o\);

-- Location: IOOBUF_X77_Y47_N16
\M[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \M[7]~output_o\);

-- Location: IOOBUF_X77_Y25_N9
\M[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \M[6]~output_o\);

-- Location: IOOBUF_X48_Y53_N9
\M[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \M[5]~output_o\);

-- Location: IOOBUF_X41_Y53_N23
\M[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \M[4]~output_o\);

-- Location: IOOBUF_X77_Y22_N9
\M[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \M[3]~output_o\);

-- Location: IOOBUF_X77_Y25_N2
\M[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \M[2]~output_o\);

-- Location: IOOBUF_X77_Y21_N23
\M[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|srom|rom_block|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \M[1]~output_o\);

-- Location: IOOBUF_X77_Y21_N16
\T1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|inst~q\,
	devoe => ww_devoe,
	o => \T1~output_o\);

-- Location: IOOBUF_X77_Y37_N2
\uaddr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst45~q\,
	devoe => ww_devoe,
	o => \uaddr[6]~output_o\);

-- Location: IOOBUF_X73_Y53_N2
\uaddr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst44~2_combout\,
	devoe => ww_devoe,
	o => \uaddr[5]~output_o\);

-- Location: IOOBUF_X71_Y53_N9
\uaddr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst43~2_combout\,
	devoe => ww_devoe,
	o => \uaddr[4]~output_o\);

-- Location: IOOBUF_X73_Y53_N9
\uaddr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst42~2_combout\,
	devoe => ww_devoe,
	o => \uaddr[3]~output_o\);

-- Location: IOOBUF_X77_Y49_N23
\uaddr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst41~2_combout\,
	devoe => ww_devoe,
	o => \uaddr[2]~output_o\);

-- Location: IOOBUF_X59_Y53_N9
\uaddr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst40~2_combout\,
	devoe => ww_devoe,
	o => \uaddr[1]~output_o\);

-- Location: IOOBUF_X77_Y26_N9
\T2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|inst1~q\,
	devoe => ww_devoe,
	o => \T2~output_o\);

-- Location: IOOBUF_X77_Y39_N9
\T3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|inst2~q\,
	devoe => ww_devoe,
	o => \T3~output_o\);

-- Location: IOOBUF_X66_Y53_N23
\bus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|12~0_combout\,
	devoe => ww_devoe,
	o => \bus[7]~output_o\);

-- Location: IOOBUF_X77_Y41_N9
\bus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|13~0_combout\,
	devoe => ww_devoe,
	o => \bus[6]~output_o\);

-- Location: IOOBUF_X77_Y42_N23
\bus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|14~0_combout\,
	devoe => ww_devoe,
	o => \bus[5]~output_o\);

-- Location: IOOBUF_X77_Y43_N2
\bus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|15~0_combout\,
	devoe => ww_devoe,
	o => \bus[4]~output_o\);

-- Location: IOOBUF_X64_Y53_N9
\bus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|16~0_combout\,
	devoe => ww_devoe,
	o => \bus[3]~output_o\);

-- Location: IOOBUF_X77_Y49_N16
\bus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|17~0_combout\,
	devoe => ww_devoe,
	o => \bus[2]~output_o\);

-- Location: IOOBUF_X77_Y45_N23
\bus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|18~0_combout\,
	devoe => ww_devoe,
	o => \bus[1]~output_o\);

-- Location: IOOBUF_X77_Y45_N16
\bus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31|19~0_combout\,
	devoe => ww_devoe,
	o => \bus[0]~output_o\);

-- Location: IOOBUF_X77_Y38_N23
\LDAR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst~0_combout\,
	devoe => ww_devoe,
	o => \LDAR~output_o\);

-- Location: IOOBUF_X77_Y26_N2
\T4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|inst3~q\,
	devoe => ww_devoe,
	o => \T4~output_o\);

-- Location: IOOBUF_X77_Y38_N16
\LDPC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst~0_combout\,
	devoe => ww_devoe,
	o => \LDPC~output_o\);

-- Location: IOOBUF_X77_Y34_N16
\LOAD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst~1_combout\,
	devoe => ww_devoe,
	o => \LOAD~output_o\);

-- Location: IOOBUF_X75_Y53_N23
\I[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|12~q\,
	devoe => ww_devoe,
	o => \I[7]~output_o\);

-- Location: IOOBUF_X77_Y24_N2
\I[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|13~q\,
	devoe => ww_devoe,
	o => \I[6]~output_o\);

-- Location: IOOBUF_X77_Y35_N9
\I[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|14~q\,
	devoe => ww_devoe,
	o => \I[5]~output_o\);

-- Location: IOOBUF_X57_Y53_N23
\I[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|15~q\,
	devoe => ww_devoe,
	o => \I[4]~output_o\);

-- Location: IOOBUF_X57_Y53_N2
\I[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|16~q\,
	devoe => ww_devoe,
	o => \I[3]~output_o\);

-- Location: IOOBUF_X55_Y53_N23
\I[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|17~q\,
	devoe => ww_devoe,
	o => \I[2]~output_o\);

-- Location: IOOBUF_X77_Y31_N23
\I[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|18~q\,
	devoe => ww_devoe,
	o => \I[1]~output_o\);

-- Location: IOOBUF_X77_Y35_N2
\I[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|19~q\,
	devoe => ww_devoe,
	o => \I[0]~output_o\);

-- Location: IOOBUF_X77_Y43_N9
\SEL[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_9~0_combout\,
	devoe => ww_devoe,
	o => \SEL[2]~output_o\);

-- Location: IOOBUF_X69_Y53_N23
\SEL[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_109~1_combout\,
	devoe => ww_devoe,
	o => \SEL[1]~output_o\);

-- Location: IOOBUF_X69_Y53_N16
\SEL[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_8~1_combout\,
	devoe => ww_devoe,
	o => \SEL[0]~output_o\);

-- Location: IOOBUF_X55_Y53_N16
\RAM_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|ALT_INV_inst7~combout\,
	devoe => ww_devoe,
	o => \RAM_B~output_o\);

-- Location: IOOBUF_X77_Y39_N2
\SW_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|inst8~combout\,
	devoe => ww_devoe,
	o => \SW_B~output_o\);

-- Location: IOOBUF_X77_Y31_N16
\LED_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|ALT_INV_inst6~combout\,
	devoe => ww_devoe,
	o => \LED_B~output_o\);

-- Location: IOOBUF_X77_Y33_N2
\in[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0[7]~input_o\,
	devoe => ww_devoe,
	o => \in[7]~output_o\);

-- Location: IOOBUF_X66_Y0_N2
\in[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0[6]~input_o\,
	devoe => ww_devoe,
	o => \in[6]~output_o\);

-- Location: IOOBUF_X50_Y53_N23
\in[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0[5]~input_o\,
	devoe => ww_devoe,
	o => \in[5]~output_o\);

-- Location: IOOBUF_X43_Y53_N23
\in[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0[4]~input_o\,
	devoe => ww_devoe,
	o => \in[4]~output_o\);

-- Location: IOOBUF_X48_Y53_N23
\in[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0[3]~input_o\,
	devoe => ww_devoe,
	o => \in[3]~output_o\);

-- Location: IOOBUF_X77_Y23_N23
\in[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0[2]~input_o\,
	devoe => ww_devoe,
	o => \in[2]~output_o\);

-- Location: IOOBUF_X75_Y53_N9
\in[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0[1]~input_o\,
	devoe => ww_devoe,
	o => \in[1]~output_o\);

-- Location: IOOBUF_X77_Y20_N23
\in[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d0[0]~input_o\,
	devoe => ww_devoe,
	o => \in[0]~output_o\);

-- Location: IOOBUF_X57_Y53_N9
\led[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|12~q\,
	devoe => ww_devoe,
	o => \led[7]~output_o\);

-- Location: IOOBUF_X77_Y36_N9
\led[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|13~q\,
	devoe => ww_devoe,
	o => \led[6]~output_o\);

-- Location: IOOBUF_X77_Y32_N16
\led[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|14~q\,
	devoe => ww_devoe,
	o => \led[5]~output_o\);

-- Location: IOOBUF_X77_Y48_N16
\led[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|15~q\,
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X55_Y53_N2
\led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|16~q\,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X71_Y53_N2
\led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|17~q\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X75_Y53_N2
\led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|18~q\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X55_Y53_N9
\led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|19~q\,
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: LCCOMB_X76_Y27_N10
\inst15|inst1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst1~feeder_combout\ = \inst15|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst~q\,
	combout => \inst15|inst1~feeder_combout\);

-- Location: IOIBUF_X41_Y0_N15
\STEP~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STEP,
	o => \STEP~input_o\);

-- Location: CLKCTRL_G19
\STEP~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \STEP~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \STEP~inputclkctrl_outclk\);

-- Location: FF_X76_Y27_N11
\inst15|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst13~clkctrl_outclk\,
	d => \inst15|inst1~feeder_combout\,
	clrn => \STEP~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst1~q\);

-- Location: FF_X66_Y43_N15
\inst15|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst13~clkctrl_outclk\,
	asdata => \inst15|inst1~q\,
	clrn => \STEP~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst2~q\);

-- Location: LCCOMB_X66_Y43_N30
\inst15|inst3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst3~feeder_combout\ = \inst15|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|inst2~q\,
	combout => \inst15|inst3~feeder_combout\);

-- Location: FF_X66_Y43_N31
\inst15|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst13~clkctrl_outclk\,
	d => \inst15|inst3~feeder_combout\,
	clrn => \STEP~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst3~q\);

-- Location: FF_X76_Y27_N19
\inst15|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst13~clkctrl_outclk\,
	asdata => \inst15|inst3~q\,
	clrn => \STEP~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst4~q\);

-- Location: IOIBUF_X77_Y24_N8
\CLK1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK1,
	o => \CLK1~input_o\);

-- Location: LCCOMB_X76_Y27_N18
\inst15|inst13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst13~combout\ = LCELL((\inst15|inst4~q\) # (\CLK1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|inst4~q\,
	datad => \CLK1~input_o\,
	combout => \inst15|inst13~combout\);

-- Location: CLKCTRL_G8
\inst15|inst13~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst15|inst13~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst15|inst13~clkctrl_outclk\);

-- Location: LCCOMB_X69_Y43_N24
\inst15|inst12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst12~0_combout\ = (!\inst15|inst1~q\ & (!\inst15|inst3~q\ & (!\inst15|inst~q\ & !\inst15|inst2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst1~q\,
	datab => \inst15|inst3~q\,
	datac => \inst15|inst~q\,
	datad => \inst15|inst2~q\,
	combout => \inst15|inst12~0_combout\);

-- Location: LCCOMB_X69_Y43_N30
\inst15|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst~feeder_combout\ = \inst15|inst12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|inst12~0_combout\,
	combout => \inst15|inst~feeder_combout\);

-- Location: FF_X69_Y43_N31
\inst15|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst13~clkctrl_outclk\,
	d => \inst15|inst~feeder_combout\,
	clrn => \STEP~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst~q\);

-- Location: CLKCTRL_G6
\inst15|inst~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst15|inst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst15|inst~clkctrl_outclk\);

-- Location: IOIBUF_X77_Y46_N22
\RST1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST1,
	o => \RST1~input_o\);

-- Location: CLKCTRL_G9
\inst15|inst1~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst15|inst1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst15|inst1~clkctrl_outclk\);

-- Location: M9K_X68_Y45_N0
\inst2|inst|srom|rom_block|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000075101540000101504001800004001700650019200054000F0090401960063801870060C0001000349541001180005000100008006080010",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "lpm_rom1119.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_rom1119:inst2|lpm_rom:inst|altrom:srom|altsyncram:rom_block|altsyncram_ki01:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst15|inst~clkctrl_outclk\,
	portaaddr => \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X70_Y42_N28
\inst8|inst45~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst45~feeder_combout\ = \inst2|inst|srom|rom_block|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(5),
	combout => \inst8|inst45~feeder_combout\);

-- Location: FF_X70_Y42_N29
\inst8|inst45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst1~clkctrl_outclk\,
	d => \inst8|inst45~feeder_combout\,
	clrn => \ALT_INV_RST1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst45~q\);

-- Location: M9K_X68_Y42_N0
\inst2|inst|srom|rom_block|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000200006E002000010003000050003D800F60014000700030000F6003D800F6003D80008001C000C8003400058001C00061003D800C4",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "lpm_rom1119.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_rom1119:inst2|lpm_rom:inst|altrom:srom|altsyncram:rom_block|altsyncram_ki01:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst15|inst~q\,
	portaaddr => \inst2|inst|srom|rom_block|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst2|inst|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X67_Y42_N20
inst23 : cycloneive_lcell_comb
-- Equation(s):
-- \inst23~combout\ = LCELL((\inst15|inst2~q\ & (!\inst2|inst|srom|rom_block|auto_generated|q_a\(14) & (\inst2|inst|srom|rom_block|auto_generated|q_a\(13) & \inst2|inst|srom|rom_block|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst2~q\,
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(14),
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst23~combout\);

-- Location: CLKCTRL_G10
\inst23~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst23~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst23~clkctrl_outclk\);

-- Location: LCCOMB_X67_Y45_N6
\inst3|9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|9~0_combout\ = ((\inst2|inst|srom|rom_block|auto_generated|q_a\(11) & (\inst2|inst|srom|rom_block|auto_generated|q_a\(9) $ (\inst2|inst|srom|rom_block|auto_generated|q_a\(10))))) # (!\inst2|inst|srom|rom_block|auto_generated|q_a\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(16),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(9),
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(10),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(11),
	combout => \inst3|9~0_combout\);

-- Location: LCCOMB_X66_Y43_N2
\inst39|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst~0_combout\ = (!\inst2|inst|srom|rom_block|auto_generated|q_a\(14) & (!\inst2|inst|srom|rom_block|auto_generated|q_a\(13) & (\inst15|inst3~q\ & \inst2|inst|srom|rom_block|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(14),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(13),
	datac => \inst15|inst3~q\,
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst39|inst~0_combout\);

-- Location: LCCOMB_X66_Y45_N4
\inst3|109~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|109~0_combout\ = (\inst2|inst|srom|rom_block|auto_generated|q_a\(10) & (!\inst2|inst|srom|rom_block|auto_generated|q_a\(11) & !\inst2|inst|srom|rom_block|auto_generated|q_a\(9))) # (!\inst2|inst|srom|rom_block|auto_generated|q_a\(10) & 
-- ((\inst2|inst|srom|rom_block|auto_generated|q_a\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(11),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(10),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(9),
	combout => \inst3|109~0_combout\);

-- Location: LCCOMB_X66_Y45_N10
\inst3|109~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|109~1_combout\ = (\inst2|inst|srom|rom_block|auto_generated|q_a\(16) & (((\inst3|109~0_combout\)))) # (!\inst2|inst|srom|rom_block|auto_generated|q_a\(16) & (((\inst3|109~0_combout\ & \inst2|inst|srom|rom_block|auto_generated|q_a\(11))) # 
-- (!\inst2|inst|srom|rom_block|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(16),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(15),
	datac => \inst3|109~0_combout\,
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(11),
	combout => \inst3|109~1_combout\);

-- Location: IOIBUF_X77_Y23_N15
\d0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(2),
	o => \d0[2]~input_o\);

-- Location: FF_X67_Y45_N27
\inst30|17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23~clkctrl_outclk\,
	asdata => \inst31|17~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|17~q\);

-- Location: LCCOMB_X67_Y42_N12
inst20 : cycloneive_lcell_comb
-- Equation(s):
-- \inst20~combout\ = LCELL((\inst15|inst2~q\ & (!\inst2|inst|srom|rom_block|auto_generated|q_a\(14) & (\inst2|inst|srom|rom_block|auto_generated|q_a\(13) & !\inst2|inst|srom|rom_block|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst2~q\,
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(14),
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst20~combout\);

-- Location: CLKCTRL_G14
\inst20~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst20~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst20~clkctrl_outclk\);

-- Location: FF_X67_Y45_N17
\inst29|17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	asdata => \inst31|17~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|17~q\);

-- Location: LCCOMB_X67_Y45_N26
\inst9|inst2|48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst2|48~0_combout\ = (\inst29|17~q\ & ((\inst30|17~q\ & (\inst2|inst|srom|rom_block|auto_generated|q_a\(23))) # (!\inst30|17~q\ & ((\inst2|inst|srom|rom_block|auto_generated|q_a\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(23),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(22),
	datac => \inst30|17~q\,
	datad => \inst29|17~q\,
	combout => \inst9|inst2|48~0_combout\);

-- Location: LCCOMB_X67_Y45_N16
\inst9|inst2|45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst2|45~0_combout\ = (\inst29|17~q\) # ((\inst30|17~q\ & ((\inst2|inst|srom|rom_block|auto_generated|q_a\(20)))) # (!\inst30|17~q\ & (\inst2|inst|srom|rom_block|auto_generated|q_a\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(21),
	datab => \inst30|17~q\,
	datac => \inst29|17~q\,
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(20),
	combout => \inst9|inst2|45~0_combout\);

-- Location: IOIBUF_X77_Y20_N15
\d0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(0),
	o => \d0[0]~input_o\);

-- Location: FF_X67_Y45_N19
\inst30|19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23~clkctrl_outclk\,
	asdata => \inst31|19~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|19~q\);

-- Location: FF_X67_Y45_N5
\inst29|19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	asdata => \inst31|19~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|19~q\);

-- Location: LCCOMB_X67_Y45_N18
\inst9|inst2|46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst2|46~0_combout\ = (\inst29|19~q\ & ((\inst30|19~q\ & (\inst2|inst|srom|rom_block|auto_generated|q_a\(23))) # (!\inst30|19~q\ & ((\inst2|inst|srom|rom_block|auto_generated|q_a\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(23),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(22),
	datac => \inst30|19~q\,
	datad => \inst29|19~q\,
	combout => \inst9|inst2|46~0_combout\);

-- Location: LCCOMB_X67_Y45_N4
\inst9|inst2|43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst2|43~0_combout\ = (\inst29|19~q\) # ((\inst30|19~q\ & ((\inst2|inst|srom|rom_block|auto_generated|q_a\(20)))) # (!\inst30|19~q\ & (\inst2|inst|srom|rom_block|auto_generated|q_a\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|19~q\,
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(21),
	datac => \inst29|19~q\,
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(20),
	combout => \inst9|inst2|43~0_combout\);

-- Location: LCCOMB_X67_Y45_N12
\inst9|inst2|80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst2|80~0_combout\ = \inst9|inst2|46~0_combout\ $ (\inst9|inst2|43~0_combout\ $ (((!\inst2|inst|srom|rom_block|auto_generated|q_a\(19) & \inst2|inst|srom|rom_block|auto_generated|q_a\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(19),
	datab => \inst9|inst2|46~0_combout\,
	datac => \inst9|inst2|43~0_combout\,
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(18),
	combout => \inst9|inst2|80~0_combout\);

-- Location: LCCOMB_X69_Y42_N30
inst21 : cycloneive_lcell_comb
-- Equation(s):
-- \inst21~combout\ = LCELL((\inst2|inst|srom|rom_block|auto_generated|q_a\(14) & (\inst15|inst3~q\ & (\inst2|inst|srom|rom_block|auto_generated|q_a\(13) & !\inst2|inst|srom|rom_block|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(14),
	datab => \inst15|inst3~q\,
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst21~combout\);

-- Location: CLKCTRL_G7
\inst21~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst21~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst21~clkctrl_outclk\);

-- Location: LCCOMB_X65_Y44_N28
\inst31|19~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|19~feeder_combout\ = \inst31|19~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|19~0_combout\,
	combout => \inst31|19~feeder_combout\);

-- Location: LCCOMB_X66_Y43_N4
inst24 : cycloneive_lcell_comb
-- Equation(s):
-- \inst24~combout\ = (\inst15|inst3~q\ & (\inst2|inst|srom|rom_block|auto_generated|q_a\(14) & (!\inst2|inst|srom|rom_block|auto_generated|q_a\(13) & \inst2|inst|srom|rom_block|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst3~q\,
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(14),
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst24~combout\);

-- Location: LCCOMB_X65_Y43_N30
\inst17|LPM_COUNTER_component|auto_generated|latch_signal[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|latch_signal[0]~15_combout\ = (\RST1~input_o\) # ((\inst24~combout\ & ((!\inst31|19~0_combout\))) # (!\inst24~combout\ & (\inst17|LPM_COUNTER_component|auto_generated|latch_signal[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[0]~15_combout\,
	datab => \RST1~input_o\,
	datac => \inst24~combout\,
	datad => \inst31|19~0_combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[0]~15_combout\);

-- Location: LCCOMB_X67_Y42_N8
inst22 : cycloneive_lcell_comb
-- Equation(s):
-- \inst22~combout\ = LCELL((\inst15|inst3~q\ & (!\inst2|inst|srom|rom_block|auto_generated|q_a\(6) & (\inst2|inst|srom|rom_block|auto_generated|q_a\(8) & \inst2|inst|srom|rom_block|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst3~q\,
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(6),
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(8),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(7),
	combout => \inst22~combout\);

-- Location: CLKCTRL_G11
\inst22~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst22~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst22~clkctrl_outclk\);

-- Location: LCCOMB_X65_Y44_N12
\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(0) $ (GND)
-- \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(!\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(0),
	datad => VCC,
	combout => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X65_Y43_N14
\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~7_combout\ = \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ $ (!\inst17|LPM_COUNTER_component|auto_generated|latch_signal[0]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	datad => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[0]~15_combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~7_combout\);

-- Location: LCCOMB_X65_Y43_N12
\inst17|LPM_COUNTER_component|auto_generated|safe_q[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|safe_q[7]~8_combout\ = (\inst24~combout\) # (\RST1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24~combout\,
	datad => \RST1~input_o\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|safe_q[7]~8_combout\);

-- Location: FF_X65_Y43_N15
\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	d => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~7_combout\,
	clrn => \inst17|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X65_Y43_N20
\inst17|LPM_COUNTER_component|auto_generated|pre_hazard[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(0) = \inst17|LPM_COUNTER_component|auto_generated|latch_signal[0]~15_combout\ $ (\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[0]~15_combout\,
	datac => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(0));

-- Location: LCCOMB_X65_Y44_N6
\inst17|LPM_COUNTER_component|auto_generated|safe_q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|safe_q[0]~7_combout\ = (!\RST1~input_o\ & ((\inst24~combout\ & ((\inst31|19~0_combout\))) # (!\inst24~combout\ & (!\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(0),
	datab => \RST1~input_o\,
	datac => \inst24~combout\,
	datad => \inst31|19~0_combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|safe_q[0]~7_combout\);

-- Location: FF_X65_Y44_N29
\inst31|19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst21~clkctrl_outclk\,
	d => \inst31|19~feeder_combout\,
	asdata => \inst17|LPM_COUNTER_component|auto_generated|safe_q[0]~7_combout\,
	sload => \inst6|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|19~q\);

-- Location: LCCOMB_X66_Y44_N4
\inst3|8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|8~0_combout\ = (!\inst2|inst|srom|rom_block|auto_generated|q_a\(16) & (((\inst2|inst|srom|rom_block|auto_generated|q_a\(10)) # (!\inst2|inst|srom|rom_block|auto_generated|q_a\(9))) # (!\inst2|inst|srom|rom_block|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(15),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(16),
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(9),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(10),
	combout => \inst3|8~0_combout\);

-- Location: LCCOMB_X66_Y44_N22
\inst3|8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|8~1_combout\ = (\inst3|8~0_combout\) # ((\inst2|inst|srom|rom_block|auto_generated|q_a\(9) & !\inst2|inst|srom|rom_block|auto_generated|q_a\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(9),
	datac => \inst3|8~0_combout\,
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(11),
	combout => \inst3|8~1_combout\);

-- Location: LCCOMB_X69_Y44_N0
\inst31|18~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|18~feeder_combout\ = \inst31|18~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|18~0_combout\,
	combout => \inst31|18~feeder_combout\);

-- Location: LCCOMB_X67_Y43_N30
\inst17|LPM_COUNTER_component|auto_generated|latch_signal[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|latch_signal[1]~14_combout\ = (\RST1~input_o\) # ((\inst24~combout\ & ((!\inst31|18~0_combout\))) # (!\inst24~combout\ & (\inst17|LPM_COUNTER_component|auto_generated|latch_signal[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[1]~14_combout\,
	datab => \RST1~input_o\,
	datac => \inst24~combout\,
	datad => \inst31|18~0_combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[1]~14_combout\);

-- Location: LCCOMB_X65_Y44_N14
\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(1) & ((\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND))) # 
-- (!\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(1) & (!\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\))
-- \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(1)) # (!\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(1),
	datad => VCC,
	cin => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X66_Y43_N8
\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~6_combout\ = \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ $ (!\inst17|LPM_COUNTER_component|auto_generated|latch_signal[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	datad => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[1]~14_combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~6_combout\);

-- Location: FF_X65_Y43_N13
\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	asdata => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~6_combout\,
	clrn => \inst17|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q[7]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X66_Y43_N14
\inst17|LPM_COUNTER_component|auto_generated|pre_hazard[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(1) = \inst17|LPM_COUNTER_component|auto_generated|latch_signal[1]~14_combout\ $ (\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[1]~14_combout\,
	datad => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(1));

-- Location: LCCOMB_X69_Y44_N20
\inst17|LPM_COUNTER_component|auto_generated|safe_q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|safe_q[1]~6_combout\ = (!\RST1~input_o\ & ((\inst24~combout\ & ((\inst31|18~0_combout\))) # (!\inst24~combout\ & (!\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(1),
	datab => \inst24~combout\,
	datac => \RST1~input_o\,
	datad => \inst31|18~0_combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|safe_q[1]~6_combout\);

-- Location: FF_X69_Y44_N1
\inst31|18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst21~clkctrl_outclk\,
	d => \inst31|18~feeder_combout\,
	asdata => \inst17|LPM_COUNTER_component|auto_generated|safe_q[1]~6_combout\,
	sload => \inst6|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|18~q\);

-- Location: LCCOMB_X65_Y45_N26
\inst31|17~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|17~feeder_combout\ = \inst31|17~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|17~0_combout\,
	combout => \inst31|17~feeder_combout\);

-- Location: LCCOMB_X66_Y45_N22
\inst17|LPM_COUNTER_component|auto_generated|latch_signal[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|latch_signal[2]~13_combout\ = (\RST1~input_o\) # ((\inst24~combout\ & (!\inst31|17~0_combout\)) # (!\inst24~combout\ & ((\inst17|LPM_COUNTER_component|auto_generated|latch_signal[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST1~input_o\,
	datab => \inst24~combout\,
	datac => \inst31|17~0_combout\,
	datad => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[2]~13_combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[2]~13_combout\);

-- Location: LCCOMB_X65_Y44_N16
\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(2) & (!\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC)) # 
-- (!\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(2) & (\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND)))
-- \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((!\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(2) & !\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(2),
	datad => VCC,
	cin => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X65_Y43_N28
\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~5_combout\ = \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ $ (!\inst17|LPM_COUNTER_component|auto_generated|latch_signal[2]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	datab => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[2]~13_combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~5_combout\);

-- Location: FF_X65_Y43_N29
\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	d => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~5_combout\,
	clrn => \inst17|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X65_Y43_N10
\inst17|LPM_COUNTER_component|auto_generated|pre_hazard[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(2) = \inst17|LPM_COUNTER_component|auto_generated|latch_signal[2]~13_combout\ $ (\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[2]~13_combout\,
	datad => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(2));

-- Location: LCCOMB_X65_Y45_N30
\inst17|LPM_COUNTER_component|auto_generated|safe_q[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|safe_q[2]~5_combout\ = (!\RST1~input_o\ & ((\inst24~combout\ & ((\inst31|17~0_combout\))) # (!\inst24~combout\ & (!\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(2),
	datab => \RST1~input_o\,
	datac => \inst24~combout\,
	datad => \inst31|17~0_combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|safe_q[2]~5_combout\);

-- Location: FF_X65_Y45_N27
\inst31|17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst21~clkctrl_outclk\,
	d => \inst31|17~feeder_combout\,
	asdata => \inst17|LPM_COUNTER_component|auto_generated|safe_q[2]~5_combout\,
	sload => \inst6|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|17~q\);

-- Location: FF_X67_Y45_N31
\inst30|16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23~clkctrl_outclk\,
	asdata => \inst31|16~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|16~q\);

-- Location: FF_X67_Y45_N9
\inst29|16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	asdata => \inst31|16~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|16~q\);

-- Location: LCCOMB_X67_Y45_N30
\inst9|inst2|52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst2|52~0_combout\ = (\inst29|16~q\ & ((\inst30|16~q\ & (\inst2|inst|srom|rom_block|auto_generated|q_a\(23))) # (!\inst30|16~q\ & ((\inst2|inst|srom|rom_block|auto_generated|q_a\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(23),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(22),
	datac => \inst30|16~q\,
	datad => \inst29|16~q\,
	combout => \inst9|inst2|52~0_combout\);

-- Location: LCCOMB_X67_Y45_N8
\inst9|inst2|51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst2|51~0_combout\ = (\inst29|16~q\) # ((\inst30|16~q\ & ((\inst2|inst|srom|rom_block|auto_generated|q_a\(20)))) # (!\inst30|16~q\ & (\inst2|inst|srom|rom_block|auto_generated|q_a\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|16~q\,
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(21),
	datac => \inst29|16~q\,
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(20),
	combout => \inst9|inst2|51~0_combout\);

-- Location: LCCOMB_X66_Y45_N28
\inst9|inst2|74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst2|74~0_combout\ = (!\inst2|inst|srom|rom_block|auto_generated|q_a\(19) & (((!\inst9|inst2|48~0_combout\ & \inst9|inst2|78~3_combout\)) # (!\inst9|inst2|45~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(19),
	datab => \inst9|inst2|48~0_combout\,
	datac => \inst9|inst2|45~0_combout\,
	datad => \inst9|inst2|78~3_combout\,
	combout => \inst9|inst2|74~0_combout\);

-- Location: LCCOMB_X66_Y45_N8
\inst9|inst2|77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst2|77~combout\ = \inst9|inst2|52~0_combout\ $ (\inst9|inst2|51~0_combout\ $ (\inst9|inst2|74~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|52~0_combout\,
	datac => \inst9|inst2|51~0_combout\,
	datad => \inst9|inst2|74~0_combout\,
	combout => \inst9|inst2|77~combout\);

-- Location: IOIBUF_X48_Y53_N15
\d0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(3),
	o => \d0[3]~input_o\);

-- Location: IOIBUF_X43_Y53_N15
\d0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(4),
	o => \d0[4]~input_o\);

-- Location: FF_X66_Y42_N9
\inst29|15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	asdata => \inst31|15~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|15~q\);

-- Location: FF_X66_Y42_N19
\inst30|15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23~clkctrl_outclk\,
	asdata => \inst31|15~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|15~q\);

-- Location: LCCOMB_X66_Y42_N8
\inst9|inst|43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|43~0_combout\ = (\inst29|15~q\) # ((\inst30|15~q\ & ((\inst2|inst|srom|rom_block|auto_generated|q_a\(20)))) # (!\inst30|15~q\ & (\inst2|inst|srom|rom_block|auto_generated|q_a\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(21),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(20),
	datac => \inst29|15~q\,
	datad => \inst30|15~q\,
	combout => \inst9|inst|43~0_combout\);

-- Location: LCCOMB_X66_Y42_N18
\inst9|inst|46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|46~0_combout\ = (\inst29|15~q\ & ((\inst30|15~q\ & ((\inst2|inst|srom|rom_block|auto_generated|q_a\(23)))) # (!\inst30|15~q\ & (\inst2|inst|srom|rom_block|auto_generated|q_a\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29|15~q\,
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(22),
	datac => \inst30|15~q\,
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(23),
	combout => \inst9|inst|46~0_combout\);

-- Location: FF_X67_Y45_N15
\inst30|18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23~clkctrl_outclk\,
	asdata => \inst31|18~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|18~q\);

-- Location: LCCOMB_X67_Y45_N14
\inst9|inst2|47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst2|47~0_combout\ = (\inst29|18~q\ & ((\inst30|18~q\ & (\inst2|inst|srom|rom_block|auto_generated|q_a\(23))) # (!\inst30|18~q\ & ((\inst2|inst|srom|rom_block|auto_generated|q_a\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(23),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(22),
	datac => \inst30|18~q\,
	datad => \inst29|18~q\,
	combout => \inst9|inst2|47~0_combout\);

-- Location: LCCOMB_X67_Y45_N28
\inst9|inst2|78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst2|78~0_combout\ = (!\inst9|inst2|47~0_combout\ & (((\inst2|inst|srom|rom_block|auto_generated|q_a\(18) & !\inst9|inst2|46~0_combout\)) # (!\inst9|inst2|43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(18),
	datab => \inst9|inst2|47~0_combout\,
	datac => \inst9|inst2|43~0_combout\,
	datad => \inst9|inst2|46~0_combout\,
	combout => \inst9|inst2|78~0_combout\);

-- Location: LCCOMB_X67_Y45_N10
\inst9|inst2|78~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst2|78~1_combout\ = (\inst9|inst2|48~0_combout\) # ((\inst9|inst2|44~0_combout\ & !\inst9|inst2|78~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|48~0_combout\,
	datac => \inst9|inst2|44~0_combout\,
	datad => \inst9|inst2|78~0_combout\,
	combout => \inst9|inst2|78~1_combout\);

-- Location: LCCOMB_X67_Y45_N24
\inst9|inst2|78~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst2|78~2_combout\ = ((!\inst9|inst2|52~0_combout\ & ((!\inst9|inst2|78~1_combout\) # (!\inst9|inst2|45~0_combout\)))) # (!\inst9|inst2|51~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|45~0_combout\,
	datab => \inst9|inst2|52~0_combout\,
	datac => \inst9|inst2|51~0_combout\,
	datad => \inst9|inst2|78~1_combout\,
	combout => \inst9|inst2|78~2_combout\);

-- Location: LCCOMB_X67_Y42_N4
\inst9|inst|80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|80~combout\ = \inst9|inst|43~0_combout\ $ (\inst9|inst|46~0_combout\ $ (((\inst9|inst2|78~2_combout\ & !\inst2|inst|srom|rom_block|auto_generated|q_a\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|43~0_combout\,
	datab => \inst9|inst|46~0_combout\,
	datac => \inst9|inst2|78~2_combout\,
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(19),
	combout => \inst9|inst|80~combout\);

-- Location: LCCOMB_X67_Y44_N4
\inst39|inst34|14~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst34|14~feeder_combout\ = \inst31|14~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|14~0_combout\,
	combout => \inst39|inst34|14~feeder_combout\);

-- Location: FF_X67_Y44_N5
\inst39|inst34|14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst~clkctrl_outclk\,
	d => \inst39|inst34|14~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst34|14~q\);

-- Location: LCCOMB_X66_Y44_N30
\inst3|81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|81~combout\ = (\inst2|inst|srom|rom_block|auto_generated|q_a\(9) & !\inst2|inst|srom|rom_block|auto_generated|q_a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(9),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(11),
	combout => \inst3|81~combout\);

-- Location: FF_X66_Y44_N15
\inst39|inst33|14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst6~clkctrl_outclk\,
	asdata => \inst31|14~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst33|14~q\);

-- Location: LCCOMB_X66_Y43_N20
\inst33|18~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|18~feeder_combout\ = \inst31|18~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|18~0_combout\,
	combout => \inst33|18~feeder_combout\);

-- Location: FF_X66_Y43_N21
\inst33|18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst25~combout\,
	d => \inst33|18~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|18~q\);

-- Location: LCCOMB_X66_Y43_N18
\inst39|inst7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst7~combout\ = LCELL((\inst39|inst~1_combout\ & (\inst39|inst~0_combout\ & (!\inst33|19~q\ & !\inst33|18~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|inst~1_combout\,
	datab => \inst39|inst~0_combout\,
	datac => \inst33|19~q\,
	datad => \inst33|18~q\,
	combout => \inst39|inst7~combout\);

-- Location: CLKCTRL_G17
\inst39|inst7~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst39|inst7~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst39|inst7~clkctrl_outclk\);

-- Location: LCCOMB_X66_Y44_N12
\inst39|inst32|14~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst32|14~feeder_combout\ = \inst31|14~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|14~0_combout\,
	combout => \inst39|inst32|14~feeder_combout\);

-- Location: FF_X66_Y44_N13
\inst39|inst32|14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst7~clkctrl_outclk\,
	d => \inst39|inst32|14~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst32|14~q\);

-- Location: LCCOMB_X66_Y44_N14
\inst35|LPM_MUX_component|auto_generated|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~8_combout\ = (\inst3|8~0_combout\ & (((\inst39|inst32|14~q\)))) # (!\inst3|8~0_combout\ & ((\inst3|81~combout\ & ((\inst39|inst32|14~q\))) # (!\inst3|81~combout\ & (\inst39|inst33|14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|8~0_combout\,
	datab => \inst3|81~combout\,
	datac => \inst39|inst33|14~q\,
	datad => \inst39|inst32|14~q\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~8_combout\);

-- Location: LCCOMB_X67_Y44_N26
\inst35|LPM_MUX_component|auto_generated|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~9_combout\ = (\inst3|109~1_combout\ & (((\inst35|LPM_MUX_component|auto_generated|_~8_combout\)))) # (!\inst3|109~1_combout\ & (\inst3|8~1_combout\ & (\inst39|inst34|14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|109~1_combout\,
	datab => \inst3|8~1_combout\,
	datac => \inst39|inst34|14~q\,
	datad => \inst35|LPM_MUX_component|auto_generated|_~8_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~9_combout\);

-- Location: LCCOMB_X67_Y43_N10
\inst39|inst34|13~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst34|13~feeder_combout\ = \inst31|13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|13~0_combout\,
	combout => \inst39|inst34|13~feeder_combout\);

-- Location: FF_X67_Y43_N11
\inst39|inst34|13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst~clkctrl_outclk\,
	d => \inst39|inst34|13~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst34|13~q\);

-- Location: FF_X67_Y43_N17
\inst39|inst33|13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst6~clkctrl_outclk\,
	asdata => \inst31|13~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst33|13~q\);

-- Location: LCCOMB_X67_Y41_N12
\inst39|inst32|13~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst32|13~feeder_combout\ = \inst31|13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|13~0_combout\,
	combout => \inst39|inst32|13~feeder_combout\);

-- Location: FF_X67_Y41_N13
\inst39|inst32|13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst7~clkctrl_outclk\,
	d => \inst39|inst32|13~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst32|13~q\);

-- Location: LCCOMB_X67_Y43_N16
\inst35|LPM_MUX_component|auto_generated|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~4_combout\ = (\inst3|8~0_combout\ & (((\inst39|inst32|13~q\)))) # (!\inst3|8~0_combout\ & ((\inst3|81~combout\ & ((\inst39|inst32|13~q\))) # (!\inst3|81~combout\ & (\inst39|inst33|13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|8~0_combout\,
	datab => \inst3|81~combout\,
	datac => \inst39|inst33|13~q\,
	datad => \inst39|inst32|13~q\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~4_combout\);

-- Location: LCCOMB_X67_Y43_N8
\inst35|LPM_MUX_component|auto_generated|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~5_combout\ = (\inst3|109~1_combout\ & (((\inst35|LPM_MUX_component|auto_generated|_~4_combout\)))) # (!\inst3|109~1_combout\ & (\inst39|inst34|13~q\ & (\inst3|8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|inst34|13~q\,
	datab => \inst3|8~1_combout\,
	datac => \inst3|109~1_combout\,
	datad => \inst35|LPM_MUX_component|auto_generated|_~4_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~5_combout\);

-- Location: IOIBUF_X66_Y0_N22
\d0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(6),
	o => \d0[6]~input_o\);

-- Location: FF_X66_Y42_N31
\inst29|13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	asdata => \inst31|13~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|13~q\);

-- Location: FF_X66_Y42_N13
\inst30|13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23~clkctrl_outclk\,
	asdata => \inst31|13~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|13~q\);

-- Location: LCCOMB_X66_Y42_N12
\inst9|inst|48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|48~0_combout\ = (\inst29|13~q\ & ((\inst30|13~q\ & ((\inst2|inst|srom|rom_block|auto_generated|q_a\(23)))) # (!\inst30|13~q\ & (\inst2|inst|srom|rom_block|auto_generated|q_a\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(22),
	datab => \inst29|13~q\,
	datac => \inst30|13~q\,
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(23),
	combout => \inst9|inst|48~0_combout\);

-- Location: LCCOMB_X66_Y42_N30
\inst9|inst|45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|45~0_combout\ = (\inst29|13~q\) # ((\inst30|13~q\ & ((\inst2|inst|srom|rom_block|auto_generated|q_a\(20)))) # (!\inst30|13~q\ & (\inst2|inst|srom|rom_block|auto_generated|q_a\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(21),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(20),
	datac => \inst29|13~q\,
	datad => \inst30|13~q\,
	combout => \inst9|inst|45~0_combout\);

-- Location: FF_X66_Y42_N17
\inst30|14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23~clkctrl_outclk\,
	asdata => \inst31|14~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|14~q\);

-- Location: FF_X66_Y42_N27
\inst29|14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	asdata => \inst31|14~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|14~q\);

-- Location: LCCOMB_X66_Y42_N2
\inst9|inst|47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|47~0_combout\ = (\inst29|14~q\ & ((\inst30|14~q\ & ((\inst2|inst|srom|rom_block|auto_generated|q_a\(23)))) # (!\inst30|14~q\ & (\inst2|inst|srom|rom_block|auto_generated|q_a\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(22),
	datab => \inst30|14~q\,
	datac => \inst29|14~q\,
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(23),
	combout => \inst9|inst|47~0_combout\);

-- Location: LCCOMB_X66_Y42_N26
\inst9|inst|44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|44~0_combout\ = (\inst29|14~q\) # ((\inst30|14~q\ & ((\inst2|inst|srom|rom_block|auto_generated|q_a\(20)))) # (!\inst30|14~q\ & (\inst2|inst|srom|rom_block|auto_generated|q_a\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(21),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(20),
	datac => \inst29|14~q\,
	datad => \inst30|14~q\,
	combout => \inst9|inst|44~0_combout\);

-- Location: LCCOMB_X66_Y42_N28
\inst9|inst|74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|74~0_combout\ = ((!\inst9|inst|47~0_combout\ & !\inst9|inst|43~0_combout\)) # (!\inst9|inst|44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst|47~0_combout\,
	datac => \inst9|inst|43~0_combout\,
	datad => \inst9|inst|44~0_combout\,
	combout => \inst9|inst|74~0_combout\);

-- Location: LCCOMB_X66_Y42_N6
\inst9|inst|74~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|74~1_combout\ = (!\inst9|inst|46~0_combout\ & !\inst9|inst|47~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst|46~0_combout\,
	datad => \inst9|inst|47~0_combout\,
	combout => \inst9|inst|74~1_combout\);

-- Location: LCCOMB_X67_Y42_N30
\inst9|inst|75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|75~0_combout\ = (!\inst2|inst|srom|rom_block|auto_generated|q_a\(19) & ((\inst9|inst|74~0_combout\) # ((\inst9|inst2|78~2_combout\ & \inst9|inst|74~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(19),
	datab => \inst9|inst|74~0_combout\,
	datac => \inst9|inst2|78~2_combout\,
	datad => \inst9|inst|74~1_combout\,
	combout => \inst9|inst|75~0_combout\);

-- Location: LCCOMB_X67_Y42_N0
\inst9|inst|82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|82~combout\ = \inst9|inst|48~0_combout\ $ (\inst9|inst|45~0_combout\ $ (\inst9|inst|75~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|48~0_combout\,
	datab => \inst9|inst|45~0_combout\,
	datac => \inst9|inst|75~0_combout\,
	combout => \inst9|inst|82~combout\);

-- Location: LCCOMB_X67_Y44_N8
\inst31|12~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|12~feeder_combout\ = \inst31|12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|12~0_combout\,
	combout => \inst31|12~feeder_combout\);

-- Location: LCCOMB_X67_Y44_N20
\inst17|LPM_COUNTER_component|auto_generated|latch_signal[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|latch_signal[7]~8_combout\ = (\RST1~input_o\) # ((\inst24~combout\ & ((!\inst31|12~0_combout\))) # (!\inst24~combout\ & (\inst17|LPM_COUNTER_component|auto_generated|latch_signal[7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST1~input_o\,
	datab => \inst24~combout\,
	datac => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[7]~8_combout\,
	datad => \inst31|12~0_combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[7]~8_combout\);

-- Location: LCCOMB_X67_Y43_N20
\inst17|LPM_COUNTER_component|auto_generated|latch_signal[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|latch_signal[6]~9_combout\ = (\RST1~input_o\) # ((\inst24~combout\ & ((!\inst31|13~0_combout\))) # (!\inst24~combout\ & (\inst17|LPM_COUNTER_component|auto_generated|latch_signal[6]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[6]~9_combout\,
	datab => \inst24~combout\,
	datac => \RST1~input_o\,
	datad => \inst31|13~0_combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[6]~9_combout\);

-- Location: LCCOMB_X67_Y44_N22
\inst17|LPM_COUNTER_component|auto_generated|latch_signal[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|latch_signal[5]~10_combout\ = (\RST1~input_o\) # ((\inst24~combout\ & ((!\inst31|14~0_combout\))) # (!\inst24~combout\ & (\inst17|LPM_COUNTER_component|auto_generated|latch_signal[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST1~input_o\,
	datab => \inst24~combout\,
	datac => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[5]~10_combout\,
	datad => \inst31|14~0_combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[5]~10_combout\);

-- Location: LCCOMB_X69_Y44_N26
\inst17|LPM_COUNTER_component|auto_generated|latch_signal[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|latch_signal[4]~11_combout\ = (\RST1~input_o\) # ((\inst24~combout\ & ((!\inst31|15~0_combout\))) # (!\inst24~combout\ & (\inst17|LPM_COUNTER_component|auto_generated|latch_signal[4]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[4]~11_combout\,
	datab => \RST1~input_o\,
	datac => \inst24~combout\,
	datad => \inst31|15~0_combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[4]~11_combout\);

-- Location: LCCOMB_X65_Y45_N24
\inst17|LPM_COUNTER_component|auto_generated|latch_signal[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|latch_signal[3]~12_combout\ = (\RST1~input_o\) # ((\inst24~combout\ & ((!\inst31|16~0_combout\))) # (!\inst24~combout\ & (\inst17|LPM_COUNTER_component|auto_generated|latch_signal[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST1~input_o\,
	datab => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[3]~12_combout\,
	datac => \inst31|16~0_combout\,
	datad => \inst24~combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[3]~12_combout\);

-- Location: LCCOMB_X65_Y44_N18
\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(3) & ((\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND))) # 
-- (!\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(3) & (!\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\))
-- \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(3)) # (!\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(3),
	datad => VCC,
	cin => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X65_Y44_N30
\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~4_combout\ = \inst17|LPM_COUNTER_component|auto_generated|latch_signal[3]~12_combout\ $ (!\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[3]~12_combout\,
	datab => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~4_combout\);

-- Location: LCCOMB_X65_Y43_N18
\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\ = \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~4_combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\);

-- Location: FF_X65_Y43_N19
\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	d => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~feeder_combout\,
	clrn => \inst17|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X65_Y45_N22
\inst17|LPM_COUNTER_component|auto_generated|pre_hazard[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(3) = \inst17|LPM_COUNTER_component|auto_generated|latch_signal[3]~12_combout\ $ (\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[3]~12_combout\,
	datad => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(3));

-- Location: LCCOMB_X65_Y44_N20
\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(4) & (!\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC)) # 
-- (!\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(4) & (\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND)))
-- \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((!\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(4) & !\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(4),
	datad => VCC,
	cin => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X65_Y43_N16
\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~3_combout\ = \inst17|LPM_COUNTER_component|auto_generated|latch_signal[4]~11_combout\ $ (!\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[4]~11_combout\,
	datac => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~3_combout\);

-- Location: FF_X65_Y43_N17
\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	d => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~3_combout\,
	clrn => \inst17|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X65_Y44_N4
\inst17|LPM_COUNTER_component|auto_generated|pre_hazard[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(4) = \inst17|LPM_COUNTER_component|auto_generated|latch_signal[4]~11_combout\ $ (\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[4]~11_combout\,
	datad => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	combout => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(4));

-- Location: LCCOMB_X65_Y44_N22
\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(5) & ((\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND))) # 
-- (!\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(5) & (!\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\))
-- \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(5)) # (!\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(5),
	datad => VCC,
	cin => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X65_Y44_N0
\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]~2_combout\ = \inst17|LPM_COUNTER_component|auto_generated|latch_signal[5]~10_combout\ $ (!\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[5]~10_combout\,
	datac => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]~2_combout\);

-- Location: FF_X65_Y43_N1
\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	asdata => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]~2_combout\,
	clrn => \inst17|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q[7]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X65_Y44_N10
\inst17|LPM_COUNTER_component|auto_generated|pre_hazard[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(5) = \inst17|LPM_COUNTER_component|auto_generated|latch_signal[5]~10_combout\ $ (\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[5]~10_combout\,
	datad => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	combout => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(5));

-- Location: LCCOMB_X65_Y44_N24
\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(6) & (!\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC)) # 
-- (!\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(6) & (\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND)))
-- \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((!\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(6) & !\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(6),
	datad => VCC,
	cin => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCCOMB_X65_Y43_N4
\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]~1_combout\ = \inst17|LPM_COUNTER_component|auto_generated|latch_signal[6]~9_combout\ $ (!\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[6]~9_combout\,
	datad => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]~1_combout\);

-- Location: FF_X65_Y43_N5
\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	d => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]~1_combout\,
	clrn => \inst17|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X65_Y43_N2
\inst17|LPM_COUNTER_component|auto_generated|pre_hazard[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(6) = \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) $ (\inst17|LPM_COUNTER_component|auto_generated|latch_signal[6]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[6]~9_combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(6));

-- Location: LCCOMB_X65_Y44_N26
\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ $ (!\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(7),
	cin => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\);

-- Location: LCCOMB_X65_Y43_N22
\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~0_combout\ = \inst17|LPM_COUNTER_component|auto_generated|latch_signal[7]~8_combout\ $ (!\inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[7]~8_combout\,
	datab => \inst17|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~0_combout\);

-- Location: FF_X65_Y43_N23
\inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22~clkctrl_outclk\,
	d => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~0_combout\,
	clrn => \inst17|LPM_COUNTER_component|auto_generated|ALT_INV_safe_q[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X65_Y43_N26
\inst17|LPM_COUNTER_component|auto_generated|pre_hazard[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(7) = \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) $ (\inst17|LPM_COUNTER_component|auto_generated|latch_signal[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => \inst17|LPM_COUNTER_component|auto_generated|latch_signal[7]~8_combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(7));

-- Location: LCCOMB_X67_Y44_N28
\inst17|LPM_COUNTER_component|auto_generated|safe_q[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|safe_q[7]~0_combout\ = (!\RST1~input_o\ & ((\inst24~combout\ & ((\inst31|12~0_combout\))) # (!\inst24~combout\ & (!\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST1~input_o\,
	datab => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(7),
	datac => \inst24~combout\,
	datad => \inst31|12~0_combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|safe_q[7]~0_combout\);

-- Location: FF_X67_Y44_N9
\inst31|12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst21~clkctrl_outclk\,
	d => \inst31|12~feeder_combout\,
	asdata => \inst17|LPM_COUNTER_component|auto_generated|safe_q[7]~0_combout\,
	sload => \inst6|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|12~q\);

-- Location: M9K_X68_Y44_N0
\inst10|inst|sram|ram_block|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM1119:inst10|lpm_ram_dq:inst|altram:sram|altsyncram:ram_block|altsyncram_ap71:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst2|inst|srom|rom_block|auto_generated|q_a\(17),
	portare => VCC,
	clk0 => \inst15|inst1~clkctrl_outclk\,
	portadatain => \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X67_Y43_N6
\inst35|LPM_MUX_component|auto_generated|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~6_combout\ = (\inst3|109~1_combout\ & (\inst3|8~1_combout\)) # (!\inst3|109~1_combout\ & ((\inst3|8~1_combout\ & ((\inst10|inst|sram|ram_block|auto_generated|q_a\(6)))) # (!\inst3|8~1_combout\ & 
-- (\inst31|13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|109~1_combout\,
	datab => \inst3|8~1_combout\,
	datac => \inst31|13~q\,
	datad => \inst10|inst|sram|ram_block|auto_generated|q_a\(6),
	combout => \inst35|LPM_MUX_component|auto_generated|_~6_combout\);

-- Location: LCCOMB_X67_Y43_N12
\inst35|LPM_MUX_component|auto_generated|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~7_combout\ = (\inst3|109~1_combout\ & ((\inst35|LPM_MUX_component|auto_generated|_~6_combout\ & (\d0[6]~input_o\)) # (!\inst35|LPM_MUX_component|auto_generated|_~6_combout\ & ((!\inst9|inst|82~combout\))))) # 
-- (!\inst3|109~1_combout\ & (((\inst35|LPM_MUX_component|auto_generated|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0[6]~input_o\,
	datab => \inst9|inst|82~combout\,
	datac => \inst3|109~1_combout\,
	datad => \inst35|LPM_MUX_component|auto_generated|_~6_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~7_combout\);

-- Location: LCCOMB_X67_Y43_N0
\inst31|13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|13~0_combout\ = (\inst3|9~0_combout\ & ((\inst35|LPM_MUX_component|auto_generated|_~7_combout\))) # (!\inst3|9~0_combout\ & (\inst35|LPM_MUX_component|auto_generated|_~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|9~0_combout\,
	datac => \inst35|LPM_MUX_component|auto_generated|_~5_combout\,
	datad => \inst35|LPM_MUX_component|auto_generated|_~7_combout\,
	combout => \inst31|13~0_combout\);

-- Location: LCCOMB_X65_Y45_N28
\inst31|13~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|13~feeder_combout\ = \inst31|13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|13~0_combout\,
	combout => \inst31|13~feeder_combout\);

-- Location: LCCOMB_X65_Y45_N16
\inst17|LPM_COUNTER_component|auto_generated|safe_q[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|safe_q[6]~1_combout\ = (!\RST1~input_o\ & ((\inst24~combout\ & ((\inst31|13~0_combout\))) # (!\inst24~combout\ & (!\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST1~input_o\,
	datab => \inst24~combout\,
	datac => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(6),
	datad => \inst31|13~0_combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|safe_q[6]~1_combout\);

-- Location: FF_X65_Y45_N29
\inst31|13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst21~clkctrl_outclk\,
	d => \inst31|13~feeder_combout\,
	asdata => \inst17|LPM_COUNTER_component|auto_generated|safe_q[6]~1_combout\,
	sload => \inst6|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|13~q\);

-- Location: IOIBUF_X50_Y53_N15
\d0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(5),
	o => \d0[5]~input_o\);

-- Location: LCCOMB_X67_Y42_N18
\inst9|inst|81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|81~0_combout\ = (\inst9|inst|43~0_combout\ & ((\inst9|inst|46~0_combout\) # (!\inst9|inst2|78~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst|46~0_combout\,
	datac => \inst9|inst2|78~2_combout\,
	datad => \inst9|inst|43~0_combout\,
	combout => \inst9|inst|81~0_combout\);

-- Location: LCCOMB_X67_Y42_N24
\inst9|inst|81~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|81~1_combout\ = \inst9|inst|47~0_combout\ $ (\inst9|inst|44~0_combout\ $ (((!\inst2|inst|srom|rom_block|auto_generated|q_a\(19) & !\inst9|inst|81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|47~0_combout\,
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(19),
	datac => \inst9|inst|44~0_combout\,
	datad => \inst9|inst|81~0_combout\,
	combout => \inst9|inst|81~1_combout\);

-- Location: LCCOMB_X67_Y44_N0
\inst35|LPM_MUX_component|auto_generated|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~10_combout\ = (\inst3|109~1_combout\ & ((\inst3|8~1_combout\) # ((!\inst9|inst|81~1_combout\)))) # (!\inst3|109~1_combout\ & (!\inst3|8~1_combout\ & (\inst31|14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|109~1_combout\,
	datab => \inst3|8~1_combout\,
	datac => \inst31|14~q\,
	datad => \inst9|inst|81~1_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~10_combout\);

-- Location: LCCOMB_X67_Y44_N6
\inst35|LPM_MUX_component|auto_generated|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~11_combout\ = (\inst3|8~1_combout\ & ((\inst35|LPM_MUX_component|auto_generated|_~10_combout\ & ((\d0[5]~input_o\))) # (!\inst35|LPM_MUX_component|auto_generated|_~10_combout\ & 
-- (\inst10|inst|sram|ram_block|auto_generated|q_a\(5))))) # (!\inst3|8~1_combout\ & (((\inst35|LPM_MUX_component|auto_generated|_~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|8~1_combout\,
	datab => \inst10|inst|sram|ram_block|auto_generated|q_a\(5),
	datac => \d0[5]~input_o\,
	datad => \inst35|LPM_MUX_component|auto_generated|_~10_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~11_combout\);

-- Location: LCCOMB_X67_Y44_N10
\inst31|14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|14~0_combout\ = (\inst3|9~0_combout\ & ((\inst35|LPM_MUX_component|auto_generated|_~11_combout\))) # (!\inst3|9~0_combout\ & (\inst35|LPM_MUX_component|auto_generated|_~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|9~0_combout\,
	datac => \inst35|LPM_MUX_component|auto_generated|_~9_combout\,
	datad => \inst35|LPM_MUX_component|auto_generated|_~11_combout\,
	combout => \inst31|14~0_combout\);

-- Location: LCCOMB_X67_Y44_N24
\inst31|14~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|14~feeder_combout\ = \inst31|14~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|14~0_combout\,
	combout => \inst31|14~feeder_combout\);

-- Location: LCCOMB_X67_Y44_N14
\inst17|LPM_COUNTER_component|auto_generated|safe_q[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|safe_q[5]~2_combout\ = (!\RST1~input_o\ & ((\inst24~combout\ & ((\inst31|14~0_combout\))) # (!\inst24~combout\ & (!\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST1~input_o\,
	datab => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(5),
	datac => \inst24~combout\,
	datad => \inst31|14~0_combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|safe_q[5]~2_combout\);

-- Location: FF_X67_Y44_N25
\inst31|14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst21~clkctrl_outclk\,
	d => \inst31|14~feeder_combout\,
	asdata => \inst17|LPM_COUNTER_component|auto_generated|safe_q[5]~2_combout\,
	sload => \inst6|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|14~q\);

-- Location: LCCOMB_X69_Y44_N6
\inst35|LPM_MUX_component|auto_generated|_~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~14_combout\ = (\inst3|109~1_combout\ & (\inst3|8~1_combout\)) # (!\inst3|109~1_combout\ & ((\inst3|8~1_combout\ & ((\inst10|inst|sram|ram_block|auto_generated|q_a\(4)))) # (!\inst3|8~1_combout\ & 
-- (\inst31|15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|109~1_combout\,
	datab => \inst3|8~1_combout\,
	datac => \inst31|15~q\,
	datad => \inst10|inst|sram|ram_block|auto_generated|q_a\(4),
	combout => \inst35|LPM_MUX_component|auto_generated|_~14_combout\);

-- Location: LCCOMB_X69_Y44_N4
\inst35|LPM_MUX_component|auto_generated|_~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~15_combout\ = (\inst3|109~1_combout\ & ((\inst35|LPM_MUX_component|auto_generated|_~14_combout\ & (\d0[4]~input_o\)) # (!\inst35|LPM_MUX_component|auto_generated|_~14_combout\ & ((!\inst9|inst|80~combout\))))) # 
-- (!\inst3|109~1_combout\ & (((\inst35|LPM_MUX_component|auto_generated|_~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0[4]~input_o\,
	datab => \inst3|109~1_combout\,
	datac => \inst9|inst|80~combout\,
	datad => \inst35|LPM_MUX_component|auto_generated|_~14_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~15_combout\);

-- Location: LCCOMB_X69_Y44_N30
\inst39|inst34|15~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst34|15~feeder_combout\ = \inst31|15~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|15~0_combout\,
	combout => \inst39|inst34|15~feeder_combout\);

-- Location: FF_X69_Y44_N31
\inst39|inst34|15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst~clkctrl_outclk\,
	d => \inst39|inst34|15~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst34|15~q\);

-- Location: FF_X66_Y44_N7
\inst39|inst33|15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst6~clkctrl_outclk\,
	asdata => \inst31|15~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst33|15~q\);

-- Location: LCCOMB_X66_Y44_N28
\inst39|inst32|15~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst32|15~feeder_combout\ = \inst31|15~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|15~0_combout\,
	combout => \inst39|inst32|15~feeder_combout\);

-- Location: FF_X66_Y44_N29
\inst39|inst32|15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst7~clkctrl_outclk\,
	d => \inst39|inst32|15~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst32|15~q\);

-- Location: LCCOMB_X66_Y44_N6
\inst35|LPM_MUX_component|auto_generated|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~12_combout\ = (\inst3|8~0_combout\ & (((\inst39|inst32|15~q\)))) # (!\inst3|8~0_combout\ & ((\inst3|81~combout\ & ((\inst39|inst32|15~q\))) # (!\inst3|81~combout\ & (\inst39|inst33|15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|8~0_combout\,
	datab => \inst3|81~combout\,
	datac => \inst39|inst33|15~q\,
	datad => \inst39|inst32|15~q\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~12_combout\);

-- Location: LCCOMB_X69_Y44_N16
\inst35|LPM_MUX_component|auto_generated|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~13_combout\ = (\inst3|109~1_combout\ & (((\inst35|LPM_MUX_component|auto_generated|_~12_combout\)))) # (!\inst3|109~1_combout\ & (\inst39|inst34|15~q\ & (\inst3|8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|inst34|15~q\,
	datab => \inst3|8~1_combout\,
	datac => \inst3|109~1_combout\,
	datad => \inst35|LPM_MUX_component|auto_generated|_~12_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~13_combout\);

-- Location: LCCOMB_X69_Y44_N10
\inst31|15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|15~0_combout\ = (\inst3|9~0_combout\ & (\inst35|LPM_MUX_component|auto_generated|_~15_combout\)) # (!\inst3|9~0_combout\ & ((\inst35|LPM_MUX_component|auto_generated|_~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|9~0_combout\,
	datac => \inst35|LPM_MUX_component|auto_generated|_~15_combout\,
	datad => \inst35|LPM_MUX_component|auto_generated|_~13_combout\,
	combout => \inst31|15~0_combout\);

-- Location: LCCOMB_X69_Y44_N8
\inst31|15~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|15~feeder_combout\ = \inst31|15~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|15~0_combout\,
	combout => \inst31|15~feeder_combout\);

-- Location: LCCOMB_X69_Y44_N18
\inst17|LPM_COUNTER_component|auto_generated|safe_q[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|safe_q[4]~3_combout\ = (!\RST1~input_o\ & ((\inst24~combout\ & ((\inst31|15~0_combout\))) # (!\inst24~combout\ & (!\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(4),
	datab => \RST1~input_o\,
	datac => \inst24~combout\,
	datad => \inst31|15~0_combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|safe_q[4]~3_combout\);

-- Location: FF_X69_Y44_N9
\inst31|15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst21~clkctrl_outclk\,
	d => \inst31|15~feeder_combout\,
	asdata => \inst17|LPM_COUNTER_component|auto_generated|safe_q[4]~3_combout\,
	sload => \inst6|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|15~q\);

-- Location: LCCOMB_X66_Y45_N2
\inst35|LPM_MUX_component|auto_generated|_~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~18_combout\ = (\inst3|109~1_combout\ & ((\d0[3]~input_o\) # ((!\inst3|8~1_combout\)))) # (!\inst3|109~1_combout\ & (((\inst3|8~1_combout\ & \inst10|inst|sram|ram_block|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|109~1_combout\,
	datab => \d0[3]~input_o\,
	datac => \inst3|8~1_combout\,
	datad => \inst10|inst|sram|ram_block|auto_generated|q_a\(3),
	combout => \inst35|LPM_MUX_component|auto_generated|_~18_combout\);

-- Location: LCCOMB_X66_Y45_N12
\inst35|LPM_MUX_component|auto_generated|_~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~19_combout\ = (\inst3|8~1_combout\ & (((\inst35|LPM_MUX_component|auto_generated|_~18_combout\)))) # (!\inst3|8~1_combout\ & ((\inst35|LPM_MUX_component|auto_generated|_~18_combout\ & 
-- ((!\inst9|inst2|77~combout\))) # (!\inst35|LPM_MUX_component|auto_generated|_~18_combout\ & (\inst31|16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|16~q\,
	datab => \inst3|8~1_combout\,
	datac => \inst9|inst2|77~combout\,
	datad => \inst35|LPM_MUX_component|auto_generated|_~18_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~19_combout\);

-- Location: LCCOMB_X65_Y45_N20
\inst39|inst34|16~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst34|16~feeder_combout\ = \inst31|16~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|16~0_combout\,
	combout => \inst39|inst34|16~feeder_combout\);

-- Location: FF_X65_Y45_N21
\inst39|inst34|16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst~clkctrl_outclk\,
	d => \inst39|inst34|16~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst34|16~q\);

-- Location: FF_X66_Y44_N11
\inst39|inst33|16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst6~clkctrl_outclk\,
	asdata => \inst31|16~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst33|16~q\);

-- Location: LCCOMB_X66_Y44_N20
\inst39|inst32|16~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst32|16~feeder_combout\ = \inst31|16~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|16~0_combout\,
	combout => \inst39|inst32|16~feeder_combout\);

-- Location: FF_X66_Y44_N21
\inst39|inst32|16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst7~clkctrl_outclk\,
	d => \inst39|inst32|16~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst32|16~q\);

-- Location: LCCOMB_X66_Y44_N10
\inst35|LPM_MUX_component|auto_generated|_~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~16_combout\ = (\inst3|81~combout\ & (((\inst39|inst32|16~q\)))) # (!\inst3|81~combout\ & ((\inst3|8~0_combout\ & ((\inst39|inst32|16~q\))) # (!\inst3|8~0_combout\ & (\inst39|inst33|16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|81~combout\,
	datab => \inst3|8~0_combout\,
	datac => \inst39|inst33|16~q\,
	datad => \inst39|inst32|16~q\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~16_combout\);

-- Location: LCCOMB_X65_Y45_N18
\inst35|LPM_MUX_component|auto_generated|_~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~17_combout\ = (\inst3|109~1_combout\ & (((\inst35|LPM_MUX_component|auto_generated|_~16_combout\)))) # (!\inst3|109~1_combout\ & (\inst39|inst34|16~q\ & (\inst3|8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|109~1_combout\,
	datab => \inst39|inst34|16~q\,
	datac => \inst3|8~1_combout\,
	datad => \inst35|LPM_MUX_component|auto_generated|_~16_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~17_combout\);

-- Location: LCCOMB_X65_Y45_N4
\inst31|16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|16~0_combout\ = (\inst3|9~0_combout\ & (\inst35|LPM_MUX_component|auto_generated|_~19_combout\)) # (!\inst3|9~0_combout\ & ((\inst35|LPM_MUX_component|auto_generated|_~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|9~0_combout\,
	datac => \inst35|LPM_MUX_component|auto_generated|_~19_combout\,
	datad => \inst35|LPM_MUX_component|auto_generated|_~17_combout\,
	combout => \inst31|16~0_combout\);

-- Location: LCCOMB_X65_Y45_N14
\inst31|16~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|16~feeder_combout\ = \inst31|16~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|16~0_combout\,
	combout => \inst31|16~feeder_combout\);

-- Location: LCCOMB_X65_Y45_N0
\inst17|LPM_COUNTER_component|auto_generated|safe_q[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|LPM_COUNTER_component|auto_generated|safe_q[3]~4_combout\ = (!\RST1~input_o\ & ((\inst24~combout\ & ((\inst31|16~0_combout\))) # (!\inst24~combout\ & (!\inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST1~input_o\,
	datab => \inst17|LPM_COUNTER_component|auto_generated|pre_hazard\(3),
	datac => \inst31|16~0_combout\,
	datad => \inst24~combout\,
	combout => \inst17|LPM_COUNTER_component|auto_generated|safe_q[3]~4_combout\);

-- Location: FF_X65_Y45_N15
\inst31|16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst21~clkctrl_outclk\,
	d => \inst31|16~feeder_combout\,
	asdata => \inst17|LPM_COUNTER_component|auto_generated|safe_q[3]~4_combout\,
	sload => \inst6|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|16~q\);

-- Location: LCCOMB_X65_Y43_N6
\inst35|LPM_MUX_component|auto_generated|_~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~26_combout\ = (\inst3|109~1_combout\ & (((\inst3|8~1_combout\)))) # (!\inst3|109~1_combout\ & ((\inst3|8~1_combout\ & ((\inst10|inst|sram|ram_block|auto_generated|q_a\(0)))) # (!\inst3|8~1_combout\ & 
-- (\inst31|19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|19~q\,
	datab => \inst3|109~1_combout\,
	datac => \inst3|8~1_combout\,
	datad => \inst10|inst|sram|ram_block|auto_generated|q_a\(0),
	combout => \inst35|LPM_MUX_component|auto_generated|_~26_combout\);

-- Location: LCCOMB_X65_Y43_N8
\inst35|LPM_MUX_component|auto_generated|_~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~27_combout\ = (\inst3|109~1_combout\ & ((\inst35|LPM_MUX_component|auto_generated|_~26_combout\ & (\d0[0]~input_o\)) # (!\inst35|LPM_MUX_component|auto_generated|_~26_combout\ & ((!\inst9|inst2|80~0_combout\))))) 
-- # (!\inst3|109~1_combout\ & (((\inst35|LPM_MUX_component|auto_generated|_~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0[0]~input_o\,
	datab => \inst3|109~1_combout\,
	datac => \inst9|inst2|80~0_combout\,
	datad => \inst35|LPM_MUX_component|auto_generated|_~26_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~27_combout\);

-- Location: FF_X65_Y43_N27
\inst39|inst34|19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst~clkctrl_outclk\,
	asdata => \inst31|19~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst34|19~q\);

-- Location: FF_X66_Y44_N3
\inst39|inst33|19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst6~clkctrl_outclk\,
	asdata => \inst31|19~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst33|19~q\);

-- Location: LCCOMB_X66_Y44_N16
\inst39|inst32|19~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst32|19~feeder_combout\ = \inst31|19~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|19~0_combout\,
	combout => \inst39|inst32|19~feeder_combout\);

-- Location: FF_X66_Y44_N17
\inst39|inst32|19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst7~clkctrl_outclk\,
	d => \inst39|inst32|19~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst32|19~q\);

-- Location: LCCOMB_X66_Y44_N2
\inst35|LPM_MUX_component|auto_generated|_~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~24_combout\ = (\inst3|81~combout\ & (((\inst39|inst32|19~q\)))) # (!\inst3|81~combout\ & ((\inst3|8~0_combout\ & ((\inst39|inst32|19~q\))) # (!\inst3|8~0_combout\ & (\inst39|inst33|19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|81~combout\,
	datab => \inst3|8~0_combout\,
	datac => \inst39|inst33|19~q\,
	datad => \inst39|inst32|19~q\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~24_combout\);

-- Location: LCCOMB_X65_Y43_N24
\inst35|LPM_MUX_component|auto_generated|_~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~25_combout\ = (\inst3|109~1_combout\ & (((\inst35|LPM_MUX_component|auto_generated|_~24_combout\)))) # (!\inst3|109~1_combout\ & (\inst39|inst34|19~q\ & (\inst3|8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|inst34|19~q\,
	datab => \inst3|109~1_combout\,
	datac => \inst3|8~1_combout\,
	datad => \inst35|LPM_MUX_component|auto_generated|_~24_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~25_combout\);

-- Location: LCCOMB_X65_Y43_N0
\inst31|19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|19~0_combout\ = (\inst3|9~0_combout\ & (\inst35|LPM_MUX_component|auto_generated|_~27_combout\)) # (!\inst3|9~0_combout\ & ((\inst35|LPM_MUX_component|auto_generated|_~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|9~0_combout\,
	datab => \inst35|LPM_MUX_component|auto_generated|_~27_combout\,
	datad => \inst35|LPM_MUX_component|auto_generated|_~25_combout\,
	combout => \inst31|19~0_combout\);

-- Location: LCCOMB_X66_Y43_N26
\inst33|19~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|19~feeder_combout\ = \inst31|19~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|19~0_combout\,
	combout => \inst33|19~feeder_combout\);

-- Location: FF_X66_Y43_N27
\inst33|19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst25~combout\,
	d => \inst33|19~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|19~q\);

-- Location: LCCOMB_X66_Y43_N12
\inst39|inst6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst6~combout\ = LCELL((\inst39|inst~0_combout\ & (\inst39|inst~1_combout\ & (\inst33|19~q\ & !\inst33|18~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|inst~0_combout\,
	datab => \inst39|inst~1_combout\,
	datac => \inst33|19~q\,
	datad => \inst33|18~q\,
	combout => \inst39|inst6~combout\);

-- Location: CLKCTRL_G13
\inst39|inst6~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst39|inst6~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst39|inst6~clkctrl_outclk\);

-- Location: LCCOMB_X67_Y43_N26
\inst39|inst33|18~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst33|18~feeder_combout\ = \inst31|18~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|18~0_combout\,
	combout => \inst39|inst33|18~feeder_combout\);

-- Location: FF_X67_Y43_N27
\inst39|inst33|18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst6~clkctrl_outclk\,
	d => \inst39|inst33|18~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst33|18~q\);

-- Location: LCCOMB_X67_Y43_N28
\inst31|18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|18~1_combout\ = (\inst3|109~1_combout\ & (!\inst3|8~0_combout\ & (!\inst3|81~combout\))) # (!\inst3|109~1_combout\ & (((\inst3|8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|8~0_combout\,
	datab => \inst3|81~combout\,
	datac => \inst3|109~1_combout\,
	datad => \inst3|8~1_combout\,
	combout => \inst31|18~1_combout\);

-- Location: LCCOMB_X67_Y43_N14
\inst31|18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|18~2_combout\ = (\inst39|inst33|18~q\) # ((!\inst31|18~1_combout\) # (!\inst3|109~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|inst33|18~q\,
	datac => \inst3|109~1_combout\,
	datad => \inst31|18~1_combout\,
	combout => \inst31|18~2_combout\);

-- Location: LCCOMB_X67_Y43_N4
\inst39|inst34|18~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst34|18~feeder_combout\ = \inst31|18~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|18~0_combout\,
	combout => \inst39|inst34|18~feeder_combout\);

-- Location: FF_X67_Y43_N5
\inst39|inst34|18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst~clkctrl_outclk\,
	d => \inst39|inst34|18~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst34|18~q\);

-- Location: LCCOMB_X66_Y44_N26
\inst39|inst32|18~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst32|18~feeder_combout\ = \inst31|18~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|18~0_combout\,
	combout => \inst39|inst32|18~feeder_combout\);

-- Location: FF_X66_Y44_N27
\inst39|inst32|18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst7~clkctrl_outclk\,
	d => \inst39|inst32|18~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst32|18~q\);

-- Location: LCCOMB_X67_Y43_N22
\inst31|18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|18~5_combout\ = (\inst3|109~1_combout\ & (((\inst39|inst32|18~q\) # (\inst31|18~1_combout\)))) # (!\inst3|109~1_combout\ & (\inst39|inst34|18~q\ & ((\inst31|18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|109~1_combout\,
	datab => \inst39|inst34|18~q\,
	datac => \inst39|inst32|18~q\,
	datad => \inst31|18~1_combout\,
	combout => \inst31|18~5_combout\);

-- Location: IOIBUF_X75_Y53_N15
\d0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(1),
	o => \d0[1]~input_o\);

-- Location: LCCOMB_X67_Y45_N0
\inst9|inst2|79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst2|79~0_combout\ = (!\inst2|inst|srom|rom_block|auto_generated|q_a\(19) & (((\inst2|inst|srom|rom_block|auto_generated|q_a\(18) & !\inst9|inst2|46~0_combout\)) # (!\inst9|inst2|43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(18),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(19),
	datac => \inst9|inst2|43~0_combout\,
	datad => \inst9|inst2|46~0_combout\,
	combout => \inst9|inst2|79~0_combout\);

-- Location: LCCOMB_X67_Y45_N22
\inst9|inst2|81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst2|81~combout\ = \inst9|inst2|44~0_combout\ $ (\inst9|inst2|47~0_combout\ $ (\inst9|inst2|79~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|44~0_combout\,
	datac => \inst9|inst2|47~0_combout\,
	datad => \inst9|inst2|79~0_combout\,
	combout => \inst9|inst2|81~combout\);

-- Location: LCCOMB_X67_Y43_N24
\inst31|18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|18~3_combout\ = (\inst3|109~1_combout\ & (((\inst3|8~1_combout\)))) # (!\inst3|109~1_combout\ & ((\inst3|8~1_combout\ & (\inst10|inst|sram|ram_block|auto_generated|q_a\(1))) # (!\inst3|8~1_combout\ & ((\inst31|18~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst|sram|ram_block|auto_generated|q_a\(1),
	datab => \inst3|109~1_combout\,
	datac => \inst31|18~q\,
	datad => \inst3|8~1_combout\,
	combout => \inst31|18~3_combout\);

-- Location: LCCOMB_X67_Y43_N2
\inst31|18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|18~4_combout\ = (\inst3|109~1_combout\ & ((\inst31|18~3_combout\ & (\d0[1]~input_o\)) # (!\inst31|18~3_combout\ & ((!\inst9|inst2|81~combout\))))) # (!\inst3|109~1_combout\ & (((\inst31|18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|109~1_combout\,
	datab => \d0[1]~input_o\,
	datac => \inst9|inst2|81~combout\,
	datad => \inst31|18~3_combout\,
	combout => \inst31|18~4_combout\);

-- Location: LCCOMB_X67_Y43_N18
\inst31|18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|18~0_combout\ = (\inst3|9~0_combout\ & (((\inst31|18~4_combout\)))) # (!\inst3|9~0_combout\ & (\inst31|18~2_combout\ & (\inst31|18~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|9~0_combout\,
	datab => \inst31|18~2_combout\,
	datac => \inst31|18~5_combout\,
	datad => \inst31|18~4_combout\,
	combout => \inst31|18~0_combout\);

-- Location: FF_X67_Y45_N21
\inst29|18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	asdata => \inst31|18~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|18~q\);

-- Location: LCCOMB_X67_Y45_N20
\inst9|inst2|44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst2|44~0_combout\ = (\inst29|18~q\) # ((\inst30|18~q\ & (\inst2|inst|srom|rom_block|auto_generated|q_a\(20))) # (!\inst30|18~q\ & ((\inst2|inst|srom|rom_block|auto_generated|q_a\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(20),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(21),
	datac => \inst29|18~q\,
	datad => \inst30|18~q\,
	combout => \inst9|inst2|44~0_combout\);

-- Location: LCCOMB_X66_Y45_N6
\inst9|inst2|78~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst2|78~3_combout\ = (\inst9|inst2|78~0_combout\) # (!\inst9|inst2|44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst2|44~0_combout\,
	datad => \inst9|inst2|78~0_combout\,
	combout => \inst9|inst2|78~3_combout\);

-- Location: LCCOMB_X66_Y45_N26
\inst9|inst2|82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst2|82~combout\ = \inst9|inst2|48~0_combout\ $ (\inst9|inst2|45~0_combout\ $ (((!\inst2|inst|srom|rom_block|auto_generated|q_a\(19) & \inst9|inst2|78~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(19),
	datab => \inst9|inst2|48~0_combout\,
	datac => \inst9|inst2|45~0_combout\,
	datad => \inst9|inst2|78~3_combout\,
	combout => \inst9|inst2|82~combout\);

-- Location: LCCOMB_X66_Y45_N20
\inst35|LPM_MUX_component|auto_generated|_~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~22_combout\ = (\inst3|109~1_combout\ & (((\inst3|8~1_combout\)))) # (!\inst3|109~1_combout\ & ((\inst3|8~1_combout\ & ((\inst10|inst|sram|ram_block|auto_generated|q_a\(2)))) # (!\inst3|8~1_combout\ & 
-- (\inst31|17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|17~q\,
	datab => \inst3|109~1_combout\,
	datac => \inst3|8~1_combout\,
	datad => \inst10|inst|sram|ram_block|auto_generated|q_a\(2),
	combout => \inst35|LPM_MUX_component|auto_generated|_~22_combout\);

-- Location: LCCOMB_X66_Y45_N30
\inst35|LPM_MUX_component|auto_generated|_~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~23_combout\ = (\inst3|109~1_combout\ & ((\inst35|LPM_MUX_component|auto_generated|_~22_combout\ & (\d0[2]~input_o\)) # (!\inst35|LPM_MUX_component|auto_generated|_~22_combout\ & ((!\inst9|inst2|82~combout\))))) # 
-- (!\inst3|109~1_combout\ & (((\inst35|LPM_MUX_component|auto_generated|_~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|109~1_combout\,
	datab => \d0[2]~input_o\,
	datac => \inst9|inst2|82~combout\,
	datad => \inst35|LPM_MUX_component|auto_generated|_~22_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~23_combout\);

-- Location: FF_X66_Y45_N23
\inst39|inst34|17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst~clkctrl_outclk\,
	asdata => \inst31|17~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst34|17~q\);

-- Location: FF_X66_Y44_N1
\inst39|inst33|17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst6~clkctrl_outclk\,
	asdata => \inst31|17~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst33|17~q\);

-- Location: FF_X66_Y44_N25
\inst39|inst32|17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst7~clkctrl_outclk\,
	asdata => \inst31|17~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst32|17~q\);

-- Location: LCCOMB_X66_Y44_N0
\inst35|LPM_MUX_component|auto_generated|_~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~20_combout\ = (\inst3|81~combout\ & (((\inst39|inst32|17~q\)))) # (!\inst3|81~combout\ & ((\inst3|8~0_combout\ & ((\inst39|inst32|17~q\))) # (!\inst3|8~0_combout\ & (\inst39|inst33|17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|81~combout\,
	datab => \inst3|8~0_combout\,
	datac => \inst39|inst33|17~q\,
	datad => \inst39|inst32|17~q\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~20_combout\);

-- Location: LCCOMB_X66_Y45_N16
\inst35|LPM_MUX_component|auto_generated|_~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~21_combout\ = (\inst3|109~1_combout\ & (((\inst35|LPM_MUX_component|auto_generated|_~20_combout\)))) # (!\inst3|109~1_combout\ & (\inst3|8~1_combout\ & (\inst39|inst34|17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|109~1_combout\,
	datab => \inst3|8~1_combout\,
	datac => \inst39|inst34|17~q\,
	datad => \inst35|LPM_MUX_component|auto_generated|_~20_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~21_combout\);

-- Location: LCCOMB_X66_Y45_N24
\inst31|17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|17~0_combout\ = (\inst3|9~0_combout\ & (\inst35|LPM_MUX_component|auto_generated|_~23_combout\)) # (!\inst3|9~0_combout\ & ((\inst35|LPM_MUX_component|auto_generated|_~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|9~0_combout\,
	datac => \inst35|LPM_MUX_component|auto_generated|_~23_combout\,
	datad => \inst35|LPM_MUX_component|auto_generated|_~21_combout\,
	combout => \inst31|17~0_combout\);

-- Location: FF_X66_Y45_N15
\inst33|17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst25~combout\,
	asdata => \inst31|17~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|17~q\);

-- Location: FF_X66_Y45_N1
\inst33|16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst25~combout\,
	asdata => \inst31|16~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|16~q\);

-- Location: LCCOMB_X66_Y45_N18
\inst39|inst~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst~1_combout\ = (!\inst33|17~q\ & !\inst33|16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|17~q\,
	datad => \inst33|16~q\,
	combout => \inst39|inst~1_combout\);

-- Location: LCCOMB_X66_Y43_N10
\inst39|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst~combout\ = LCELL((\inst39|inst~0_combout\ & (\inst39|inst~1_combout\ & (!\inst33|19~q\ & \inst33|18~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|inst~0_combout\,
	datab => \inst39|inst~1_combout\,
	datac => \inst33|19~q\,
	datad => \inst33|18~q\,
	combout => \inst39|inst~combout\);

-- Location: CLKCTRL_G5
\inst39|inst~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst39|inst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst39|inst~clkctrl_outclk\);

-- Location: LCCOMB_X67_Y44_N12
\inst39|inst34|12~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst34|12~feeder_combout\ = \inst31|12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|12~0_combout\,
	combout => \inst39|inst34|12~feeder_combout\);

-- Location: FF_X67_Y44_N13
\inst39|inst34|12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst~clkctrl_outclk\,
	d => \inst39|inst34|12~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst34|12~q\);

-- Location: FF_X66_Y44_N9
\inst39|inst33|12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst6~clkctrl_outclk\,
	asdata => \inst31|12~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst33|12~q\);

-- Location: LCCOMB_X66_Y44_N18
\inst39|inst32|12~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|inst32|12~feeder_combout\ = \inst31|12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|12~0_combout\,
	combout => \inst39|inst32|12~feeder_combout\);

-- Location: FF_X66_Y44_N19
\inst39|inst32|12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst39|inst7~clkctrl_outclk\,
	d => \inst39|inst32|12~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|inst32|12~q\);

-- Location: LCCOMB_X66_Y44_N8
\inst35|LPM_MUX_component|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~0_combout\ = (\inst3|8~0_combout\ & (((\inst39|inst32|12~q\)))) # (!\inst3|8~0_combout\ & ((\inst3|81~combout\ & ((\inst39|inst32|12~q\))) # (!\inst3|81~combout\ & (\inst39|inst33|12~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|8~0_combout\,
	datab => \inst3|81~combout\,
	datac => \inst39|inst33|12~q\,
	datad => \inst39|inst32|12~q\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X67_Y44_N30
\inst35|LPM_MUX_component|auto_generated|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~1_combout\ = (\inst3|109~1_combout\ & (((\inst35|LPM_MUX_component|auto_generated|_~0_combout\)))) # (!\inst3|109~1_combout\ & (\inst39|inst34|12~q\ & (\inst3|8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|inst34|12~q\,
	datab => \inst3|8~1_combout\,
	datac => \inst3|109~1_combout\,
	datad => \inst35|LPM_MUX_component|auto_generated|_~0_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~1_combout\);

-- Location: IOIBUF_X77_Y33_N8
\d0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(7),
	o => \d0[7]~input_o\);

-- Location: FF_X66_Y42_N21
\inst29|12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst20~clkctrl_outclk\,
	asdata => \inst31|12~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst29|12~q\);

-- Location: LCCOMB_X66_Y42_N20
\inst9|inst|52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|52~0_combout\ = (\inst29|12~q\ & ((\inst30|12~q\ & ((\inst2|inst|srom|rom_block|auto_generated|q_a\(23)))) # (!\inst30|12~q\ & (\inst2|inst|srom|rom_block|auto_generated|q_a\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(22),
	datab => \inst30|12~q\,
	datac => \inst29|12~q\,
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(23),
	combout => \inst9|inst|52~0_combout\);

-- Location: LCCOMB_X66_Y42_N4
\inst9|inst|77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|77~0_combout\ = \inst9|inst|51~0_combout\ $ (\inst9|inst|52~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst|51~0_combout\,
	datad => \inst9|inst|52~0_combout\,
	combout => \inst9|inst|77~0_combout\);

-- Location: LCCOMB_X66_Y42_N24
\inst9|inst|74~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|74~2_combout\ = (!\inst9|inst|48~0_combout\ & ((\inst9|inst|74~0_combout\) # ((\inst9|inst|74~1_combout\ & \inst9|inst2|78~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|74~1_combout\,
	datab => \inst9|inst|74~0_combout\,
	datac => \inst9|inst|48~0_combout\,
	datad => \inst9|inst2|78~2_combout\,
	combout => \inst9|inst|74~2_combout\);

-- Location: LCCOMB_X66_Y42_N14
\inst9|inst|77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|77~combout\ = \inst9|inst|77~0_combout\ $ (((!\inst2|inst|srom|rom_block|auto_generated|q_a\(19) & ((\inst9|inst|74~2_combout\) # (!\inst9|inst|45~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|45~0_combout\,
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(19),
	datac => \inst9|inst|77~0_combout\,
	datad => \inst9|inst|74~2_combout\,
	combout => \inst9|inst|77~combout\);

-- Location: LCCOMB_X67_Y44_N16
\inst35|LPM_MUX_component|auto_generated|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~2_combout\ = (\inst3|109~1_combout\ & ((\inst3|8~1_combout\) # ((!\inst9|inst|77~combout\)))) # (!\inst3|109~1_combout\ & (!\inst3|8~1_combout\ & (\inst31|12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|109~1_combout\,
	datab => \inst3|8~1_combout\,
	datac => \inst31|12~q\,
	datad => \inst9|inst|77~combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~2_combout\);

-- Location: LCCOMB_X67_Y44_N2
\inst35|LPM_MUX_component|auto_generated|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|_~3_combout\ = (\inst3|8~1_combout\ & ((\inst35|LPM_MUX_component|auto_generated|_~2_combout\ & (\d0[7]~input_o\)) # (!\inst35|LPM_MUX_component|auto_generated|_~2_combout\ & 
-- ((\inst10|inst|sram|ram_block|auto_generated|q_a\(7)))))) # (!\inst3|8~1_combout\ & (((\inst35|LPM_MUX_component|auto_generated|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0[7]~input_o\,
	datab => \inst3|8~1_combout\,
	datac => \inst10|inst|sram|ram_block|auto_generated|q_a\(7),
	datad => \inst35|LPM_MUX_component|auto_generated|_~2_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|_~3_combout\);

-- Location: LCCOMB_X67_Y44_N18
\inst31|12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|12~0_combout\ = (\inst3|9~0_combout\ & ((\inst35|LPM_MUX_component|auto_generated|_~3_combout\))) # (!\inst3|9~0_combout\ & (\inst35|LPM_MUX_component|auto_generated|_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|9~0_combout\,
	datac => \inst35|LPM_MUX_component|auto_generated|_~1_combout\,
	datad => \inst35|LPM_MUX_component|auto_generated|_~3_combout\,
	combout => \inst31|12~0_combout\);

-- Location: FF_X66_Y42_N23
\inst30|12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23~clkctrl_outclk\,
	asdata => \inst31|12~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|12~q\);

-- Location: LCCOMB_X66_Y42_N22
\inst9|inst|51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|51~0_combout\ = (\inst29|12~q\) # ((\inst30|12~q\ & ((\inst2|inst|srom|rom_block|auto_generated|q_a\(20)))) # (!\inst30|12~q\ & (\inst2|inst|srom|rom_block|auto_generated|q_a\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(21),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(20),
	datac => \inst30|12~q\,
	datad => \inst29|12~q\,
	combout => \inst9|inst|51~0_combout\);

-- Location: LCCOMB_X66_Y42_N0
\inst4|inst11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst11~2_combout\ = ((!\inst9|inst|52~0_combout\ & ((\inst9|inst|74~2_combout\) # (!\inst9|inst|45~0_combout\)))) # (!\inst9|inst|51~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|51~0_combout\,
	datab => \inst9|inst|52~0_combout\,
	datac => \inst9|inst|45~0_combout\,
	datad => \inst9|inst|74~2_combout\,
	combout => \inst4|inst11~2_combout\);

-- Location: LCCOMB_X66_Y43_N28
\inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst~0_combout\ = (\inst2|inst|srom|rom_block|auto_generated|q_a\(7) & (\inst15|inst3~q\ & (\inst2|inst|srom|rom_block|auto_generated|q_a\(6) & !\inst2|inst|srom|rom_block|auto_generated|q_a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(7),
	datab => \inst15|inst3~q\,
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(6),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(8),
	combout => \inst4|inst~0_combout\);

-- Location: LCCOMB_X67_Y45_N2
\inst4|inst11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst11~0_combout\ = (!\inst9|inst2|80~0_combout\ & (!\inst9|inst2|81~combout\ & (!\inst9|inst2|82~combout\ & !\inst9|inst2|77~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|80~0_combout\,
	datab => \inst9|inst2|81~combout\,
	datac => \inst9|inst2|82~combout\,
	datad => \inst9|inst2|77~combout\,
	combout => \inst4|inst11~0_combout\);

-- Location: LCCOMB_X67_Y42_N2
\inst4|inst11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst11~1_combout\ = (!\inst9|inst|80~combout\ & (!\inst9|inst|81~1_combout\ & (!\inst9|inst|82~combout\ & !\inst9|inst|77~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|80~combout\,
	datab => \inst9|inst|81~1_combout\,
	datac => \inst9|inst|82~combout\,
	datad => \inst9|inst|77~combout\,
	combout => \inst4|inst11~1_combout\);

-- Location: LCCOMB_X67_Y42_N28
\inst4|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst~combout\ = (\inst4|inst~0_combout\ & ((\inst4|inst11~2_combout\) # ((\inst4|inst11~0_combout\) # (\inst4|inst11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst11~2_combout\,
	datab => \inst4|inst~0_combout\,
	datac => \inst4|inst11~0_combout\,
	datad => \inst4|inst11~1_combout\,
	combout => \inst4|inst~combout\);

-- Location: LCCOMB_X67_Y42_N6
\inst8|inst44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst44~1_combout\ = (!\RST1~input_o\ & ((\inst4|inst~combout\) # (\inst8|inst44~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST1~input_o\,
	datac => \inst4|inst~combout\,
	datad => \inst8|inst44~1_combout\,
	combout => \inst8|inst44~1_combout\);

-- Location: LCCOMB_X66_Y42_N16
\inst8|inst44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst44~3_combout\ = \inst8|inst44~1_combout\ $ (\inst2|inst|srom|rom_block|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst44~1_combout\,
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(4),
	combout => \inst8|inst44~3_combout\);

-- Location: LCCOMB_X67_Y42_N10
\inst8|inst44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst44~0_combout\ = (\inst4|inst~combout\) # (\RST1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst~combout\,
	datad => \RST1~input_o\,
	combout => \inst8|inst44~0_combout\);

-- Location: FF_X67_Y42_N11
\inst8|inst44~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst1~clkctrl_outclk\,
	asdata => \inst8|inst44~3_combout\,
	clrn => \inst8|ALT_INV_inst44~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst44~_emulated_q\);

-- Location: LCCOMB_X67_Y42_N16
\inst8|inst44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst44~2_combout\ = (!\RST1~input_o\ & ((\inst4|inst~combout\) # (\inst8|inst44~1_combout\ $ (\inst8|inst44~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst~combout\,
	datab => \inst8|inst44~1_combout\,
	datac => \RST1~input_o\,
	datad => \inst8|inst44~_emulated_q\,
	combout => \inst8|inst44~2_combout\);

-- Location: LCCOMB_X66_Y43_N16
inst25 : cycloneive_lcell_comb
-- Equation(s):
-- \inst25~combout\ = LCELL((\inst2|inst|srom|rom_block|auto_generated|q_a\(14) & (\inst15|inst2~q\ & (!\inst2|inst|srom|rom_block|auto_generated|q_a\(13) & !\inst2|inst|srom|rom_block|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(14),
	datab => \inst15|inst2~q\,
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst25~combout\);

-- Location: CLKCTRL_G12
\inst25~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst25~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst25~clkctrl_outclk\);

-- Location: LCCOMB_X67_Y46_N12
\inst33|12~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|12~feeder_combout\ = \inst31|12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|12~0_combout\,
	combout => \inst33|12~feeder_combout\);

-- Location: FF_X67_Y46_N13
\inst33|12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst25~clkctrl_outclk\,
	d => \inst33|12~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|12~q\);

-- Location: LCCOMB_X67_Y46_N0
\inst4|inst24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst24~0_combout\ = (\inst4|inst~1_combout\ & (\inst15|inst3~q\ & (!\inst2|inst|srom|rom_block|auto_generated|q_a\(7) & \inst33|12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst~1_combout\,
	datab => \inst15|inst3~q\,
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(7),
	datad => \inst33|12~q\,
	combout => \inst4|inst24~0_combout\);

-- Location: LCCOMB_X67_Y46_N10
\inst8|inst43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst43~1_combout\ = (!\RST1~input_o\ & ((\inst4|inst24~0_combout\) # (\inst8|inst43~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST1~input_o\,
	datac => \inst4|inst24~0_combout\,
	datad => \inst8|inst43~1_combout\,
	combout => \inst8|inst43~1_combout\);

-- Location: LCCOMB_X67_Y46_N28
\inst8|inst43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst43~3_combout\ = \inst2|inst|srom|rom_block|auto_generated|q_a\(3) $ (\inst8|inst43~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(3),
	datad => \inst8|inst43~1_combout\,
	combout => \inst8|inst43~3_combout\);

-- Location: LCCOMB_X67_Y46_N6
\inst8|inst43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst43~0_combout\ = (\inst4|inst24~0_combout\) # (\RST1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst24~0_combout\,
	datac => \RST1~input_o\,
	combout => \inst8|inst43~0_combout\);

-- Location: FF_X67_Y46_N29
\inst8|inst43~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst1~clkctrl_outclk\,
	d => \inst8|inst43~3_combout\,
	clrn => \inst8|ALT_INV_inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst43~_emulated_q\);

-- Location: LCCOMB_X67_Y46_N2
\inst8|inst43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst43~2_combout\ = (!\RST1~input_o\ & ((\inst4|inst24~0_combout\) # (\inst8|inst43~1_combout\ $ (\inst8|inst43~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst43~1_combout\,
	datab => \inst4|inst24~0_combout\,
	datac => \RST1~input_o\,
	datad => \inst8|inst43~_emulated_q\,
	combout => \inst8|inst43~2_combout\);

-- Location: LCCOMB_X65_Y42_N16
\inst4|inst~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst~1_combout\ = (\inst2|inst|srom|rom_block|auto_generated|q_a\(6) & !\inst2|inst|srom|rom_block|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(6),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(8),
	combout => \inst4|inst~1_combout\);

-- Location: LCCOMB_X65_Y42_N20
\inst33|13~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|13~feeder_combout\ = \inst31|13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|13~0_combout\,
	combout => \inst33|13~feeder_combout\);

-- Location: FF_X65_Y42_N21
\inst33|13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst25~clkctrl_outclk\,
	d => \inst33|13~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|13~q\);

-- Location: LCCOMB_X65_Y42_N14
\inst4|inst25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst25~0_combout\ = (!\inst2|inst|srom|rom_block|auto_generated|q_a\(7) & (\inst4|inst~1_combout\ & (\inst15|inst3~q\ & \inst33|13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(7),
	datab => \inst4|inst~1_combout\,
	datac => \inst15|inst3~q\,
	datad => \inst33|13~q\,
	combout => \inst4|inst25~0_combout\);

-- Location: LCCOMB_X66_Y42_N10
\inst8|inst42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst42~1_combout\ = (!\RST1~input_o\ & ((\inst4|inst25~0_combout\) # (\inst8|inst42~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST1~input_o\,
	datac => \inst4|inst25~0_combout\,
	datad => \inst8|inst42~1_combout\,
	combout => \inst8|inst42~1_combout\);

-- Location: LCCOMB_X67_Y42_N14
\inst8|inst42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst42~3_combout\ = \inst8|inst42~1_combout\ $ (\inst2|inst|srom|rom_block|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst42~1_combout\,
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(2),
	combout => \inst8|inst42~3_combout\);

-- Location: LCCOMB_X67_Y42_N26
\inst8|inst42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst42~0_combout\ = (\RST1~input_o\) # (\inst4|inst25~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST1~input_o\,
	datab => \inst4|inst25~0_combout\,
	combout => \inst8|inst42~0_combout\);

-- Location: FF_X67_Y42_N27
\inst8|inst42~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst1~clkctrl_outclk\,
	asdata => \inst8|inst42~3_combout\,
	clrn => \inst8|ALT_INV_inst42~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst42~_emulated_q\);

-- Location: LCCOMB_X67_Y42_N22
\inst8|inst42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst42~2_combout\ = (!\RST1~input_o\ & ((\inst4|inst25~0_combout\) # (\inst8|inst42~_emulated_q\ $ (\inst8|inst42~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst42~_emulated_q\,
	datab => \inst4|inst25~0_combout\,
	datac => \RST1~input_o\,
	datad => \inst8|inst42~1_combout\,
	combout => \inst8|inst42~2_combout\);

-- Location: LCCOMB_X66_Y45_N0
\inst4|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst9~0_combout\ = (!\inst2|inst|srom|rom_block|auto_generated|q_a\(8) & (!\inst2|inst|srom|rom_block|auto_generated|q_a\(6) & (\inst33|16~q\ & \inst2|inst|srom|rom_block|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(8),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(6),
	datac => \inst33|16~q\,
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(7),
	combout => \inst4|inst9~0_combout\);

-- Location: IOIBUF_X77_Y34_N22
\SWB~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWB,
	o => \SWB~input_o\);

-- Location: FF_X69_Y42_N25
\inst33|14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst25~clkctrl_outclk\,
	asdata => \inst31|14~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|14~q\);

-- Location: LCCOMB_X69_Y42_N20
\inst4|inst9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst9~1_combout\ = (\inst2|inst|srom|rom_block|auto_generated|q_a\(8) & (\SWB~input_o\ & (!\inst2|inst|srom|rom_block|auto_generated|q_a\(6)))) # (!\inst2|inst|srom|rom_block|auto_generated|q_a\(8) & 
-- (((\inst2|inst|srom|rom_block|auto_generated|q_a\(6) & \inst33|14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWB~input_o\,
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(8),
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(6),
	datad => \inst33|14~q\,
	combout => \inst4|inst9~1_combout\);

-- Location: LCCOMB_X69_Y42_N16
\inst4|inst9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst9~2_combout\ = (\inst15|inst3~q\ & ((\inst4|inst9~0_combout\) # ((!\inst2|inst|srom|rom_block|auto_generated|q_a\(7) & \inst4|inst9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst3~q\,
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(7),
	datac => \inst4|inst9~0_combout\,
	datad => \inst4|inst9~1_combout\,
	combout => \inst4|inst9~2_combout\);

-- Location: LCCOMB_X69_Y42_N18
\inst8|inst41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst41~1_combout\ = (!\RST1~input_o\ & ((\inst4|inst9~2_combout\) # (\inst8|inst41~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST1~input_o\,
	datac => \inst4|inst9~2_combout\,
	datad => \inst8|inst41~1_combout\,
	combout => \inst8|inst41~1_combout\);

-- Location: LCCOMB_X69_Y42_N28
\inst8|inst41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst41~3_combout\ = \inst2|inst|srom|rom_block|auto_generated|q_a\(1) $ (\inst8|inst41~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(1),
	datad => \inst8|inst41~1_combout\,
	combout => \inst8|inst41~3_combout\);

-- Location: LCCOMB_X69_Y42_N22
\inst8|inst41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst41~0_combout\ = (\inst4|inst9~2_combout\) # (\RST1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst9~2_combout\,
	datad => \RST1~input_o\,
	combout => \inst8|inst41~0_combout\);

-- Location: FF_X69_Y42_N29
\inst8|inst41~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst1~clkctrl_outclk\,
	d => \inst8|inst41~3_combout\,
	clrn => \inst8|ALT_INV_inst41~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst41~_emulated_q\);

-- Location: LCCOMB_X69_Y42_N26
\inst8|inst41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst41~2_combout\ = (!\RST1~input_o\ & ((\inst4|inst9~2_combout\) # (\inst8|inst41~1_combout\ $ (\inst8|inst41~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST1~input_o\,
	datab => \inst8|inst41~1_combout\,
	datac => \inst4|inst9~2_combout\,
	datad => \inst8|inst41~_emulated_q\,
	combout => \inst8|inst41~2_combout\);

-- Location: LCCOMB_X65_Y42_N22
\inst4|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst10~0_combout\ = (!\inst2|inst|srom|rom_block|auto_generated|q_a\(8) & (\inst33|17~q\ & (!\inst2|inst|srom|rom_block|auto_generated|q_a\(6) & \inst2|inst|srom|rom_block|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(8),
	datab => \inst33|17~q\,
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(6),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(7),
	combout => \inst4|inst10~0_combout\);

-- Location: IOIBUF_X57_Y53_N15
\SWA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWA,
	o => \SWA~input_o\);

-- Location: LCCOMB_X65_Y42_N2
\inst33|15~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|15~feeder_combout\ = \inst31|15~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|15~0_combout\,
	combout => \inst33|15~feeder_combout\);

-- Location: FF_X65_Y42_N3
\inst33|15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst25~clkctrl_outclk\,
	d => \inst33|15~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|15~q\);

-- Location: LCCOMB_X65_Y42_N24
\inst4|inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst10~1_combout\ = (\inst2|inst|srom|rom_block|auto_generated|q_a\(8) & (\SWA~input_o\ & (!\inst2|inst|srom|rom_block|auto_generated|q_a\(6)))) # (!\inst2|inst|srom|rom_block|auto_generated|q_a\(8) & 
-- (((\inst2|inst|srom|rom_block|auto_generated|q_a\(6) & \inst33|15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(8),
	datab => \SWA~input_o\,
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(6),
	datad => \inst33|15~q\,
	combout => \inst4|inst10~1_combout\);

-- Location: LCCOMB_X65_Y42_N18
\inst4|inst10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst10~2_combout\ = (\inst15|inst3~q\ & ((\inst4|inst10~0_combout\) # ((!\inst2|inst|srom|rom_block|auto_generated|q_a\(7) & \inst4|inst10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst10~0_combout\,
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(7),
	datac => \inst15|inst3~q\,
	datad => \inst4|inst10~1_combout\,
	combout => \inst4|inst10~2_combout\);

-- Location: LCCOMB_X65_Y42_N28
\inst8|inst40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst40~1_combout\ = (!\RST1~input_o\ & ((\inst4|inst10~2_combout\) # (\inst8|inst40~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST1~input_o\,
	datac => \inst4|inst10~2_combout\,
	datad => \inst8|inst40~1_combout\,
	combout => \inst8|inst40~1_combout\);

-- Location: LCCOMB_X65_Y42_N12
\inst8|inst40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst40~3_combout\ = \inst2|inst|srom|rom_block|auto_generated|q_a\(0) $ (\inst8|inst40~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(0),
	datad => \inst8|inst40~1_combout\,
	combout => \inst8|inst40~3_combout\);

-- Location: LCCOMB_X65_Y42_N0
\inst8|inst40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst40~0_combout\ = (\inst4|inst10~2_combout\) # (\RST1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst10~2_combout\,
	datad => \RST1~input_o\,
	combout => \inst8|inst40~0_combout\);

-- Location: FF_X65_Y42_N13
\inst8|inst40~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst1~clkctrl_outclk\,
	d => \inst8|inst40~3_combout\,
	clrn => \inst8|ALT_INV_inst40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst40~_emulated_q\);

-- Location: LCCOMB_X65_Y42_N26
\inst8|inst40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst40~2_combout\ = (!\RST1~input_o\ & ((\inst4|inst10~2_combout\) # (\inst8|inst40~1_combout\ $ (\inst8|inst40~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst10~2_combout\,
	datab => \RST1~input_o\,
	datac => \inst8|inst40~1_combout\,
	datad => \inst8|inst40~_emulated_q\,
	combout => \inst8|inst40~2_combout\);

-- Location: LCCOMB_X66_Y44_N24
\inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst~0_combout\ = (!\inst2|inst|srom|rom_block|auto_generated|q_a\(9) & (\inst2|inst|srom|rom_block|auto_generated|q_a\(11) & \inst2|inst|srom|rom_block|auto_generated|q_a\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(9),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(11),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(10),
	combout => \inst6|inst~0_combout\);

-- Location: LCCOMB_X69_Y42_N24
\inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst~0_combout\ = (\inst2|inst|srom|rom_block|auto_generated|q_a\(13) & (\inst2|inst|srom|rom_block|auto_generated|q_a\(14) & !\inst2|inst|srom|rom_block|auto_generated|q_a\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(13),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(14),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst5|inst~0_combout\);

-- Location: LCCOMB_X69_Y42_N12
\inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst~0_combout\ = (\inst2|inst|srom|rom_block|auto_generated|q_a\(7) & (!\inst2|inst|srom|rom_block|auto_generated|q_a\(6) & \inst2|inst|srom|rom_block|auto_generated|q_a\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(7),
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(6),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(8),
	combout => \inst7|inst~0_combout\);

-- Location: LCCOMB_X69_Y42_N14
\inst5|inst~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst~1_combout\ = (\inst2|inst|srom|rom_block|auto_generated|q_a\(14) & (!\inst2|inst|srom|rom_block|auto_generated|q_a\(13) & \inst2|inst|srom|rom_block|auto_generated|q_a\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(14),
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst5|inst~1_combout\);

-- Location: LCCOMB_X66_Y45_N14
\inst26|inst7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|inst7~combout\ = (!\inst2|inst|srom|rom_block|auto_generated|q_a\(16) & \inst2|inst|srom|rom_block|auto_generated|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(16),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(15),
	combout => \inst26|inst7~combout\);

-- Location: LCCOMB_X76_Y43_N20
\inst26|inst8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|inst8~combout\ = (\inst2|inst|srom|rom_block|auto_generated|q_a\(16)) # (\inst2|inst|srom|rom_block|auto_generated|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(16),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(15),
	combout => \inst26|inst8~combout\);

-- Location: LCCOMB_X76_Y43_N22
\inst26|inst6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|inst6~combout\ = (\inst2|inst|srom|rom_block|auto_generated|q_a\(16) & !\inst2|inst|srom|rom_block|auto_generated|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(16),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(15),
	combout => \inst26|inst6~combout\);

-- Location: LCCOMB_X66_Y43_N6
inst36 : cycloneive_lcell_comb
-- Equation(s):
-- \inst36~combout\ = LCELL((\inst15|inst3~q\ & (!\inst2|inst|srom|rom_block|auto_generated|q_a\(15) & \inst2|inst|srom|rom_block|auto_generated|q_a\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst3~q\,
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(15),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(16),
	combout => \inst36~combout\);

-- Location: CLKCTRL_G15
\inst36~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst36~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst36~clkctrl_outclk\);

-- Location: LCCOMB_X66_Y46_N0
\inst32|12~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|12~feeder_combout\ = \inst31|12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|12~0_combout\,
	combout => \inst32|12~feeder_combout\);

-- Location: FF_X66_Y46_N1
\inst32|12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst36~clkctrl_outclk\,
	d => \inst32|12~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|12~q\);

-- Location: LCCOMB_X69_Y43_N18
\inst32|13~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|13~feeder_combout\ = \inst31|13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|13~0_combout\,
	combout => \inst32|13~feeder_combout\);

-- Location: FF_X69_Y43_N19
\inst32|13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst36~clkctrl_outclk\,
	d => \inst32|13~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|13~q\);

-- Location: LCCOMB_X70_Y44_N12
\inst32|14~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|14~feeder_combout\ = \inst31|14~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|14~0_combout\,
	combout => \inst32|14~feeder_combout\);

-- Location: FF_X70_Y44_N13
\inst32|14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst36~clkctrl_outclk\,
	d => \inst32|14~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|14~q\);

-- Location: LCCOMB_X70_Y44_N26
\inst32|15~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|15~feeder_combout\ = \inst31|15~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|15~0_combout\,
	combout => \inst32|15~feeder_combout\);

-- Location: FF_X70_Y44_N27
\inst32|15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst36~clkctrl_outclk\,
	d => \inst32|15~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|15~q\);

-- Location: LCCOMB_X64_Y45_N0
\inst32|16~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|16~feeder_combout\ = \inst31|16~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|16~0_combout\,
	combout => \inst32|16~feeder_combout\);

-- Location: FF_X64_Y45_N1
\inst32|16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst36~clkctrl_outclk\,
	d => \inst32|16~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|16~q\);

-- Location: LCCOMB_X71_Y45_N0
\inst32|17~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|17~feeder_combout\ = \inst31|17~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|17~0_combout\,
	combout => \inst32|17~feeder_combout\);

-- Location: FF_X71_Y45_N1
\inst32|17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst36~clkctrl_outclk\,
	d => \inst32|17~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|17~q\);

-- Location: LCCOMB_X72_Y43_N4
\inst32|18~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|18~feeder_combout\ = \inst31|18~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst31|18~0_combout\,
	combout => \inst32|18~feeder_combout\);

-- Location: FF_X72_Y43_N5
\inst32|18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst36~clkctrl_outclk\,
	d => \inst32|18~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|18~q\);

-- Location: LCCOMB_X64_Y43_N20
\inst32|19~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|19~feeder_combout\ = \inst31|19~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|19~0_combout\,
	combout => \inst32|19~feeder_combout\);

-- Location: FF_X64_Y43_N21
\inst32|19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst36~clkctrl_outclk\,
	d => \inst32|19~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|19~q\);

ww_PC_B <= \PC_B~output_o\;

ww_M(24) <= \M[24]~output_o\;

ww_M(23) <= \M[23]~output_o\;

ww_M(22) <= \M[22]~output_o\;

ww_M(21) <= \M[21]~output_o\;

ww_M(20) <= \M[20]~output_o\;

ww_M(19) <= \M[19]~output_o\;

ww_M(18) <= \M[18]~output_o\;

ww_M(17) <= \M[17]~output_o\;

ww_M(16) <= \M[16]~output_o\;

ww_M(15) <= \M[15]~output_o\;

ww_M(14) <= \M[14]~output_o\;

ww_M(13) <= \M[13]~output_o\;

ww_M(12) <= \M[12]~output_o\;

ww_M(11) <= \M[11]~output_o\;

ww_M(10) <= \M[10]~output_o\;

ww_M(9) <= \M[9]~output_o\;

ww_M(8) <= \M[8]~output_o\;

ww_M(7) <= \M[7]~output_o\;

ww_M(6) <= \M[6]~output_o\;

ww_M(5) <= \M[5]~output_o\;

ww_M(4) <= \M[4]~output_o\;

ww_M(3) <= \M[3]~output_o\;

ww_M(2) <= \M[2]~output_o\;

ww_M(1) <= \M[1]~output_o\;

ww_T1 <= \T1~output_o\;

ww_uaddr(6) <= \uaddr[6]~output_o\;

ww_uaddr(5) <= \uaddr[5]~output_o\;

ww_uaddr(4) <= \uaddr[4]~output_o\;

ww_uaddr(3) <= \uaddr[3]~output_o\;

ww_uaddr(2) <= \uaddr[2]~output_o\;

ww_uaddr(1) <= \uaddr[1]~output_o\;

ww_T2 <= \T2~output_o\;

ww_T3 <= \T3~output_o\;

\ww_bus\(7) <= \bus[7]~output_o\;

\ww_bus\(6) <= \bus[6]~output_o\;

\ww_bus\(5) <= \bus[5]~output_o\;

\ww_bus\(4) <= \bus[4]~output_o\;

\ww_bus\(3) <= \bus[3]~output_o\;

\ww_bus\(2) <= \bus[2]~output_o\;

\ww_bus\(1) <= \bus[1]~output_o\;

\ww_bus\(0) <= \bus[0]~output_o\;

ww_LDAR <= \LDAR~output_o\;

ww_T4 <= \T4~output_o\;

ww_LDPC <= \LDPC~output_o\;

ww_LOAD <= \LOAD~output_o\;

ww_I(7) <= \I[7]~output_o\;

ww_I(6) <= \I[6]~output_o\;

ww_I(5) <= \I[5]~output_o\;

ww_I(4) <= \I[4]~output_o\;

ww_I(3) <= \I[3]~output_o\;

ww_I(2) <= \I[2]~output_o\;

ww_I(1) <= \I[1]~output_o\;

ww_I(0) <= \I[0]~output_o\;

ww_SEL(2) <= \SEL[2]~output_o\;

ww_SEL(1) <= \SEL[1]~output_o\;

ww_SEL(0) <= \SEL[0]~output_o\;

ww_RAM_B <= \RAM_B~output_o\;

ww_SW_B <= \SW_B~output_o\;

ww_LED_B <= \LED_B~output_o\;

\ww_in\(7) <= \in[7]~output_o\;

\ww_in\(6) <= \in[6]~output_o\;

\ww_in\(5) <= \in[5]~output_o\;

\ww_in\(4) <= \in[4]~output_o\;

\ww_in\(3) <= \in[3]~output_o\;

\ww_in\(2) <= \in[2]~output_o\;

\ww_in\(1) <= \in[1]~output_o\;

\ww_in\(0) <= \in[0]~output_o\;

ww_led(7) <= \led[7]~output_o\;

ww_led(6) <= \led[6]~output_o\;

ww_led(5) <= \led[5]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(0) <= \led[0]~output_o\;
END structure;


