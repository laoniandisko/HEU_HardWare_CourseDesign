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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/06/2022 22:05:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          computer1119
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY computer1119_vhd_vec_tst IS
END computer1119_vhd_vec_tst;
ARCHITECTURE computer1119_arch OF computer1119_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bus : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CLK1 : STD_LOGIC;
SIGNAL d0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL I : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL LDAR : STD_LOGIC;
SIGNAL LDPC : STD_LOGIC;
SIGNAL led : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL LED_B : STD_LOGIC;
SIGNAL LOAD : STD_LOGIC;
SIGNAL M : STD_LOGIC_VECTOR(24 DOWNTO 1);
SIGNAL PC_B : STD_LOGIC;
SIGNAL RAM_B : STD_LOGIC;
SIGNAL RST1 : STD_LOGIC;
SIGNAL SEL : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL STEP : STD_LOGIC;
SIGNAL SW_B : STD_LOGIC;
SIGNAL SWA : STD_LOGIC;
SIGNAL SWB : STD_LOGIC;
SIGNAL T1 : STD_LOGIC;
SIGNAL T2 : STD_LOGIC;
SIGNAL T3 : STD_LOGIC;
SIGNAL T4 : STD_LOGIC;
SIGNAL uaddr : STD_LOGIC_VECTOR(6 DOWNTO 1);
COMPONENT computer1119
	PORT (
	\bus\ : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	CLK1 : IN STD_LOGIC;
	d0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	I : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	\in\ : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	LDAR : OUT STD_LOGIC;
	LDPC : OUT STD_LOGIC;
	led : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	LED_B : OUT STD_LOGIC;
	LOAD : OUT STD_LOGIC;
	M : OUT STD_LOGIC_VECTOR(24 DOWNTO 1);
	PC_B : OUT STD_LOGIC;
	RAM_B : OUT STD_LOGIC;
	RST1 : IN STD_LOGIC;
	SEL : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	STEP : IN STD_LOGIC;
	SW_B : OUT STD_LOGIC;
	SWA : IN STD_LOGIC;
	SWB : IN STD_LOGIC;
	T1 : OUT STD_LOGIC;
	T2 : OUT STD_LOGIC;
	T3 : OUT STD_LOGIC;
	T4 : OUT STD_LOGIC;
	uaddr : OUT STD_LOGIC_VECTOR(6 DOWNTO 1)
	);
END COMPONENT;
BEGIN
	i1 : computer1119
	PORT MAP (
-- list connections between master ports and signals
	\bus\ => bus,
	CLK1 => CLK1,
	d0 => d0,
	I => I,
	\in\ => in,
	LDAR => LDAR,
	LDPC => LDPC,
	led => led,
	LED_B => LED_B,
	LOAD => LOAD,
	M => M,
	PC_B => PC_B,
	RAM_B => RAM_B,
	RST1 => RST1,
	SEL => SEL,
	STEP => STEP,
	SW_B => SW_B,
	SWA => SWA,
	SWB => SWB,
	T1 => T1,
	T2 => T2,
	T3 => T3,
	T4 => T4,
	uaddr => uaddr
	);

-- STEP
t_prcs_STEP: PROCESS
BEGIN
	STEP <= '0';
	WAIT FOR 20000 ps;
	STEP <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 124
	LOOP
		STEP <= '0';
		WAIT FOR 40000 ps;
		STEP <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	STEP <= '0';
WAIT;
END PROCESS t_prcs_STEP;

-- CLK1
t_prcs_CLK1: PROCESS
BEGIN
	CLK1 <= '1';
	WAIT FOR 5000 ps;
	FOR i IN 1 TO 999
	LOOP
		CLK1 <= '0';
		WAIT FOR 5000 ps;
		CLK1 <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	CLK1 <= '0';
WAIT;
END PROCESS t_prcs_CLK1;

-- RST1
t_prcs_RST1: PROCESS
BEGIN
	RST1 <= '1';
	WAIT FOR 20000 ps;
	RST1 <= '0';
	WAIT FOR 2650000 ps;
	RST1 <= '1';
	WAIT FOR 20000 ps;
	RST1 <= '0';
	WAIT FOR 2960000 ps;
	RST1 <= '1';
	WAIT FOR 20000 ps;
	RST1 <= '0';
WAIT;
END PROCESS t_prcs_RST1;

-- SWB
t_prcs_SWB: PROCESS
BEGIN
	SWB <= '0';
	WAIT FOR 5650000 ps;
	SWB <= '1';
