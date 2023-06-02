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

-- DATE "11/10/2021 10:32:17"

-- 
-- Device: Altera EP4CE55F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	uControl1119 IS
    PORT (
	RAM_B : OUT std_logic;
	M : OUT std_logic_vector(24 DOWNTO 1);
	S0 : IN std_logic;
	CLK1 : IN std_logic;
	RST1 : IN std_logic;
	uaddr : OUT std_logic_vector(6 DOWNTO 1);
	RST2 : IN std_logic;
	FC : IN std_logic;
	FZ : IN std_logic;
	SWA : IN std_logic;
	SWB : IN std_logic;
	I : IN std_logic_vector(7 DOWNTO 2);
	P : OUT std_logic_vector(4 DOWNTO 1);
	SW_B : OUT std_logic;
	LDR1 : OUT std_logic;
	LDDR1 : OUT std_logic;
	LDDR2 : OUT std_logic;
	LDIR : OUT std_logic;
	LOAD : OUT std_logic;
	LDAR : OUT std_logic;
	LDPC : OUT std_logic;
	LED_B : OUT std_logic;
	R0_B : OUT std_logic;
	R1_B : OUT std_logic;
	R2_B : OUT std_logic;
	ALU_B : OUT std_logic;
	PC_B : OUT std_logic
	);
END uControl1119;

