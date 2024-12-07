-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "09/16/2024 17:10:34"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	contador IS
    PORT (
	H0 : OUT std_logic;
	CLK : IN std_logic;
	Enable : IN std_logic;
	Clear : IN std_logic;
	H1 : OUT std_logic;
	H2 : OUT std_logic;
	H3 : OUT std_logic;
	H4 : OUT std_logic;
	H5 : OUT std_logic;
	H7 : OUT std_logic;
	H6 : OUT std_logic;
	H8 : OUT std_logic;
	H9 : OUT std_logic;
	H10 : OUT std_logic;
	H11 : OUT std_logic;
	H12 : OUT std_logic;
	H13 : OUT std_logic;
	Q7 : OUT std_logic;
	Q6 : OUT std_logic;
	Q5 : OUT std_logic;
	Q4 : OUT std_logic;
	Q3 : OUT std_logic;
	Q2 : OUT std_logic;
	Q1 : OUT std_logic;
	Q0 : OUT std_logic
	);
END contador;

-- Design Ports Information
-- H0	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H1	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H2	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H3	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H4	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H5	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H7	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H6	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H8	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H9	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H10	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H11	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H12	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- H13	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q7	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q6	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q5	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q4	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q3	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clear	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_H0 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_Clear : std_logic;
SIGNAL ww_H1 : std_logic;
SIGNAL ww_H2 : std_logic;
SIGNAL ww_H3 : std_logic;
SIGNAL ww_H4 : std_logic;
SIGNAL ww_H5 : std_logic;
SIGNAL ww_H7 : std_logic;
SIGNAL ww_H6 : std_logic;
SIGNAL ww_H8 : std_logic;
SIGNAL ww_H9 : std_logic;
SIGNAL ww_H10 : std_logic;
SIGNAL ww_H11 : std_logic;
SIGNAL ww_H12 : std_logic;
SIGNAL ww_H13 : std_logic;
SIGNAL ww_Q7 : std_logic;
SIGNAL ww_Q6 : std_logic;
SIGNAL ww_Q5 : std_logic;
SIGNAL ww_Q4 : std_logic;
SIGNAL ww_Q3 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \inst|Q_int~0_combout\ : std_logic;
SIGNAL \Clear~input_o\ : std_logic;
SIGNAL \inst|Q_int~q\ : std_logic;
SIGNAL \inst1|Q_int~0_combout\ : std_logic;
SIGNAL \inst1|Q_int~q\ : std_logic;
SIGNAL \inst2|Q_int~0_combout\ : std_logic;
SIGNAL \inst2|Q_int~q\ : std_logic;
SIGNAL \inst3|Q_int~0_combout\ : std_logic;
SIGNAL \inst3|Q_int~q\ : std_logic;
SIGNAL \inst90|inst27~0_combout\ : std_logic;
SIGNAL \inst90|inst30~0_combout\ : std_logic;
SIGNAL \inst90|inst33~0_combout\ : std_logic;
SIGNAL \inst90|inst36~0_combout\ : std_logic;
SIGNAL \inst90|inst042~0_combout\ : std_logic;
SIGNAL \inst90|inst51~0_combout\ : std_logic;
SIGNAL \inst90|inst39~0_combout\ : std_logic;
SIGNAL \inst4|Q_int~0_combout\ : std_logic;
SIGNAL \inst4|Q_int~q\ : std_logic;
SIGNAL \inst8~combout\ : std_logic;
SIGNAL \inst55|Q_int~0_combout\ : std_logic;
SIGNAL \inst55|Q_int~q\ : std_logic;
SIGNAL \inst56|Q_int~0_combout\ : std_logic;
SIGNAL \inst56|Q_int~q\ : std_logic;
SIGNAL \inst57|Q_int~0_combout\ : std_logic;
SIGNAL \inst57|Q_int~q\ : std_logic;
SIGNAL \inst91|inst27~0_combout\ : std_logic;
SIGNAL \inst91|inst30~0_combout\ : std_logic;
SIGNAL \inst91|inst33~0_combout\ : std_logic;
SIGNAL \inst91|inst36~0_combout\ : std_logic;
SIGNAL \inst91|inst042~0_combout\ : std_logic;
SIGNAL \inst91|inst51~0_combout\ : std_logic;
SIGNAL \inst91|inst39~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Q_int~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Q_int~q\ : std_logic;
SIGNAL \inst|ALT_INV_Q_int~q\ : std_logic;
SIGNAL \ALT_INV_Clear~input_o\ : std_logic;
SIGNAL \ALT_INV_Enable~input_o\ : std_logic;
SIGNAL \ALT_INV_inst8~combout\ : std_logic;
SIGNAL \inst91|ALT_INV_inst39~0_combout\ : std_logic;
SIGNAL \inst91|ALT_INV_inst51~0_combout\ : std_logic;
SIGNAL \inst91|ALT_INV_inst042~0_combout\ : std_logic;
SIGNAL \inst91|ALT_INV_inst36~0_combout\ : std_logic;
SIGNAL \inst91|ALT_INV_inst33~0_combout\ : std_logic;
SIGNAL \inst91|ALT_INV_inst30~0_combout\ : std_logic;
SIGNAL \inst91|ALT_INV_inst27~0_combout\ : std_logic;
SIGNAL \inst56|ALT_INV_Q_int~q\ : std_logic;
SIGNAL \inst4|ALT_INV_Q_int~q\ : std_logic;
SIGNAL \inst57|ALT_INV_Q_int~q\ : std_logic;
SIGNAL \inst55|ALT_INV_Q_int~q\ : std_logic;
SIGNAL \inst90|ALT_INV_inst39~0_combout\ : std_logic;
SIGNAL \inst90|ALT_INV_inst51~0_combout\ : std_logic;
SIGNAL \inst90|ALT_INV_inst042~0_combout\ : std_logic;
SIGNAL \inst90|ALT_INV_inst36~0_combout\ : std_logic;
SIGNAL \inst90|ALT_INV_inst33~0_combout\ : std_logic;
SIGNAL \inst90|ALT_INV_inst30~0_combout\ : std_logic;
SIGNAL \inst90|ALT_INV_inst27~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Q_int~q\ : std_logic;

