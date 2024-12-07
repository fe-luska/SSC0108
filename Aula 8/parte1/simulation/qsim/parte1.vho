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

-- DATE "10/14/2024 20:32:10"

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

ENTITY 	parte1 IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	w : IN std_logic;
	z : OUT std_logic;
	leds : OUT std_logic_vector(8 DOWNTO 0)
	);
END parte1;

-- Design Ports Information
-- z	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[8]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF parte1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_leds : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mux8_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mux8_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \state[0]~23_combout\ : std_logic;
SIGNAL \state[0]~1_q\ : std_logic;
SIGNAL \state~2_combout\ : std_logic;
SIGNAL \w~input_o\ : std_logic;
SIGNAL \state~4_combout\ : std_logic;
SIGNAL \state~17_combout\ : std_logic;
SIGNAL \state~11_combout\ : std_logic;
SIGNAL \state~10_combout\ : std_logic;
SIGNAL \state~12_combout\ : std_logic;
SIGNAL \state~15_combout\ : std_logic;
SIGNAL \state~16_combout\ : std_logic;
SIGNAL \state~3_combout\ : std_logic;
SIGNAL \state~18_combout\ : std_logic;
SIGNAL \state~22_combout\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state~13_combout\ : std_logic;
SIGNAL \state~14_combout\ : std_logic;
SIGNAL \state~6_combout\ : std_logic;
SIGNAL \state~7_combout\ : std_logic;
SIGNAL \state~8_combout\ : std_logic;
SIGNAL \state~5_combout\ : std_logic;
SIGNAL \state~9_combout\ : std_logic;
SIGNAL \Mux8_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \z~0_combout\ : std_logic;
SIGNAL \z~1_combout\ : std_logic;
SIGNAL state : std_logic_vector(8 DOWNTO 0);
SIGNAL ALT_INV_state : std_logic_vector(8 DOWNTO 1);
SIGNAL \Mux8_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ : std_logic;
SIGNAL \ALT_INV_state[0]~1_q\ : std_logic;
SIGNAL \ALT_INV_z~0_combout\ : std_logic;
SIGNAL \ALT_INV_state~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_state~20_combout\ : std_logic;
SIGNAL \ALT_INV_state~5_combout\ : std_logic;
SIGNAL \ALT_INV_state~4_combout\ : std_logic;
SIGNAL \ALT_INV_state~6_combout\ : std_logic;
SIGNAL \ALT_INV_state~7_combout\ : std_logic;
SIGNAL \ALT_INV_state~8_combout\ : std_logic;
SIGNAL \ALT_INV_state~10_combout\ : std_logic;
SIGNAL \ALT_INV_state~11_combout\ : std_logic;
SIGNAL \ALT_INV_state~13_combout\ : std_logic;
SIGNAL \ALT_INV_state~15_combout\ : std_logic;
SIGNAL \ALT_INV_state~18_combout\ : std_logic;
SIGNAL \ALT_INV_w~input_o\ : std_logic;
SIGNAL \ALT_INV_reset_n~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_w <= w;
z <= ww_z;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux8_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (state(8) & state(7) & state(6) & state(5) & state(4) & state(3) & state(2) & state(1) & \state~2_combout\);

