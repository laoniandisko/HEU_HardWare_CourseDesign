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
-- CREATED		"Mon Dec 05 12:27:19 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY BUS IS 
	PORT
	(
		clk1 :  IN  STD_LOGIC;
		clk2 :  IN  STD_LOGIC;
		clk3 :  IN  STD_LOGIC;
		we :  IN  STD_LOGIC;
		clk4 :  IN  STD_LOGIC;
		d0 :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		sel :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		bus :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		led :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END BUS;

ARCHITECTURE bdf_type OF BUS IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT lpm_ram_dq_0
	PORT(inclock : IN STD_LOGIC;
		 we : IN STD_LOGIC;
		 address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_ram_dq_0: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_ram_dq_0: COMPONENT IS true;

COMPONENT lpmmux
	PORT(data0x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data2x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data3x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT \273\
	PORT(CLK : IN STD_LOGIC;
		 D : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 Q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 
bus <= SYNTHESIZED_WIRE_9;



b2v_inst1 : lpm_ram_dq_0
PORT MAP(inclock => clk3,
		 we => we,
		 address => SYNTHESIZED_WIRE_8,
		 data => SYNTHESIZED_WIRE_9,
		 q => SYNTHESIZED_WIRE_3);


b2v_inst2 : lpmmux
PORT MAP(data0x => d0,
		 data1x => SYNTHESIZED_WIRE_2,
		 data2x => SYNTHESIZED_WIRE_3,
		 data3x => SYNTHESIZED_WIRE_8,
		 sel => sel,
		 result => SYNTHESIZED_WIRE_9);


b2v_inst3 : \273\
PORT MAP(CLK => clk1,
		 D => SYNTHESIZED_WIRE_9,
		 Q => SYNTHESIZED_WIRE_2);


b2v_inst4 : \273\
PORT MAP(CLK => clk2,
		 D => SYNTHESIZED_WIRE_9,
		 Q => SYNTHESIZED_WIRE_8);


b2v_inst5 : \273\
PORT MAP(CLK => clk4,
		 D => SYNTHESIZED_WIRE_9,
		 Q => led);


END bdf_type;