BEGIN

H0 <= ww_H0;
ww_CLK <= CLK;
ww_Enable <= Enable;
ww_Clear <= Clear;
H1 <= ww_H1;
H2 <= ww_H2;
H3 <= ww_H3;
H4 <= ww_H4;
H5 <= ww_H5;
H7 <= ww_H7;
H6 <= ww_H6;
H8 <= ww_H8;
H9 <= ww_H9;
H10 <= ww_H10;
H11 <= ww_H11;
H12 <= ww_H12;
H13 <= ww_H13;
Q7 <= ww_Q7;
Q6 <= ww_Q6;
Q5 <= ww_Q5;
Q4 <= ww_Q4;
Q3 <= ww_Q3;
Q2 <= ww_Q2;
Q1 <= ww_Q1;
Q0 <= ww_Q0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst1|ALT_INV_Q_int~q\ <= NOT \inst1|Q_int~q\;
\inst3|ALT_INV_Q_int~q\ <= NOT \inst3|Q_int~q\;
\inst|ALT_INV_Q_int~q\ <= NOT \inst|Q_int~q\;
\ALT_INV_Clear~input_o\ <= NOT \Clear~input_o\;
\ALT_INV_Enable~input_o\ <= NOT \Enable~input_o\;
\ALT_INV_inst8~combout\ <= NOT \inst8~combout\;
\inst91|ALT_INV_inst39~0_combout\ <= NOT \inst91|inst39~0_combout\;
\inst91|ALT_INV_inst51~0_combout\ <= NOT \inst91|inst51~0_combout\;
\inst91|ALT_INV_inst042~0_combout\ <= NOT \inst91|inst042~0_combout\;
\inst91|ALT_INV_inst36~0_combout\ <= NOT \inst91|inst36~0_combout\;
\inst91|ALT_INV_inst33~0_combout\ <= NOT \inst91|inst33~0_combout\;
\inst91|ALT_INV_inst30~0_combout\ <= NOT \inst91|inst30~0_combout\;
\inst91|ALT_INV_inst27~0_combout\ <= NOT \inst91|inst27~0_combout\;
\inst56|ALT_INV_Q_int~q\ <= NOT \inst56|Q_int~q\;
\inst4|ALT_INV_Q_int~q\ <= NOT \inst4|Q_int~q\;
\inst57|ALT_INV_Q_int~q\ <= NOT \inst57|Q_int~q\;
\inst55|ALT_INV_Q_int~q\ <= NOT \inst55|Q_int~q\;
\inst90|ALT_INV_inst39~0_combout\ <= NOT \inst90|inst39~0_combout\;
\inst90|ALT_INV_inst51~0_combout\ <= NOT \inst90|inst51~0_combout\;
\inst90|ALT_INV_inst042~0_combout\ <= NOT \inst90|inst042~0_combout\;
\inst90|ALT_INV_inst36~0_combout\ <= NOT \inst90|inst36~0_combout\;
\inst90|ALT_INV_inst33~0_combout\ <= NOT \inst90|inst33~0_combout\;
\inst90|ALT_INV_inst30~0_combout\ <= NOT \inst90|inst30~0_combout\;
\inst90|ALT_INV_inst27~0_combout\ <= NOT \inst90|inst27~0_combout\;
\inst2|ALT_INV_Q_int~q\ <= NOT \inst2|Q_int~q\;

