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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "12/05/2022 12:50:31"

-- 
-- Device: Altera EP4CE55F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	CN4 : OUT std_logic;
	B : IN std_logic_vector(7 DOWNTO 0);
	A : IN std_logic_vector(7 DOWNTO 0);
	M : IN std_logic;
	CN : IN std_logic;
	S : IN std_logic_vector(3 DOWNTO 0);
	AEQB : OUT std_logic;
	F : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- CN4	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AEQB	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[7]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CN	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CN4 : std_logic;
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_M : std_logic;
SIGNAL ww_CN : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_AEQB : std_logic;
SIGNAL ww_F : std_logic_vector(7 DOWNTO 0);
SIGNAL \CN4~output_o\ : std_logic;
SIGNAL \AEQB~output_o\ : std_logic;
SIGNAL \F[7]~output_o\ : std_logic;
SIGNAL \F[6]~output_o\ : std_logic;
SIGNAL \F[5]~output_o\ : std_logic;
SIGNAL \F[4]~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \S[3]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \S[2]~input_o\ : std_logic;
SIGNAL \inst|52~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \inst|45~0_combout\ : std_logic;
SIGNAL \inst|51~0_combout\ : std_logic;
SIGNAL \inst|78~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \inst|47~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \inst|46~0_combout\ : std_logic;
SIGNAL \inst|44~0_combout\ : std_logic;
SIGNAL \inst|43~0_combout\ : std_logic;
SIGNAL \inst|78~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \inst1|51~0_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \inst1|46~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \inst1|47~0_combout\ : std_logic;
SIGNAL \inst1|43~0_combout\ : std_logic;
SIGNAL \CN~input_o\ : std_logic;
SIGNAL \inst1|78~0_combout\ : std_logic;
SIGNAL \inst1|44~0_combout\ : std_logic;
SIGNAL \inst1|52~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \inst1|48~0_combout\ : std_logic;
SIGNAL \inst1|78~1_combout\ : std_logic;
SIGNAL \inst1|45~0_combout\ : std_logic;
SIGNAL \inst1|78~2_combout\ : std_logic;
SIGNAL \inst|78~2_combout\ : std_logic;
SIGNAL \inst|48~0_combout\ : std_logic;
SIGNAL \inst|78~3_combout\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \inst|77~0_combout\ : std_logic;
SIGNAL \inst|77~1_combout\ : std_logic;
SIGNAL \inst|82~0_combout\ : std_logic;
SIGNAL \inst|79~combout\ : std_logic;
SIGNAL \inst|83~0_combout\ : std_logic;
SIGNAL \inst|80~combout\ : std_logic;
SIGNAL \inst1|78~3_combout\ : std_logic;
SIGNAL \inst1|82~0_combout\ : std_logic;
SIGNAL \inst1|79~combout\ : std_logic;
SIGNAL \inst1|81~combout\ : std_logic;
SIGNAL \inst1|77~0_combout\ : std_logic;
SIGNAL \inst1|77~1_combout\ : std_logic;
SIGNAL \inst1|80~0_combout\ : std_logic;
SIGNAL \inst1|83~0_combout\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \inst|81~combout\ : std_logic;
SIGNAL \inst|ALT_INV_81~combout\ : std_logic;
SIGNAL \inst|ALT_INV_80~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_80~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_81~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

CN4 <= ww_CN4;
ww_B <= B;
ww_A <= A;
ww_M <= M;
ww_CN <= CN;
ww_S <= S;
AEQB <= ww_AEQB;
F <= ww_F;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_81~combout\ <= NOT \inst|81~combout\;
\inst|ALT_INV_80~combout\ <= NOT \inst|80~combout\;
\inst1|ALT_INV_80~0_combout\ <= NOT \inst1|80~0_combout\;
\inst1|ALT_INV_81~combout\ <= NOT \inst1|81~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X32_Y53_N2
\CN4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|78~3_combout\,
	devoe => ww_devoe,
	o => \CN4~output_o\);

