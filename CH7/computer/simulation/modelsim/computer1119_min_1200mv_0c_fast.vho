-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "11/17/2021 14:25:18"

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

ENTITY 	computer1119 IS
    PORT (
	PC_B : OUT std_logic;
	M : OUT std_logic_vector(24 DOWNTO 1);
	uaddr : OUT std_logic_vector(6 DOWNTO 1);
	RST1 : IN std_logic;
	\bus\ : OUT std_logic_vector(7 DOWNTO 0);
	d0 : IN std_logic_vector(7 DOWNTO 0);
	LDAR : OUT std_logic;
	LDPC : OUT std_logic;
	I : OUT std_logic_vector(7 DOWNTO 0);
	RAM_B : OUT std_logic;
	SW_B : OUT std_logic;
	SWA : IN std_logic;
	SWB : IN std_logic;
	LED_B : OUT std_logic;
	\in\ : OUT std_logic_vector(7 DOWNTO 0);
	led : OUT std_logic_vector(7 DOWNTO 0);
	CLK1 : IN std_logic;
	STEP : IN std_logic
	);
END computer1119;

-- Design Ports Information
-- PC_B	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[24]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[23]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[22]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[21]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[20]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[19]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[18]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[17]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[16]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[15]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[14]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[13]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[12]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[11]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[10]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[9]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[8]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[7]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[6]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[5]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[4]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[3]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[2]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uaddr[6]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uaddr[5]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uaddr[4]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uaddr[3]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uaddr[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uaddr[1]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST1	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus[7]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus[6]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus[4]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bus[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LDAR	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LDPC	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[7]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[6]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[5]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[3]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[2]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[1]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_B	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_B	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWA	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWB	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_B	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[7]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[5]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK1	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STEP	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[7]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[6]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[5]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[3]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF computer1119 IS
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
SIGNAL ww_uaddr : std_logic_vector(6 DOWNTO 1);
SIGNAL ww_RST1 : std_logic;
SIGNAL \ww_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_d0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LDAR : std_logic;
SIGNAL ww_LDPC : std_logic;
SIGNAL ww_I : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RAM_B : std_logic;
SIGNAL ww_SW_B : std_logic;
SIGNAL ww_SWA : std_logic;
SIGNAL ww_SWB : std_logic;
SIGNAL ww_LED_B : std_logic;
SIGNAL \ww_in\ : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK1 : std_logic;
SIGNAL ww_STEP : std_logic;
SIGNAL \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \RST1~input_o\ : std_logic;
SIGNAL \SWA~input_o\ : std_logic;
SIGNAL \SWB~input_o\ : std_logic;
SIGNAL \CLK1~input_o\ : std_logic;
SIGNAL \STEP~input_o\ : std_logic;
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
SIGNAL \uaddr[6]~output_o\ : std_logic;
SIGNAL \uaddr[5]~output_o\ : std_logic;
SIGNAL \uaddr[4]~output_o\ : std_logic;
SIGNAL \uaddr[3]~output_o\ : std_logic;
SIGNAL \uaddr[2]~output_o\ : std_logic;
SIGNAL \uaddr[1]~output_o\ : std_logic;
SIGNAL \bus[7]~output_o\ : std_logic;
SIGNAL \bus[6]~output_o\ : std_logic;
SIGNAL \bus[5]~output_o\ : std_logic;
SIGNAL \bus[4]~output_o\ : std_logic;
SIGNAL \bus[3]~output_o\ : std_logic;
SIGNAL \bus[2]~output_o\ : std_logic;
SIGNAL \bus[1]~output_o\ : std_logic;
SIGNAL \bus[0]~output_o\ : std_logic;
SIGNAL \LDAR~output_o\ : std_logic;
SIGNAL \LDPC~output_o\ : std_logic;
SIGNAL \I[7]~output_o\ : std_logic;
SIGNAL \I[6]~output_o\ : std_logic;
SIGNAL \I[5]~output_o\ : std_logic;
SIGNAL \I[4]~output_o\ : std_logic;
SIGNAL \I[3]~output_o\ : std_logic;
SIGNAL \I[2]~output_o\ : std_logic;
SIGNAL \I[1]~output_o\ : std_logic;
SIGNAL \I[0]~output_o\ : std_logic;
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
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst6|inst~0_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|result_node[7]~3_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|result_node[7]~28_combout\ : std_logic;
SIGNAL \inst3|109~2_combout\ : std_logic;
SIGNAL \inst26|inst8~combout\ : std_logic;
SIGNAL \inst6|inst~1_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|result_node[7]~9_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|result_node[7]~10_combout\ : std_logic;
SIGNAL \inst3|8~0_combout\ : std_logic;
SIGNAL \inst3|8~1_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|result_node[7]~11_combout\ : std_logic;
SIGNAL \d0[1]~input_o\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|result_node[1]~24_combout\ : std_logic;
SIGNAL \d0[2]~input_o\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|result_node[2]~22_combout\ : std_logic;
SIGNAL \d0[3]~input_o\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|result_node[3]~20_combout\ : std_logic;
SIGNAL \d0[5]~input_o\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|result_node[5]~16_combout\ : std_logic;
SIGNAL \d0[6]~input_o\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|result_node[6]~14_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|result_node[6]~15_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|result_node[5]~17_combout\ : std_logic;
SIGNAL \d0[4]~input_o\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|result_node[4]~18_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|result_node[4]~19_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|result_node[3]~21_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|result_node[2]~23_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|result_node[1]~25_combout\ : std_logic;
SIGNAL \d0[0]~input_o\ : std_logic;
SIGNAL \inst9|inst|77~0_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|result_node[0]~26_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|result_node[0]~27_combout\ : std_logic;
SIGNAL \d0[7]~input_o\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|result_node[7]~12_combout\ : std_logic;
SIGNAL \inst35|LPM_MUX_component|auto_generated|result_node[7]~13_combout\ : std_logic;
SIGNAL \inst5|inst13~0_combout\ : std_logic;
SIGNAL \inst7|inst13~0_combout\ : std_logic;
SIGNAL \inst26|inst7~combout\ : std_logic;
SIGNAL \inst26|inst6~combout\ : std_logic;
SIGNAL \inst2|inst|srom|rom_block|auto_generated|q_a\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst10|inst|sram|ram_block|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst26|ALT_INV_inst6~combout\ : std_logic;
SIGNAL \inst26|ALT_INV_inst7~combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst~0_combout\ : std_logic;

BEGIN

PC_B <= ww_PC_B;
M <= ww_M;
uaddr <= ww_uaddr;
ww_RST1 <= RST1;
\bus\ <= \ww_bus\;
ww_d0 <= d0;
LDAR <= ww_LDAR;
LDPC <= ww_LDPC;
I <= ww_I;
RAM_B <= ww_RAM_B;
SW_B <= ww_SW_B;
ww_SWA <= SWA;
ww_SWB <= SWB;
LED_B <= ww_LED_B;
\in\ <= \ww_in\;
led <= ww_led;
ww_CLK1 <= CLK1;
ww_STEP <= STEP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\(0) <= \~GND~combout\;

\inst2|inst|srom|rom_block|auto_generated|q_a\(0) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst2|inst|srom|rom_block|auto_generated|q_a\(1) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst2|inst|srom|rom_block|auto_generated|q_a\(2) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst2|inst|srom|rom_block|auto_generated|q_a\(3) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst2|inst|srom|rom_block|auto_generated|q_a\(4) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst2|inst|srom|rom_block|auto_generated|q_a\(5) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst2|inst|srom|rom_block|auto_generated|q_a\(6) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst2|inst|srom|rom_block|auto_generated|q_a\(7) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst2|inst|srom|rom_block|auto_generated|q_a\(8) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst2|inst|srom|rom_block|auto_generated|q_a\(9) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst2|inst|srom|rom_block|auto_generated|q_a\(10) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst2|inst|srom|rom_block|auto_generated|q_a\(11) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst2|inst|srom|rom_block|auto_generated|q_a\(12) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst2|inst|srom|rom_block|auto_generated|q_a\(13) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst2|inst|srom|rom_block|auto_generated|q_a\(14) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst2|inst|srom|rom_block|auto_generated|q_a\(15) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\inst2|inst|srom|rom_block|auto_generated|q_a\(16) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\inst2|inst|srom|rom_block|auto_generated|q_a\(17) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\inst2|inst|srom|rom_block|auto_generated|q_a\(18) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\inst2|inst|srom|rom_block|auto_generated|q_a\(19) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\inst2|inst|srom|rom_block|auto_generated|q_a\(20) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\inst2|inst|srom|rom_block|auto_generated|q_a\(21) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\inst2|inst|srom|rom_block|auto_generated|q_a\(22) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\inst2|inst|srom|rom_block|auto_generated|q_a\(23) <= \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);

\inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst35|LPM_MUX_component|auto_generated|result_node[7]~13_combout\ & 
\inst35|LPM_MUX_component|auto_generated|result_node[6]~15_combout\ & \inst35|LPM_MUX_component|auto_generated|result_node[5]~17_combout\ & \inst35|LPM_MUX_component|auto_generated|result_node[4]~19_combout\ & 
\inst35|LPM_MUX_component|auto_generated|result_node[3]~21_combout\ & \inst35|LPM_MUX_component|auto_generated|result_node[2]~23_combout\ & \inst35|LPM_MUX_component|auto_generated|result_node[1]~25_combout\ & 
\inst35|LPM_MUX_component|auto_generated|result_node[0]~27_combout\);

\inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\(0) <= \~GND~combout\;

\inst10|inst|sram|ram_block|auto_generated|q_a\(0) <= \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst10|inst|sram|ram_block|auto_generated|q_a\(1) <= \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst10|inst|sram|ram_block|auto_generated|q_a\(2) <= \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst10|inst|sram|ram_block|auto_generated|q_a\(3) <= \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst10|inst|sram|ram_block|auto_generated|q_a\(4) <= \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst10|inst|sram|ram_block|auto_generated|q_a\(5) <= \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst10|inst|sram|ram_block|auto_generated|q_a\(6) <= \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst10|inst|sram|ram_block|auto_generated|q_a\(7) <= \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst26|ALT_INV_inst6~combout\ <= NOT \inst26|inst6~combout\;
\inst26|ALT_INV_inst7~combout\ <= NOT \inst26|inst7~combout\;
\inst6|ALT_INV_inst~0_combout\ <= NOT \inst6|inst~0_combout\;

-- Location: IOOBUF_X28_Y53_N23
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

-- Location: IOOBUF_X43_Y0_N2
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

-- Location: IOOBUF_X39_Y0_N9
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

-- Location: IOOBUF_X37_Y0_N23
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

-- Location: IOOBUF_X55_Y0_N23
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

-- Location: IOOBUF_X50_Y53_N16
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

