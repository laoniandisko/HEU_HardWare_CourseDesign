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
-- CREATED		"Mon Dec 05 11:42:35 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ALU IS 
	PORT
	(
		M :  IN  STD_LOGIC;
		CN :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		S :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		CN4 :  OUT  STD_LOGIC;
		AEQB :  OUT  STD_LOGIC;
		F :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END ALU;

ARCHITECTURE bdf_type OF ALU IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT \74181_0\
	PORT(B0N : IN STD_LOGIC;
		 A0N : IN STD_LOGIC;
		 A1N : IN STD_LOGIC;
		 B1N : IN STD_LOGIC;
		 A3N : IN STD_LOGIC;
		 B2N : IN STD_LOGIC;
		 A2N : IN STD_LOGIC;
		 M : IN STD_LOGIC;
		 CN : IN STD_LOGIC;
		 B3N : IN STD_LOGIC;
		 S2 : IN STD_LOGIC;
		 S1 : IN STD_LOGIC;
		 S0 : IN STD_LOGIC;
		 S3 : IN STD_LOGIC;
		 F3N : OUT STD_LOGIC;
		 F1N : OUT STD_LOGIC;
		 F0N : OUT STD_LOGIC;
		 AEQB : OUT STD_LOGIC;
		 CN4 : OUT STD_LOGIC;
		 F2N : OUT STD_LOGIC);
END COMPONENT;
ATTRIBUTE black_box OF \74181_0\: COMPONENT IS true;
ATTRIBUTE noopt OF \74181_0\: COMPONENT IS true;

COMPONENT \74181_1\
	PORT(B0N : IN STD_LOGIC;
		 A0N : IN STD_LOGIC;
		 A1N : IN STD_LOGIC;
		 B1N : IN STD_LOGIC;
		 A3N : IN STD_LOGIC;
		 B2N : IN STD_LOGIC;
		 A2N : IN STD_LOGIC;
		 M : IN STD_LOGIC;
		 CN : IN STD_LOGIC;
		 B3N : IN STD_LOGIC;
		 S2 : IN STD_LOGIC;
		 S1 : IN STD_LOGIC;
		 S0 : IN STD_LOGIC;
		 S3 : IN STD_LOGIC;
		 F3N : OUT STD_LOGIC;
		 F1N : OUT STD_LOGIC;
		 F0N : OUT STD_LOGIC;
		 AEQB : OUT STD_LOGIC;
		 CN4 : OUT STD_LOGIC;
		 F2N : OUT STD_LOGIC);
END COMPONENT;
ATTRIBUTE black_box OF \74181_1\: COMPONENT IS true;
ATTRIBUTE noopt OF \74181_1\: COMPONENT IS true;

SIGNAL	EQ0 :  STD_LOGIC;
SIGNAL	EQ1 :  STD_LOGIC;
SIGNAL	F_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;


BEGIN 



b2v_inst : 74181_0
PORT MAP(B0N => B(4),
		 A0N => A(4),
		 A1N => A(5),
		 B1N => B(5),
		 A3N => A(7),
		 B2N => B(6),
		 A2N => A(6),
		 M => M,
		 CN => SYNTHESIZED_WIRE_0,
		 B3N => B(7),
		 S2 => S(2),
		 S1 => S(1),
		 S0 => S(0),
		 S3 => S(3),
		 F3N => F_ALTERA_SYNTHESIZED(7),
		 F1N => F_ALTERA_SYNTHESIZED(5),
		 F0N => F_ALTERA_SYNTHESIZED(4),
		 AEQB => EQ1,
		 CN4 => CN4,
		 F2N => F_ALTERA_SYNTHESIZED(6));


b2v_inst1 : 74181_1
PORT MAP(B0N => B(0),
		 A0N => A(0),
		 A1N => A(1),
		 B1N => B(1),
		 A3N => A(3),
		 B2N => B(2),
		 A2N => A(2),
		 M => M,
		 CN => CN,
		 B3N => B(3),
		 S2 => S(2),
		 S1 => S(1),
		 S0 => S(0),
		 S3 => S(3),
		 F3N => F_ALTERA_SYNTHESIZED(3),
		 F1N => F_ALTERA_SYNTHESIZED(1),
		 F0N => F_ALTERA_SYNTHESIZED(0),
		 AEQB => EQ0,
		 CN4 => SYNTHESIZED_WIRE_0,
		 F2N => F_ALTERA_SYNTHESIZED(2));


AEQB <= EQ1 OR EQ0;

F <= F_ALTERA_SYNTHESIZED;

END bdf_type;