-- Design Ports Information
-- RAM_B	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[24]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[23]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[22]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[21]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[20]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[19]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[18]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[17]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[16]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[15]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[14]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[13]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[12]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[11]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[10]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[9]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[8]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[7]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[5]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[4]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[3]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uaddr[6]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uaddr[5]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uaddr[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uaddr[3]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uaddr[2]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uaddr[1]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[4]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[3]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[1]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_B	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LDR1	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LDDR1	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LDDR2	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LDIR	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOAD	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LDAR	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LDPC	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_B	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_B	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_B	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2_B	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_B	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_B	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST2	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FC	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FZ	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[7]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[6]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWB	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[2]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[4]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWA	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST1	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK1	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uControl1119 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RAM_B : std_logic;
SIGNAL ww_M : std_logic_vector(24 DOWNTO 1);
SIGNAL ww_S0 : std_logic;
SIGNAL ww_CLK1 : std_logic;
SIGNAL ww_RST1 : std_logic;
SIGNAL ww_uaddr : std_logic_vector(6 DOWNTO 1);
SIGNAL ww_RST2 : std_logic;
SIGNAL ww_FC : std_logic;
SIGNAL ww_FZ : std_logic;
SIGNAL ww_SWA : std_logic;
SIGNAL ww_SWB : std_logic;
SIGNAL ww_I : std_logic_vector(7 DOWNTO 2);
SIGNAL ww_P : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_SW_B : std_logic;
SIGNAL ww_LDR1 : std_logic;
SIGNAL ww_LDDR1 : std_logic;
SIGNAL ww_LDDR2 : std_logic;
SIGNAL ww_LDIR : std_logic;
SIGNAL ww_LOAD : std_logic;
SIGNAL ww_LDAR : std_logic;
SIGNAL ww_LDPC : std_logic;
SIGNAL ww_LED_B : std_logic;
SIGNAL ww_R0_B : std_logic;
SIGNAL ww_R1_B : std_logic;
SIGNAL ww_R2_B : std_logic;
SIGNAL ww_ALU_B : std_logic;
SIGNAL ww_PC_B : std_logic;
SIGNAL \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst|inst1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst13~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_B~output_o\ : std_logic;
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
SIGNAL \P[4]~output_o\ : std_logic;
SIGNAL \P[3]~output_o\ : std_logic;
SIGNAL \P[2]~output_o\ : std_logic;
SIGNAL \P[1]~output_o\ : std_logic;
SIGNAL \SW_B~output_o\ : std_logic;
SIGNAL \LDR1~output_o\ : std_logic;
SIGNAL \LDDR1~output_o\ : std_logic;
SIGNAL \LDDR2~output_o\ : std_logic;
SIGNAL \LDIR~output_o\ : std_logic;
SIGNAL \LOAD~output_o\ : std_logic;
SIGNAL \LDAR~output_o\ : std_logic;
SIGNAL \LDPC~output_o\ : std_logic;
SIGNAL \LED_B~output_o\ : std_logic;
SIGNAL \R0_B~output_o\ : std_logic;
SIGNAL \R1_B~output_o\ : std_logic;
SIGNAL \R2_B~output_o\ : std_logic;
SIGNAL \ALU_B~output_o\ : std_logic;
SIGNAL \PC_B~output_o\ : std_logic;
SIGNAL \RST1~input_o\ : std_logic;
SIGNAL \RST1~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst1~q\ : std_logic;
SIGNAL \inst|inst2~feeder_combout\ : std_logic;
SIGNAL \inst|inst2~q\ : std_logic;
SIGNAL \inst|inst3~q\ : std_logic;
SIGNAL \inst|inst4~q\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \CLK1~input_o\ : std_logic;
SIGNAL \inst|inst13~combout\ : std_logic;
SIGNAL \inst|inst13~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst9|5~0_combout\ : std_logic;
SIGNAL \inst|inst9|5~1_combout\ : std_logic;
SIGNAL \inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst~q\ : std_logic;
SIGNAL \inst|inst~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst1~clkctrl_outclk\ : std_logic;
SIGNAL \SWA~input_o\ : std_logic;
SIGNAL \RST2~input_o\ : std_logic;
SIGNAL \SWB~input_o\ : std_logic;
SIGNAL \I[6]~input_o\ : std_logic;
SIGNAL \I[7]~input_o\ : std_logic;
SIGNAL \inst7|inst24~combout\ : std_logic;
SIGNAL \inst6|inst43~1_combout\ : std_logic;
SIGNAL \FC~input_o\ : std_logic;
SIGNAL \FZ~input_o\ : std_logic;
SIGNAL \inst5|inst~1_combout\ : std_logic;
SIGNAL \inst7|inst~0_combout\ : std_logic;
SIGNAL \inst6|inst44~1_combout\ : std_logic;
SIGNAL \inst6|inst45~feeder_combout\ : std_logic;
SIGNAL \inst6|inst45~q\ : std_logic;
SIGNAL \inst6|inst44~3_combout\ : std_logic;
SIGNAL \inst6|inst44~0_combout\ : std_logic;
SIGNAL \inst6|inst44~_emulated_q\ : std_logic;
SIGNAL \inst6|inst44~2_combout\ : std_logic;
SIGNAL \inst6|inst43~3_combout\ : std_logic;
SIGNAL \inst6|inst43~0_combout\ : std_logic;
SIGNAL \inst6|inst43~_emulated_q\ : std_logic;
SIGNAL \inst6|inst43~2_combout\ : std_logic;
SIGNAL \inst7|inst24~0_combout\ : std_logic;
SIGNAL \inst7|inst25~combout\ : std_logic;
SIGNAL \inst6|inst42~1_combout\ : std_logic;
SIGNAL \inst6|inst42~3_combout\ : std_logic;
SIGNAL \inst6|inst42~0_combout\ : std_logic;
SIGNAL \inst6|inst42~_emulated_q\ : std_logic;
SIGNAL \inst6|inst42~2_combout\ : std_logic;
SIGNAL \I[3]~input_o\ : std_logic;
SIGNAL \I[5]~input_o\ : std_logic;
SIGNAL \inst7|inst9~0_combout\ : std_logic;
SIGNAL \inst7|inst9~1_combout\ : std_logic;
SIGNAL \inst7|inst9~combout\ : std_logic;
SIGNAL \inst6|inst41~1_combout\ : std_logic;
SIGNAL \inst6|inst41~3_combout\ : std_logic;
SIGNAL \inst6|inst41~0_combout\ : std_logic;
SIGNAL \inst6|inst41~_emulated_q\ : std_logic;
SIGNAL \inst6|inst41~2_combout\ : std_logic;
SIGNAL \inst5|inst~0_combout\ : std_logic;
SIGNAL \I[4]~input_o\ : std_logic;
SIGNAL \I[2]~input_o\ : std_logic;
SIGNAL \inst7|inst27~0_combout\ : std_logic;
SIGNAL \inst7|inst10~0_combout\ : std_logic;
SIGNAL \inst7|inst10~combout\ : std_logic;
SIGNAL \inst6|inst40~1_combout\ : std_logic;
SIGNAL \inst6|inst40~3_combout\ : std_logic;
SIGNAL \inst6|inst40~0_combout\ : std_logic;
SIGNAL \inst6|inst40~_emulated_q\ : std_logic;
SIGNAL \inst6|inst40~2_combout\ : std_logic;
SIGNAL \inst2|inst7~combout\ : std_logic;
SIGNAL \inst5|inst~2_combout\ : std_logic;
SIGNAL \inst5|inst~3_combout\ : std_logic;
SIGNAL \inst2|inst8~combout\ : std_logic;
SIGNAL \inst3|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst~1_combout\ : std_logic;
SIGNAL \inst3|inst~2_combout\ : std_logic;
SIGNAL \inst3|inst~3_combout\ : std_logic;
SIGNAL \inst3|inst~4_combout\ : std_logic;
SIGNAL \inst3|inst~5_combout\ : std_logic;
SIGNAL \inst5|inst~4_combout\ : std_logic;
SIGNAL \inst2|inst6~combout\ : std_logic;
SIGNAL \inst4|inst~0_combout\ : std_logic;
SIGNAL \inst4|inst~1_combout\ : std_logic;
SIGNAL \inst4|inst~2_combout\ : std_logic;
SIGNAL \inst4|inst~3_combout\ : std_logic;
SIGNAL \inst4|inst~4_combout\ : std_logic;
SIGNAL \inst8|inst|srom|rom_block|auto_generated|q_a\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst6|ALT_INV_inst40~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst41~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst42~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst43~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_inst44~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_inst~4_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_inst~3_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_inst~2_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_inst~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_inst6~combout\ : std_logic;
SIGNAL \inst2|ALT_INV_inst7~combout\ : std_logic;
SIGNAL \ALT_INV_RST2~input_o\ : std_logic;

BEGIN

RAM_B <= ww_RAM_B;
M <= ww_M;
ww_S0 <= S0;
ww_CLK1 <= CLK1;
ww_RST1 <= RST1;
uaddr <= ww_uaddr;
ww_RST2 <= RST2;
ww_FC <= FC;
ww_FZ <= FZ;
ww_SWA <= SWA;
ww_SWB <= SWB;
ww_I <= I;
P <= ww_P;
SW_B <= ww_SW_B;
LDR1 <= ww_LDR1;
LDDR1 <= ww_LDDR1;
LDDR2 <= ww_LDDR2;
LDIR <= ww_LDIR;
LOAD <= ww_LOAD;
LDAR <= ww_LDAR;
LDPC <= ww_LDPC;
LED_B <= ww_LED_B;
R0_B <= ww_R0_B;
R1_B <= ww_R1_B;
R2_B <= ww_R2_B;
ALU_B <= ww_ALU_B;
PC_B <= ww_PC_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst6|inst45~q\ & \inst6|inst44~2_combout\ & \inst6|inst43~2_combout\ & \inst6|inst42~2_combout\ & \inst6|inst41~2_combout\ & \inst6|inst40~2_combout\);

\inst8|inst|srom|rom_block|auto_generated|q_a\(0) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst8|inst|srom|rom_block|auto_generated|q_a\(1) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst8|inst|srom|rom_block|auto_generated|q_a\(2) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst8|inst|srom|rom_block|auto_generated|q_a\(3) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst8|inst|srom|rom_block|auto_generated|q_a\(4) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst8|inst|srom|rom_block|auto_generated|q_a\(5) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst8|inst|srom|rom_block|auto_generated|q_a\(6) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst8|inst|srom|rom_block|auto_generated|q_a\(7) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst8|inst|srom|rom_block|auto_generated|q_a\(8) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst8|inst|srom|rom_block|auto_generated|q_a\(9) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst8|inst|srom|rom_block|auto_generated|q_a\(10) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst8|inst|srom|rom_block|auto_generated|q_a\(11) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst8|inst|srom|rom_block|auto_generated|q_a\(12) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst8|inst|srom|rom_block|auto_generated|q_a\(13) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst8|inst|srom|rom_block|auto_generated|q_a\(14) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst8|inst|srom|rom_block|auto_generated|q_a\(15) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\inst8|inst|srom|rom_block|auto_generated|q_a\(16) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\inst8|inst|srom|rom_block|auto_generated|q_a\(17) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\inst8|inst|srom|rom_block|auto_generated|q_a\(18) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\inst8|inst|srom|rom_block|auto_generated|q_a\(19) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\inst8|inst|srom|rom_block|auto_generated|q_a\(20) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\inst8|inst|srom|rom_block|auto_generated|q_a\(21) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\inst8|inst|srom|rom_block|auto_generated|q_a\(22) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\inst8|inst|srom|rom_block|auto_generated|q_a\(23) <= \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);

