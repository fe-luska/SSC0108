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

-- DATE "10/15/2024 17:14:06"

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

ENTITY 	parte4 IS
    PORT (
	SW : IN std_logic_vector(2 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	clk : IN std_logic;
	LEDR : OUT std_logic
	);
END parte4;

-- Design Ports Information
-- LEDR	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF parte4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_LEDR : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \bit_idx[21]~2_combout\ : std_logic;
SIGNAL \bit_idx[21]~0_combout\ : std_logic;
SIGNAL \bit_idx[21]~1_combout\ : std_logic;
SIGNAL \bit_idx[21]~3_combout\ : std_logic;
SIGNAL \bit_idx[21]~4_combout\ : std_logic;
SIGNAL \bit_idx[21]~5_combout\ : std_logic;
SIGNAL \counter[29]~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \Add1~126\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Selector35~1_combout\ : std_logic;
SIGNAL \next_state.pause~q\ : std_logic;
SIGNAL \state.pause~q\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \next_state.dot~q\ : std_logic;
SIGNAL \state.dot~q\ : std_logic;
SIGNAL \bit_idx[21]~6_combout\ : std_logic;
SIGNAL \bit_idx[0]~7_combout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \tam_cod[0]~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \Selector32~1_combout\ : std_logic;
SIGNAL \next_state.idle~q\ : std_logic;
SIGNAL \state.idle~q\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector34~1_combout\ : std_logic;
SIGNAL \next_state.dash~q\ : std_logic;
SIGNAL \state.dash~q\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \vled~q\ : std_logic;
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL bit_idx : std_logic_vector(31 DOWNTO 0);
SIGNAL morse_code : std_logic_vector(3 DOWNTO 0);
SIGNAL tam_cod : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_bit_idx : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_bit_idx[21]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector35~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector34~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL ALT_INV_tam_cod : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL ALT_INV_morse_code : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_state.idle~q\ : std_logic;
SIGNAL \ALT_INV_state.pause~q\ : std_logic;
SIGNAL \ALT_INV_state.dash~q\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.dot~q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_bit_idx[21]~5_combout\ : std_logic;
SIGNAL \ALT_INV_bit_idx[21]~4_combout\ : std_logic;
SIGNAL \ALT_INV_bit_idx[21]~3_combout\ : std_logic;
SIGNAL \ALT_INV_bit_idx[21]~2_combout\ : std_logic;
SIGNAL \ALT_INV_bit_idx[21]~1_combout\ : std_logic;
SIGNAL \ALT_INV_bit_idx[21]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_vled~q\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
ww_clk <= clk;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_counter(1) <= NOT counter(1);
ALT_INV_counter(2) <= NOT counter(2);
ALT_INV_counter(3) <= NOT counter(3);
ALT_INV_bit_idx(26) <= NOT bit_idx(26);
ALT_INV_bit_idx(27) <= NOT bit_idx(27);
ALT_INV_bit_idx(28) <= NOT bit_idx(28);
ALT_INV_bit_idx(29) <= NOT bit_idx(29);
ALT_INV_bit_idx(30) <= NOT bit_idx(30);
ALT_INV_bit_idx(21) <= NOT bit_idx(21);
ALT_INV_bit_idx(19) <= NOT bit_idx(19);
ALT_INV_bit_idx(20) <= NOT bit_idx(20);
ALT_INV_bit_idx(22) <= NOT bit_idx(22);
ALT_INV_bit_idx(23) <= NOT bit_idx(23);
ALT_INV_bit_idx(24) <= NOT bit_idx(24);
ALT_INV_bit_idx(25) <= NOT bit_idx(25);
ALT_INV_bit_idx(13) <= NOT bit_idx(13);
ALT_INV_bit_idx(14) <= NOT bit_idx(14);
ALT_INV_bit_idx(15) <= NOT bit_idx(15);
ALT_INV_bit_idx(16) <= NOT bit_idx(16);
ALT_INV_bit_idx(17) <= NOT bit_idx(17);
ALT_INV_bit_idx(18) <= NOT bit_idx(18);
ALT_INV_bit_idx(7) <= NOT bit_idx(7);
ALT_INV_bit_idx(8) <= NOT bit_idx(8);
ALT_INV_bit_idx(10) <= NOT bit_idx(10);
ALT_INV_bit_idx(9) <= NOT bit_idx(9);
ALT_INV_bit_idx(11) <= NOT bit_idx(11);
ALT_INV_bit_idx(12) <= NOT bit_idx(12);
ALT_INV_bit_idx(3) <= NOT bit_idx(3);
ALT_INV_bit_idx(4) <= NOT bit_idx(4);
ALT_INV_bit_idx(5) <= NOT bit_idx(5);
ALT_INV_bit_idx(6) <= NOT bit_idx(6);
ALT_INV_bit_idx(2) <= NOT bit_idx(2);
ALT_INV_bit_idx(31) <= NOT bit_idx(31);
ALT_INV_bit_idx(1) <= NOT bit_idx(1);
ALT_INV_bit_idx(0) <= NOT bit_idx(0);
ALT_INV_counter(31) <= NOT counter(31);
ALT_INV_counter(18) <= NOT counter(18);
ALT_INV_counter(19) <= NOT counter(19);
ALT_INV_counter(20) <= NOT counter(20);
ALT_INV_counter(21) <= NOT counter(21);
ALT_INV_counter(22) <= NOT counter(22);
ALT_INV_counter(23) <= NOT counter(23);
ALT_INV_counter(24) <= NOT counter(24);
ALT_INV_counter(25) <= NOT counter(25);
ALT_INV_counter(5) <= NOT counter(5);
ALT_INV_counter(30) <= NOT counter(30);
ALT_INV_counter(29) <= NOT counter(29);
ALT_INV_counter(11) <= NOT counter(11);
ALT_INV_counter(12) <= NOT counter(12);
ALT_INV_counter(13) <= NOT counter(13);
ALT_INV_counter(14) <= NOT counter(14);
ALT_INV_counter(15) <= NOT counter(15);
ALT_INV_counter(16) <= NOT counter(16);
ALT_INV_counter(4) <= NOT counter(4);
ALT_INV_counter(6) <= NOT counter(6);
ALT_INV_counter(7) <= NOT counter(7);
ALT_INV_counter(8) <= NOT counter(8);
ALT_INV_counter(9) <= NOT counter(9);
ALT_INV_counter(10) <= NOT counter(10);
ALT_INV_counter(17) <= NOT counter(17);
ALT_INV_counter(28) <= NOT counter(28);
ALT_INV_counter(27) <= NOT counter(27);
ALT_INV_counter(26) <= NOT counter(26);
ALT_INV_counter(0) <= NOT counter(0);
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_bit_idx[21]~6_combout\ <= NOT \bit_idx[21]~6_combout\;
\ALT_INV_Selector35~0_combout\ <= NOT \Selector35~0_combout\;
\ALT_INV_Selector34~0_combout\ <= NOT \Selector34~0_combout\;
\ALT_INV_LessThan2~6_combout\ <= NOT \LessThan2~6_combout\;
\ALT_INV_LessThan2~5_combout\ <= NOT \LessThan2~5_combout\;
\ALT_INV_LessThan2~4_combout\ <= NOT \LessThan2~4_combout\;
\ALT_INV_LessThan2~3_combout\ <= NOT \LessThan2~3_combout\;
\ALT_INV_LessThan2~2_combout\ <= NOT \LessThan2~2_combout\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
ALT_INV_tam_cod(0) <= NOT tam_cod(0);
ALT_INV_tam_cod(1) <= NOT tam_cod(1);
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
ALT_INV_morse_code(0) <= NOT morse_code(0);
ALT_INV_morse_code(1) <= NOT morse_code(1);
ALT_INV_morse_code(2) <= NOT morse_code(2);
ALT_INV_morse_code(3) <= NOT morse_code(3);
\ALT_INV_state.idle~q\ <= NOT \state.idle~q\;
\ALT_INV_state.pause~q\ <= NOT \state.pause~q\;
\ALT_INV_state.dash~q\ <= NOT \state.dash~q\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_state.dot~q\ <= NOT \state.dot~q\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_bit_idx[21]~5_combout\ <= NOT \bit_idx[21]~5_combout\;
\ALT_INV_bit_idx[21]~4_combout\ <= NOT \bit_idx[21]~4_combout\;
\ALT_INV_bit_idx[21]~3_combout\ <= NOT \bit_idx[21]~3_combout\;
\ALT_INV_bit_idx[21]~2_combout\ <= NOT \bit_idx[21]~2_combout\;
\ALT_INV_bit_idx[21]~1_combout\ <= NOT \bit_idx[21]~1_combout\;
\ALT_INV_bit_idx[21]~0_combout\ <= NOT \bit_idx[21]~0_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_vled~q\ <= NOT \vled~q\;

-- Location: IOOBUF_X0_Y18_N79
\LEDR~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vled~q\,
	devoe => ww_devoe,
	o => ww_LEDR);

