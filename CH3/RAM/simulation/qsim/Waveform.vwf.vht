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
-- Generated on "12/05/2022 13:18:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RAM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RAM_vhd_vec_tst IS
END RAM_vhd_vec_tst;
ARCHITECTURE RAM_arch OF RAM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL q : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL we : STD_LOGIC;
COMPONENT RAM
	PORT (
	address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	clock : IN STD_LOGIC;
	data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	we : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : RAM
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	clock => clock,
	data => data,
	q => q,
	we => we
	);
-- address[7]
t_prcs_address_7: PROCESS
BEGIN
	address(7) <= '0';
WAIT;
END PROCESS t_prcs_address_7;
-- address[6]
t_prcs_address_6: PROCESS
BEGIN
	address(6) <= '0';
WAIT;
END PROCESS t_prcs_address_6;
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
WAIT;
END PROCESS t_prcs_address_4;
-- address[3]
t_prcs_address_3: PROCESS
BEGIN
	address(3) <= '0';
	WAIT FOR 120000 ps;
	address(3) <= '1';
	WAIT FOR 40000 ps;
	address(3) <= '0';
	WAIT FOR 80000 ps;
	address(3) <= '1';
	WAIT FOR 40000 ps;
	address(3) <= '0';
	WAIT FOR 80000 ps;
	address(3) <= '1';
	WAIT FOR 40000 ps;
	address(3) <= '0';
	WAIT FOR 170000 ps;
	address(3) <= '1';
WAIT;
END PROCESS t_prcs_address_3;
-- address[2]
t_prcs_address_2: PROCESS
BEGIN
	address(2) <= '0';
	WAIT FOR 200000 ps;
	address(2) <= '1';
	WAIT FOR 40000 ps;
	address(2) <= '0';
	WAIT FOR 40000 ps;
	address(2) <= '1';
	WAIT FOR 80000 ps;
	address(2) <= '0';
WAIT;
END PROCESS t_prcs_address_2;
-- address[1]
t_prcs_address_1: PROCESS
BEGIN
	address(1) <= '0';
	WAIT FOR 80000 ps;
	address(1) <= '1';
	WAIT FOR 120000 ps;
	address(1) <= '0';
	WAIT FOR 40000 ps;
	address(1) <= '1';
	WAIT FOR 40000 ps;
	address(1) <= '0';
	WAIT FOR 40000 ps;
	address(1) <= '1';
	WAIT FOR 80000 ps;
	address(1) <= '0';
	WAIT FOR 170000 ps;
	address(1) <= '1';
WAIT;
END PROCESS t_prcs_address_1;
-- address[0]
t_prcs_address_0: PROCESS
BEGIN
	address(0) <= '0';
	WAIT FOR 40000 ps;
	address(0) <= '1';
	WAIT FOR 40000 ps;
	address(0) <= '0';
	WAIT FOR 80000 ps;
	address(0) <= '1';
	WAIT FOR 40000 ps;
	address(0) <= '0';
	WAIT FOR 40000 ps;
	address(0) <= '1';
	WAIT FOR 80000 ps;
	address(0) <= '0';
	WAIT FOR 40000 ps;
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
	WAIT FOR 20000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- we
t_prcs_we: PROCESS
BEGIN
	we <= '1';
	WAIT FOR 500000 ps;
	we <= '0';
WAIT;
END PROCESS t_prcs_we;
-- data[7]
t_prcs_data_7: PROCESS
BEGIN
	data(7) <= '0';
WAIT;
END PROCESS t_prcs_data_7;
-- data[6]
t_prcs_data_6: PROCESS
BEGIN
	data(6) <= '0';
WAIT;
END PROCESS t_prcs_data_6;
-- data[5]
t_prcs_data_5: PROCESS
BEGIN
	data(5) <= '0';
	WAIT FOR 120000 ps;
	data(5) <= '1';
	WAIT FOR 80000 ps;
	data(5) <= '0';
	WAIT FOR 80000 ps;
	data(5) <= '1';
	WAIT FOR 40000 ps;
	data(5) <= '0';
WAIT;
END PROCESS t_prcs_data_5;
-- data[4]
t_prcs_data_4: PROCESS
BEGIN
	data(4) <= '0';
	WAIT FOR 40000 ps;
	data(4) <= '1';
	WAIT FOR 40000 ps;
	data(4) <= '0';
	WAIT FOR 40000 ps;
	data(4) <= '1';
	WAIT FOR 40000 ps;
	data(4) <= '0';
	WAIT FOR 120000 ps;
	data(4) <= '1';
	WAIT FOR 40000 ps;
	data(4) <= '0';
WAIT;
END PROCESS t_prcs_data_4;
-- data[3]
t_prcs_data_3: PROCESS
BEGIN
	data(3) <= '0';
	WAIT FOR 80000 ps;
	data(3) <= '1';
	WAIT FOR 40000 ps;
	data(3) <= '0';
	WAIT FOR 80000 ps;
	data(3) <= '1';
	WAIT FOR 40000 ps;
	data(3) <= '0';
	WAIT FOR 80000 ps;
	data(3) <= '1';
	WAIT FOR 40000 ps;
	data(3) <= '0';
WAIT;
END PROCESS t_prcs_data_3;
-- data[2]
t_prcs_data_2: PROCESS
BEGIN
	data(2) <= '0';
	WAIT FOR 120000 ps;
	data(2) <= '1';
	WAIT FOR 40000 ps;
	data(2) <= '0';
WAIT;
END PROCESS t_prcs_data_2;
-- data[1]
t_prcs_data_1: PROCESS
BEGIN
	data(1) <= '0';
	WAIT FOR 80000 ps;
	data(1) <= '1';
	WAIT FOR 40000 ps;
	data(1) <= '0';
	WAIT FOR 80000 ps;
	data(1) <= '1';
	WAIT FOR 40000 ps;
	data(1) <= '0';
	WAIT FOR 80000 ps;
	data(1) <= '1';
	WAIT FOR 40000 ps;
	data(1) <= '0';
WAIT;
END PROCESS t_prcs_data_1;
-- data[0]
t_prcs_data_0: PROCESS
BEGIN
	data(0) <= '0';
	WAIT FOR 200000 ps;
	data(0) <= '1';
	WAIT FOR 40000 ps;
	data(0) <= '0';
	WAIT FOR 80000 ps;
	data(0) <= '1';
	WAIT FOR 40000 ps;
	data(0) <= '0';
WAIT;
END PROCESS t_prcs_data_0;
END RAM_arch;