-- Location: IOOBUF_X35_Y53_N2
\AEQB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~combout\,
	devoe => ww_devoe,
	o => \AEQB~output_o\);

-- Location: IOOBUF_X35_Y53_N9
\F[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|77~1_combout\,
	devoe => ww_devoe,
	o => \F[7]~output_o\);

-- Location: IOOBUF_X37_Y53_N2
\F[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|82~0_combout\,
	devoe => ww_devoe,
	o => \F[6]~output_o\);

-- Location: IOOBUF_X55_Y53_N23
\F[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_81~combout\,
	devoe => ww_devoe,
	o => \F[5]~output_o\);

-- Location: IOOBUF_X48_Y53_N23
\F[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_80~combout\,
	devoe => ww_devoe,
	o => \F[4]~output_o\);

-- Location: IOOBUF_X57_Y53_N16
\F[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|77~1_combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X43_Y53_N9
\F[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|82~0_combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X45_Y53_N23
\F[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_81~combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X48_Y53_N16
\F[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_80~0_combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOIBUF_X43_Y53_N1
\S[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(3),
	o => \S[3]~input_o\);

-- Location: IOIBUF_X37_Y53_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X37_Y53_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X43_Y53_N22
\S[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(2),
	o => \S[2]~input_o\);

-- Location: LCCOMB_X41_Y52_N16
\inst|52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|52~0_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\ & (\S[3]~input_o\)) # (!\B[7]~input_o\ & ((\S[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[3]~input_o\,
	datab => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \S[2]~input_o\,
	combout => \inst|52~0_combout\);

-- Location: IOIBUF_X41_Y53_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X41_Y53_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X43_Y53_N15
\S[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: IOIBUF_X48_Y53_N1
\S[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: LCCOMB_X41_Y52_N26
\inst|45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|45~0_combout\ = (\A[6]~input_o\) # ((\B[6]~input_o\ & (\S[0]~input_o\)) # (!\B[6]~input_o\ & ((\S[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \S[0]~input_o\,
	datad => \S[1]~input_o\,
	combout => \inst|45~0_combout\);

-- Location: LCCOMB_X41_Y52_N20
\inst|51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|51~0_combout\ = (\A[7]~input_o\) # ((\B[7]~input_o\ & (\S[0]~input_o\)) # (!\B[7]~input_o\ & ((\S[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \S[0]~input_o\,
	datad => \S[1]~input_o\,
	combout => \inst|51~0_combout\);

-- Location: LCCOMB_X41_Y52_N6
\inst|78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|78~0_combout\ = ((!\inst|52~0_combout\ & !\inst|45~0_combout\)) # (!\inst|51~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|52~0_combout\,
	datac => \inst|45~0_combout\,
	datad => \inst|51~0_combout\,
	combout => \inst|78~0_combout\);

-- Location: IOIBUF_X50_Y53_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X50_Y53_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X46_Y52_N8
\inst|47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|47~0_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\ & ((\S[3]~input_o\))) # (!\B[5]~input_o\ & (\S[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datab => \S[3]~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \inst|47~0_combout\);

-- Location: IOIBUF_X50_Y53_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X55_Y53_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X46_Y52_N20
\inst|46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|46~0_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\ & ((\S[3]~input_o\))) # (!\B[4]~input_o\ & (\S[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datab => \S[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \inst|46~0_combout\);

-- Location: LCCOMB_X46_Y52_N12
\inst|44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|44~0_combout\ = (\A[5]~input_o\) # ((\B[5]~input_o\ & (\S[0]~input_o\)) # (!\B[5]~input_o\ & ((\S[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \S[0]~input_o\,
	datac => \S[1]~input_o\,
	datad => \A[5]~input_o\,
	combout => \inst|44~0_combout\);

-- Location: LCCOMB_X46_Y52_N10
\inst|43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|43~0_combout\ = (\A[4]~input_o\) # ((\B[4]~input_o\ & ((\S[0]~input_o\))) # (!\B[4]~input_o\ & (\S[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \inst|43~0_combout\);

