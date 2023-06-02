--Copyright (C) 2017  Intel Corporation. All rights reserved.
--Your use of Intel Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Intel Program License 
--Subscription Agreement, the Intel Quartus Prime License Agreement,
--the Intel FPGA IP License Agreement, or other applicable license
--agreement, including, without limitation, that your use is for
--the sole purpose of programming logic devices manufactured by
--Intel and sold by Intel or its authorized distributors.  Please
--refer to the applicable agreement for further details.


FUNCTION lpm_mux0 
(
	aclr,
	clken,
	clock,
	data0x[7..0],
	data1x[7..0],
	data2x[7..0],
	data3x[7..0],
	data4x[7..0],
	data5x[7..0],
	data6x[7..0],
	data7x[7..0],
	sel[2..0]
)

RETURNS (
	result[7..0]
);