\Mux8_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \Mux8_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
ALT_INV_state(1) <= NOT state(1);
\Mux8_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ <= NOT \Mux8_rtl_0|auto_generated|ram_block1a0~portadataout\;
ALT_INV_state(2) <= NOT state(2);
\ALT_INV_state[0]~1_q\ <= NOT \state[0]~1_q\;
ALT_INV_state(3) <= NOT state(3);
ALT_INV_state(4) <= NOT state(4);
ALT_INV_state(8) <= NOT state(8);
ALT_INV_state(7) <= NOT state(7);
ALT_INV_state(5) <= NOT state(5);
ALT_INV_state(6) <= NOT state(6);
\ALT_INV_z~0_combout\ <= NOT \z~0_combout\;
\ALT_INV_state~3_combout\ <= NOT \state~3_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_state~20_combout\ <= NOT \state~20_combout\;
\ALT_INV_state~5_combout\ <= NOT \state~5_combout\;
\ALT_INV_state~4_combout\ <= NOT \state~4_combout\;
\ALT_INV_state~6_combout\ <= NOT \state~6_combout\;
\ALT_INV_state~7_combout\ <= NOT \state~7_combout\;
\ALT_INV_state~8_combout\ <= NOT \state~8_combout\;
\ALT_INV_state~10_combout\ <= NOT \state~10_combout\;
\ALT_INV_state~11_combout\ <= NOT \state~11_combout\;
\ALT_INV_state~13_combout\ <= NOT \state~13_combout\;
\ALT_INV_state~15_combout\ <= NOT \state~15_combout\;
\ALT_INV_state~18_combout\ <= NOT \state~18_combout\;
\ALT_INV_w~input_o\ <= NOT \w~input_o\;
\ALT_INV_reset_n~input_o\ <= NOT \reset_n~input_o\;

-- Location: IOOBUF_X54_Y19_N22
\z~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~1_combout\,
	devoe => ww_devoe,
	o => ww_z);

-- Location: IOOBUF_X54_Y20_N5
\leds[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state~2_combout\,
	devoe => ww_devoe,
	o => ww_leds(0));

-- Location: IOOBUF_X54_Y21_N5
\leds[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => state(1),
	devoe => ww_devoe,
	o => ww_leds(1));

-- Location: IOOBUF_X54_Y20_N39
\leds[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => state(2),
	devoe => ww_devoe,
	o => ww_leds(2));

-- Location: IOOBUF_X54_Y21_N22
\leds[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => state(3),
	devoe => ww_devoe,
	o => ww_leds(3));

-- Location: IOOBUF_X54_Y21_N39
\leds[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => state(4),
	devoe => ww_devoe,
	o => ww_leds(4));

-- Location: IOOBUF_X54_Y21_N56
\leds[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => state(5),
	devoe => ww_devoe,
	o => ww_leds(5));

-- Location: IOOBUF_X54_Y20_N22
\leds[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => state(6),
	devoe => ww_devoe,
	o => ww_leds(6));

-- Location: IOOBUF_X54_Y19_N5
\leds[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => state(7),
	devoe => ww_devoe,
	o => ww_leds(7));

-- Location: IOOBUF_X54_Y19_N39
\leds[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => state(8),
	devoe => ww_devoe,
	o => ww_leds(8));

-- Location: IOIBUF_X54_Y18_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X54_Y20_N55
\reset_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: LABCELL_X50_Y26_N57
\state[0]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \state[0]~23_combout\ = ( !\reset_n~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_reset_n~input_o\,
	combout => \state[0]~23_combout\);

-- Location: FF_X50_Y26_N59
\state[0]~1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state[0]~1_q\);

-- Location: LABCELL_X52_Y26_N45
\state~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~2_combout\ = ( \state[0]~1_q\ ) # ( !\state[0]~1_q\ & ( \Mux8_rtl_0|auto_generated|ram_block1a0~portadataout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mux8_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \ALT_INV_state[0]~1_q\,
	combout => \state~2_combout\);

-- Location: IOIBUF_X54_Y19_N55
\w~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w,
	o => \w~input_o\);

-- Location: LABCELL_X52_Y26_N33
\state~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~4_combout\ = ( state(8) & ( (!state(7) & !state(5)) ) ) # ( !state(8) & ( (state(7) & !state(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_state(7),
	datad => ALT_INV_state(5),
	dataf => ALT_INV_state(8),
	combout => \state~4_combout\);