-- Location: IOIBUF_X38_Y45_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G12
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

-- Location: LABCELL_X17_Y3_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( bit_idx(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( bit_idx(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_idx(0),
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: LABCELL_X19_Y3_N0
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~14\ = CARRY(( counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(0),
	cin => GND,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X19_Y3_N3
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( counter(1) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( counter(1) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(1),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X19_Y2_N36
\Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = ( \state.idle~q\ ) # ( !\state.idle~q\ & ( !\KEY[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[1]~input_o\,
	dataf => \ALT_INV_state.idle~q\,
	combout => \Selector32~0_combout\);

-- Location: FF_X19_Y3_N5
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LABCELL_X19_Y3_N6
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( counter(2) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( counter(2) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(2),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X18_Y3_N11
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~5_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	sload => VCC,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LABCELL_X19_Y3_N9
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( counter(3) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~2\ = CARRY(( counter(3) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(3),
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X19_Y3_N11
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LABCELL_X19_Y3_N12
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( counter(4) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~54\ = CARRY(( counter(4) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(4),
	cin => \Add0~2\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X19_Y3_N14
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LABCELL_X19_Y3_N15
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( counter(5) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~90\ = CARRY(( counter(5) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(5),
	cin => \Add0~54\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X19_Y3_N17
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LABCELL_X19_Y3_N18
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( counter(6) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~50\ = CARRY(( counter(6) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(6),
	cin => \Add0~90\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X18_Y3_N44
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~49_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	sload => VCC,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LABCELL_X19_Y3_N21
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( counter(7) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~46\ = CARRY(( counter(7) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(7),
	cin => \Add0~50\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X19_Y3_N23
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LABCELL_X19_Y3_N24
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( counter(8) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( counter(8) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(8),
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X19_Y3_N26
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LABCELL_X19_Y3_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( counter(9) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~38\ = CARRY(( counter(9) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(9),
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X19_Y3_N29
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LABCELL_X19_Y3_N30
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( counter(10) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( counter(10) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(10),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X19_Y3_N32
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LABCELL_X19_Y3_N33
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( counter(11) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~78\ = CARRY(( counter(11) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(11),
	cin => \Add0~34\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X19_Y3_N35
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LABCELL_X19_Y3_N36
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( counter(12) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~74\ = CARRY(( counter(12) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(12),
	cin => \Add0~78\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X19_Y3_N38
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LABCELL_X19_Y3_N39
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( counter(13) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( counter(13) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(13),
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X19_Y3_N41
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LABCELL_X19_Y3_N42
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( counter(14) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( counter(14) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(14),
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X19_Y3_N44
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LABCELL_X19_Y3_N45
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( counter(15) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( counter(15) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(15),
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X19_Y3_N47
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LABCELL_X19_Y3_N48
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( counter(16) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( counter(16) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(16),
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X19_Y3_N50
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LABCELL_X19_Y3_N51
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( counter(17) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~30\ = CARRY(( counter(17) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(17),
	cin => \Add0~58\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X19_Y3_N53
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LABCELL_X19_Y3_N54
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( counter(18) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~122\ = CARRY(( counter(18) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(18),
	cin => \Add0~30\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X19_Y3_N56
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LABCELL_X19_Y3_N57
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( counter(19) ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~118\ = CARRY(( counter(19) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(19),
	cin => \Add0~122\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X19_Y3_N59
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LABCELL_X19_Y2_N0
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( counter(20) ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~114\ = CARRY(( counter(20) ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(20),
	cin => \Add0~118\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X19_Y2_N2
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LABCELL_X19_Y2_N3
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( counter(21) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( counter(21) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(21),
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X19_Y2_N5
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LABCELL_X19_Y2_N6
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( counter(22) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( counter(22) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(22),
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X19_Y2_N8
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LABCELL_X19_Y2_N9
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( counter(23) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( counter(23) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(23),
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X19_Y2_N11
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LABCELL_X19_Y2_N12
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( counter(24) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~98\ = CARRY(( counter(24) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(24),
	cin => \Add0~102\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X19_Y2_N14
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LABCELL_X19_Y2_N15
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( counter(25) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( counter(25) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(25),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X19_Y2_N17
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LABCELL_X19_Y2_N18
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( counter(26) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~18\ = CARRY(( counter(26) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(26),
	cin => \Add0~94\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X19_Y2_N20
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: LABCELL_X19_Y2_N21
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( counter(27) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( counter(27) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(27),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X19_Y2_N23
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: LABCELL_X19_Y2_N24
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( counter(28) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( counter(28) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(28),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X19_Y2_N26
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: LABCELL_X19_Y2_N27
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( counter(29) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~82\ = CARRY(( counter(29) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(29),
	cin => \Add0~26\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X19_Y2_N29
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: LABCELL_X19_Y2_N30
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( counter(30) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( counter(30) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(30),
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X19_Y2_N32
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: LABCELL_X19_Y2_N33
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( counter(31) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(31),
	cin => \Add0~86\,
	sumout => \Add0~125_sumout\);

-- Location: FF_X19_Y2_N35
\counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~125_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(31));

-- Location: MLABCELL_X18_Y3_N27
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( counter(3) & ( ((counter(1)) # (counter(2))) # (counter(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(0),
	datab => ALT_INV_counter(2),
	datad => ALT_INV_counter(1),
	dataf => ALT_INV_counter(3),
	combout => \LessThan1~0_combout\);

-- Location: MLABCELL_X18_Y3_N0
\bit_idx[21]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_idx[21]~2_combout\ = ( !counter(14) & ( !counter(15) & ( (!counter(13) & (!counter(16) & (!counter(11) & !counter(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(13),
	datab => ALT_INV_counter(16),
	datac => ALT_INV_counter(11),
	datad => ALT_INV_counter(12),
	datae => ALT_INV_counter(14),
	dataf => ALT_INV_counter(15),
	combout => \bit_idx[21]~2_combout\);

-- Location: MLABCELL_X18_Y3_N51
\bit_idx[21]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_idx[21]~0_combout\ = ( !counter(27) & ( (!counter(17) & !counter(28)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(17),
	datad => ALT_INV_counter(28),
	dataf => ALT_INV_counter(27),
	combout => \bit_idx[21]~0_combout\);

-- Location: MLABCELL_X18_Y3_N45
\bit_idx[21]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_idx[21]~1_combout\ = ( !counter(9) & ( !counter(8) & ( (!counter(7) & (!counter(6) & (!counter(4) & !counter(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(7),
	datab => ALT_INV_counter(6),
	datac => ALT_INV_counter(4),
	datad => ALT_INV_counter(10),
	datae => ALT_INV_counter(9),
	dataf => ALT_INV_counter(8),
	combout => \bit_idx[21]~1_combout\);

-- Location: MLABCELL_X18_Y3_N54
\bit_idx[21]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_idx[21]~3_combout\ = ( !counter(30) & ( !counter(23) & ( (!counter(5) & (!counter(29) & (!counter(25) & !counter(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(5),
	datab => ALT_INV_counter(29),
	datac => ALT_INV_counter(25),
	datad => ALT_INV_counter(24),
	datae => ALT_INV_counter(30),
	dataf => ALT_INV_counter(23),
	combout => \bit_idx[21]~3_combout\);

-- Location: MLABCELL_X18_Y3_N48
\bit_idx[21]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_idx[21]~4_combout\ = ( !counter(21) & ( (!counter(20) & (!counter(19) & (!counter(22) & !counter(18)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(20),
	datab => ALT_INV_counter(19),
	datac => ALT_INV_counter(22),
	datad => ALT_INV_counter(18),
	dataf => ALT_INV_counter(21),
	combout => \bit_idx[21]~4_combout\);

-- Location: MLABCELL_X18_Y3_N18
\bit_idx[21]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_idx[21]~5_combout\ = ( \bit_idx[21]~3_combout\ & ( \bit_idx[21]~4_combout\ & ( (\bit_idx[21]~2_combout\ & (!counter(26) & (\bit_idx[21]~0_combout\ & \bit_idx[21]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bit_idx[21]~2_combout\,
	datab => ALT_INV_counter(26),
	datac => \ALT_INV_bit_idx[21]~0_combout\,
	datad => \ALT_INV_bit_idx[21]~1_combout\,
	datae => \ALT_INV_bit_idx[21]~3_combout\,
	dataf => \ALT_INV_bit_idx[21]~4_combout\,
	combout => \bit_idx[21]~5_combout\);

-- Location: MLABCELL_X18_Y3_N6
\counter[29]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter[29]~0_combout\ = ( \LessThan1~0_combout\ & ( \bit_idx[21]~5_combout\ & ( (!\state.idle~q\) # ((!counter(31) & ((!\LessThan0~0_combout\) # (\state.dash~q\)))) ) ) ) # ( !\LessThan1~0_combout\ & ( \bit_idx[21]~5_combout\ & ( (!\state.idle~q\) # 
-- ((!\LessThan0~0_combout\ & (!\state.dash~q\ & !counter(31)))) ) ) ) # ( \LessThan1~0_combout\ & ( !\bit_idx[21]~5_combout\ & ( (!\state.idle~q\) # (!counter(31)) ) ) ) # ( !\LessThan1~0_combout\ & ( !\bit_idx[21]~5_combout\ & ( (!\state.idle~q\) # 
-- (!counter(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111111111010101011101010101010101110111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.idle~q\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_state.dash~q\,
	datad => ALT_INV_counter(31),
	datae => \ALT_INV_LessThan1~0_combout\,
	dataf => \ALT_INV_bit_idx[21]~5_combout\,
	combout => \counter[29]~0_combout\);

-- Location: FF_X19_Y3_N2
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \counter[29]~0_combout\,
	ena => \Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: MLABCELL_X18_Y3_N24
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !counter(2) & ( (!counter(3) & ((!counter(0)) # (!counter(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000111100001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(0),
	datac => ALT_INV_counter(3),
	datad => ALT_INV_counter(1),
	dataf => ALT_INV_counter(2),
	combout => \LessThan0~0_combout\);

-- Location: MLABCELL_X18_Y3_N12
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \bit_idx[21]~5_combout\ & ( (!\LessThan0~0_combout\ & !counter(31)) ) ) # ( !\bit_idx[21]~5_combout\ & ( !counter(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_counter(31),
	dataf => \ALT_INV_bit_idx[21]~5_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X17_Y3_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( bit_idx(1) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( bit_idx(1) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_idx(1),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: LABCELL_X17_Y3_N6
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( bit_idx(2) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~14\ = CARRY(( bit_idx(2) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bit_idx(2),
	cin => \Add1~6\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: LABCELL_X17_Y2_N3
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( bit_idx(21) ) + ( GND ) + ( \Add1~98\ ))
-- \Add1~106\ = CARRY(( bit_idx(21) ) + ( GND ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_idx(21),
	cin => \Add1~98\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: LABCELL_X17_Y2_N6
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( bit_idx(22) ) + ( GND ) + ( \Add1~106\ ))
-- \Add1~94\ = CARRY(( bit_idx(22) ) + ( GND ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bit_idx(22),
	cin => \Add1~106\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: FF_X17_Y2_N8
\bit_idx[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~93_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(22));

-- Location: LABCELL_X17_Y2_N9
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( bit_idx(23) ) + ( GND ) + ( \Add1~94\ ))
-- \Add1~90\ = CARRY(( bit_idx(23) ) + ( GND ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_idx(23),
	cin => \Add1~94\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: FF_X17_Y2_N11
\bit_idx[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~89_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(23));

-- Location: LABCELL_X17_Y2_N12
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( bit_idx(24) ) + ( GND ) + ( \Add1~90\ ))
-- \Add1~86\ = CARRY(( bit_idx(24) ) + ( GND ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bit_idx(24),
	cin => \Add1~90\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: FF_X17_Y2_N14
\bit_idx[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~85_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(24));

-- Location: LABCELL_X17_Y2_N15
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( bit_idx(25) ) + ( GND ) + ( \Add1~86\ ))
-- \Add1~82\ = CARRY(( bit_idx(25) ) + ( GND ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_idx(25),
	cin => \Add1~86\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X17_Y2_N17
\bit_idx[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~81_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(25));

-- Location: LABCELL_X17_Y2_N18
\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( bit_idx(26) ) + ( GND ) + ( \Add1~82\ ))
-- \Add1~126\ = CARRY(( bit_idx(26) ) + ( GND ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_idx(26),
	cin => \Add1~82\,
	sumout => \Add1~125_sumout\,
	cout => \Add1~126\);

-- Location: FF_X17_Y2_N20
\bit_idx[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~125_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(26));

-- Location: LABCELL_X17_Y2_N21
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( bit_idx(27) ) + ( GND ) + ( \Add1~126\ ))
-- \Add1~122\ = CARRY(( bit_idx(27) ) + ( GND ) + ( \Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_idx(27),
	cin => \Add1~126\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

-- Location: FF_X17_Y2_N23
\bit_idx[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~121_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(27));

-- Location: LABCELL_X17_Y2_N24
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( bit_idx(28) ) + ( GND ) + ( \Add1~122\ ))
-- \Add1~118\ = CARRY(( bit_idx(28) ) + ( GND ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_idx(28),
	cin => \Add1~122\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

-- Location: FF_X17_Y2_N26
\bit_idx[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~117_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(28));

-- Location: LABCELL_X17_Y2_N27
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( bit_idx(29) ) + ( GND ) + ( \Add1~118\ ))
-- \Add1~114\ = CARRY(( bit_idx(29) ) + ( GND ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_idx(29),
	cin => \Add1~118\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: FF_X17_Y2_N29
\bit_idx[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~113_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(29));

-- Location: LABCELL_X17_Y2_N30
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( bit_idx(30) ) + ( GND ) + ( \Add1~114\ ))
-- \Add1~110\ = CARRY(( bit_idx(30) ) + ( GND ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bit_idx(30),
	cin => \Add1~114\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: FF_X17_Y2_N32
\bit_idx[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~109_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(30));

-- Location: LABCELL_X17_Y2_N33
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( bit_idx(31) ) + ( GND ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_idx(31),
	cin => \Add1~110\,
	sumout => \Add1~9_sumout\);

-- Location: FF_X17_Y2_N35
\bit_idx[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(31));

-- Location: MLABCELL_X18_Y3_N30
\Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = ( \bit_idx[21]~5_combout\ & ( (!counter(31) & (\state.dash~q\ & \LessThan1~0_combout\)) ) ) # ( !\bit_idx[21]~5_combout\ & ( (!counter(31) & \state.dash~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(31),
	datac => \ALT_INV_state.dash~q\,
	datad => \ALT_INV_LessThan1~0_combout\,
	dataf => \ALT_INV_bit_idx[21]~5_combout\,
	combout => \Selector35~0_combout\);

-- Location: MLABCELL_X18_Y2_N39
\Selector35~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector35~1_combout\ = ( \state.pause~q\ & ( \LessThan0~1_combout\ & ( (((!\KEY[1]~input_o\ & !\state.idle~q\)) # (\state.dot~q\)) # (\Selector35~0_combout\) ) ) ) # ( !\state.pause~q\ & ( \LessThan0~1_combout\ & ( (((!\KEY[1]~input_o\ & 
-- !\state.idle~q\)) # (\state.dot~q\)) # (\Selector35~0_combout\) ) ) ) # ( \state.pause~q\ & ( !\LessThan0~1_combout\ ) ) # ( !\state.pause~q\ & ( !\LessThan0~1_combout\ & ( ((!\KEY[1]~input_o\ & !\state.idle~q\)) # (\Selector35~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010111010101111111111111111111010101111111111101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector35~0_combout\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_state.idle~q\,
	datad => \ALT_INV_state.dot~q\,
	datae => \ALT_INV_state.pause~q\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \Selector35~1_combout\);

-- Location: FF_X18_Y2_N41
\next_state.pause\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector35~1_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.pause~q\);

-- Location: FF_X18_Y2_N59
\state.pause\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \next_state.pause~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.pause~q\);

-- Location: MLABCELL_X18_Y2_N3
\Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = ( \state.pause~q\ & ( \LessThan0~1_combout\ & ( (!\Mux6~0_combout\ & ((bit_idx(31)) # (\LessThan2~6_combout\))) ) ) ) # ( \state.pause~q\ & ( !\LessThan0~1_combout\ & ( \state.dot~q\ ) ) ) # ( !\state.pause~q\ & ( 
-- !\LessThan0~1_combout\ & ( \state.dot~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~0_combout\,
	datab => \ALT_INV_LessThan2~6_combout\,
	datac => ALT_INV_bit_idx(31),
	datad => \ALT_INV_state.dot~q\,
	datae => \ALT_INV_state.pause~q\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \Selector33~0_combout\);

-- Location: FF_X18_Y2_N5
\next_state.dot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector33~0_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.dot~q\);

-- Location: FF_X18_Y2_N23
\state.dot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \next_state.dot~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.dot~q\);

-- Location: MLABCELL_X18_Y3_N15
\bit_idx[21]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_idx[21]~6_combout\ = ( \bit_idx[21]~5_combout\ & ( (!counter(31) & ((!\state.dash~q\ & (!\LessThan0~0_combout\)) # (\state.dash~q\ & ((\LessThan1~0_combout\))))) ) ) # ( !\bit_idx[21]~5_combout\ & ( !counter(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010000000110100001000000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.dash~q\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_counter(31),
	datad => \ALT_INV_LessThan1~0_combout\,
	dataf => \ALT_INV_bit_idx[21]~5_combout\,
	combout => \bit_idx[21]~6_combout\);

-- Location: MLABCELL_X18_Y3_N36
\bit_idx[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_idx[0]~7_combout\ = ( \state.idle~q\ & ( \bit_idx[21]~6_combout\ & ( (\KEY[0]~input_o\ & ((\Selector35~0_combout\) # (\state.dot~q\))) ) ) ) # ( !\state.idle~q\ & ( \bit_idx[21]~6_combout\ & ( (\KEY[0]~input_o\ & (((!\KEY[1]~input_o\) # 
-- (\Selector35~0_combout\)) # (\state.dot~q\))) ) ) ) # ( \state.idle~q\ & ( !\bit_idx[21]~6_combout\ & ( (\KEY[0]~input_o\ & \Selector35~0_combout\) ) ) ) # ( !\state.idle~q\ & ( !\bit_idx[21]~6_combout\ & ( (\KEY[0]~input_o\ & ((!\KEY[1]~input_o\) # 
-- (\Selector35~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001111000000000000111100001101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.dot~q\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_Selector35~0_combout\,
	datae => \ALT_INV_state.idle~q\,
	dataf => \ALT_INV_bit_idx[21]~6_combout\,
	combout => \bit_idx[0]~7_combout\);

-- Location: FF_X17_Y3_N8
\bit_idx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(2));

-- Location: LABCELL_X17_Y3_N9
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( bit_idx(3) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~30\ = CARRY(( bit_idx(3) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_idx(3),
	cin => \Add1~14\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X17_Y3_N11
\bit_idx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(3));

-- Location: LABCELL_X17_Y3_N12
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( bit_idx(4) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~26\ = CARRY(( bit_idx(4) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bit_idx(4),
	cin => \Add1~30\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X17_Y3_N14
\bit_idx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(4));

-- Location: LABCELL_X17_Y3_N15
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( bit_idx(5) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( bit_idx(5) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_idx(5),
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X17_Y3_N17
\bit_idx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(5));

-- Location: LABCELL_X17_Y3_N18
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( bit_idx(6) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~18\ = CARRY(( bit_idx(6) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_idx(6),
	cin => \Add1~22\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X17_Y3_N20
\bit_idx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(6));

-- Location: LABCELL_X17_Y3_N21
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( bit_idx(7) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~54\ = CARRY(( bit_idx(7) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_idx(7),
	cin => \Add1~18\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X17_Y3_N23
\bit_idx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(7));

-- Location: LABCELL_X17_Y3_N24
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( bit_idx(8) ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~50\ = CARRY(( bit_idx(8) ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_idx(8),
	cin => \Add1~54\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X17_Y3_N26
\bit_idx[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(8));

-- Location: LABCELL_X17_Y3_N27
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( bit_idx(9) ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~42\ = CARRY(( bit_idx(9) ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_idx(9),
	cin => \Add1~50\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X17_Y3_N29
\bit_idx[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(9));

-- Location: LABCELL_X17_Y3_N30
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( bit_idx(10) ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( bit_idx(10) ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bit_idx(10),
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X17_Y3_N32
\bit_idx[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(10));

-- Location: LABCELL_X17_Y3_N33
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( bit_idx(11) ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~38\ = CARRY(( bit_idx(11) ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_idx(11),
	cin => \Add1~46\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X17_Y3_N35
\bit_idx[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(11));

-- Location: LABCELL_X17_Y3_N36
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( bit_idx(12) ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~34\ = CARRY(( bit_idx(12) ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_idx(12),
	cin => \Add1~38\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X17_Y3_N38
\bit_idx[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(12));

-- Location: LABCELL_X17_Y3_N39
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( bit_idx(13) ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~78\ = CARRY(( bit_idx(13) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_idx(13),
	cin => \Add1~34\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X17_Y3_N41
\bit_idx[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(13));

-- Location: LABCELL_X17_Y3_N42
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( bit_idx(14) ) + ( GND ) + ( \Add1~78\ ))
-- \Add1~74\ = CARRY(( bit_idx(14) ) + ( GND ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_bit_idx(14),
	cin => \Add1~78\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X17_Y3_N44
\bit_idx[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~73_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(14));

-- Location: LABCELL_X17_Y3_N45
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( bit_idx(15) ) + ( GND ) + ( \Add1~74\ ))
-- \Add1~70\ = CARRY(( bit_idx(15) ) + ( GND ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_bit_idx(15),
	cin => \Add1~74\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X17_Y3_N47
\bit_idx[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(15));

-- Location: LABCELL_X17_Y3_N48
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( bit_idx(16) ) + ( GND ) + ( \Add1~70\ ))
-- \Add1~66\ = CARRY(( bit_idx(16) ) + ( GND ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_idx(16),
	cin => \Add1~70\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X17_Y3_N50
\bit_idx[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~65_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(16));

-- Location: LABCELL_X17_Y3_N51
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( bit_idx(17) ) + ( GND ) + ( \Add1~66\ ))
-- \Add1~62\ = CARRY(( bit_idx(17) ) + ( GND ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_idx(17),
	cin => \Add1~66\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X17_Y3_N53
\bit_idx[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(17));

-- Location: LABCELL_X17_Y3_N54
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( bit_idx(18) ) + ( GND ) + ( \Add1~62\ ))
-- \Add1~58\ = CARRY(( bit_idx(18) ) + ( GND ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_idx(18),
	cin => \Add1~62\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X17_Y3_N56
\bit_idx[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(18));

-- Location: LABCELL_X17_Y3_N57
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( bit_idx(19) ) + ( GND ) + ( \Add1~58\ ))
-- \Add1~102\ = CARRY(( bit_idx(19) ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_idx(19),
	cin => \Add1~58\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: FF_X17_Y3_N59
\bit_idx[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~101_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(19));

-- Location: LABCELL_X17_Y2_N0
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( bit_idx(20) ) + ( GND ) + ( \Add1~102\ ))
-- \Add1~98\ = CARRY(( bit_idx(20) ) + ( GND ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_bit_idx(20),
	cin => \Add1~102\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X17_Y2_N2
\bit_idx[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~97_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(20));

-- Location: FF_X17_Y2_N5
\bit_idx[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~105_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(21));

-- Location: LABCELL_X17_Y2_N54
\LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = ( !bit_idx(29) & ( !bit_idx(28) & ( (!bit_idx(21) & (!bit_idx(30) & (!bit_idx(27) & !bit_idx(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_idx(21),
	datab => ALT_INV_bit_idx(30),
	datac => ALT_INV_bit_idx(27),
	datad => ALT_INV_bit_idx(26),
	datae => ALT_INV_bit_idx(29),
	dataf => ALT_INV_bit_idx(28),
	combout => \LessThan2~5_combout\);

-- Location: LABCELL_X20_Y3_N54
\LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ( !bit_idx(7) & ( !bit_idx(9) & ( (!bit_idx(12) & (!bit_idx(10) & (!bit_idx(8) & !bit_idx(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_idx(12),
	datab => ALT_INV_bit_idx(10),
	datac => ALT_INV_bit_idx(8),
	datad => ALT_INV_bit_idx(11),
	datae => ALT_INV_bit_idx(7),
	dataf => ALT_INV_bit_idx(9),
	combout => \LessThan2~2_combout\);

-- Location: MLABCELL_X18_Y2_N27
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( !bit_idx(5) & ( !bit_idx(6) & ( (!bit_idx(3) & !bit_idx(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_idx(3),
	datac => ALT_INV_bit_idx(4),
	datae => ALT_INV_bit_idx(5),
	dataf => ALT_INV_bit_idx(6),
	combout => \LessThan2~1_combout\);

-- Location: LABCELL_X20_Y3_N36
\LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = ( !bit_idx(14) & ( !bit_idx(18) & ( (!bit_idx(17) & (!bit_idx(13) & (!bit_idx(15) & !bit_idx(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_idx(17),
	datab => ALT_INV_bit_idx(13),
	datac => ALT_INV_bit_idx(15),
	datad => ALT_INV_bit_idx(16),
	datae => ALT_INV_bit_idx(14),
	dataf => ALT_INV_bit_idx(18),
	combout => \LessThan2~3_combout\);

-- Location: LABCELL_X17_Y2_N48
\LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = ( !bit_idx(24) & ( !bit_idx(19) & ( (!bit_idx(20) & (!bit_idx(23) & (!bit_idx(22) & !bit_idx(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_idx(20),
	datab => ALT_INV_bit_idx(23),
	datac => ALT_INV_bit_idx(22),
	datad => ALT_INV_bit_idx(25),
	datae => ALT_INV_bit_idx(24),
	dataf => ALT_INV_bit_idx(19),
	combout => \LessThan2~4_combout\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X20_Y3_N15
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \SW[0]~input_o\ & ( (\SW[1]~input_o\ & !\SW[2]~input_o\) ) ) # ( !\SW[0]~input_o\ & ( !\SW[1]~input_o\ $ (\SW[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: MLABCELL_X18_Y3_N33
\tam_cod[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tam_cod[0]~0_combout\ = ( !\state.idle~q\ & ( (\KEY[0]~input_o\ & !\KEY[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_KEY[1]~input_o\,
	dataf => \ALT_INV_state.idle~q\,
	combout => \tam_cod[0]~0_combout\);

-- Location: FF_X20_Y3_N17
\tam_cod[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux4~0_combout\,
	ena => \tam_cod[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tam_cod(1));

-- Location: LABCELL_X20_Y3_N48
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \SW[0]~input_o\ & ( (\SW[1]~input_o\ & !\SW[2]~input_o\) ) ) # ( !\SW[0]~input_o\ & ( \SW[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: FF_X20_Y3_N49
\tam_cod[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux5~0_combout\,
	ena => \tam_cod[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tam_cod(0));

-- Location: LABCELL_X20_Y3_N12
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \SW[0]~input_o\ & ( (!\SW[1]~input_o\) # (\SW[2]~input_o\) ) ) # ( !\SW[0]~input_o\ & ( (\SW[1]~input_o\ & !\SW[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: FF_X20_Y3_N14
\morse_code[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux3~0_combout\,
	ena => \tam_cod[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => morse_code(0));

-- Location: LABCELL_X20_Y3_N0
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( bit_idx(0) & ( morse_code(0) & ( (!bit_idx(2)) # ((tam_cod(1) & !bit_idx(1))) ) ) ) # ( !bit_idx(0) & ( morse_code(0) & ( (!bit_idx(2)) # ((!tam_cod(1) & (!bit_idx(1) & tam_cod(0))) # (tam_cod(1) & ((!bit_idx(1)) # 
-- (tam_cod(0))))) ) ) ) # ( bit_idx(0) & ( !morse_code(0) & ( (!bit_idx(2) & (tam_cod(1) & !bit_idx(1))) ) ) ) # ( !bit_idx(0) & ( !morse_code(0) & ( (!bit_idx(2) & ((!tam_cod(1) & (!bit_idx(1) & tam_cod(0))) # (tam_cod(1) & ((!bit_idx(1)) # 
-- (tam_cod(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010100010001000000010000010111010111110111011101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_idx(2),
	datab => ALT_INV_tam_cod(1),
	datac => ALT_INV_bit_idx(1),
	datad => ALT_INV_tam_cod(0),
	datae => ALT_INV_bit_idx(0),
	dataf => ALT_INV_morse_code(0),
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X19_Y2_N42
\LessThan2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = ( \LessThan2~4_combout\ & ( \LessThan2~0_combout\ & ( (\LessThan2~5_combout\ & (\LessThan2~2_combout\ & (\LessThan2~1_combout\ & \LessThan2~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~5_combout\,
	datab => \ALT_INV_LessThan2~2_combout\,
	datac => \ALT_INV_LessThan2~1_combout\,
	datad => \ALT_INV_LessThan2~3_combout\,
	datae => \ALT_INV_LessThan2~4_combout\,
	dataf => \ALT_INV_LessThan2~0_combout\,
	combout => \LessThan2~6_combout\);

-- Location: MLABCELL_X18_Y2_N30
\Selector32~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector32~1_combout\ = ( bit_idx(31) & ( \state.pause~q\ & ( (!\KEY[1]~input_o\) # (\state.idle~q\) ) ) ) # ( !bit_idx(31) & ( \state.pause~q\ & ( (!\LessThan0~1_combout\ & (((!\KEY[1]~input_o\)) # (\state.idle~q\))) # (\LessThan0~1_combout\ & 
-- (\LessThan2~6_combout\ & ((!\KEY[1]~input_o\) # (\state.idle~q\)))) ) ) ) # ( bit_idx(31) & ( !\state.pause~q\ & ( (!\KEY[1]~input_o\) # (\state.idle~q\) ) ) ) # ( !bit_idx(31) & ( !\state.pause~q\ & ( (!\KEY[1]~input_o\) # (\state.idle~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001110100010111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_state.idle~q\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \ALT_INV_LessThan2~6_combout\,
	datae => ALT_INV_bit_idx(31),
	dataf => \ALT_INV_state.pause~q\,
	combout => \Selector32~1_combout\);

-- Location: FF_X18_Y2_N31
\next_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector32~1_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.idle~q\);

-- Location: FF_X18_Y3_N38
\state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \next_state.idle~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.idle~q\);

-- Location: FF_X17_Y3_N2
\bit_idx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(0));

-- Location: FF_X17_Y3_N5
\bit_idx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	sclr => \ALT_INV_state.idle~q\,
	ena => \bit_idx[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(1));

-- Location: LABCELL_X20_Y3_N30
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \SW[0]~input_o\ ) # ( !\SW[0]~input_o\ & ( (\SW[1]~input_o\ & !\SW[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: FF_X20_Y3_N32
\morse_code[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux1~0_combout\,
	ena => \tam_cod[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => morse_code(2));

-- Location: LABCELL_X20_Y3_N33
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \SW[0]~input_o\ & ( (!\SW[2]~input_o\) # (\SW[1]~input_o\) ) ) # ( !\SW[0]~input_o\ & ( (\SW[1]~input_o\ & \SW[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: FF_X20_Y3_N35
\morse_code[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	ena => \tam_cod[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => morse_code(1));

-- Location: LABCELL_X20_Y3_N51
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \SW[0]~input_o\ & ( \SW[2]~input_o\ ) ) # ( !\SW[0]~input_o\ & ( !\SW[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: FF_X20_Y3_N53
\morse_code[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux0~0_combout\,
	ena => \tam_cod[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => morse_code(3));

-- Location: LABCELL_X20_Y3_N42
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( bit_idx(0) & ( morse_code(3) & ( (!bit_idx(1) & (!morse_code(2))) # (bit_idx(1) & ((!morse_code(0)))) ) ) ) # ( !bit_idx(0) & ( morse_code(3) & ( (bit_idx(1) & !morse_code(1)) ) ) ) # ( bit_idx(0) & ( !morse_code(3) & ( (!bit_idx(1) & 
-- (!morse_code(2))) # (bit_idx(1) & ((!morse_code(0)))) ) ) ) # ( !bit_idx(0) & ( !morse_code(3) & ( (!bit_idx(1)) # (!morse_code(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010110111011000100001010000010100001101110110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_bit_idx(1),
	datab => ALT_INV_morse_code(2),
	datac => ALT_INV_morse_code(1),
	datad => ALT_INV_morse_code(0),
	datae => ALT_INV_bit_idx(0),
	dataf => ALT_INV_morse_code(3),
	combout => \Mux6~0_combout\);

-- Location: MLABCELL_X18_Y2_N6
\Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = ( \bit_idx[21]~5_combout\ & ( counter(31) & ( \state.dash~q\ ) ) ) # ( !\bit_idx[21]~5_combout\ & ( counter(31) & ( \state.dash~q\ ) ) ) # ( \bit_idx[21]~5_combout\ & ( !counter(31) & ( (\state.dash~q\ & !\LessThan1~0_combout\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.dash~q\,
	datac => \ALT_INV_LessThan1~0_combout\,
	datae => \ALT_INV_bit_idx[21]~5_combout\,
	dataf => ALT_INV_counter(31),
	combout => \Selector34~0_combout\);

-- Location: MLABCELL_X18_Y2_N42
\Selector34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector34~1_combout\ = ( \state.pause~q\ & ( \Selector34~0_combout\ ) ) # ( !\state.pause~q\ & ( \Selector34~0_combout\ ) ) # ( \state.pause~q\ & ( !\Selector34~0_combout\ & ( (\Mux6~0_combout\ & (\LessThan0~1_combout\ & ((\LessThan2~6_combout\) # 
-- (bit_idx(31))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~0_combout\,
	datab => ALT_INV_bit_idx(31),
	datac => \ALT_INV_LessThan0~1_combout\,
	datad => \ALT_INV_LessThan2~6_combout\,
	datae => \ALT_INV_state.pause~q\,
	dataf => \ALT_INV_Selector34~0_combout\,
	combout => \Selector34~1_combout\);

-- Location: FF_X18_Y2_N43
\next_state.dash\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector34~1_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.dash~q\);

-- Location: FF_X18_Y3_N35
\state.dash\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \next_state.dash~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.dash~q\);

-- Location: MLABCELL_X18_Y2_N51
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( \bit_idx[21]~5_combout\ & ( !counter(31) & ( \LessThan1~0_combout\ ) ) ) # ( !\bit_idx[21]~5_combout\ & ( !counter(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~0_combout\,
	datae => \ALT_INV_bit_idx[21]~5_combout\,
	dataf => ALT_INV_counter(31),
	combout => \LessThan1~1_combout\);

-- Location: MLABCELL_X18_Y2_N12
\Selector68~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = ( \vled~q\ & ( \LessThan0~1_combout\ & ( ((\state.pause~q\) # (\state.dot~q\)) # (\state.dash~q\) ) ) ) # ( !\vled~q\ & ( \LessThan0~1_combout\ & ( (\state.dash~q\ & !\LessThan1~1_combout\) ) ) ) # ( \vled~q\ & ( 
-- !\LessThan0~1_combout\ & ( (\state.dot~q\) # (\state.dash~q\) ) ) ) # ( !\vled~q\ & ( !\LessThan0~1_combout\ & ( ((\state.dash~q\ & !\LessThan1~1_combout\)) # (\state.dot~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010111110101111101000100010001000101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.dash~q\,
	datab => \ALT_INV_LessThan1~1_combout\,
	datac => \ALT_INV_state.dot~q\,
	datad => \ALT_INV_state.pause~q\,
	datae => \ALT_INV_vled~q\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \Selector68~0_combout\);

-- Location: FF_X18_Y2_N14
vled : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector68~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vled~q\);

-- Location: LABCELL_X36_Y39_N0
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


