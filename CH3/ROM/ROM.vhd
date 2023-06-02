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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"
-- CREATED		"Mon Dec 05 12:01:20 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ROM IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		address :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		q :  OUT  STD_LOGIC_VECTOR(23 DOWNTO 0)
	);
END ROM;

ARCHITECTURE bdf_type OF ROM IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT lpm_rom_0
	PORT(inclock : IN STD_LOGIC;
		 address : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(23 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_rom_0: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_rom_0: COMPONENT IS true;



BEGIN 



b2v_inst : lpm_rom_0
PORT MAP(inclock => clock,
		 address => address,
		 q => q);


END bdf_type;