\inst|inst1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|inst1~q\);

\inst|inst~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|inst~q\);

\inst|inst13~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|inst13~combout\);

\RST1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST1~input_o\);
\inst6|ALT_INV_inst40~0_combout\ <= NOT \inst6|inst40~0_combout\;
\inst6|ALT_INV_inst41~0_combout\ <= NOT \inst6|inst41~0_combout\;
\inst6|ALT_INV_inst42~0_combout\ <= NOT \inst6|inst42~0_combout\;
\inst6|ALT_INV_inst43~0_combout\ <= NOT \inst6|inst43~0_combout\;
\inst6|ALT_INV_inst44~0_combout\ <= NOT \inst6|inst44~0_combout\;
\inst4|ALT_INV_inst~4_combout\ <= NOT \inst4|inst~4_combout\;
\inst4|ALT_INV_inst~3_combout\ <= NOT \inst4|inst~3_combout\;
\inst4|ALT_INV_inst~2_combout\ <= NOT \inst4|inst~2_combout\;
\inst4|ALT_INV_inst~1_combout\ <= NOT \inst4|inst~1_combout\;
\inst4|ALT_INV_inst~0_combout\ <= NOT \inst4|inst~0_combout\;
\inst2|ALT_INV_inst6~combout\ <= NOT \inst2|inst6~combout\;
\inst2|ALT_INV_inst7~combout\ <= NOT \inst2|inst7~combout\;
\ALT_INV_RST2~input_o\ <= NOT \RST2~input_o\;

-- Location: IOOBUF_X55_Y53_N2
\RAM_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_inst7~combout\,
	devoe => ww_devoe,
	o => \RAM_B~output_o\);

-- Location: IOOBUF_X77_Y23_N23
\M[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \M[24]~output_o\);

-- Location: IOOBUF_X50_Y0_N23
\M[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \M[23]~output_o\);

-- Location: IOOBUF_X50_Y0_N9
\M[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \M[22]~output_o\);

-- Location: IOOBUF_X77_Y18_N9
\M[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \M[21]~output_o\);

-- Location: IOOBUF_X50_Y0_N16
\M[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \M[20]~output_o\);

-- Location: IOOBUF_X55_Y0_N23
\M[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \M[19]~output_o\);

-- Location: IOOBUF_X77_Y18_N23
\M[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \M[18]~output_o\);

-- Location: IOOBUF_X50_Y53_N23
\M[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \M[17]~output_o\);

-- Location: IOOBUF_X77_Y34_N16
\M[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \M[16]~output_o\);

-- Location: IOOBUF_X77_Y12_N23
\M[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \M[15]~output_o\);

-- Location: IOOBUF_X77_Y16_N2
\M[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \M[14]~output_o\);

-- Location: IOOBUF_X59_Y0_N2
\M[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \M[13]~output_o\);

-- Location: IOOBUF_X77_Y26_N2
\M[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \M[12]~output_o\);

-- Location: IOOBUF_X77_Y25_N2
\M[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \M[11]~output_o\);

-- Location: IOOBUF_X77_Y24_N2
\M[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \M[10]~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\M[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \M[9]~output_o\);

-- Location: IOOBUF_X48_Y0_N23
\M[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \M[8]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\M[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \M[7]~output_o\);

-- Location: IOOBUF_X48_Y53_N2
\M[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(5),
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
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \M[5]~output_o\);

-- Location: IOOBUF_X77_Y23_N16
\M[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \M[4]~output_o\);

-- Location: IOOBUF_X77_Y20_N23
\M[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \M[3]~output_o\);

-- Location: IOOBUF_X77_Y21_N23
\M[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \M[2]~output_o\);

-- Location: IOOBUF_X77_Y21_N16
\M[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst|srom|rom_block|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \M[1]~output_o\);

-- Location: IOOBUF_X39_Y0_N2
\uaddr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst45~q\,
	devoe => ww_devoe,
	o => \uaddr[6]~output_o\);

-- Location: IOOBUF_X39_Y0_N9
\uaddr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst44~2_combout\,
	devoe => ww_devoe,
	o => \uaddr[5]~output_o\);

-- Location: IOOBUF_X50_Y0_N2
\uaddr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst43~2_combout\,
	devoe => ww_devoe,
	o => \uaddr[4]~output_o\);

-- Location: IOOBUF_X48_Y0_N16
\uaddr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst42~2_combout\,
	devoe => ww_devoe,
	o => \uaddr[3]~output_o\);

-- Location: IOOBUF_X77_Y20_N16
\uaddr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst41~2_combout\,
	devoe => ww_devoe,
	o => \uaddr[2]~output_o\);

-- Location: IOOBUF_X77_Y22_N9
\uaddr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst40~2_combout\,
	devoe => ww_devoe,
	o => \uaddr[1]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\P[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst~0_combout\,
	devoe => ww_devoe,
	o => \P[4]~output_o\);

-- Location: IOOBUF_X37_Y0_N9
\P[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst~1_combout\,
	devoe => ww_devoe,
	o => \P[3]~output_o\);

-- Location: IOOBUF_X45_Y53_N23
\P[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst~2_combout\,
	devoe => ww_devoe,
	o => \P[2]~output_o\);

-- Location: IOOBUF_X77_Y18_N2
\P[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst~3_combout\,
	devoe => ww_devoe,
	o => \P[1]~output_o\);

