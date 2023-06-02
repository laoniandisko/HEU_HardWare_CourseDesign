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
-- CREATED		"Sun Dec 04 15:59:45 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY \24\ IS 
	PORT
	(
		B :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC;
		F :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END \24\;

ARCHITECTURE bdf_type OF \24\ IS 

SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;


BEGIN 



F(3) <= B AND A;


F(2) <= B AND SYNTHESIZED_WIRE_4;


F(1) <= SYNTHESIZED_WIRE_5 AND A;


F(0) <= SYNTHESIZED_WIRE_5 AND SYNTHESIZED_WIRE_4;


SYNTHESIZED_WIRE_4 <= NOT(A);



SYNTHESIZED_WIRE_5 <= NOT(B);



END bdf_type;