-- Location: LCCOMB_X46_Y52_N22
\inst|78~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|78~1_combout\ = ((!\inst|43~0_combout\ & !\inst|47~0_combout\)) # (!\inst|44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|44~0_combout\,
	datac => \inst|43~0_combout\,
	datad => \inst|47~0_combout\,
	combout => \inst|78~1_combout\);

-- Location: IOIBUF_X57_Y53_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X52_Y53_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X45_Y52_N26
\inst1|51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|51~0_combout\ = (\A[3]~input_o\) # ((\B[3]~input_o\ & ((\S[0]~input_o\))) # (!\B[3]~input_o\ & (\S[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst1|51~0_combout\);

-- Location: IOIBUF_X32_Y53_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X37_Y53_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X41_Y52_N24
\inst1|46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|46~0_combout\ = (\A[0]~input_o\ & ((\B[0]~input_o\ & (\S[3]~input_o\)) # (!\B[0]~input_o\ & ((\S[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[3]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \S[2]~input_o\,
	combout => \inst1|46~0_combout\);

-- Location: IOIBUF_X59_Y53_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X48_Y53_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X45_Y52_N16
\inst1|47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|47~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & ((\S[3]~input_o\))) # (!\B[1]~input_o\ & (\S[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datab => \S[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst1|47~0_combout\);

-- Location: LCCOMB_X41_Y52_N2
\inst1|43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|43~0_combout\ = (\A[0]~input_o\) # ((\B[0]~input_o\ & (\S[0]~input_o\)) # (!\B[0]~input_o\ & ((\S[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \S[0]~input_o\,
	datad => \S[1]~input_o\,
	combout => \inst1|43~0_combout\);

-- Location: IOIBUF_X57_Y53_N1
\CN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CN,
	o => \CN~input_o\);

-- Location: LCCOMB_X45_Y52_N10
\inst1|78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|78~0_combout\ = (!\inst1|47~0_combout\ & (((!\inst1|46~0_combout\ & \CN~input_o\)) # (!\inst1|43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|46~0_combout\,
	datab => \inst1|47~0_combout\,
	datac => \inst1|43~0_combout\,
	datad => \CN~input_o\,
	combout => \inst1|78~0_combout\);

-- Location: LCCOMB_X45_Y52_N28
\inst1|44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|44~0_combout\ = (\A[1]~input_o\) # ((\B[1]~input_o\ & ((\S[0]~input_o\))) # (!\B[1]~input_o\ & (\S[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst1|44~0_combout\);

-- Location: LCCOMB_X45_Y52_N14
\inst1|52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|52~0_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & ((\S[3]~input_o\))) # (!\B[3]~input_o\ & (\S[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datab => \S[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \inst1|52~0_combout\);

-- Location: IOIBUF_X55_Y53_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X55_Y53_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X46_Y52_N16
\inst1|48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|48~0_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\ & ((\S[3]~input_o\))) # (!\B[2]~input_o\ & (\S[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datab => \S[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst1|48~0_combout\);