-- Location: IOOBUF_X41_Y53_N23
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

-- Location: IOOBUF_X37_Y0_N16
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

-- Location: IOOBUF_X37_Y53_N23
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

-- Location: IOOBUF_X48_Y53_N2
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

-- Location: IOOBUF_X39_Y0_N16
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

-- Location: IOOBUF_X50_Y0_N9
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

-- Location: IOOBUF_X39_Y0_N23
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

-- Location: IOOBUF_X32_Y0_N9
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

-- Location: IOOBUF_X35_Y0_N9
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

-- Location: IOOBUF_X43_Y53_N2
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

-- Location: IOOBUF_X50_Y0_N2
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

-- Location: IOOBUF_X48_Y0_N16
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

-- Location: IOOBUF_X50_Y0_N16
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

-- Location: IOOBUF_X52_Y0_N23
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

-- Location: IOOBUF_X45_Y0_N2
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

-- Location: IOOBUF_X55_Y0_N16
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

-- Location: IOOBUF_X48_Y0_N23
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

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X52_Y0_N9
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

-- Location: IOOBUF_X3_Y0_N16
\uaddr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \uaddr[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\uaddr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \uaddr[5]~output_o\);

-- Location: IOOBUF_X77_Y6_N23
\uaddr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \uaddr[4]~output_o\);

-- Location: IOOBUF_X14_Y53_N9
\uaddr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \uaddr[3]~output_o\);

-- Location: IOOBUF_X43_Y53_N23
\uaddr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \uaddr[2]~output_o\);

-- Location: IOOBUF_X3_Y53_N16
\uaddr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \uaddr[1]~output_o\);

-- Location: IOOBUF_X25_Y53_N2
\bus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst35|LPM_MUX_component|auto_generated|result_node[7]~13_combout\,
	devoe => ww_devoe,
	o => \bus[7]~output_o\);

-- Location: IOOBUF_X32_Y53_N16
\bus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst35|LPM_MUX_component|auto_generated|result_node[6]~15_combout\,
	devoe => ww_devoe,
	o => \bus[6]~output_o\);

-- Location: IOOBUF_X21_Y53_N23
\bus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst35|LPM_MUX_component|auto_generated|result_node[5]~17_combout\,
	devoe => ww_devoe,
	o => \bus[5]~output_o\);

-- Location: IOOBUF_X35_Y53_N9
\bus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst35|LPM_MUX_component|auto_generated|result_node[4]~19_combout\,
	devoe => ww_devoe,
	o => \bus[4]~output_o\);

-- Location: IOOBUF_X25_Y53_N9
\bus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst35|LPM_MUX_component|auto_generated|result_node[3]~21_combout\,
	devoe => ww_devoe,
	o => \bus[3]~output_o\);

-- Location: IOOBUF_X30_Y53_N16
\bus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst35|LPM_MUX_component|auto_generated|result_node[2]~23_combout\,
	devoe => ww_devoe,
	o => \bus[2]~output_o\);

-- Location: IOOBUF_X30_Y53_N9
\bus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst35|LPM_MUX_component|auto_generated|result_node[1]~25_combout\,
	devoe => ww_devoe,
	o => \bus[1]~output_o\);

-- Location: IOOBUF_X19_Y53_N23
\bus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst35|LPM_MUX_component|auto_generated|result_node[0]~27_combout\,
	devoe => ww_devoe,
	o => \bus[0]~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\LDAR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst13~0_combout\,
	devoe => ww_devoe,
	o => \LDAR~output_o\);