-- Location: IOOBUF_X52_Y0_N53
\H0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst90|ALT_INV_inst27~0_combout\,
	devoe => ww_devoe,
	o => ww_H0);

-- Location: IOOBUF_X51_Y0_N36
\H1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst90|ALT_INV_inst30~0_combout\,
	devoe => ww_devoe,
	o => ww_H1);

-- Location: IOOBUF_X48_Y0_N76
\H2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst90|ALT_INV_inst33~0_combout\,
	devoe => ww_devoe,
	o => ww_H2);

-- Location: IOOBUF_X50_Y0_N36
\H3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst90|ALT_INV_inst36~0_combout\,
	devoe => ww_devoe,
	o => ww_H3);

-- Location: IOOBUF_X48_Y0_N93
\H4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst90|ALT_INV_inst042~0_combout\,
	devoe => ww_devoe,
	o => ww_H4);

-- Location: IOOBUF_X50_Y0_N53
\H5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst90|ALT_INV_inst51~0_combout\,
	devoe => ww_devoe,
	o => ww_H5);

-- Location: IOOBUF_X46_Y0_N36
\H7~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst90|ALT_INV_inst39~0_combout\,
	devoe => ww_devoe,
	o => ww_H7);

-- Location: IOOBUF_X48_Y0_N42
\H6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst91|ALT_INV_inst27~0_combout\,
	devoe => ww_devoe,
	o => ww_H6);

-- Location: IOOBUF_X38_Y0_N53
\H8~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst91|ALT_INV_inst30~0_combout\,
	devoe => ww_devoe,
	o => ww_H8);

-- Location: IOOBUF_X22_Y0_N53
\H9~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst91|ALT_INV_inst33~0_combout\,
	devoe => ww_devoe,
	o => ww_H9);

-- Location: IOOBUF_X36_Y0_N19
\H10~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst91|ALT_INV_inst36~0_combout\,
	devoe => ww_devoe,
	o => ww_H10);

-- Location: IOOBUF_X38_Y0_N19
\H11~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst91|ALT_INV_inst042~0_combout\,
	devoe => ww_devoe,
	o => ww_H11);

-- Location: IOOBUF_X46_Y0_N53
\H12~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst91|ALT_INV_inst51~0_combout\,
	devoe => ww_devoe,
	o => ww_H12);

-- Location: IOOBUF_X40_Y0_N76
\H13~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst91|ALT_INV_inst39~0_combout\,
	devoe => ww_devoe,
	o => ww_H13);

-- Location: IOOBUF_X40_Y0_N93
\Q7~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst57|Q_int~q\,
	devoe => ww_devoe,
	o => ww_Q7);

-- Location: IOOBUF_X40_Y0_N42
\Q6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst56|Q_int~q\,
	devoe => ww_devoe,
	o => ww_Q6);