-- Location: LABCELL_X52_Y26_N30
\state~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~17_combout\ = ( \state~4_combout\ & ( (!\w~input_o\ & (\state~3_combout\ & (!state(1) & !state(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_w~input_o\,
	datab => \ALT_INV_state~3_combout\,
	datac => ALT_INV_state(1),
	datad => ALT_INV_state(6),
	dataf => \ALT_INV_state~4_combout\,
	combout => \state~17_combout\);

-- Location: FF_X52_Y26_N32
\state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(8));

-- Location: LABCELL_X52_Y26_N18
\state~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~11_combout\ = ( !state(8) & ( (!state(5) & (!state(7) & (\w~input_o\ & !state(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state(5),
	datab => ALT_INV_state(7),
	datac => \ALT_INV_w~input_o\,
	datad => ALT_INV_state(6),
	dataf => ALT_INV_state(8),
	combout => \state~11_combout\);

-- Location: LABCELL_X50_Y26_N15
\state~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~10_combout\ = ( !state(3) & ( !state(4) & ( \reset_n~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset_n~input_o\,
	datae => ALT_INV_state(3),
	dataf => ALT_INV_state(4),
	combout => \state~10_combout\);

-- Location: LABCELL_X50_Y26_N39
\state~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~12_combout\ = ( !state(2) & ( !\state[0]~1_q\ & ( (\state~11_combout\ & (state(1) & (\state~10_combout\ & !\Mux8_rtl_0|auto_generated|ram_block1a0~portadataout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state~11_combout\,
	datab => ALT_INV_state(1),
	datac => \ALT_INV_state~10_combout\,
	datad => \Mux8_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datae => ALT_INV_state(2),
	dataf => \ALT_INV_state[0]~1_q\,
	combout => \state~12_combout\);

-- Location: FF_X50_Y26_N41
\state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(2));

-- Location: LABCELL_X50_Y26_N30
\state~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~15_combout\ = ( !\state[0]~1_q\ & ( !state(2) & ( (!state(1) & !\Mux8_rtl_0|auto_generated|ram_block1a0~portadataout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_state(1),
	datac => \Mux8_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datae => \ALT_INV_state[0]~1_q\,
	dataf => ALT_INV_state(2),
	combout => \state~15_combout\);

-- Location: LABCELL_X50_Y26_N18
\state~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~16_combout\ = ( !state(4) & ( state(3) & ( (\w~input_o\ & (\reset_n~input_o\ & (\state~13_combout\ & \state~15_combout\))) ) ) ) # ( state(4) & ( !state(3) & ( (\w~input_o\ & (\reset_n~input_o\ & (\state~13_combout\ & \state~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_w~input_o\,
	datab => \ALT_INV_reset_n~input_o\,
	datac => \ALT_INV_state~13_combout\,
	datad => \ALT_INV_state~15_combout\,
	datae => ALT_INV_state(4),
	dataf => ALT_INV_state(3),
	combout => \state~16_combout\);

-- Location: FF_X50_Y26_N20
\state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(4));

-- Location: LABCELL_X52_Y26_N12
\state~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~3_combout\ = ( !\Mux8_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\state[0]~1_q\ & ( (!state(4) & (!state(2) & (\reset_n~input_o\ & !state(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state(4),
	datab => ALT_INV_state(2),
	datac => \ALT_INV_reset_n~input_o\,
	datad => ALT_INV_state(3),
	datae => \Mux8_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \ALT_INV_state[0]~1_q\,
	combout => \state~3_combout\);

-- Location: LABCELL_X52_Y26_N27
\state~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~18_combout\ = (!state(8) & (!state(7) & !\w~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state(8),
	datab => ALT_INV_state(7),
	datad => \ALT_INV_w~input_o\,
	combout => \state~18_combout\);

-- Location: LABCELL_X52_Y26_N3
\state~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~22_combout\ = ( !state(6) & ( !state(1) & ( (state(5) & (\state~3_combout\ & \state~18_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state(5),
	datac => \ALT_INV_state~3_combout\,
	datad => \ALT_INV_state~18_combout\,
	datae => ALT_INV_state(6),
	dataf => ALT_INV_state(1),
	combout => \state~22_combout\);

-- Location: FF_X52_Y26_N5
\state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(6));

-- Location: LABCELL_X52_Y26_N9
\state~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~19_combout\ = ( !state(1) & ( (!state(5) & (state(6) & (\state~3_combout\ & \state~18_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state(5),
	datab => ALT_INV_state(6),
	datac => \ALT_INV_state~3_combout\,
	datad => \ALT_INV_state~18_combout\,
	dataf => ALT_INV_state(1),
	combout => \state~19_combout\);

-- Location: FF_X52_Y26_N11
\state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(7));

-- Location: LABCELL_X52_Y26_N21
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( !\w~input_o\ & ( (!state(5) & (!state(7) & (!state(8) & !state(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state(5),
	datab => ALT_INV_state(7),
	datac => ALT_INV_state(8),
	datad => ALT_INV_state(6),
	dataf => \ALT_INV_w~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X50_Y26_N45
\state~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~20_combout\ = ( state(2) & ( (!state(1) & (!\state[0]~1_q\ & !\Mux8_rtl_0|auto_generated|ram_block1a0~portadataout\)) ) ) # ( !state(2) & ( !state(1) $ (((!\state[0]~1_q\ & !\Mux8_rtl_0|auto_generated|ram_block1a0~portadataout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010101010010110101010101010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state(1),
	datac => \ALT_INV_state[0]~1_q\,
	datad => \Mux8_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => ALT_INV_state(2),
	combout => \state~20_combout\);

-- Location: LABCELL_X50_Y26_N48
\state~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~21_combout\ = ( \state~20_combout\ & ( state(4) & ( (\Mux3~0_combout\ & (\state~15_combout\ & (!state(3) & \reset_n~input_o\))) ) ) ) # ( !\state~20_combout\ & ( state(4) & ( (\Mux3~0_combout\ & (\state~15_combout\ & (!state(3) & 
-- \reset_n~input_o\))) ) ) ) # ( \state~20_combout\ & ( !state(4) & ( (\Mux3~0_combout\ & (\reset_n~input_o\ & ((!state(3)) # (\state~15_combout\)))) ) ) ) # ( !\state~20_combout\ & ( !state(4) & ( (\Mux3~0_combout\ & (\state~15_combout\ & (state(3) & 
-- \reset_n~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000101000100000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux3~0_combout\,
	datab => \ALT_INV_state~15_combout\,
	datac => ALT_INV_state(3),
	datad => \ALT_INV_reset_n~input_o\,
	datae => \ALT_INV_state~20_combout\,
	dataf => ALT_INV_state(4),
	combout => \state~21_combout\);

-- Location: FF_X50_Y26_N50
\state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(5));

-- Location: LABCELL_X52_Y26_N42
\state~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~13_combout\ = ( !state(7) & ( (!state(5) & (!state(8) & !state(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state(5),
	datab => ALT_INV_state(8),
	datac => ALT_INV_state(6),
	dataf => ALT_INV_state(7),
	combout => \state~13_combout\);

-- Location: LABCELL_X50_Y26_N27
\state~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~14_combout\ = ( \state~6_combout\ & ( state(2) & ( (\state~13_combout\ & (!\state[0]~1_q\ & !\Mux8_rtl_0|auto_generated|ram_block1a0~portadataout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state~13_combout\,
	datac => \ALT_INV_state[0]~1_q\,
	datad => \Mux8_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datae => \ALT_INV_state~6_combout\,
	dataf => ALT_INV_state(2),
	combout => \state~14_combout\);

-- Location: FF_X50_Y26_N29
\state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(3));

-- Location: LABCELL_X50_Y26_N42
\state~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~6_combout\ = ( !state(4) & ( (!state(1) & (\reset_n~input_o\ & (\w~input_o\ & !state(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state(1),
	datab => \ALT_INV_reset_n~input_o\,
	datac => \ALT_INV_w~input_o\,
	datad => ALT_INV_state(3),
	dataf => ALT_INV_state(4),
	combout => \state~6_combout\);

-- Location: LABCELL_X52_Y26_N24
\state~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~7_combout\ = ( !state(2) & ( (!state(8) & !state(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state(8),
	datab => ALT_INV_state(7),
	dataf => ALT_INV_state(2),
	combout => \state~7_combout\);

-- Location: LABCELL_X52_Y26_N6
\state~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~8_combout\ = ( \state[0]~1_q\ & ( (!state(5) & (!state(6) & \state~7_combout\)) ) ) # ( !\state[0]~1_q\ & ( (\state~7_combout\ & ((!state(5) & (!state(6) $ (!\Mux8_rtl_0|auto_generated|ram_block1a0~portadataout\))) # (state(5) & (!state(6) & 
-- !\Mux8_rtl_0|auto_generated|ram_block1a0~portadataout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000001000000001100000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state(5),
	datab => ALT_INV_state(6),
	datac => \ALT_INV_state~7_combout\,
	datad => \Mux8_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \ALT_INV_state[0]~1_q\,
	combout => \state~8_combout\);

-- Location: LABCELL_X52_Y26_N57
\state~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~5_combout\ = ( state(5) & ( (state(6) & \w~input_o\) ) ) # ( !state(5) & ( (!state(6) & \w~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_state(6),
	datad => \ALT_INV_w~input_o\,
	dataf => ALT_INV_state(5),
	combout => \state~5_combout\);

-- Location: LABCELL_X52_Y26_N48
\state~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~9_combout\ = ( state(1) & ( \state~4_combout\ & ( (\state~6_combout\ & \state~8_combout\) ) ) ) # ( !state(1) & ( \state~4_combout\ & ( (!\state~6_combout\ & (\state~3_combout\ & ((\state~5_combout\)))) # (\state~6_combout\ & (((\state~3_combout\ & 
-- \state~5_combout\)) # (\state~8_combout\))) ) ) ) # ( state(1) & ( !\state~4_combout\ & ( (\state~6_combout\ & \state~8_combout\) ) ) ) # ( !state(1) & ( !\state~4_combout\ & ( (\state~6_combout\ & \state~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101001101110000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state~6_combout\,
	datab => \ALT_INV_state~3_combout\,
	datac => \ALT_INV_state~8_combout\,
	datad => \ALT_INV_state~5_combout\,
	datae => ALT_INV_state(1),
	dataf => \ALT_INV_state~4_combout\,
	combout => \state~9_combout\);

-- Location: FF_X52_Y26_N50
\state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(1));

-- Location: M10K_X51_Y26_N0
\Mux8_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "00001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100",
	mem_init3 => "00100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000",
	mem_init2 => "10000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000000000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010",
	mem_init1 => "00010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000000001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000",
	mem_init0 => "01000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000000001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000010000100001000000000100001000010000100001000010000100001000010000100001000010000100001000010000000001000010000100001000010000100001000000000100001000010000000001000000000000001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "parte1.parte10.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux8_rtl_0|altsyncram_mf51:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 9,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portaaddr => \Mux8_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux8_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X52_Y26_N36
\z~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~0_combout\ = ( !state(5) & ( !state(7) & ( (!state(6) & (!state(3) & (!state(8) $ (!state(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_state(8),
	datab => ALT_INV_state(4),
	datac => ALT_INV_state(6),
	datad => ALT_INV_state(3),
	datae => ALT_INV_state(5),
	dataf => ALT_INV_state(7),
	combout => \z~0_combout\);

-- Location: LABCELL_X52_Y26_N54
\z~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~1_combout\ = ( !state(1) & ( (!\Mux8_rtl_0|auto_generated|ram_block1a0~portadataout\ & (!state(2) & (!\state[0]~1_q\ & \z~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datab => ALT_INV_state(2),
	datac => \ALT_INV_state[0]~1_q\,
	datad => \ALT_INV_z~0_combout\,
	dataf => ALT_INV_state(1),
	combout => \z~1_combout\);

-- Location: LABCELL_X17_Y18_N0
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


