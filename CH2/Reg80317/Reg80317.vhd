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
-- CREATED		"Sun Dec 04 17:35:02 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Reg80317 IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		D :  IN  STD_LOGIC_VECTOR(8 DOWNTO 1);
		Q :  OUT  STD_LOGIC_VECTOR(8 DOWNTO 1)
	);
END Reg80317;

ARCHITECTURE bdf_type OF Reg80317 IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT \74273_0\
	PORT(CLK : IN STD_LOGIC;
		 D : IN STD_LOGIC_VECTOR(8 DOWNTO 1);
		 Q : OUT STD_LOGIC_VECTOR(8 DOWNTO 1));
END COMPONENT;
ATTRIBUTE black_box OF \74273_0\: COMPONENT IS true;
ATTRIBUTE noopt OF \74273_0\: COMPONENT IS true;



BEGIN 



b2v_inst : 74273_0
PORT MAP(CLK => clock,
		 D => D,
		 Q => Q);


END bdf_type;