-- Location: IOOBUF_X40_Y0_N59
\Q5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst55|Q_int~q\,
	devoe => ww_devoe,
	o => ww_Q5);

-- Location: IOOBUF_X43_Y0_N2
\Q4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Q_int~q\,
	devoe => ww_devoe,
	o => ww_Q4);

-- Location: IOOBUF_X46_Y0_N19
\Q3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Q_int~q\,
	devoe => ww_devoe,
	o => ww_Q3);

-- Location: IOOBUF_X44_Y0_N36
\Q2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Q_int~q\,
	devoe => ww_devoe,
	o => ww_Q2);

-- Location: IOOBUF_X44_Y0_N2
\Q1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Q_int~q\,
	devoe => ww_devoe,
	o => ww_Q1);

-- Location: IOOBUF_X44_Y0_N53
\Q0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q_int~q\,
	devoe => ww_devoe,
	o => ww_Q0);

-- Location: IOIBUF_X10_Y0_N92
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X33_Y0_N58
\Enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable,
	o => \Enable~input_o\);

-- Location: MLABCELL_X45_Y1_N36
\inst|Q_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Q_int~0_combout\ = !\Enable~input_o\ $ (!\inst|Q_int~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Enable~input_o\,
	datad => \inst|ALT_INV_Q_int~q\,
	combout => \inst|Q_int~0_combout\);

-- Location: IOIBUF_X33_Y0_N41
\Clear~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clear,
	o => \Clear~input_o\);

-- Location: FF_X45_Y1_N38
\inst|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst|Q_int~0_combout\,
	clrn => \ALT_INV_Clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q_int~q\);

-- Location: MLABCELL_X45_Y1_N30
\inst1|Q_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Q_int~0_combout\ = ( \inst|Q_int~q\ & ( !\Enable~input_o\ $ (!\inst1|Q_int~q\) ) ) # ( !\inst|Q_int~q\ & ( \inst1|Q_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Enable~input_o\,
	datad => \inst1|ALT_INV_Q_int~q\,
	dataf => \inst|ALT_INV_Q_int~q\,
	combout => \inst1|Q_int~0_combout\);

-- Location: FF_X45_Y1_N32
\inst1|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Q_int~0_combout\,
	clrn => \ALT_INV_Clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q_int~q\);