-- Location: LCCOMB_X45_Y52_N24
\inst1|78~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|78~1_combout\ = (!\inst1|52~0_combout\ & (!\inst1|48~0_combout\ & ((\inst1|78~0_combout\) # (!\inst1|44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|78~0_combout\,
	datab => \inst1|44~0_combout\,
	datac => \inst1|52~0_combout\,
	datad => \inst1|48~0_combout\,
	combout => \inst1|78~1_combout\);

-- Location: LCCOMB_X46_Y52_N18
\inst1|45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|45~0_combout\ = (\A[2]~input_o\) # ((\B[2]~input_o\ & ((\S[0]~input_o\))) # (!\B[2]~input_o\ & (\S[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst1|45~0_combout\);

-- Location: LCCOMB_X45_Y52_N20
\inst1|78~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|78~2_combout\ = ((\inst1|78~1_combout\) # ((!\inst1|52~0_combout\ & !\inst1|45~0_combout\))) # (!\inst1|51~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|51~0_combout\,
	datab => \inst1|78~1_combout\,
	datac => \inst1|52~0_combout\,
	datad => \inst1|45~0_combout\,
	combout => \inst1|78~2_combout\);

-- Location: LCCOMB_X46_Y52_N6
\inst|78~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|78~2_combout\ = (\inst|78~1_combout\) # ((!\inst|47~0_combout\ & (!\inst|46~0_combout\ & \inst1|78~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|47~0_combout\,
	datab => \inst|46~0_combout\,
	datac => \inst|78~1_combout\,
	datad => \inst1|78~2_combout\,
	combout => \inst|78~2_combout\);

-- Location: LCCOMB_X41_Y52_N28
\inst|48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|48~0_combout\ = (\A[6]~input_o\ & ((\B[6]~input_o\ & (\S[3]~input_o\)) # (!\B[6]~input_o\ & ((\S[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[3]~input_o\,
	datab => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \S[2]~input_o\,
	combout => \inst|48~0_combout\);

-- Location: LCCOMB_X41_Y52_N22
\inst|78~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|78~3_combout\ = (\inst|78~0_combout\) # ((!\inst|52~0_combout\ & (\inst|78~2_combout\ & !\inst|48~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|78~0_combout\,
	datab => \inst|52~0_combout\,
	datac => \inst|78~2_combout\,
	datad => \inst|48~0_combout\,
	combout => \inst|78~3_combout\);

-- Location: IOIBUF_X41_Y53_N22
\M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: LCCOMB_X41_Y52_N8
\inst|77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|77~0_combout\ = (\M~input_o\) # ((\inst|45~0_combout\ & ((\inst|48~0_combout\) # (!\inst|78~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|45~0_combout\,
	datab => \inst|48~0_combout\,
	datac => \inst|78~2_combout\,
	datad => \M~input_o\,
	combout => \inst|77~0_combout\);

