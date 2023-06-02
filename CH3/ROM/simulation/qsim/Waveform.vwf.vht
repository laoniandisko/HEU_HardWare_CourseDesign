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
-- Generated on "11/21/2022 17:03:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ROM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ROM_vhd_vec_tst IS
END ROM_vhd_vec_tst;
ARCHITECTURE ROM_arch OF ROM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL q : STD_LOGIC_VECTOR(23 DOWNTO 0);
COMPONENT ROM
	PORT (
	address : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	clock : IN STD_LOGIC;
	q : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ROM
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	clock => clock,
	q => q
	);
-- address[5]
t_prcs_address_5: PROCESS
BEGIN
	address(5) <= '0';
WAIT;
END PROCESS t_prcs_address_5;
-- address[4]
t_prcs_address_4: PROCESS
BEGIN
	address(4) <= '0';
	WAIT FOR 160000 ps;
	address(4) <= '1';
	WAIT FOR 20000 ps;
	address(4) <= '0';
	WAIT FOR 40000 ps;
	address(4) <= '1';
	WAIT FOR 20000 ps;
	address(4) <= '0';
WAIT;
END PROCESS t_prcs_address_4;
-- address[3]
t_prcs_address_3: PROCESS
BEGIN
	address(3) <= '0';
	WAIT FOR 180000 ps;
	address(3) <= '1';
	WAIT FOR 20000 ps;
	address(3) <= '0';
WAIT;
END PROCESS t_prcs_address_3;
-- address[2]
t_prcs_address_2: PROCESS
BEGIN
	address(2) <= '0';
	WAIT FOR 60000 ps;
	address(2) <= '1';
	WAIT FOR 100000 ps;
	address(2) <= '0';
	WAIT FOR 20000 ps;
	address(2) <= '1';
	WAIT FOR 20000 ps;
	address(2) <= '0';
WAIT;
END PROCESS t_prcs_address_2;
-- address[1]
t_prcs_address_1: PROCESS
BEGIN
	address(1) <= '0';
	WAIT FOR 20000 ps;
	address(1) <= '1';
	WAIT FOR 40000 ps;
	address(1) <= '0';
	WAIT FOR 40000 ps;
	address(1) <= '1';
	WAIT FOR 40000 ps;
	address(1) <= '0';
	WAIT FOR 40000 ps;
	address(1) <= '1';
	WAIT FOR 20000 ps;
	address(1) <= '0';
	WAIT FOR 20000 ps;
	address(1) <= '1';
	WAIT FOR 20000 ps;
	address(1) <= '0';
WAIT;
END PROCESS t_prcs_address_1;
-- address[0]
t_prcs_address_0: PROCESS
BEGIN
	address(0) <= '1';
	WAIT FOR 20000 ps;
	address(0) <= '0';
	WAIT FOR 20000 ps;
	address(0) <= '1';
	WAIT FOR 20000 ps;
	address(0) <= '0';
	WAIT FOR 20000 ps;
	address(0) <= '1';
	WAIT FOR 20000 ps;
	address(0) <= '0';
	WAIT FOR 80000 ps;
	address(0) <= '1';
	WAIT FOR 40000 ps;
	address(0) <= '0';
WAIT;
END PROCESS t_prcs_address_0;

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 500 ps;
	clock <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
END ROM_arch;