-- Location: MLABCELL_X45_Y1_N54
\inst2|Q_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Q_int~0_combout\ = ( \inst1|Q_int~q\ & ( !\inst2|Q_int~q\ $ (((!\Enable~input_o\) # (!\inst|Q_int~q\))) ) ) # ( !\inst1|Q_int~q\ & ( \inst2|Q_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Enable~input_o\,
	datac => \inst|ALT_INV_Q_int~q\,
	datad => \inst2|ALT_INV_Q_int~q\,
	dataf => \inst1|ALT_INV_Q_int~q\,
	combout => \inst2|Q_int~0_combout\);

-- Location: FF_X45_Y1_N56
\inst2|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst2|Q_int~0_combout\,
	clrn => \ALT_INV_Clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Q_int~q\);

-- Location: MLABCELL_X45_Y1_N39
\inst3|Q_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Q_int~0_combout\ = ( \inst2|Q_int~q\ & ( !\inst3|Q_int~q\ $ (((!\inst|Q_int~q\) # ((!\Enable~input_o\) # (!\inst1|Q_int~q\)))) ) ) # ( !\inst2|Q_int~q\ & ( \inst3|Q_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Q_int~q\,
	datab => \ALT_INV_Enable~input_o\,
	datac => \inst1|ALT_INV_Q_int~q\,
	datad => \inst3|ALT_INV_Q_int~q\,
	dataf => \inst2|ALT_INV_Q_int~q\,
	combout => \inst3|Q_int~0_combout\);

-- Location: FF_X45_Y1_N41
\inst3|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst3|Q_int~0_combout\,
	clrn => \ALT_INV_Clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Q_int~q\);

-- Location: MLABCELL_X45_Y1_N12
\inst90|inst27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst90|inst27~0_combout\ = ( \inst1|Q_int~q\ & ( (!\inst|Q_int~q\) # ((!\inst3|Q_int~q\) # (\inst2|Q_int~q\)) ) ) # ( !\inst1|Q_int~q\ & ( (!\inst|Q_int~q\ & ((!\inst2|Q_int~q\) # (\inst3|Q_int~q\))) # (\inst|Q_int~q\ & (!\inst2|Q_int~q\ $ 
-- (!\inst3|Q_int~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001111010011110100111101001111011111011111110111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Q_int~q\,
	datab => \inst2|ALT_INV_Q_int~q\,
	datac => \inst3|ALT_INV_Q_int~q\,
	dataf => \inst1|ALT_INV_Q_int~q\,
	combout => \inst90|inst27~0_combout\);

-- Location: MLABCELL_X45_Y1_N57
\inst90|inst30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst90|inst30~0_combout\ = ( \inst2|Q_int~q\ & ( (!\inst1|Q_int~q\ & (!\inst3|Q_int~q\ $ (\inst|Q_int~q\))) # (\inst1|Q_int~q\ & (!\inst3|Q_int~q\ & \inst|Q_int~q\)) ) ) # ( !\inst2|Q_int~q\ & ( (!\inst1|Q_int~q\) # ((!\inst3|Q_int~q\) # 
-- (!\inst|Q_int~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111010111111111111101010100000010110101010000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Q_int~q\,
	datac => \inst3|ALT_INV_Q_int~q\,
	datad => \inst|ALT_INV_Q_int~q\,
	dataf => \inst2|ALT_INV_Q_int~q\,
	combout => \inst90|inst30~0_combout\);

-- Location: MLABCELL_X45_Y1_N48
\inst90|inst33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst90|inst33~0_combout\ = ( \inst1|Q_int~q\ & ( (!\inst2|Q_int~q\ & ((\inst3|Q_int~q\) # (\inst|Q_int~q\))) # (\inst2|Q_int~q\ & ((!\inst3|Q_int~q\))) ) ) # ( !\inst1|Q_int~q\ & ( (!\inst2|Q_int~q\) # ((!\inst3|Q_int~q\) # (\inst|Q_int~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001111111111111100111100111111110011000011111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_Q_int~q\,
	datac => \inst|ALT_INV_Q_int~q\,
	datad => \inst3|ALT_INV_Q_int~q\,
	dataf => \inst1|ALT_INV_Q_int~q\,
	combout => \inst90|inst33~0_combout\);

-- Location: MLABCELL_X45_Y1_N51
\inst90|inst36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst90|inst36~0_combout\ = ( \inst1|Q_int~q\ & ( (!\inst|Q_int~q\ & ((!\inst3|Q_int~q\) # (\inst2|Q_int~q\))) # (\inst|Q_int~q\ & (!\inst2|Q_int~q\)) ) ) # ( !\inst1|Q_int~q\ & ( (!\inst|Q_int~q\ $ (\inst2|Q_int~q\)) # (\inst3|Q_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001111110011111100111111001111111100110111001101110011011100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Q_int~q\,
	datab => \inst2|ALT_INV_Q_int~q\,
	datac => \inst3|ALT_INV_Q_int~q\,
	dataf => \inst1|ALT_INV_Q_int~q\,
	combout => \inst90|inst36~0_combout\);

-- Location: MLABCELL_X45_Y1_N0
\inst90|inst042~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst90|inst042~0_combout\ = ( \inst3|Q_int~q\ & ( ((!\inst|Q_int~q\) # (\inst2|Q_int~q\)) # (\inst1|Q_int~q\) ) ) # ( !\inst3|Q_int~q\ & ( (!\inst|Q_int~q\ & ((!\inst2|Q_int~q\) # (\inst1|Q_int~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011010000110100001101000011110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Q_int~q\,
	datab => \inst2|ALT_INV_Q_int~q\,
	datac => \inst|ALT_INV_Q_int~q\,
	dataf => \inst3|ALT_INV_Q_int~q\,
	combout => \inst90|inst042~0_combout\);

-- Location: MLABCELL_X45_Y1_N3
\inst90|inst51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst90|inst51~0_combout\ = ( \inst1|Q_int~q\ & ( ((\inst2|Q_int~q\ & !\inst|Q_int~q\)) # (\inst3|Q_int~q\) ) ) # ( !\inst1|Q_int~q\ & ( (!\inst|Q_int~q\) # (!\inst2|Q_int~q\ $ (!\inst3|Q_int~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111100111111110011110000111111000011110011111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_Q_int~q\,
	datac => \inst3|ALT_INV_Q_int~q\,
	datad => \inst|ALT_INV_Q_int~q\,
	dataf => \inst1|ALT_INV_Q_int~q\,
	combout => \inst90|inst51~0_combout\);

-- Location: MLABCELL_X45_Y1_N18
\inst90|inst39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst90|inst39~0_combout\ = ( \inst2|Q_int~q\ & ( (!\inst1|Q_int~q\ & ((!\inst3|Q_int~q\) # (\inst|Q_int~q\))) # (\inst1|Q_int~q\ & ((!\inst|Q_int~q\) # (\inst3|Q_int~q\))) ) ) # ( !\inst2|Q_int~q\ & ( (\inst3|Q_int~q\) # (\inst1|Q_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111111111010010111111111101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_Q_int~q\,
	datac => \inst|ALT_INV_Q_int~q\,
	datad => \inst3|ALT_INV_Q_int~q\,
	dataf => \inst2|ALT_INV_Q_int~q\,
	combout => \inst90|inst39~0_combout\);

-- Location: MLABCELL_X45_Y1_N42
\inst4|Q_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4|Q_int~0_combout\ = ( \inst4|Q_int~q\ & ( \inst3|Q_int~q\ & ( (!\inst2|Q_int~q\) # ((!\Enable~input_o\) # ((!\inst|Q_int~q\) # (!\inst1|Q_int~q\))) ) ) ) # ( !\inst4|Q_int~q\ & ( \inst3|Q_int~q\ & ( (\inst2|Q_int~q\ & (\Enable~input_o\ & 
-- (\inst|Q_int~q\ & \inst1|Q_int~q\))) ) ) ) # ( \inst4|Q_int~q\ & ( !\inst3|Q_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Q_int~q\,
	datab => \ALT_INV_Enable~input_o\,
	datac => \inst|ALT_INV_Q_int~q\,
	datad => \inst1|ALT_INV_Q_int~q\,
	datae => \inst4|ALT_INV_Q_int~q\,
	dataf => \inst3|ALT_INV_Q_int~q\,
	combout => \inst4|Q_int~0_combout\);

-- Location: FF_X45_Y1_N44
\inst4|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst4|Q_int~0_combout\,
	clrn => \ALT_INV_Clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q_int~q\);

-- Location: MLABCELL_X45_Y1_N24
inst8 : cyclonev_lcell_comb
-- Equation(s):
-- \inst8~combout\ = ( \inst2|Q_int~q\ & ( \inst3|Q_int~q\ & ( (\Enable~input_o\ & (\inst|Q_int~q\ & \inst1|Q_int~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Enable~input_o\,
	datac => \inst|ALT_INV_Q_int~q\,
	datad => \inst1|ALT_INV_Q_int~q\,
	datae => \inst2|ALT_INV_Q_int~q\,
	dataf => \inst3|ALT_INV_Q_int~q\,
	combout => \inst8~combout\);

-- Location: MLABCELL_X45_Y1_N15
\inst55|Q_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst55|Q_int~0_combout\ = ( \inst8~combout\ & ( !\inst4|Q_int~q\ $ (!\inst55|Q_int~q\) ) ) # ( !\inst8~combout\ & ( \inst55|Q_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst4|ALT_INV_Q_int~q\,
	datad => \inst55|ALT_INV_Q_int~q\,
	dataf => \ALT_INV_inst8~combout\,
	combout => \inst55|Q_int~0_combout\);

-- Location: FF_X45_Y1_N17
\inst55|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst55|Q_int~0_combout\,
	clrn => \ALT_INV_Clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst55|Q_int~q\);

-- Location: MLABCELL_X45_Y1_N9
\inst56|Q_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst56|Q_int~0_combout\ = ( \inst8~combout\ & ( !\inst56|Q_int~q\ $ (((!\inst55|Q_int~q\) # (!\inst4|Q_int~q\))) ) ) # ( !\inst8~combout\ & ( \inst56|Q_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst55|ALT_INV_Q_int~q\,
	datac => \inst4|ALT_INV_Q_int~q\,
	datad => \inst56|ALT_INV_Q_int~q\,
	dataf => \ALT_INV_inst8~combout\,
	combout => \inst56|Q_int~0_combout\);

-- Location: FF_X45_Y1_N11
\inst56|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst56|Q_int~0_combout\,
	clrn => \ALT_INV_Clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst56|Q_int~q\);

-- Location: MLABCELL_X45_Y1_N33
\inst57|Q_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst57|Q_int~0_combout\ = ( \inst8~combout\ & ( !\inst57|Q_int~q\ $ (((!\inst55|Q_int~q\) # ((!\inst4|Q_int~q\) # (!\inst56|Q_int~q\)))) ) ) # ( !\inst8~combout\ & ( \inst57|Q_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst55|ALT_INV_Q_int~q\,
	datab => \inst4|ALT_INV_Q_int~q\,
	datac => \inst56|ALT_INV_Q_int~q\,
	datad => \inst57|ALT_INV_Q_int~q\,
	dataf => \ALT_INV_inst8~combout\,
	combout => \inst57|Q_int~0_combout\);

-- Location: FF_X45_Y1_N35
\inst57|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst57|Q_int~0_combout\,
	clrn => \ALT_INV_Clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst57|Q_int~q\);

-- Location: MLABCELL_X45_Y1_N21
\inst91|inst27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst91|inst27~0_combout\ = ( \inst56|Q_int~q\ & ( (!\inst4|Q_int~q\ $ (!\inst57|Q_int~q\)) # (\inst55|Q_int~q\) ) ) # ( !\inst56|Q_int~q\ & ( (!\inst4|Q_int~q\) # (!\inst55|Q_int~q\ $ (!\inst57|Q_int~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111111100110011111111110000111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst4|ALT_INV_Q_int~q\,
	datac => \inst55|ALT_INV_Q_int~q\,
	datad => \inst57|ALT_INV_Q_int~q\,
	dataf => \inst56|ALT_INV_Q_int~q\,
	combout => \inst91|inst27~0_combout\);

-- Location: LABCELL_X40_Y1_N48
\inst91|inst30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst91|inst30~0_combout\ = ( \inst55|Q_int~q\ & ( \inst56|Q_int~q\ & ( (\inst4|Q_int~q\ & !\inst57|Q_int~q\) ) ) ) # ( !\inst55|Q_int~q\ & ( \inst56|Q_int~q\ & ( !\inst4|Q_int~q\ $ (\inst57|Q_int~q\) ) ) ) # ( \inst55|Q_int~q\ & ( !\inst56|Q_int~q\ & ( 
-- (!\inst4|Q_int~q\) # (!\inst57|Q_int~q\) ) ) ) # ( !\inst55|Q_int~q\ & ( !\inst56|Q_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110101111101010100101101001010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Q_int~q\,
	datac => \inst57|ALT_INV_Q_int~q\,
	datae => \inst55|ALT_INV_Q_int~q\,
	dataf => \inst56|ALT_INV_Q_int~q\,
	combout => \inst91|inst30~0_combout\);

-- Location: LABCELL_X40_Y1_N33
\inst91|inst33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst91|inst33~0_combout\ = ( \inst55|Q_int~q\ & ( \inst56|Q_int~q\ & ( !\inst57|Q_int~q\ ) ) ) # ( !\inst55|Q_int~q\ & ( \inst56|Q_int~q\ & ( (!\inst57|Q_int~q\) # (\inst4|Q_int~q\) ) ) ) # ( \inst55|Q_int~q\ & ( !\inst56|Q_int~q\ & ( (\inst4|Q_int~q\) # 
-- (\inst57|Q_int~q\) ) ) ) # ( !\inst55|Q_int~q\ & ( !\inst56|Q_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101011111111110101010111111111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst57|ALT_INV_Q_int~q\,
	datad => \inst4|ALT_INV_Q_int~q\,
	datae => \inst55|ALT_INV_Q_int~q\,
	dataf => \inst56|ALT_INV_Q_int~q\,
	combout => \inst91|inst33~0_combout\);

-- Location: LABCELL_X40_Y1_N12
\inst91|inst36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst91|inst36~0_combout\ = ( \inst55|Q_int~q\ & ( \inst56|Q_int~q\ & ( !\inst4|Q_int~q\ ) ) ) # ( !\inst55|Q_int~q\ & ( \inst56|Q_int~q\ & ( (\inst57|Q_int~q\) # (\inst4|Q_int~q\) ) ) ) # ( \inst55|Q_int~q\ & ( !\inst56|Q_int~q\ & ( (!\inst57|Q_int~q\) # 
-- (\inst4|Q_int~q\) ) ) ) # ( !\inst55|Q_int~q\ & ( !\inst56|Q_int~q\ & ( (!\inst4|Q_int~q\) # (\inst57|Q_int~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111111101011111010101011111010111111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Q_int~q\,
	datac => \inst57|ALT_INV_Q_int~q\,
	datae => \inst55|ALT_INV_Q_int~q\,
	dataf => \inst56|ALT_INV_Q_int~q\,
	combout => \inst91|inst36~0_combout\);

-- Location: LABCELL_X40_Y1_N45
\inst91|inst042~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst91|inst042~0_combout\ = ( \inst55|Q_int~q\ & ( \inst56|Q_int~q\ & ( (!\inst4|Q_int~q\) # (\inst57|Q_int~q\) ) ) ) # ( !\inst55|Q_int~q\ & ( \inst56|Q_int~q\ & ( \inst57|Q_int~q\ ) ) ) # ( \inst55|Q_int~q\ & ( !\inst56|Q_int~q\ & ( (!\inst4|Q_int~q\) 
-- # (\inst57|Q_int~q\) ) ) ) # ( !\inst55|Q_int~q\ & ( !\inst56|Q_int~q\ & ( !\inst4|Q_int~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110101010101010101010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst57|ALT_INV_Q_int~q\,
	datad => \inst4|ALT_INV_Q_int~q\,
	datae => \inst55|ALT_INV_Q_int~q\,
	dataf => \inst56|ALT_INV_Q_int~q\,
	combout => \inst91|inst042~0_combout\);

-- Location: MLABCELL_X45_Y1_N6
\inst91|inst51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst91|inst51~0_combout\ = ( \inst56|Q_int~q\ & ( (!\inst4|Q_int~q\) # (!\inst55|Q_int~q\ $ (\inst57|Q_int~q\)) ) ) # ( !\inst56|Q_int~q\ & ( ((!\inst4|Q_int~q\ & !\inst55|Q_int~q\)) # (\inst57|Q_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111110001111100011111000111111101011111010111110101111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ALT_INV_Q_int~q\,
	datab => \inst55|ALT_INV_Q_int~q\,
	datac => \inst57|ALT_INV_Q_int~q\,
	dataf => \inst56|ALT_INV_Q_int~q\,
	combout => \inst91|inst51~0_combout\);

-- Location: LABCELL_X40_Y1_N39
\inst91|inst39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst91|inst39~0_combout\ = ( \inst55|Q_int~q\ & ( \inst56|Q_int~q\ & ( (!\inst4|Q_int~q\) # (\inst57|Q_int~q\) ) ) ) # ( !\inst55|Q_int~q\ & ( \inst56|Q_int~q\ & ( (!\inst57|Q_int~q\) # (\inst4|Q_int~q\) ) ) ) # ( \inst55|Q_int~q\ & ( !\inst56|Q_int~q\ ) 
-- ) # ( !\inst55|Q_int~q\ & ( !\inst56|Q_int~q\ & ( \inst57|Q_int~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111110101010111111111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst57|ALT_INV_Q_int~q\,
	datad => \inst4|ALT_INV_Q_int~q\,
	datae => \inst55|ALT_INV_Q_int~q\,
	dataf => \inst56|ALT_INV_Q_int~q\,
	combout => \inst91|inst39~0_combout\);

-- Location: MLABCELL_X28_Y29_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