-- Location: LCCOMB_X41_Y52_N10
\inst|77~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|77~1_combout\ = \inst|52~0_combout\ $ (\inst|77~0_combout\ $ (\inst|51~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|52~0_combout\,
	datac => \inst|77~0_combout\,
	datad => \inst|51~0_combout\,
	combout => \inst|77~1_combout\);

-- Location: LCCOMB_X41_Y52_N4
\inst|82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|82~0_combout\ = \inst|45~0_combout\ $ (\inst|48~0_combout\ $ (((\M~input_o\) # (!\inst|78~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|45~0_combout\,
	datab => \inst|48~0_combout\,
	datac => \inst|78~2_combout\,
	datad => \M~input_o\,
	combout => \inst|82~0_combout\);

-- Location: LCCOMB_X46_Y52_N24
\inst|79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|79~combout\ = (!\M~input_o\ & (((\inst1|78~2_combout\ & !\inst|46~0_combout\)) # (!\inst|43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|43~0_combout\,
	datab => \inst1|78~2_combout\,
	datac => \M~input_o\,
	datad => \inst|46~0_combout\,
	combout => \inst|79~combout\);

-- Location: LCCOMB_X45_Y52_N22
\inst|83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|83~0_combout\ = (\inst|82~0_combout\ & (\inst|47~0_combout\ $ (\inst|44~0_combout\ $ (!\inst|79~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|82~0_combout\,
	datab => \inst|47~0_combout\,
	datac => \inst|44~0_combout\,
	datad => \inst|79~combout\,
	combout => \inst|83~0_combout\);

-- Location: LCCOMB_X46_Y52_N26
\inst|80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|80~combout\ = \inst|43~0_combout\ $ (\inst|46~0_combout\ $ (((\inst1|78~2_combout\ & !\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|43~0_combout\,
	datab => \inst1|78~2_combout\,
	datac => \M~input_o\,
	datad => \inst|46~0_combout\,
	combout => \inst|80~combout\);

-- Location: LCCOMB_X45_Y52_N30
\inst1|78~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|78~3_combout\ = (\inst1|78~0_combout\) # (!\inst1|44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|78~0_combout\,
	datad => \inst1|44~0_combout\,
	combout => \inst1|78~3_combout\);

-- Location: LCCOMB_X45_Y52_N12
\inst1|82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|82~0_combout\ = \inst1|45~0_combout\ $ (\inst1|48~0_combout\ $ (((\M~input_o\) # (!\inst1|78~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|78~3_combout\,
	datab => \inst1|45~0_combout\,
	datac => \M~input_o\,
	datad => \inst1|48~0_combout\,
	combout => \inst1|82~0_combout\);

-- Location: LCCOMB_X45_Y52_N6
\inst1|79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|79~combout\ = (!\M~input_o\ & (((!\inst1|46~0_combout\ & \CN~input_o\)) # (!\inst1|43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \inst1|46~0_combout\,
	datac => \inst1|43~0_combout\,
	datad => \CN~input_o\,
	combout => \inst1|79~combout\);

-- Location: LCCOMB_X45_Y52_N0
\inst1|81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|81~combout\ = \inst1|79~combout\ $ (\inst1|47~0_combout\ $ (\inst1|44~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|79~combout\,
	datab => \inst1|47~0_combout\,
	datad => \inst1|44~0_combout\,
	combout => \inst1|81~combout\);

-- Location: LCCOMB_X45_Y52_N8
\inst1|77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|77~0_combout\ = (\M~input_o\) # ((\inst1|45~0_combout\ & ((\inst1|48~0_combout\) # (!\inst1|78~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|78~3_combout\,
	datab => \inst1|45~0_combout\,
	datac => \M~input_o\,
	datad => \inst1|48~0_combout\,
	combout => \inst1|77~0_combout\);

-- Location: LCCOMB_X45_Y52_N18
\inst1|77~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|77~1_combout\ = \inst1|51~0_combout\ $ (\inst1|52~0_combout\ $ (\inst1|77~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|51~0_combout\,
	datab => \inst1|52~0_combout\,
	datac => \inst1|77~0_combout\,
	combout => \inst1|77~1_combout\);

-- Location: LCCOMB_X45_Y52_N2
\inst1|80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|80~0_combout\ = \inst1|46~0_combout\ $ (\inst1|43~0_combout\ $ (((!\M~input_o\ & \CN~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \inst1|46~0_combout\,
	datac => \inst1|43~0_combout\,
	datad => \CN~input_o\,
	combout => \inst1|80~0_combout\);

-- Location: LCCOMB_X45_Y52_N4
\inst1|83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|83~0_combout\ = (\inst1|82~0_combout\ & (!\inst1|81~combout\ & (\inst1|77~1_combout\ & !\inst1|80~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|82~0_combout\,
	datab => \inst1|81~combout\,
	datac => \inst1|77~1_combout\,
	datad => \inst1|80~0_combout\,
	combout => \inst1|83~0_combout\);

-- Location: LCCOMB_X44_Y52_N16
inst2 : cycloneive_lcell_comb
-- Equation(s):
-- \inst2~combout\ = (\inst1|83~0_combout\) # ((\inst|77~1_combout\ & (\inst|83~0_combout\ & !\inst|80~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|77~1_combout\,
	datab => \inst|83~0_combout\,
	datac => \inst|80~combout\,
	datad => \inst1|83~0_combout\,
	combout => \inst2~combout\);

-- Location: LCCOMB_X46_Y52_N28
\inst|81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|81~combout\ = \inst|44~0_combout\ $ (\inst|79~combout\ $ (\inst|47~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|44~0_combout\,
	datab => \inst|79~combout\,
	datad => \inst|47~0_combout\,
	combout => \inst|81~combout\);

ww_CN4 <= \CN4~output_o\;

ww_AEQB <= \AEQB~output_o\;

ww_F(7) <= \F[7]~output_o\;

ww_F(6) <= \F[6]~output_o\;

ww_F(5) <= \F[5]~output_o\;

ww_F(4) <= \F[4]~output_o\;

ww_F(3) <= \F[3]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(0) <= \F[0]~output_o\;
END structure;