WAIT;
END PROCESS t_prcs_SWB;

-- SWA
t_prcs_SWA: PROCESS
BEGIN
	SWA <= '1';
	WAIT FOR 2670000 ps;
	SWA <= '0';
	WAIT FOR 2980000 ps;
	SWA <= '1';
WAIT;
END PROCESS t_prcs_SWA;

-- d0[7]
t_prcs_d0_7: PROCESS
BEGIN
	d0(7) <= '0';
WAIT;
END PROCESS t_prcs_d0_7;

-- d0[6]
t_prcs_d0_6: PROCESS
BEGIN
	d0(6) <= '0';
	WAIT FOR 1710000 ps;
	d0(6) <= '1';
	WAIT FOR 240000 ps;
	d0(6) <= '0';
WAIT;
END PROCESS t_prcs_d0_6;

-- d0[5]
t_prcs_d0_5: PROCESS
BEGIN
	d0(5) <= '0';
	WAIT FOR 750000 ps;
	d0(5) <= '1';
	WAIT FOR 240000 ps;
	d0(5) <= '0';
	WAIT FOR 240000 ps;
	d0(5) <= '1';
	WAIT FOR 240000 ps;
	d0(5) <= '0';
WAIT;
END PROCESS t_prcs_d0_5;

-- d0[4]
t_prcs_d0_4: PROCESS
BEGIN
	d0(4) <= '0';
	WAIT FOR 270000 ps;
	d0(4) <= '1';
	WAIT FOR 240000 ps;
	d0(4) <= '0';
	WAIT FOR 720000 ps;
	d0(4) <= '1';
	WAIT FOR 240000 ps;
	d0(4) <= '0';
	WAIT FOR 960000 ps;
	d0(4) <= '1';
	WAIT FOR 240000 ps;
	d0(4) <= '0';
	WAIT FOR 2980000 ps;
	d0(4) <= '1';
	WAIT FOR 550000 ps;
	d0(4) <= '0';
WAIT;
END PROCESS t_prcs_d0_4;

-- d0[3]
t_prcs_d0_3: PROCESS
BEGIN
	d0(3) <= '0';
	WAIT FOR 510000 ps;
	d0(3) <= '1';
	WAIT FOR 240000 ps;
	d0(3) <= '0';
	WAIT FOR 240000 ps;
	d0(3) <= '1';
	WAIT FOR 240000 ps;
	d0(3) <= '0';
	WAIT FOR 240000 ps;
	d0(3) <= '1';
	WAIT FOR 240000 ps;
	d0(3) <= '0';
	WAIT FOR 3940000 ps;
	d0(3) <= '1';
	WAIT FOR 550000 ps;
	d0(3) <= '0';
WAIT;
END PROCESS t_prcs_d0_3;

-- d0[2]
t_prcs_d0_2: PROCESS
BEGIN
	d0(2) <= '0';
WAIT;
END PROCESS t_prcs_d0_2;

-- d0[1]
t_prcs_d0_1: PROCESS
BEGIN
	d0(1) <= '0';
	WAIT FOR 510000 ps;
	d0(1) <= '1';
	WAIT FOR 240000 ps;
	d0(1) <= '0';
	WAIT FOR 240000 ps;
	d0(1) <= '1';
	WAIT FOR 240000 ps;
	d0(1) <= '0';
	WAIT FOR 240000 ps;
	d0(1) <= '1';
	WAIT FOR 240000 ps;
	d0(1) <= '0';
WAIT;
END PROCESS t_prcs_d0_1;

-- d0[0]
t_prcs_d0_0: PROCESS
BEGIN
	d0(0) <= '0';
	WAIT FOR 990000 ps;
	d0(0) <= '1';
	WAIT FOR 240000 ps;
	d0(0) <= '0';
	WAIT FOR 240000 ps;
	d0(0) <= '1';
	WAIT FOR 240000 ps;
	d0(0) <= '0';
	WAIT FOR 240000 ps;
	d0(0) <= '1';
	WAIT FOR 240000 ps;
	d0(0) <= '0';
	WAIT FOR 240000 ps;
	d0(0) <= '1';
	WAIT FOR 240000 ps;
	d0(0) <= '0';
	WAIT FOR 2980000 ps;
	d0(0) <= '1';
	WAIT FOR 550000 ps;
	d0(0) <= '0';
WAIT;
END PROCESS t_prcs_d0_0;
END computer1119_arch;