-- Location: IOOBUF_X55_Y53_N23
\SW_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst8~combout\,
	devoe => ww_devoe,
	o => \SW_B~output_o\);

-- Location: IOOBUF_X64_Y0_N2
\LDR1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst~0_combout\,
	devoe => ww_devoe,
	o => \LDR1~output_o\);

-- Location: IOOBUF_X62_Y0_N9
\LDDR1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst~1_combout\,
	devoe => ww_devoe,
	o => \LDDR1~output_o\);

-- Location: IOOBUF_X64_Y0_N23
\LDDR2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst~2_combout\,
	devoe => ww_devoe,
	o => \LDDR2~output_o\);

-- Location: IOOBUF_X77_Y6_N16
\LDIR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst~3_combout\,
	devoe => ww_devoe,
	o => \LDIR~output_o\);

-- Location: IOOBUF_X64_Y0_N9
\LOAD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst~4_combout\,
	devoe => ww_devoe,
	o => \LOAD~output_o\);

-- Location: IOOBUF_X62_Y0_N2
\LDAR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst~5_combout\,
	devoe => ww_devoe,
	o => \LDAR~output_o\);

-- Location: IOOBUF_X39_Y0_N23
\LDPC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst~4_combout\,
	devoe => ww_devoe,
	o => \LDPC~output_o\);

-- Location: IOOBUF_X55_Y53_N9
\LED_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_inst6~combout\,
	devoe => ww_devoe,
	o => \LED_B~output_o\);

-- Location: IOOBUF_X77_Y31_N16
\R0_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_inst~0_combout\,
	devoe => ww_devoe,
	o => \R0_B~output_o\);

-- Location: IOOBUF_X77_Y31_N23
\R1_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_inst~1_combout\,
	devoe => ww_devoe,
	o => \R1_B~output_o\);

-- Location: IOOBUF_X77_Y32_N16
\R2_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_inst~2_combout\,
	devoe => ww_devoe,
	o => \R2_B~output_o\);

-- Location: IOOBUF_X77_Y33_N9
\ALU_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_inst~3_combout\,
	devoe => ww_devoe,
	o => \ALU_B~output_o\);

-- Location: IOOBUF_X77_Y26_N9
\PC_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_inst~4_combout\,
	devoe => ww_devoe,
	o => \PC_B~output_o\);

-- Location: IOIBUF_X0_Y26_N8
\RST1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST1,
	o => \RST1~input_o\);

-- Location: CLKCTRL_G2
\RST1~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST1~inputclkctrl_outclk\);

-- Location: FF_X76_Y26_N31
\inst|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst13~clkctrl_outclk\,
	asdata => \inst|inst~q\,
	clrn => \RST1~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1~q\);

-- Location: LCCOMB_X53_Y21_N10
\inst|inst2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2~feeder_combout\ = \inst|inst1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst1~q\,
	combout => \inst|inst2~feeder_combout\);

-- Location: FF_X53_Y21_N11
\inst|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst13~clkctrl_outclk\,
	d => \inst|inst2~feeder_combout\,
	clrn => \RST1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2~q\);

-- Location: FF_X48_Y21_N13
\inst|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst13~clkctrl_outclk\,
	asdata => \inst|inst2~q\,
	clrn => \RST1~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3~q\);

-- Location: FF_X48_Y21_N29
\inst|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst13~clkctrl_outclk\,
	asdata => \inst|inst3~q\,
	clrn => \RST1~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4~q\);

-- Location: IOIBUF_X77_Y24_N8
\S0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: IOIBUF_X77_Y25_N8
\CLK1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK1,
	o => \CLK1~input_o\);

-- Location: LCCOMB_X76_Y25_N22
\inst|inst13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst13~combout\ = LCELL((\CLK1~input_o\) # ((\inst|inst4~q\ & !\S0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4~q\,
	datac => \S0~input_o\,
	datad => \CLK1~input_o\,
	combout => \inst|inst13~combout\);

-- Location: CLKCTRL_G5
\inst|inst13~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst13~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst13~clkctrl_outclk\);

-- Location: LCCOMB_X53_Y21_N22
\inst|inst9|5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9|5~0_combout\ = (!\inst|inst1~q\ & !\inst|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1~q\,
	datac => \inst|inst~q\,
	combout => \inst|inst9|5~0_combout\);

-- Location: LCCOMB_X53_Y21_N30
\inst|inst9|5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9|5~1_combout\ = (\inst|inst9|5~0_combout\ & (!\inst|inst2~q\ & ((\S0~input_o\) # (!\inst|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|5~0_combout\,
	datab => \S0~input_o\,
	datac => \inst|inst2~q\,
	datad => \inst|inst3~q\,
	combout => \inst|inst9|5~1_combout\);

-- Location: LCCOMB_X53_Y21_N24
\inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst~feeder_combout\ = \inst|inst9|5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst9|5~1_combout\,
	combout => \inst|inst~feeder_combout\);

-- Location: FF_X53_Y21_N25
\inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst13~clkctrl_outclk\,
	d => \inst|inst~feeder_combout\,
	clrn => \RST1~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~q\);

-- Location: CLKCTRL_G9
\inst|inst~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst~clkctrl_outclk\);

-- Location: CLKCTRL_G6
\inst|inst1~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst1~clkctrl_outclk\);

-- Location: IOIBUF_X48_Y53_N15
\SWA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWA,
	o => \SWA~input_o\);

-- Location: IOIBUF_X48_Y53_N8
\RST2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST2,
	o => \RST2~input_o\);

-- Location: IOIBUF_X55_Y0_N15
\SWB~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWB,
	o => \SWB~input_o\);

-- Location: IOIBUF_X48_Y53_N22
\I[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(6),
	o => \I[6]~input_o\);

-- Location: IOIBUF_X57_Y0_N22
\I[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(7),
	o => \I[7]~input_o\);

-- Location: LCCOMB_X49_Y21_N28
\inst7|inst24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst24~combout\ = (\I[7]~input_o\ & \inst7|inst24~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I[7]~input_o\,
	datad => \inst7|inst24~0_combout\,
	combout => \inst7|inst24~combout\);