-- Location: IOOBUF_X50_Y0_N23
\LDPC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst13~0_combout\,
	devoe => ww_devoe,
	o => \LDPC~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\I[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[7]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\I[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[6]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\I[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[5]~output_o\);

-- Location: IOOBUF_X66_Y0_N23
\I[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\I[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\I[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[2]~output_o\);

-- Location: IOOBUF_X0_Y38_N9
\I[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[1]~output_o\);

-- Location: IOOBUF_X11_Y53_N23
\I[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I[0]~output_o\);

-- Location: IOOBUF_X35_Y53_N2
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

-- Location: IOOBUF_X32_Y53_N2
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

-- Location: IOOBUF_X30_Y53_N2
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

-- Location: IOOBUF_X21_Y53_N9
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

-- Location: IOOBUF_X21_Y53_N2
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

-- Location: IOOBUF_X0_Y49_N2
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

-- Location: IOOBUF_X23_Y53_N16
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

-- Location: IOOBUF_X16_Y53_N23
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

-- Location: IOOBUF_X41_Y53_N2
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

-- Location: IOOBUF_X37_Y53_N16
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

-- Location: IOOBUF_X16_Y53_N16
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

-- Location: IOOBUF_X0_Y22_N16
\led[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\led[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led[6]~output_o\);

-- Location: IOOBUF_X0_Y39_N9
\led[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led[5]~output_o\);

-- Location: IOOBUF_X39_Y0_N2
\led[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X77_Y49_N23
\led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X1_Y53_N2
\led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X71_Y53_N2
\led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N9
\led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: LCCOMB_X37_Y29_N0
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: M9K_X47_Y3_N0
\inst2|inst|srom|rom_block|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00001ED82000018110",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "lpm_rom1119.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_rom1119:inst2|lpm_rom:inst|altrom:srom|altsyncram:rom_block|altsyncram_ki01:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 1,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 1,
	port_b_data_width => 36,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => GND,
	portaaddr => \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst2|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X28_Y50_N8
\inst6|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst~0_combout\ = (\inst2|inst|srom|rom_block|auto_generated|q_a\(10) & (!\inst2|inst|srom|rom_block|auto_generated|q_a\(9) & \inst2|inst|srom|rom_block|auto_generated|q_a\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(10),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(9),
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(11),
	combout => \inst6|inst~0_combout\);

-- Location: LCCOMB_X28_Y50_N0
\inst35|LPM_MUX_component|auto_generated|result_node[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|result_node[7]~3_combout\ = (\inst2|inst|srom|rom_block|auto_generated|q_a\(10)) # (!\inst2|inst|srom|rom_block|auto_generated|q_a\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(9),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(10),
	combout => \inst35|LPM_MUX_component|auto_generated|result_node[7]~3_combout\);

-- Location: LCCOMB_X28_Y50_N26
\inst35|LPM_MUX_component|auto_generated|result_node[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|result_node[7]~28_combout\ = (!\inst2|inst|srom|rom_block|auto_generated|q_a\(16) & (\inst2|inst|srom|rom_block|auto_generated|q_a\(15) & ((\inst35|LPM_MUX_component|auto_generated|result_node[7]~3_combout\) # 
-- (!\inst2|inst|srom|rom_block|auto_generated|q_a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(16),
	datab => \inst35|LPM_MUX_component|auto_generated|result_node[7]~3_combout\,
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(11),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(15),
	combout => \inst35|LPM_MUX_component|auto_generated|result_node[7]~28_combout\);

-- Location: LCCOMB_X28_Y50_N12
\inst3|109~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|109~2_combout\ = (\inst2|inst|srom|rom_block|auto_generated|q_a\(16) & (!\inst2|inst|srom|rom_block|auto_generated|q_a\(11) & (\inst2|inst|srom|rom_block|auto_generated|q_a\(9) $ (\inst2|inst|srom|rom_block|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(16),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(9),
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(11),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(10),
	combout => \inst3|109~2_combout\);

-- Location: LCCOMB_X28_Y50_N28
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

-- Location: LCCOMB_X28_Y50_N22
\inst6|inst~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst~1_combout\ = (!\inst2|inst|srom|rom_block|auto_generated|q_a\(10) & (\inst2|inst|srom|rom_block|auto_generated|q_a\(9) & \inst2|inst|srom|rom_block|auto_generated|q_a\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(10),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(9),
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(11),
	combout => \inst6|inst~1_combout\);

-- Location: LCCOMB_X28_Y50_N10
\inst35|LPM_MUX_component|auto_generated|result_node[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|result_node[7]~9_combout\ = ((\inst2|inst|srom|rom_block|auto_generated|q_a\(11) & (\inst2|inst|srom|rom_block|auto_generated|q_a\(9) $ (\inst2|inst|srom|rom_block|auto_generated|q_a\(10))))) # 
-- (!\inst2|inst|srom|rom_block|auto_generated|q_a\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(16),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(9),
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(11),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(10),
	combout => \inst35|LPM_MUX_component|auto_generated|result_node[7]~9_combout\);

-- Location: LCCOMB_X28_Y50_N6
\inst35|LPM_MUX_component|auto_generated|result_node[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|result_node[7]~10_combout\ = (\inst35|LPM_MUX_component|auto_generated|result_node[7]~9_combout\ & ((\inst3|109~2_combout\) # ((\inst6|inst~1_combout\) # (!\inst26|inst8~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|109~2_combout\,
	datab => \inst26|inst8~combout\,
	datac => \inst6|inst~1_combout\,
	datad => \inst35|LPM_MUX_component|auto_generated|result_node[7]~9_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|result_node[7]~10_combout\);

-- Location: LCCOMB_X28_Y50_N24
\inst3|8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|8~0_combout\ = (!\inst2|inst|srom|rom_block|auto_generated|q_a\(16) & ((\inst2|inst|srom|rom_block|auto_generated|q_a\(10)) # ((!\inst2|inst|srom|rom_block|auto_generated|q_a\(15)) # (!\inst2|inst|srom|rom_block|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(10),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(9),
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(16),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(15),
	combout => \inst3|8~0_combout\);

-- Location: LCCOMB_X28_Y50_N18
\inst3|8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|8~1_combout\ = (\inst3|8~0_combout\) # ((!\inst2|inst|srom|rom_block|auto_generated|q_a\(11) & \inst2|inst|srom|rom_block|auto_generated|q_a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|8~0_combout\,
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(11),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(9),
	combout => \inst3|8~1_combout\);

-- Location: LCCOMB_X26_Y50_N8
\inst35|LPM_MUX_component|auto_generated|result_node[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|result_node[7]~11_combout\ = (!\inst3|8~1_combout\ & ((\inst2|inst|srom|rom_block|auto_generated|q_a\(19) & ((!\inst2|inst|srom|rom_block|auto_generated|q_a\(21)))) # 
-- (!\inst2|inst|srom|rom_block|auto_generated|q_a\(19) & (\inst2|inst|srom|rom_block|auto_generated|q_a\(18) & \inst2|inst|srom|rom_block|auto_generated|q_a\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(19),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(18),
	datac => \inst3|8~1_combout\,
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(21),
	combout => \inst35|LPM_MUX_component|auto_generated|result_node[7]~11_combout\);

-- Location: IOIBUF_X37_Y53_N8
\d0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(1),
	o => \d0[1]~input_o\);

-- Location: LCCOMB_X26_Y50_N24
\inst35|LPM_MUX_component|auto_generated|result_node[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|result_node[1]~24_combout\ = (\inst35|LPM_MUX_component|auto_generated|result_node[7]~10_combout\ & ((\inst35|LPM_MUX_component|auto_generated|result_node[7]~11_combout\) # ((\inst3|8~1_combout\ & 
-- \d0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|LPM_MUX_component|auto_generated|result_node[7]~10_combout\,
	datab => \inst35|LPM_MUX_component|auto_generated|result_node[7]~11_combout\,
	datac => \inst3|8~1_combout\,
	datad => \d0[1]~input_o\,
	combout => \inst35|LPM_MUX_component|auto_generated|result_node[1]~24_combout\);

-- Location: IOIBUF_X37_Y53_N1
\d0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(2),
	o => \d0[2]~input_o\);

-- Location: LCCOMB_X26_Y50_N12
\inst35|LPM_MUX_component|auto_generated|result_node[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|result_node[2]~22_combout\ = (\inst35|LPM_MUX_component|auto_generated|result_node[7]~10_combout\ & ((\inst35|LPM_MUX_component|auto_generated|result_node[7]~11_combout\) # ((\inst3|8~1_combout\ & 
-- \d0[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|8~1_combout\,
	datab => \d0[2]~input_o\,
	datac => \inst35|LPM_MUX_component|auto_generated|result_node[7]~11_combout\,
	datad => \inst35|LPM_MUX_component|auto_generated|result_node[7]~10_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|result_node[2]~22_combout\);

-- Location: IOIBUF_X16_Y53_N8
\d0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(3),
	o => \d0[3]~input_o\);

-- Location: LCCOMB_X26_Y50_N16
\inst35|LPM_MUX_component|auto_generated|result_node[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|result_node[3]~20_combout\ = (\inst35|LPM_MUX_component|auto_generated|result_node[7]~10_combout\ & ((\inst35|LPM_MUX_component|auto_generated|result_node[7]~11_combout\) # ((\inst3|8~1_combout\ & 
-- \d0[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|8~1_combout\,
	datab => \inst35|LPM_MUX_component|auto_generated|result_node[7]~11_combout\,
	datac => \d0[3]~input_o\,
	datad => \inst35|LPM_MUX_component|auto_generated|result_node[7]~10_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|result_node[3]~20_combout\);

-- Location: IOIBUF_X0_Y49_N8
\d0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(5),
	o => \d0[5]~input_o\);

-- Location: LCCOMB_X26_Y50_N0
\inst35|LPM_MUX_component|auto_generated|result_node[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|result_node[5]~16_combout\ = (\inst35|LPM_MUX_component|auto_generated|result_node[7]~10_combout\ & ((\inst35|LPM_MUX_component|auto_generated|result_node[7]~11_combout\) # ((\inst3|8~1_combout\ & 
-- \d0[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|8~1_combout\,
	datab => \d0[5]~input_o\,
	datac => \inst35|LPM_MUX_component|auto_generated|result_node[7]~11_combout\,
	datad => \inst35|LPM_MUX_component|auto_generated|result_node[7]~10_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|result_node[5]~16_combout\);

-- Location: M9K_X27_Y50_N0
\inst10|inst|sram|ram_block|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM1119:inst10|lpm_ram_dq:inst|altram:sram|altsyncram:ram_block|altsyncram_ap71:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 1,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 1,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst2|inst|srom|rom_block|auto_generated|q_a\(17),
	portare => VCC,
	clk0 => GND,
	portadatain => \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst10|inst|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: IOIBUF_X23_Y53_N22
\d0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(6),
	o => \d0[6]~input_o\);

-- Location: LCCOMB_X26_Y50_N22
\inst35|LPM_MUX_component|auto_generated|result_node[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|result_node[6]~14_combout\ = (\inst35|LPM_MUX_component|auto_generated|result_node[7]~10_combout\ & ((\inst35|LPM_MUX_component|auto_generated|result_node[7]~11_combout\) # ((\inst3|8~1_combout\ & 
-- \d0[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|8~1_combout\,
	datab => \inst35|LPM_MUX_component|auto_generated|result_node[7]~11_combout\,
	datac => \d0[6]~input_o\,
	datad => \inst35|LPM_MUX_component|auto_generated|result_node[7]~10_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|result_node[6]~14_combout\);

-- Location: LCCOMB_X28_Y50_N4
\inst35|LPM_MUX_component|auto_generated|result_node[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|result_node[6]~15_combout\ = (\inst35|LPM_MUX_component|auto_generated|result_node[6]~14_combout\) # ((\inst10|inst|sram|ram_block|auto_generated|q_a\(6) & 
-- \inst35|LPM_MUX_component|auto_generated|result_node[7]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst|sram|ram_block|auto_generated|q_a\(6),
	datab => \inst35|LPM_MUX_component|auto_generated|result_node[6]~14_combout\,
	datac => \inst35|LPM_MUX_component|auto_generated|result_node[7]~28_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|result_node[6]~15_combout\);

-- Location: LCCOMB_X26_Y50_N26
\inst35|LPM_MUX_component|auto_generated|result_node[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|result_node[5]~17_combout\ = (\inst35|LPM_MUX_component|auto_generated|result_node[5]~16_combout\) # ((\inst35|LPM_MUX_component|auto_generated|result_node[7]~28_combout\ & 
-- \inst10|inst|sram|ram_block|auto_generated|q_a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst35|LPM_MUX_component|auto_generated|result_node[5]~16_combout\,
	datac => \inst35|LPM_MUX_component|auto_generated|result_node[7]~28_combout\,
	datad => \inst10|inst|sram|ram_block|auto_generated|q_a\(5),
	combout => \inst35|LPM_MUX_component|auto_generated|result_node[5]~17_combout\);

-- Location: IOIBUF_X19_Y53_N15
\d0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(4),
	o => \d0[4]~input_o\);

-- Location: LCCOMB_X26_Y50_N28
\inst35|LPM_MUX_component|auto_generated|result_node[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|result_node[4]~18_combout\ = (\inst35|LPM_MUX_component|auto_generated|result_node[7]~10_combout\ & ((\inst35|LPM_MUX_component|auto_generated|result_node[7]~11_combout\) # ((\inst3|8~1_combout\ & 
-- \d0[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|8~1_combout\,
	datab => \inst35|LPM_MUX_component|auto_generated|result_node[7]~11_combout\,
	datac => \d0[4]~input_o\,
	datad => \inst35|LPM_MUX_component|auto_generated|result_node[7]~10_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|result_node[4]~18_combout\);

-- Location: LCCOMB_X26_Y50_N30
\inst35|LPM_MUX_component|auto_generated|result_node[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|result_node[4]~19_combout\ = (\inst35|LPM_MUX_component|auto_generated|result_node[4]~18_combout\) # ((\inst10|inst|sram|ram_block|auto_generated|q_a\(4) & 
-- \inst35|LPM_MUX_component|auto_generated|result_node[7]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst|sram|ram_block|auto_generated|q_a\(4),
	datab => \inst35|LPM_MUX_component|auto_generated|result_node[4]~18_combout\,
	datac => \inst35|LPM_MUX_component|auto_generated|result_node[7]~28_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|result_node[4]~19_combout\);

-- Location: LCCOMB_X26_Y50_N2
\inst35|LPM_MUX_component|auto_generated|result_node[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|result_node[3]~21_combout\ = (\inst35|LPM_MUX_component|auto_generated|result_node[3]~20_combout\) # ((\inst35|LPM_MUX_component|auto_generated|result_node[7]~28_combout\ & 
-- \inst10|inst|sram|ram_block|auto_generated|q_a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|LPM_MUX_component|auto_generated|result_node[7]~28_combout\,
	datab => \inst35|LPM_MUX_component|auto_generated|result_node[3]~20_combout\,
	datac => \inst10|inst|sram|ram_block|auto_generated|q_a\(3),
	combout => \inst35|LPM_MUX_component|auto_generated|result_node[3]~21_combout\);

-- Location: LCCOMB_X26_Y50_N14
\inst35|LPM_MUX_component|auto_generated|result_node[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|result_node[2]~23_combout\ = (\inst35|LPM_MUX_component|auto_generated|result_node[2]~22_combout\) # ((\inst10|inst|sram|ram_block|auto_generated|q_a\(2) & 
-- \inst35|LPM_MUX_component|auto_generated|result_node[7]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|LPM_MUX_component|auto_generated|result_node[2]~22_combout\,
	datab => \inst10|inst|sram|ram_block|auto_generated|q_a\(2),
	datac => \inst35|LPM_MUX_component|auto_generated|result_node[7]~28_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|result_node[2]~23_combout\);

-- Location: LCCOMB_X28_Y50_N30
\inst35|LPM_MUX_component|auto_generated|result_node[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|result_node[1]~25_combout\ = (\inst35|LPM_MUX_component|auto_generated|result_node[1]~24_combout\) # ((\inst35|LPM_MUX_component|auto_generated|result_node[7]~28_combout\ & 
-- \inst10|inst|sram|ram_block|auto_generated|q_a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|LPM_MUX_component|auto_generated|result_node[7]~28_combout\,
	datab => \inst35|LPM_MUX_component|auto_generated|result_node[1]~24_combout\,
	datac => \inst10|inst|sram|ram_block|auto_generated|q_a\(1),
	combout => \inst35|LPM_MUX_component|auto_generated|result_node[1]~25_combout\);

-- Location: IOIBUF_X16_Y53_N1
\d0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(0),
	o => \d0[0]~input_o\);

-- Location: LCCOMB_X26_Y50_N18
\inst9|inst|77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|77~0_combout\ = (\inst2|inst|srom|rom_block|auto_generated|q_a\(19)) # (!\inst2|inst|srom|rom_block|auto_generated|q_a\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(19),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(18),
	combout => \inst9|inst|77~0_combout\);

-- Location: LCCOMB_X26_Y50_N20
\inst35|LPM_MUX_component|auto_generated|result_node[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|result_node[0]~26_combout\ = (\inst3|8~1_combout\ & (\d0[0]~input_o\)) # (!\inst3|8~1_combout\ & ((\inst9|inst|77~0_combout\ $ (\inst2|inst|srom|rom_block|auto_generated|q_a\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d0[0]~input_o\,
	datab => \inst9|inst|77~0_combout\,
	datac => \inst3|8~1_combout\,
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(21),
	combout => \inst35|LPM_MUX_component|auto_generated|result_node[0]~26_combout\);

-- Location: LCCOMB_X26_Y50_N6
\inst35|LPM_MUX_component|auto_generated|result_node[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|result_node[0]~27_combout\ = (\inst10|inst|sram|ram_block|auto_generated|q_a\(0) & ((\inst35|LPM_MUX_component|auto_generated|result_node[7]~28_combout\) # 
-- ((\inst35|LPM_MUX_component|auto_generated|result_node[0]~26_combout\ & \inst35|LPM_MUX_component|auto_generated|result_node[7]~10_combout\)))) # (!\inst10|inst|sram|ram_block|auto_generated|q_a\(0) & 
-- (\inst35|LPM_MUX_component|auto_generated|result_node[0]~26_combout\ & ((\inst35|LPM_MUX_component|auto_generated|result_node[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst|sram|ram_block|auto_generated|q_a\(0),
	datab => \inst35|LPM_MUX_component|auto_generated|result_node[0]~26_combout\,
	datac => \inst35|LPM_MUX_component|auto_generated|result_node[7]~28_combout\,
	datad => \inst35|LPM_MUX_component|auto_generated|result_node[7]~10_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|result_node[0]~27_combout\);

-- Location: IOIBUF_X23_Y53_N1
\d0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0(7),
	o => \d0[7]~input_o\);

-- Location: LCCOMB_X26_Y50_N10
\inst35|LPM_MUX_component|auto_generated|result_node[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|result_node[7]~12_combout\ = (\inst35|LPM_MUX_component|auto_generated|result_node[7]~10_combout\ & ((\inst35|LPM_MUX_component|auto_generated|result_node[7]~11_combout\) # ((\inst3|8~1_combout\ & 
-- \d0[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|8~1_combout\,
	datab => \inst35|LPM_MUX_component|auto_generated|result_node[7]~11_combout\,
	datac => \d0[7]~input_o\,
	datad => \inst35|LPM_MUX_component|auto_generated|result_node[7]~10_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|result_node[7]~12_combout\);

-- Location: LCCOMB_X26_Y50_N4
\inst35|LPM_MUX_component|auto_generated|result_node[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|LPM_MUX_component|auto_generated|result_node[7]~13_combout\ = (\inst35|LPM_MUX_component|auto_generated|result_node[7]~12_combout\) # ((\inst10|inst|sram|ram_block|auto_generated|q_a\(7) & 
-- \inst35|LPM_MUX_component|auto_generated|result_node[7]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst|sram|ram_block|auto_generated|q_a\(7),
	datac => \inst35|LPM_MUX_component|auto_generated|result_node[7]~28_combout\,
	datad => \inst35|LPM_MUX_component|auto_generated|result_node[7]~12_combout\,
	combout => \inst35|LPM_MUX_component|auto_generated|result_node[7]~13_combout\);

-- Location: LCCOMB_X44_Y1_N24
\inst5|inst13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst13~0_combout\ = (\inst2|inst|srom|rom_block|auto_generated|q_a\(14) & (\inst2|inst|srom|rom_block|auto_generated|q_a\(13) & !\inst2|inst|srom|rom_block|auto_generated|q_a\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(14),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(13),
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst5|inst13~0_combout\);

-- Location: LCCOMB_X50_Y2_N16
\inst7|inst13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst13~0_combout\ = (\inst2|inst|srom|rom_block|auto_generated|q_a\(8) & (!\inst2|inst|srom|rom_block|auto_generated|q_a\(6) & \inst2|inst|srom|rom_block|auto_generated|q_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|srom|rom_block|auto_generated|q_a\(8),
	datab => \inst2|inst|srom|rom_block|auto_generated|q_a\(6),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(7),
	combout => \inst7|inst13~0_combout\);

-- Location: LCCOMB_X28_Y50_N16
\inst26|inst7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|inst7~combout\ = (!\inst2|inst|srom|rom_block|auto_generated|q_a\(16) & \inst2|inst|srom|rom_block|auto_generated|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|srom|rom_block|auto_generated|q_a\(16),
	datad => \inst2|inst|srom|rom_block|auto_generated|q_a\(15),
	combout => \inst26|inst7~combout\);

-- Location: LCCOMB_X28_Y50_N2
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

-- Location: IOIBUF_X50_Y53_N22
\RST1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST1,
	o => \RST1~input_o\);

-- Location: IOIBUF_X73_Y0_N8
\SWA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWA,
	o => \SWA~input_o\);

-- Location: IOIBUF_X3_Y53_N8
\SWB~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWB,
	o => \SWB~input_o\);

-- Location: IOIBUF_X73_Y53_N1
\CLK1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK1,
	o => \CLK1~input_o\);

-- Location: IOIBUF_X77_Y26_N1
\STEP~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STEP,
	o => \STEP~input_o\);

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

ww_uaddr(6) <= \uaddr[6]~output_o\;

ww_uaddr(5) <= \uaddr[5]~output_o\;

ww_uaddr(4) <= \uaddr[4]~output_o\;

ww_uaddr(3) <= \uaddr[3]~output_o\;

ww_uaddr(2) <= \uaddr[2]~output_o\;

ww_uaddr(1) <= \uaddr[1]~output_o\;

\ww_bus\(7) <= \bus[7]~output_o\;

\ww_bus\(6) <= \bus[6]~output_o\;

\ww_bus\(5) <= \bus[5]~output_o\;

\ww_bus\(4) <= \bus[4]~output_o\;

\ww_bus\(3) <= \bus[3]~output_o\;

\ww_bus\(2) <= \bus[2]~output_o\;

\ww_bus\(1) <= \bus[1]~output_o\;

\ww_bus\(0) <= \bus[0]~output_o\;

ww_LDAR <= \LDAR~output_o\;

ww_LDPC <= \LDPC~output_o\;

ww_I(7) <= \I[7]~output_o\;

ww_I(6) <= \I[6]~output_o\;

ww_I(5) <= \I[5]~output_o\;

ww_I(4) <= \I[4]~output_o\;

ww_I(3) <= \I[3]~output_o\;

ww_I(2) <= \I[2]~output_o\;

ww_I(1) <= \I[1]~output_o\;

ww_I(0) <= \I[0]~output_o\;

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