-- Location: LCCOMB_X49_Y21_N0
\inst6|inst43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst43~1_combout\ = (!\RST2~input_o\ & ((\inst7|inst24~combout\) # (\inst6|inst43~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst24~combout\,
	datac => \RST2~input_o\,
	datad => \inst6|inst43~1_combout\,
	combout => \inst6|inst43~1_combout\);

-- Location: IOIBUF_X39_Y0_N15
\FC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FC,
	o => \FC~input_o\);

-- Location: IOIBUF_X77_Y16_N8
\FZ~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FZ,
	o => \FZ~input_o\);

-- Location: LCCOMB_X46_Y21_N18
\inst5|inst~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst~1_combout\ = (!\inst8|inst|srom|rom_block|auto_generated|q_a\(8) & (\inst8|inst|srom|rom_block|auto_generated|q_a\(6) & \inst8|inst|srom|rom_block|auto_generated|q_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst|srom|rom_block|auto_generated|q_a\(8),
	datac => \inst8|inst|srom|rom_block|auto_generated|q_a\(6),
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(7),
	combout => \inst5|inst~1_combout\);

-- Location: LCCOMB_X46_Y21_N20
\inst7|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst~0_combout\ = (\inst|inst3~q\ & (\inst5|inst~1_combout\ & ((\FC~input_o\) # (\FZ~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FC~input_o\,
	datab => \FZ~input_o\,
	datac => \inst|inst3~q\,
	datad => \inst5|inst~1_combout\,
	combout => \inst7|inst~0_combout\);

-- Location: LCCOMB_X46_Y21_N12
\inst6|inst44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst44~1_combout\ = (!\RST2~input_o\ & ((\inst7|inst~0_combout\) # (\inst6|inst44~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST2~input_o\,
	datac => \inst7|inst~0_combout\,
	datad => \inst6|inst44~1_combout\,
	combout => \inst6|inst44~1_combout\);

-- Location: M9K_X47_Y21_N0
\inst8|inst|srom|rom_block|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000068A11000050A1000000D181000050A0100000201800001800100000A01700001ED9400001ED9200000A01500000E00F00003820100001ED9600001ED8E00001ED8700001ED8300000100100000E00D000959A0100001A20600000B00500000E00400000C04800001ED82000018110",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "lpm_rom1119.hex",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_rom1119:inst8|lpm_rom:inst|altrom:srom|altsyncram:rom_block|altsyncram_ki01:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 36,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst|inst~clkctrl_outclk\,
	portaaddr => \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst8|inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y21_N8
\inst6|inst45~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst45~feeder_combout\ = \inst8|inst|srom|rom_block|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(5),
	combout => \inst6|inst45~feeder_combout\);

-- Location: FF_X45_Y21_N9
\inst6|inst45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1~clkctrl_outclk\,
	d => \inst6|inst45~feeder_combout\,
	clrn => \ALT_INV_RST2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst45~q\);

-- Location: LCCOMB_X46_Y21_N28
\inst6|inst44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst44~3_combout\ = \inst6|inst44~1_combout\ $ (\inst8|inst|srom|rom_block|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst44~1_combout\,
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(4),
	combout => \inst6|inst44~3_combout\);

-- Location: LCCOMB_X46_Y21_N30
\inst6|inst44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst44~0_combout\ = (\RST2~input_o\) # (\inst7|inst~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST2~input_o\,
	datad => \inst7|inst~0_combout\,
	combout => \inst6|inst44~0_combout\);

-- Location: FF_X46_Y21_N29
\inst6|inst44~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1~clkctrl_outclk\,
	d => \inst6|inst44~3_combout\,
	clrn => \inst6|ALT_INV_inst44~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst44~_emulated_q\);

-- Location: LCCOMB_X46_Y21_N14
\inst6|inst44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst44~2_combout\ = (!\RST2~input_o\ & ((\inst7|inst~0_combout\) # (\inst6|inst44~1_combout\ $ (\inst6|inst44~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST2~input_o\,
	datab => \inst6|inst44~1_combout\,
	datac => \inst6|inst44~_emulated_q\,
	datad => \inst7|inst~0_combout\,
	combout => \inst6|inst44~2_combout\);

-- Location: LCCOMB_X49_Y21_N8
\inst6|inst43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst43~3_combout\ = \inst6|inst43~1_combout\ $ (\inst8|inst|srom|rom_block|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst43~1_combout\,
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(3),
	combout => \inst6|inst43~3_combout\);

-- Location: LCCOMB_X49_Y21_N2
\inst6|inst43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst43~0_combout\ = (\RST2~input_o\) # (\inst7|inst24~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST2~input_o\,
	datad => \inst7|inst24~combout\,
	combout => \inst6|inst43~0_combout\);

-- Location: FF_X49_Y21_N9
\inst6|inst43~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1~clkctrl_outclk\,
	d => \inst6|inst43~3_combout\,
	clrn => \inst6|ALT_INV_inst43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst43~_emulated_q\);

-- Location: LCCOMB_X49_Y21_N6
\inst6|inst43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst43~2_combout\ = (!\RST2~input_o\ & ((\inst7|inst24~combout\) # (\inst6|inst43~_emulated_q\ $ (\inst6|inst43~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst43~_emulated_q\,
	datab => \inst6|inst43~1_combout\,
	datac => \RST2~input_o\,
	datad => \inst7|inst24~combout\,
	combout => \inst6|inst43~2_combout\);

-- Location: LCCOMB_X48_Y21_N14
\inst7|inst24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst24~0_combout\ = (!\inst8|inst|srom|rom_block|auto_generated|q_a\(7) & (\inst8|inst|srom|rom_block|auto_generated|q_a\(6) & (!\inst8|inst|srom|rom_block|auto_generated|q_a\(8) & \inst|inst3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|srom|rom_block|auto_generated|q_a\(7),
	datab => \inst8|inst|srom|rom_block|auto_generated|q_a\(6),
	datac => \inst8|inst|srom|rom_block|auto_generated|q_a\(8),
	datad => \inst|inst3~q\,
	combout => \inst7|inst24~0_combout\);

-- Location: LCCOMB_X48_Y21_N10
\inst7|inst25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst25~combout\ = (\I[6]~input_o\ & \inst7|inst24~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I[6]~input_o\,
	datac => \inst7|inst24~0_combout\,
	combout => \inst7|inst25~combout\);

-- Location: LCCOMB_X48_Y21_N24
\inst6|inst42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst42~1_combout\ = (!\RST2~input_o\ & ((\inst7|inst25~combout\) # (\inst6|inst42~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst25~combout\,
	datac => \RST2~input_o\,
	datad => \inst6|inst42~1_combout\,
	combout => \inst6|inst42~1_combout\);

-- Location: LCCOMB_X48_Y21_N4
\inst6|inst42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst42~3_combout\ = \inst8|inst|srom|rom_block|auto_generated|q_a\(2) $ (\inst6|inst42~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst|srom|rom_block|auto_generated|q_a\(2),
	datad => \inst6|inst42~1_combout\,
	combout => \inst6|inst42~3_combout\);

-- Location: LCCOMB_X48_Y21_N8
\inst6|inst42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst42~0_combout\ = (\RST2~input_o\) # (\inst7|inst25~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST2~input_o\,
	datad => \inst7|inst25~combout\,
	combout => \inst6|inst42~0_combout\);

-- Location: FF_X48_Y21_N5
\inst6|inst42~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1~clkctrl_outclk\,
	d => \inst6|inst42~3_combout\,
	clrn => \inst6|ALT_INV_inst42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst42~_emulated_q\);

-- Location: LCCOMB_X48_Y21_N26
\inst6|inst42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst42~2_combout\ = (!\RST2~input_o\ & ((\inst7|inst25~combout\) # (\inst6|inst42~1_combout\ $ (\inst6|inst42~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST2~input_o\,
	datab => \inst6|inst42~1_combout\,
	datac => \inst6|inst42~_emulated_q\,
	datad => \inst7|inst25~combout\,
	combout => \inst6|inst42~2_combout\);

-- Location: IOIBUF_X52_Y0_N8
\I[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(3),
	o => \I[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\I[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(5),
	o => \I[5]~input_o\);

-- Location: LCCOMB_X48_Y21_N22
\inst7|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst9~0_combout\ = (\inst8|inst|srom|rom_block|auto_generated|q_a\(6) & (((\I[5]~input_o\ & !\inst8|inst|srom|rom_block|auto_generated|q_a\(7))))) # (!\inst8|inst|srom|rom_block|auto_generated|q_a\(6) & (\I[3]~input_o\ & 
-- ((\inst8|inst|srom|rom_block|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I[3]~input_o\,
	datab => \inst8|inst|srom|rom_block|auto_generated|q_a\(6),
	datac => \I[5]~input_o\,
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(7),
	combout => \inst7|inst9~0_combout\);

-- Location: LCCOMB_X48_Y21_N18
\inst7|inst9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst9~1_combout\ = (!\inst8|inst|srom|rom_block|auto_generated|q_a\(8) & (\inst7|inst9~0_combout\ & \inst|inst3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|srom|rom_block|auto_generated|q_a\(8),
	datac => \inst7|inst9~0_combout\,
	datad => \inst|inst3~q\,
	combout => \inst7|inst9~1_combout\);

-- Location: LCCOMB_X48_Y21_N20
\inst7|inst9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst9~combout\ = (\inst7|inst9~1_combout\) # ((\inst|inst3~q\ & (\SWB~input_o\ & \inst5|inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~q\,
	datab => \SWB~input_o\,
	datac => \inst5|inst~0_combout\,
	datad => \inst7|inst9~1_combout\,
	combout => \inst7|inst9~combout\);

-- Location: LCCOMB_X46_Y21_N10
\inst6|inst41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst41~1_combout\ = (!\RST2~input_o\ & ((\inst7|inst9~combout\) # (\inst6|inst41~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST2~input_o\,
	datab => \inst7|inst9~combout\,
	datad => \inst6|inst41~1_combout\,
	combout => \inst6|inst41~1_combout\);

-- Location: LCCOMB_X46_Y21_N24
\inst6|inst41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst41~3_combout\ = \inst6|inst41~1_combout\ $ (\inst8|inst|srom|rom_block|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst41~1_combout\,
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(1),
	combout => \inst6|inst41~3_combout\);

-- Location: LCCOMB_X46_Y21_N26
\inst6|inst41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst41~0_combout\ = (\RST2~input_o\) # (\inst7|inst9~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST2~input_o\,
	datad => \inst7|inst9~combout\,
	combout => \inst6|inst41~0_combout\);

-- Location: FF_X46_Y21_N25
\inst6|inst41~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1~clkctrl_outclk\,
	d => \inst6|inst41~3_combout\,
	clrn => \inst6|ALT_INV_inst41~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst41~_emulated_q\);

-- Location: LCCOMB_X48_Y21_N6
\inst6|inst41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst41~2_combout\ = (!\RST2~input_o\ & ((\inst7|inst9~combout\) # (\inst6|inst41~_emulated_q\ $ (\inst6|inst41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst41~_emulated_q\,
	datab => \RST2~input_o\,
	datac => \inst6|inst41~1_combout\,
	datad => \inst7|inst9~combout\,
	combout => \inst6|inst41~2_combout\);

-- Location: LCCOMB_X48_Y21_N30
\inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst~0_combout\ = (!\inst8|inst|srom|rom_block|auto_generated|q_a\(7) & (\inst8|inst|srom|rom_block|auto_generated|q_a\(8) & !\inst8|inst|srom|rom_block|auto_generated|q_a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|srom|rom_block|auto_generated|q_a\(7),
	datac => \inst8|inst|srom|rom_block|auto_generated|q_a\(8),
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(6),
	combout => \inst5|inst~0_combout\);

-- Location: IOIBUF_X77_Y17_N22
\I[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(4),
	o => \I[4]~input_o\);

-- Location: IOIBUF_X77_Y19_N15
\I[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(2),
	o => \I[2]~input_o\);

-- Location: LCCOMB_X48_Y21_N28
\inst7|inst27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst27~0_combout\ = (\inst8|inst|srom|rom_block|auto_generated|q_a\(7) & (!\inst8|inst|srom|rom_block|auto_generated|q_a\(6) & (\inst|inst3~q\ & !\inst8|inst|srom|rom_block|auto_generated|q_a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|srom|rom_block|auto_generated|q_a\(7),
	datab => \inst8|inst|srom|rom_block|auto_generated|q_a\(6),
	datac => \inst|inst3~q\,
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(8),
	combout => \inst7|inst27~0_combout\);

-- Location: LCCOMB_X48_Y21_N16
\inst7|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst10~0_combout\ = (\I[4]~input_o\ & ((\inst7|inst24~0_combout\) # ((\I[2]~input_o\ & \inst7|inst27~0_combout\)))) # (!\I[4]~input_o\ & (\I[2]~input_o\ & ((\inst7|inst27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I[4]~input_o\,
	datab => \I[2]~input_o\,
	datac => \inst7|inst24~0_combout\,
	datad => \inst7|inst27~0_combout\,
	combout => \inst7|inst10~0_combout\);

-- Location: LCCOMB_X48_Y21_N2
\inst7|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst10~combout\ = (\inst7|inst10~0_combout\) # ((\inst|inst3~q\ & (\SWA~input_o\ & \inst5|inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~q\,
	datab => \SWA~input_o\,
	datac => \inst5|inst~0_combout\,
	datad => \inst7|inst10~0_combout\,
	combout => \inst7|inst10~combout\);

-- Location: LCCOMB_X49_Y21_N18
\inst6|inst40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst40~1_combout\ = (!\RST2~input_o\ & ((\inst7|inst10~combout\) # (\inst6|inst40~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst10~combout\,
	datac => \RST2~input_o\,
	datad => \inst6|inst40~1_combout\,
	combout => \inst6|inst40~1_combout\);

-- Location: LCCOMB_X49_Y21_N12
\inst6|inst40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst40~3_combout\ = \inst6|inst40~1_combout\ $ (\inst8|inst|srom|rom_block|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst40~1_combout\,
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(0),
	combout => \inst6|inst40~3_combout\);

-- Location: LCCOMB_X49_Y21_N30
\inst6|inst40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst40~0_combout\ = (\RST2~input_o\) # (\inst7|inst10~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST2~input_o\,
	datad => \inst7|inst10~combout\,
	combout => \inst6|inst40~0_combout\);

-- Location: FF_X49_Y21_N13
\inst6|inst40~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst1~clkctrl_outclk\,
	d => \inst6|inst40~3_combout\,
	clrn => \inst6|ALT_INV_inst40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst40~_emulated_q\);

-- Location: LCCOMB_X48_Y21_N0
\inst6|inst40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst40~2_combout\ = (!\RST2~input_o\ & ((\inst7|inst10~combout\) # (\inst6|inst40~_emulated_q\ $ (\inst6|inst40~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst40~_emulated_q\,
	datab => \inst6|inst40~1_combout\,
	datac => \RST2~input_o\,
	datad => \inst7|inst10~combout\,
	combout => \inst6|inst40~2_combout\);

-- Location: LCCOMB_X55_Y41_N0
\inst2|inst7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst7~combout\ = (!\inst8|inst|srom|rom_block|auto_generated|q_a\(16) & \inst8|inst|srom|rom_block|auto_generated|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst|srom|rom_block|auto_generated|q_a\(16),
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(15),
	combout => \inst2|inst7~combout\);

-- Location: LCCOMB_X46_Y21_N0
\inst5|inst~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst~2_combout\ = (\inst8|inst|srom|rom_block|auto_generated|q_a\(7) & (!\inst8|inst|srom|rom_block|auto_generated|q_a\(8) & !\inst8|inst|srom|rom_block|auto_generated|q_a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|srom|rom_block|auto_generated|q_a\(7),
	datab => \inst8|inst|srom|rom_block|auto_generated|q_a\(8),
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(6),
	combout => \inst5|inst~2_combout\);

-- Location: LCCOMB_X48_Y21_N12
\inst5|inst~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst~3_combout\ = (!\inst8|inst|srom|rom_block|auto_generated|q_a\(7) & (!\inst8|inst|srom|rom_block|auto_generated|q_a\(8) & \inst8|inst|srom|rom_block|auto_generated|q_a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|srom|rom_block|auto_generated|q_a\(7),
	datab => \inst8|inst|srom|rom_block|auto_generated|q_a\(8),
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(6),
	combout => \inst5|inst~3_combout\);

-- Location: LCCOMB_X55_Y41_N6
\inst2|inst8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst8~combout\ = (\inst8|inst|srom|rom_block|auto_generated|q_a\(16)) # (\inst8|inst|srom|rom_block|auto_generated|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst|srom|rom_block|auto_generated|q_a\(16),
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(15),
	combout => \inst2|inst8~combout\);

-- Location: LCCOMB_X64_Y6_N8
\inst3|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst~0_combout\ = (!\inst8|inst|srom|rom_block|auto_generated|q_a\(13) & (\inst8|inst|srom|rom_block|auto_generated|q_a\(12) & !\inst8|inst|srom|rom_block|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|srom|rom_block|auto_generated|q_a\(13),
	datac => \inst8|inst|srom|rom_block|auto_generated|q_a\(12),
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(14),
	combout => \inst3|inst~0_combout\);

-- Location: LCCOMB_X64_Y6_N26
\inst3|inst~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst~1_combout\ = (\inst8|inst|srom|rom_block|auto_generated|q_a\(13) & (!\inst8|inst|srom|rom_block|auto_generated|q_a\(12) & !\inst8|inst|srom|rom_block|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|srom|rom_block|auto_generated|q_a\(13),
	datac => \inst8|inst|srom|rom_block|auto_generated|q_a\(12),
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(14),
	combout => \inst3|inst~1_combout\);

-- Location: LCCOMB_X64_Y6_N12
\inst3|inst~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst~2_combout\ = (\inst8|inst|srom|rom_block|auto_generated|q_a\(13) & (\inst8|inst|srom|rom_block|auto_generated|q_a\(12) & !\inst8|inst|srom|rom_block|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|srom|rom_block|auto_generated|q_a\(13),
	datac => \inst8|inst|srom|rom_block|auto_generated|q_a\(12),
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(14),
	combout => \inst3|inst~2_combout\);

-- Location: LCCOMB_X64_Y6_N14
\inst3|inst~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst~3_combout\ = (!\inst8|inst|srom|rom_block|auto_generated|q_a\(13) & (!\inst8|inst|srom|rom_block|auto_generated|q_a\(12) & \inst8|inst|srom|rom_block|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|srom|rom_block|auto_generated|q_a\(13),
	datac => \inst8|inst|srom|rom_block|auto_generated|q_a\(12),
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(14),
	combout => \inst3|inst~3_combout\);

-- Location: LCCOMB_X64_Y6_N4
\inst3|inst~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst~4_combout\ = (!\inst8|inst|srom|rom_block|auto_generated|q_a\(13) & (\inst8|inst|srom|rom_block|auto_generated|q_a\(12) & \inst8|inst|srom|rom_block|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|srom|rom_block|auto_generated|q_a\(13),
	datac => \inst8|inst|srom|rom_block|auto_generated|q_a\(12),
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(14),
	combout => \inst3|inst~4_combout\);

-- Location: LCCOMB_X64_Y6_N10
\inst3|inst~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst~5_combout\ = (\inst8|inst|srom|rom_block|auto_generated|q_a\(13) & (!\inst8|inst|srom|rom_block|auto_generated|q_a\(12) & \inst8|inst|srom|rom_block|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|srom|rom_block|auto_generated|q_a\(13),
	datac => \inst8|inst|srom|rom_block|auto_generated|q_a\(12),
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(14),
	combout => \inst3|inst~5_combout\);

-- Location: LCCOMB_X44_Y1_N4
\inst5|inst~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst~4_combout\ = (\inst8|inst|srom|rom_block|auto_generated|q_a\(8) & (!\inst8|inst|srom|rom_block|auto_generated|q_a\(6) & \inst8|inst|srom|rom_block|auto_generated|q_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|srom|rom_block|auto_generated|q_a\(8),
	datab => \inst8|inst|srom|rom_block|auto_generated|q_a\(6),
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(7),
	combout => \inst5|inst~4_combout\);

-- Location: LCCOMB_X55_Y41_N16
\inst2|inst6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6~combout\ = (\inst8|inst|srom|rom_block|auto_generated|q_a\(16) & !\inst8|inst|srom|rom_block|auto_generated|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst|srom|rom_block|auto_generated|q_a\(16),
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(15),
	combout => \inst2|inst6~combout\);

-- Location: LCCOMB_X76_Y28_N12
\inst4|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst~0_combout\ = (!\inst8|inst|srom|rom_block|auto_generated|q_a\(10) & (!\inst8|inst|srom|rom_block|auto_generated|q_a\(11) & \inst8|inst|srom|rom_block|auto_generated|q_a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst|srom|rom_block|auto_generated|q_a\(10),
	datac => \inst8|inst|srom|rom_block|auto_generated|q_a\(11),
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(9),
	combout => \inst4|inst~0_combout\);

-- Location: LCCOMB_X76_Y28_N2
\inst4|inst~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst~1_combout\ = (\inst8|inst|srom|rom_block|auto_generated|q_a\(10) & (!\inst8|inst|srom|rom_block|auto_generated|q_a\(11) & !\inst8|inst|srom|rom_block|auto_generated|q_a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst|srom|rom_block|auto_generated|q_a\(10),
	datac => \inst8|inst|srom|rom_block|auto_generated|q_a\(11),
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(9),
	combout => \inst4|inst~1_combout\);

-- Location: LCCOMB_X76_Y28_N16
\inst4|inst~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst~2_combout\ = (\inst8|inst|srom|rom_block|auto_generated|q_a\(10) & (!\inst8|inst|srom|rom_block|auto_generated|q_a\(11) & \inst8|inst|srom|rom_block|auto_generated|q_a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst|srom|rom_block|auto_generated|q_a\(10),
	datac => \inst8|inst|srom|rom_block|auto_generated|q_a\(11),
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(9),
	combout => \inst4|inst~2_combout\);

-- Location: LCCOMB_X76_Y28_N22
\inst4|inst~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst~3_combout\ = (!\inst8|inst|srom|rom_block|auto_generated|q_a\(10) & (\inst8|inst|srom|rom_block|auto_generated|q_a\(11) & \inst8|inst|srom|rom_block|auto_generated|q_a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst|srom|rom_block|auto_generated|q_a\(10),
	datac => \inst8|inst|srom|rom_block|auto_generated|q_a\(11),
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(9),
	combout => \inst4|inst~3_combout\);

-- Location: LCCOMB_X76_Y28_N8
\inst4|inst~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst~4_combout\ = (\inst8|inst|srom|rom_block|auto_generated|q_a\(10) & (\inst8|inst|srom|rom_block|auto_generated|q_a\(11) & !\inst8|inst|srom|rom_block|auto_generated|q_a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst|srom|rom_block|auto_generated|q_a\(10),
	datac => \inst8|inst|srom|rom_block|auto_generated|q_a\(11),
	datad => \inst8|inst|srom|rom_block|auto_generated|q_a\(9),
	combout => \inst4|inst~4_combout\);

ww_RAM_B <= \RAM_B~output_o\;

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

ww_P(4) <= \P[4]~output_o\;

ww_P(3) <= \P[3]~output_o\;

ww_P(2) <= \P[2]~output_o\;

ww_P(1) <= \P[1]~output_o\;

ww_SW_B <= \SW_B~output_o\;

ww_LDR1 <= \LDR1~output_o\;

ww_LDDR1 <= \LDDR1~output_o\;

ww_LDDR2 <= \LDDR2~output_o\;

ww_LDIR <= \LDIR~output_o\;

ww_LOAD <= \LOAD~output_o\;

ww_LDAR <= \LDAR~output_o\;

ww_LDPC <= \LDPC~output_o\;

ww_LED_B <= \LED_B~output_o\;

ww_R0_B <= \R0_B~output_o\;

ww_R1_B <= \R1_B~output_o\;

ww_R2_B <= \R2_B~output_o\;

ww_ALU_B <= \ALU_B~output_o\;

ww_PC_B <= \PC_B~output_o\;
END structure;


