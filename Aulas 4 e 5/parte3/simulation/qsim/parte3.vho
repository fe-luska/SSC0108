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

-- DATE "09/16/2024 18:04:46"

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

ENTITY 	parte3 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	seg : OUT std_logic_vector(6 DOWNTO 0)
	);
END parte3;

-- Design Ports Information
-- seg[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF parte3 IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \counter_1s[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \counter_1s[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \counter_1s[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \counter_1s[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \counter_1s[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \counter_1s[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \counter_1s[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \counter_1s[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \counter_1s[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \counter_1s[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \counter_1s[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \counter_1s[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \counter_1s[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \counter_1s[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \counter_1s[26]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \counter_1s[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \clk_1s~0_combout\ : std_logic;
SIGNAL \clk_1s~q\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \digit_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \digit_counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
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
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \Add1~126\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \digit_counter[23]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \int_to_7seg~0_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL digit_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL counter_1s : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_counter_1s : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_digit_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_counter_1s[26]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter_1s[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter_1s[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter_1s[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter_1s[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter_1s[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter_1s[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter_1s[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter_1s[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter_1s[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter_1s[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter_1s[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter_1s[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter_1s[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter_1s[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter_1s[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_digit_counter[23]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_digit_counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_digit_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_clk_1s~q\ : std_logic;
SIGNAL \ALT_INV_Equal2~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_counter_1s(20) <= NOT counter_1s(20);
ALT_INV_counter_1s(21) <= NOT counter_1s(21);
ALT_INV_counter_1s(22) <= NOT counter_1s(22);
ALT_INV_counter_1s(23) <= NOT counter_1s(23);
ALT_INV_counter_1s(24) <= NOT counter_1s(24);
ALT_INV_counter_1s(25) <= NOT counter_1s(25);
ALT_INV_counter_1s(26) <= NOT counter_1s(26);
ALT_INV_counter_1s(27) <= NOT counter_1s(27);
ALT_INV_counter_1s(28) <= NOT counter_1s(28);
ALT_INV_counter_1s(29) <= NOT counter_1s(29);
ALT_INV_counter_1s(30) <= NOT counter_1s(30);
ALT_INV_counter_1s(31) <= NOT counter_1s(31);
ALT_INV_counter_1s(14) <= NOT counter_1s(14);
ALT_INV_counter_1s(15) <= NOT counter_1s(15);
ALT_INV_counter_1s(16) <= NOT counter_1s(16);
ALT_INV_counter_1s(17) <= NOT counter_1s(17);
ALT_INV_counter_1s(18) <= NOT counter_1s(18);
ALT_INV_counter_1s(19) <= NOT counter_1s(19);
ALT_INV_counter_1s(8) <= NOT counter_1s(8);
ALT_INV_counter_1s(9) <= NOT counter_1s(9);
ALT_INV_counter_1s(10) <= NOT counter_1s(10);
ALT_INV_counter_1s(11) <= NOT counter_1s(11);
ALT_INV_counter_1s(12) <= NOT counter_1s(12);
ALT_INV_counter_1s(13) <= NOT counter_1s(13);
ALT_INV_counter_1s(2) <= NOT counter_1s(2);
ALT_INV_counter_1s(3) <= NOT counter_1s(3);
ALT_INV_counter_1s(4) <= NOT counter_1s(4);
ALT_INV_counter_1s(5) <= NOT counter_1s(5);
ALT_INV_counter_1s(6) <= NOT counter_1s(6);
ALT_INV_counter_1s(7) <= NOT counter_1s(7);
ALT_INV_counter_1s(0) <= NOT counter_1s(0);
ALT_INV_counter_1s(1) <= NOT counter_1s(1);
ALT_INV_digit_counter(21) <= NOT digit_counter(21);
ALT_INV_digit_counter(22) <= NOT digit_counter(22);
ALT_INV_digit_counter(23) <= NOT digit_counter(23);
ALT_INV_digit_counter(24) <= NOT digit_counter(24);
ALT_INV_digit_counter(25) <= NOT digit_counter(25);
ALT_INV_digit_counter(26) <= NOT digit_counter(26);
ALT_INV_digit_counter(27) <= NOT digit_counter(27);
ALT_INV_digit_counter(28) <= NOT digit_counter(28);
ALT_INV_digit_counter(29) <= NOT digit_counter(29);
ALT_INV_digit_counter(30) <= NOT digit_counter(30);
ALT_INV_digit_counter(31) <= NOT digit_counter(31);
ALT_INV_digit_counter(14) <= NOT digit_counter(14);
ALT_INV_digit_counter(15) <= NOT digit_counter(15);
ALT_INV_digit_counter(16) <= NOT digit_counter(16);
ALT_INV_digit_counter(17) <= NOT digit_counter(17);
ALT_INV_digit_counter(18) <= NOT digit_counter(18);
ALT_INV_digit_counter(19) <= NOT digit_counter(19);
ALT_INV_digit_counter(8) <= NOT digit_counter(8);
ALT_INV_digit_counter(9) <= NOT digit_counter(9);
ALT_INV_digit_counter(10) <= NOT digit_counter(10);
ALT_INV_digit_counter(11) <= NOT digit_counter(11);
ALT_INV_digit_counter(12) <= NOT digit_counter(12);
ALT_INV_digit_counter(13) <= NOT digit_counter(13);
ALT_INV_digit_counter(4) <= NOT digit_counter(4);
ALT_INV_digit_counter(5) <= NOT digit_counter(5);
ALT_INV_digit_counter(6) <= NOT digit_counter(6);
ALT_INV_digit_counter(7) <= NOT digit_counter(7);
ALT_INV_digit_counter(20) <= NOT digit_counter(20);
ALT_INV_digit_counter(3) <= NOT digit_counter(3);
ALT_INV_digit_counter(2) <= NOT digit_counter(2);
ALT_INV_digit_counter(1) <= NOT digit_counter(1);
ALT_INV_digit_counter(0) <= NOT digit_counter(0);
\ALT_INV_counter_1s[26]~DUPLICATE_q\ <= NOT \counter_1s[26]~DUPLICATE_q\;
\ALT_INV_counter_1s[14]~DUPLICATE_q\ <= NOT \counter_1s[14]~DUPLICATE_q\;
\ALT_INV_counter_1s[16]~DUPLICATE_q\ <= NOT \counter_1s[16]~DUPLICATE_q\;
\ALT_INV_counter_1s[19]~DUPLICATE_q\ <= NOT \counter_1s[19]~DUPLICATE_q\;
\ALT_INV_counter_1s[8]~DUPLICATE_q\ <= NOT \counter_1s[8]~DUPLICATE_q\;
\ALT_INV_counter_1s[9]~DUPLICATE_q\ <= NOT \counter_1s[9]~DUPLICATE_q\;
\ALT_INV_counter_1s[11]~DUPLICATE_q\ <= NOT \counter_1s[11]~DUPLICATE_q\;
\ALT_INV_counter_1s[12]~DUPLICATE_q\ <= NOT \counter_1s[12]~DUPLICATE_q\;
\ALT_INV_counter_1s[13]~DUPLICATE_q\ <= NOT \counter_1s[13]~DUPLICATE_q\;
\ALT_INV_counter_1s[3]~DUPLICATE_q\ <= NOT \counter_1s[3]~DUPLICATE_q\;
\ALT_INV_counter_1s[4]~DUPLICATE_q\ <= NOT \counter_1s[4]~DUPLICATE_q\;
\ALT_INV_counter_1s[5]~DUPLICATE_q\ <= NOT \counter_1s[5]~DUPLICATE_q\;
\ALT_INV_counter_1s[6]~DUPLICATE_q\ <= NOT \counter_1s[6]~DUPLICATE_q\;
\ALT_INV_counter_1s[7]~DUPLICATE_q\ <= NOT \counter_1s[7]~DUPLICATE_q\;
\ALT_INV_counter_1s[0]~DUPLICATE_q\ <= NOT \counter_1s[0]~DUPLICATE_q\;
\ALT_INV_counter_1s[1]~DUPLICATE_q\ <= NOT \counter_1s[1]~DUPLICATE_q\;
\ALT_INV_digit_counter[23]~DUPLICATE_q\ <= NOT \digit_counter[23]~DUPLICATE_q\;
\ALT_INV_digit_counter[10]~DUPLICATE_q\ <= NOT \digit_counter[10]~DUPLICATE_q\;
\ALT_INV_digit_counter[2]~DUPLICATE_q\ <= NOT \digit_counter[2]~DUPLICATE_q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_clk_1s~q\ <= NOT \clk_1s~q\;
\ALT_INV_Equal2~5_combout\ <= NOT \Equal2~5_combout\;
\ALT_INV_Equal2~4_combout\ <= NOT \Equal2~4_combout\;
\ALT_INV_Equal2~3_combout\ <= NOT \Equal2~3_combout\;
\ALT_INV_Equal2~2_combout\ <= NOT \Equal2~2_combout\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;

-- Location: IOOBUF_X52_Y0_N53
\seg[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr5~combout\,
	devoe => ww_devoe,
	o => ww_seg(0));

-- Location: IOOBUF_X51_Y0_N36
\seg[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr4~combout\,
	devoe => ww_devoe,
	o => ww_seg(1));

-- Location: IOOBUF_X48_Y0_N76
\seg[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideNor0~0_combout\,
	devoe => ww_devoe,
	o => ww_seg(2));

-- Location: IOOBUF_X50_Y0_N36
\seg[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr2~combout\,
	devoe => ww_devoe,
	o => ww_seg(3));

-- Location: IOOBUF_X48_Y0_N93
\seg[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \int_to_7seg~0_combout\,
	devoe => ww_devoe,
	o => ww_seg(4));

-- Location: IOOBUF_X50_Y0_N53
\seg[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr1~combout\,
	devoe => ww_devoe,
	o => ww_seg(5));

-- Location: IOOBUF_X46_Y0_N36
\seg[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr0~combout\,
	devoe => ww_devoe,
	o => ww_seg(6));

-- Location: IOIBUF_X22_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
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

-- Location: MLABCELL_X37_Y2_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( digit_counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( digit_counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_digit_counter(0),
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: IOIBUF_X10_Y0_N92
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X36_Y4_N0
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \counter_1s[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add0~6\ = CARRY(( \counter_1s[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter_1s[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X36_Y4_N2
\counter_1s[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1s[0]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N3
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \counter_1s[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~2\ = CARRY(( \counter_1s[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter_1s[1]~DUPLICATE_q\,
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X36_Y4_N5
\counter_1s[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1s[1]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N6
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( counter_1s(2) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~30\ = CARRY(( counter_1s(2) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_1s(2),
	cin => \Add0~2\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X36_Y4_N7
\counter_1s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(2));

-- Location: LABCELL_X36_Y4_N9
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \counter_1s[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( \counter_1s[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter_1s[3]~DUPLICATE_q\,
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X36_Y4_N11
\counter_1s[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1s[3]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N12
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \counter_1s[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( \counter_1s[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_counter_1s[4]~DUPLICATE_q\,
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X36_Y4_N14
\counter_1s[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1s[4]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N15
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \counter_1s[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( \counter_1s[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter_1s[5]~DUPLICATE_q\,
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X36_Y4_N17
\counter_1s[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1s[5]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N18
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \counter_1s[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( \counter_1s[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter_1s[6]~DUPLICATE_q\,
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X36_Y4_N20
\counter_1s[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1s[6]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N21
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \counter_1s[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( \counter_1s[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter_1s[7]~DUPLICATE_q\,
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X36_Y4_N23
\counter_1s[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1s[7]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N24
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \counter_1s[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~54\ = CARRY(( \counter_1s[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter_1s[8]~DUPLICATE_q\,
	cin => \Add0~10\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X36_Y4_N26
\counter_1s[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1s[8]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N27
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \counter_1s[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~50\ = CARRY(( \counter_1s[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter_1s[9]~DUPLICATE_q\,
	cin => \Add0~54\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X36_Y4_N29
\counter_1s[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1s[9]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N30
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( counter_1s(10) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~46\ = CARRY(( counter_1s(10) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_1s(10),
	cin => \Add0~50\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X36_Y4_N31
\counter_1s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(10));

-- Location: LABCELL_X36_Y4_N33
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \counter_1s[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( \counter_1s[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter_1s[11]~DUPLICATE_q\,
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X36_Y4_N35
\counter_1s[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1s[11]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N36
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \counter_1s[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~38\ = CARRY(( \counter_1s[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter_1s[12]~DUPLICATE_q\,
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X36_Y4_N38
\counter_1s[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1s[12]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N39
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \counter_1s[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( \counter_1s[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter_1s[13]~DUPLICATE_q\,
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X36_Y4_N41
\counter_1s[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1s[13]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N42
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( \counter_1s[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~78\ = CARRY(( \counter_1s[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter_1s[14]~DUPLICATE_q\,
	cin => \Add0~34\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X36_Y3_N43
\counter_1s[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~77_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1s[14]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N45
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( counter_1s(15) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~74\ = CARRY(( counter_1s(15) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_1s(15),
	cin => \Add0~78\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X36_Y4_N47
\counter_1s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(15));

-- Location: LABCELL_X36_Y4_N48
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( \counter_1s[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( \counter_1s[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter_1s[16]~DUPLICATE_q\,
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X36_Y3_N49
\counter_1s[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~69_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1s[16]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N51
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( counter_1s(17) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( counter_1s(17) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_1s(17),
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X36_Y4_N52
\counter_1s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(17));

-- Location: LABCELL_X36_Y4_N54
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( counter_1s(18) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( counter_1s(18) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_1s(18),
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X36_Y4_N56
\counter_1s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(18));

-- Location: LABCELL_X36_Y4_N57
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( counter_1s(19) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( counter_1s(19) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_1s(19),
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X36_Y4_N59
\counter_1s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(19));

-- Location: LABCELL_X36_Y3_N0
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( counter_1s(20) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~126\ = CARRY(( counter_1s(20) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_1s(20),
	cin => \Add0~58\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: FF_X36_Y3_N2
\counter_1s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~125_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(20));

-- Location: LABCELL_X36_Y3_N3
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( counter_1s(21) ) + ( GND ) + ( \Add0~126\ ))
-- \Add0~122\ = CARRY(( counter_1s(21) ) + ( GND ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_1s(21),
	cin => \Add0~126\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X36_Y3_N5
\counter_1s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(21));

-- Location: LABCELL_X36_Y3_N6
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( counter_1s(22) ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~118\ = CARRY(( counter_1s(22) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_1s(22),
	cin => \Add0~122\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X36_Y3_N8
\counter_1s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(22));

-- Location: LABCELL_X36_Y3_N9
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( counter_1s(23) ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~114\ = CARRY(( counter_1s(23) ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_1s(23),
	cin => \Add0~118\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X36_Y3_N10
\counter_1s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(23));

-- Location: LABCELL_X36_Y3_N12
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( counter_1s(24) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( counter_1s(24) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_1s(24),
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X36_Y3_N14
\counter_1s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(24));

-- Location: LABCELL_X36_Y3_N15
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( counter_1s(25) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( counter_1s(25) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_1s(25),
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X36_Y3_N17
\counter_1s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(25));

-- Location: LABCELL_X36_Y3_N51
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( counter_1s(23) & ( !counter_1s(24) & ( (counter_1s(20) & (counter_1s(22) & (counter_1s(25) & counter_1s(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_1s(20),
	datab => ALT_INV_counter_1s(22),
	datac => ALT_INV_counter_1s(25),
	datad => ALT_INV_counter_1s(21),
	datae => ALT_INV_counter_1s(23),
	dataf => ALT_INV_counter_1s(24),
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X36_Y3_N18
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( \counter_1s[26]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( \counter_1s[26]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter_1s[26]~DUPLICATE_q\,
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X36_Y3_N20
\counter_1s[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1s[26]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y3_N21
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( counter_1s(27) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~98\ = CARRY(( counter_1s(27) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_1s(27),
	cin => \Add0~102\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X36_Y3_N23
\counter_1s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(27));

-- Location: LABCELL_X36_Y3_N24
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( counter_1s(28) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( counter_1s(28) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_1s(28),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X36_Y3_N26
\counter_1s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(28));

-- Location: LABCELL_X36_Y3_N27
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( counter_1s(29) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~90\ = CARRY(( counter_1s(29) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_1s(29),
	cin => \Add0~94\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X36_Y3_N29
\counter_1s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(29));

-- Location: LABCELL_X36_Y3_N30
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( counter_1s(30) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~86\ = CARRY(( counter_1s(30) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_1s(30),
	cin => \Add0~90\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X36_Y3_N32
\counter_1s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(30));

-- Location: LABCELL_X36_Y3_N33
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( counter_1s(31) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_1s(31),
	cin => \Add0~86\,
	sumout => \Add0~81_sumout\);

-- Location: FF_X36_Y3_N35
\counter_1s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(31));

-- Location: FF_X36_Y3_N19
\counter_1s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(26));

-- Location: LABCELL_X36_Y3_N36
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !counter_1s(29) & ( !counter_1s(28) & ( (!counter_1s(31) & (!counter_1s(30) & (!counter_1s(27) & !counter_1s(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_1s(31),
	datab => ALT_INV_counter_1s(30),
	datac => ALT_INV_counter_1s(27),
	datad => ALT_INV_counter_1s(26),
	datae => ALT_INV_counter_1s(29),
	dataf => ALT_INV_counter_1s(28),
	combout => \Equal0~4_combout\);

-- Location: FF_X36_Y4_N1
\counter_1s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(0));

-- Location: FF_X36_Y4_N4
\counter_1s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(1));

-- Location: MLABCELL_X37_Y4_N12
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( counter_1s(1) & ( counter_1s(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_1s(0),
	dataf => ALT_INV_counter_1s(1),
	combout => \Equal0~0_combout\);

-- Location: FF_X36_Y3_N50
\counter_1s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~69_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(16));

-- Location: FF_X36_Y3_N44
\counter_1s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~77_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(14));

-- Location: FF_X36_Y4_N58
\counter_1s[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_1s[19]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y3_N45
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( counter_1s(15) & ( !counter_1s(18) & ( (!counter_1s(16) & (counter_1s(14) & (\counter_1s[19]~DUPLICATE_q\ & counter_1s(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_1s(16),
	datab => ALT_INV_counter_1s(14),
	datac => \ALT_INV_counter_1s[19]~DUPLICATE_q\,
	datad => ALT_INV_counter_1s(17),
	datae => ALT_INV_counter_1s(15),
	dataf => ALT_INV_counter_1s(18),
	combout => \Equal0~3_combout\);

-- Location: FF_X36_Y4_N40
\counter_1s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(13));

-- Location: FF_X36_Y4_N34
\counter_1s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(11));

-- Location: FF_X36_Y4_N25
\counter_1s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(8));

-- Location: FF_X36_Y4_N28
\counter_1s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(9));

-- Location: FF_X36_Y4_N37
\counter_1s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(12));

-- Location: MLABCELL_X37_Y4_N39
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !counter_1s(9) & ( counter_1s(12) & ( (counter_1s(13) & (!counter_1s(11) & (!counter_1s(8) & !counter_1s(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_1s(13),
	datab => ALT_INV_counter_1s(11),
	datac => ALT_INV_counter_1s(8),
	datad => ALT_INV_counter_1s(10),
	datae => ALT_INV_counter_1s(9),
	dataf => ALT_INV_counter_1s(12),
	combout => \Equal0~2_combout\);

-- Location: FF_X36_Y4_N16
\counter_1s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(5));

-- Location: FF_X36_Y4_N13
\counter_1s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(4));

-- Location: FF_X36_Y4_N10
\counter_1s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(3));

-- Location: FF_X36_Y4_N22
\counter_1s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(7));

-- Location: FF_X36_Y4_N19
\counter_1s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_1s(6));

-- Location: MLABCELL_X37_Y4_N6
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !counter_1s(7) & ( counter_1s(6) & ( (counter_1s(2) & (counter_1s(5) & (counter_1s(4) & counter_1s(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_1s(2),
	datab => ALT_INV_counter_1s(5),
	datac => ALT_INV_counter_1s(4),
	datad => ALT_INV_counter_1s(3),
	datae => ALT_INV_counter_1s(7),
	dataf => ALT_INV_counter_1s(6),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X36_Y3_N54
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~2_combout\ & ( \Equal0~1_combout\ & ( (\Equal0~5_combout\ & (\Equal0~4_combout\ & (\Equal0~0_combout\ & \Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_Equal0~4_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~6_combout\);

-- Location: LABCELL_X35_Y3_N3
\clk_1s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_1s~0_combout\ = ( !\clk_1s~q\ & ( \Equal0~6_combout\ ) ) # ( \clk_1s~q\ & ( !\Equal0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_clk_1s~q\,
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \clk_1s~0_combout\);

-- Location: FF_X35_Y3_N5
clk_1s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clk_1s~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1s~q\);

-- Location: FF_X37_Y2_N7
\digit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(2));

-- Location: MLABCELL_X37_Y2_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( digit_counter(1) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( digit_counter(1) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_digit_counter(1),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: MLABCELL_X37_Y2_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( digit_counter(2) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( digit_counter(2) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_digit_counter(2),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X37_Y2_N8
\digit_counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit_counter[2]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y2_N9
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( digit_counter(3) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( digit_counter(3) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_digit_counter(3),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X37_Y2_N11
\digit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(3));

-- Location: FF_X37_Y2_N31
\digit_counter[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit_counter[10]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y2_N12
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( digit_counter(4) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~34\ = CARRY(( digit_counter(4) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_digit_counter(4),
	cin => \Add1~14\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X37_Y2_N14
\digit_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(4));

-- Location: MLABCELL_X37_Y2_N15
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( digit_counter(5) ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~30\ = CARRY(( digit_counter(5) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_digit_counter(5),
	cin => \Add1~34\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X37_Y2_N17
\digit_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(5));

-- Location: MLABCELL_X37_Y2_N18
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( digit_counter(6) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~26\ = CARRY(( digit_counter(6) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_digit_counter(6),
	cin => \Add1~30\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X37_Y2_N20
\digit_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(6));

-- Location: MLABCELL_X37_Y2_N21
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( digit_counter(7) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( digit_counter(7) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_digit_counter(7),
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X37_Y2_N23
\digit_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(7));

-- Location: MLABCELL_X37_Y2_N24
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( digit_counter(8) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~58\ = CARRY(( digit_counter(8) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_digit_counter(8),
	cin => \Add1~22\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X37_Y2_N26
\digit_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(8));

-- Location: MLABCELL_X37_Y2_N27
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( digit_counter(9) ) + ( GND ) + ( \Add1~58\ ))
-- \Add1~54\ = CARRY(( digit_counter(9) ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_digit_counter(9),
	cin => \Add1~58\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X37_Y2_N29
\digit_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(9));

-- Location: MLABCELL_X37_Y2_N30
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( \digit_counter[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~50\ = CARRY(( \digit_counter[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_digit_counter[10]~DUPLICATE_q\,
	cin => \Add1~54\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X37_Y2_N32
\digit_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(10));

-- Location: MLABCELL_X37_Y2_N33
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( digit_counter(11) ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~46\ = CARRY(( digit_counter(11) ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digit_counter(11),
	cin => \Add1~50\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X37_Y2_N35
\digit_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(11));

-- Location: MLABCELL_X37_Y2_N36
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( digit_counter(12) ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~42\ = CARRY(( digit_counter(12) ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_digit_counter(12),
	cin => \Add1~46\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X37_Y2_N38
\digit_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(12));

-- Location: MLABCELL_X37_Y2_N39
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( digit_counter(13) ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~38\ = CARRY(( digit_counter(13) ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_digit_counter(13),
	cin => \Add1~42\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X37_Y2_N41
\digit_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(13));

-- Location: LABCELL_X36_Y2_N0
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( !digit_counter(9) & ( !digit_counter(13) & ( (!digit_counter(10) & (!digit_counter(8) & (!digit_counter(11) & !digit_counter(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digit_counter(10),
	datab => ALT_INV_digit_counter(8),
	datac => ALT_INV_digit_counter(11),
	datad => ALT_INV_digit_counter(12),
	datae => ALT_INV_digit_counter(9),
	dataf => ALT_INV_digit_counter(13),
	combout => \Equal2~1_combout\);

-- Location: MLABCELL_X37_Y2_N42
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( digit_counter(14) ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~82\ = CARRY(( digit_counter(14) ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_digit_counter(14),
	cin => \Add1~38\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X37_Y2_N43
\digit_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~81_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(14));

-- Location: MLABCELL_X37_Y2_N45
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( digit_counter(15) ) + ( GND ) + ( \Add1~82\ ))
-- \Add1~78\ = CARRY(( digit_counter(15) ) + ( GND ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_digit_counter(15),
	cin => \Add1~82\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X36_Y2_N50
\digit_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add1~77_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	sload => VCC,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(15));

-- Location: MLABCELL_X37_Y2_N48
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( digit_counter(16) ) + ( GND ) + ( \Add1~78\ ))
-- \Add1~74\ = CARRY(( digit_counter(16) ) + ( GND ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_digit_counter(16),
	cin => \Add1~78\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X37_Y2_N50
\digit_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~73_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(16));

-- Location: MLABCELL_X37_Y2_N51
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( digit_counter(17) ) + ( GND ) + ( \Add1~74\ ))
-- \Add1~70\ = CARRY(( digit_counter(17) ) + ( GND ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digit_counter(17),
	cin => \Add1~74\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X37_Y2_N53
\digit_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(17));

-- Location: MLABCELL_X37_Y2_N54
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( digit_counter(18) ) + ( GND ) + ( \Add1~70\ ))
-- \Add1~66\ = CARRY(( digit_counter(18) ) + ( GND ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_digit_counter(18),
	cin => \Add1~70\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X37_Y2_N56
\digit_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~65_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(18));

-- Location: MLABCELL_X37_Y2_N57
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( digit_counter(19) ) + ( GND ) + ( \Add1~66\ ))
-- \Add1~62\ = CARRY(( digit_counter(19) ) + ( GND ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_digit_counter(19),
	cin => \Add1~66\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X37_Y2_N59
\digit_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(19));

-- Location: MLABCELL_X37_Y1_N0
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( digit_counter(20) ) + ( GND ) + ( \Add1~62\ ))
-- \Add1~18\ = CARRY(( digit_counter(20) ) + ( GND ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_digit_counter(20),
	cin => \Add1~62\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X37_Y1_N1
\digit_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(20));

-- Location: LABCELL_X36_Y2_N18
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !digit_counter(7) & ( !digit_counter(6) & ( (!digit_counter(4) & !digit_counter(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_digit_counter(4),
	datac => ALT_INV_digit_counter(5),
	datae => ALT_INV_digit_counter(7),
	dataf => ALT_INV_digit_counter(6),
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X36_Y2_N42
\Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ( !digit_counter(19) & ( !digit_counter(14) & ( (!digit_counter(17) & (!digit_counter(18) & (!digit_counter(15) & !digit_counter(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digit_counter(17),
	datab => ALT_INV_digit_counter(18),
	datac => ALT_INV_digit_counter(15),
	datad => ALT_INV_digit_counter(16),
	datae => ALT_INV_digit_counter(19),
	dataf => ALT_INV_digit_counter(14),
	combout => \Equal2~2_combout\);

-- Location: MLABCELL_X37_Y1_N3
\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( digit_counter(21) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~126\ = CARRY(( digit_counter(21) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_digit_counter(21),
	cin => \Add1~18\,
	sumout => \Add1~125_sumout\,
	cout => \Add1~126\);

-- Location: FF_X37_Y1_N5
\digit_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~125_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(21));

-- Location: MLABCELL_X37_Y1_N6
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( digit_counter(22) ) + ( GND ) + ( \Add1~126\ ))
-- \Add1~122\ = CARRY(( digit_counter(22) ) + ( GND ) + ( \Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_digit_counter(22),
	cin => \Add1~126\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

-- Location: FF_X37_Y1_N8
\digit_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~121_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(22));

-- Location: MLABCELL_X37_Y1_N9
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( \digit_counter[23]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~122\ ))
-- \Add1~118\ = CARRY(( \digit_counter[23]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_digit_counter[23]~DUPLICATE_q\,
	cin => \Add1~122\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

-- Location: FF_X37_Y1_N11
\digit_counter[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~117_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit_counter[23]~DUPLICATE_q\);

-- Location: MLABCELL_X37_Y1_N12
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( digit_counter(24) ) + ( GND ) + ( \Add1~118\ ))
-- \Add1~114\ = CARRY(( digit_counter(24) ) + ( GND ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_digit_counter(24),
	cin => \Add1~118\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: FF_X37_Y1_N14
\digit_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~113_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(24));

-- Location: MLABCELL_X37_Y1_N15
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( digit_counter(25) ) + ( GND ) + ( \Add1~114\ ))
-- \Add1~110\ = CARRY(( digit_counter(25) ) + ( GND ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_digit_counter(25),
	cin => \Add1~114\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: FF_X37_Y1_N17
\digit_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~109_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(25));

-- Location: MLABCELL_X37_Y1_N18
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( digit_counter(26) ) + ( GND ) + ( \Add1~110\ ))
-- \Add1~106\ = CARRY(( digit_counter(26) ) + ( GND ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_digit_counter(26),
	cin => \Add1~110\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: FF_X37_Y1_N20
\digit_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~105_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(26));

-- Location: MLABCELL_X37_Y1_N21
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( digit_counter(27) ) + ( GND ) + ( \Add1~106\ ))
-- \Add1~102\ = CARRY(( digit_counter(27) ) + ( GND ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_digit_counter(27),
	cin => \Add1~106\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: FF_X37_Y1_N23
\digit_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~101_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(27));

-- Location: MLABCELL_X37_Y1_N24
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( digit_counter(28) ) + ( GND ) + ( \Add1~102\ ))
-- \Add1~98\ = CARRY(( digit_counter(28) ) + ( GND ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_digit_counter(28),
	cin => \Add1~102\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X37_Y1_N26
\digit_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~97_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(28));

-- Location: MLABCELL_X37_Y1_N27
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( digit_counter(29) ) + ( GND ) + ( \Add1~98\ ))
-- \Add1~94\ = CARRY(( digit_counter(29) ) + ( GND ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_digit_counter(29),
	cin => \Add1~98\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: FF_X37_Y1_N28
\digit_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~93_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(29));

-- Location: MLABCELL_X37_Y1_N30
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( digit_counter(30) ) + ( GND ) + ( \Add1~94\ ))
-- \Add1~90\ = CARRY(( digit_counter(30) ) + ( GND ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_digit_counter(30),
	cin => \Add1~94\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: FF_X37_Y1_N32
\digit_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~89_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(30));

-- Location: MLABCELL_X37_Y1_N33
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( digit_counter(31) ) + ( GND ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digit_counter(31),
	cin => \Add1~90\,
	sumout => \Add1~85_sumout\);

-- Location: FF_X37_Y1_N35
\digit_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~85_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(31));

-- Location: MLABCELL_X37_Y1_N48
\Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = ( !digit_counter(27) & ( !digit_counter(26) & ( (!digit_counter(28) & (!digit_counter(30) & (!digit_counter(31) & !digit_counter(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digit_counter(28),
	datab => ALT_INV_digit_counter(30),
	datac => ALT_INV_digit_counter(31),
	datad => ALT_INV_digit_counter(29),
	datae => ALT_INV_digit_counter(27),
	dataf => ALT_INV_digit_counter(26),
	combout => \Equal2~3_combout\);

-- Location: FF_X37_Y1_N10
\digit_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~117_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(23));

-- Location: MLABCELL_X37_Y1_N42
\Equal2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = ( !digit_counter(23) & ( !digit_counter(24) & ( (!digit_counter(25) & (!digit_counter(21) & !digit_counter(22))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_digit_counter(25),
	datac => ALT_INV_digit_counter(21),
	datad => ALT_INV_digit_counter(22),
	datae => ALT_INV_digit_counter(23),
	dataf => ALT_INV_digit_counter(24),
	combout => \Equal2~4_combout\);

-- Location: LABCELL_X36_Y2_N12
\Equal2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = ( \Equal2~3_combout\ & ( \Equal2~4_combout\ & ( (\Equal2~1_combout\ & (!digit_counter(20) & (\Equal2~0_combout\ & \Equal2~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~1_combout\,
	datab => ALT_INV_digit_counter(20),
	datac => \ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_Equal2~2_combout\,
	datae => \ALT_INV_Equal2~3_combout\,
	dataf => \ALT_INV_Equal2~4_combout\,
	combout => \Equal2~5_combout\);

-- Location: LABCELL_X36_Y2_N6
\Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = ( !digit_counter(1) & ( \Equal2~5_combout\ & ( (digit_counter(0) & (!\digit_counter[2]~DUPLICATE_q\ & digit_counter(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digit_counter(0),
	datab => \ALT_INV_digit_counter[2]~DUPLICATE_q\,
	datac => ALT_INV_digit_counter(3),
	datae => ALT_INV_digit_counter(1),
	dataf => \ALT_INV_Equal2~5_combout\,
	combout => \Equal11~0_combout\);

-- Location: FF_X37_Y2_N2
\digit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(0));

-- Location: FF_X37_Y2_N5
\digit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \Equal11~0_combout\,
	ena => \clk_1s~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit_counter(1));

-- Location: LABCELL_X36_Y2_N48
WideOr5 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = ( digit_counter(3) & ( \Equal2~5_combout\ & ( (\digit_counter[2]~DUPLICATE_q\) # (digit_counter(1)) ) ) ) # ( !digit_counter(3) & ( \Equal2~5_combout\ & ( (!digit_counter(1) & (!\digit_counter[2]~DUPLICATE_q\)) # (digit_counter(1) & 
-- (\digit_counter[2]~DUPLICATE_q\ & digit_counter(0))) ) ) ) # ( digit_counter(3) & ( !\Equal2~5_combout\ ) ) # ( !digit_counter(3) & ( !\Equal2~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110001001100010010111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digit_counter(1),
	datab => \ALT_INV_digit_counter[2]~DUPLICATE_q\,
	datac => ALT_INV_digit_counter(0),
	datae => ALT_INV_digit_counter(3),
	dataf => \ALT_INV_Equal2~5_combout\,
	combout => \WideOr5~combout\);

-- Location: LABCELL_X36_Y2_N57
WideOr4 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = ( digit_counter(1) & ( \Equal2~5_combout\ & ( ((!\digit_counter[2]~DUPLICATE_q\) # (digit_counter(0))) # (digit_counter(3)) ) ) ) # ( !digit_counter(1) & ( \Equal2~5_combout\ & ( (!digit_counter(3) & (!\digit_counter[2]~DUPLICATE_q\ & 
-- digit_counter(0))) # (digit_counter(3) & (\digit_counter[2]~DUPLICATE_q\)) ) ) ) # ( digit_counter(1) & ( !\Equal2~5_combout\ ) ) # ( !digit_counter(1) & ( !\Equal2~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000101101001011111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digit_counter(3),
	datac => \ALT_INV_digit_counter[2]~DUPLICATE_q\,
	datad => ALT_INV_digit_counter(0),
	datae => ALT_INV_digit_counter(1),
	dataf => \ALT_INV_Equal2~5_combout\,
	combout => \WideOr4~combout\);

-- Location: LABCELL_X36_Y2_N27
\WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = ( digit_counter(1) & ( \Equal2~5_combout\ & ( (digit_counter(0)) # (digit_counter(3)) ) ) ) # ( !digit_counter(1) & ( \Equal2~5_combout\ & ( (digit_counter(0)) # (\digit_counter[2]~DUPLICATE_q\) ) ) ) # ( digit_counter(1) & ( 
-- !\Equal2~5_combout\ ) ) # ( !digit_counter(1) & ( !\Equal2~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digit_counter(3),
	datac => \ALT_INV_digit_counter[2]~DUPLICATE_q\,
	datad => ALT_INV_digit_counter(0),
	datae => ALT_INV_digit_counter(1),
	dataf => \ALT_INV_Equal2~5_combout\,
	combout => \WideNor0~0_combout\);

-- Location: LABCELL_X36_Y2_N30
WideOr2 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = ( \Equal2~5_combout\ & ( (!digit_counter(1) & (!\digit_counter[2]~DUPLICATE_q\ $ (((!digit_counter(0)) # (digit_counter(3)))))) # (digit_counter(1) & (((digit_counter(0) & \digit_counter[2]~DUPLICATE_q\)) # (digit_counter(3)))) ) ) # ( 
-- !\Equal2~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101100011000111110110001100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digit_counter(0),
	datab => \ALT_INV_digit_counter[2]~DUPLICATE_q\,
	datac => ALT_INV_digit_counter(3),
	datad => ALT_INV_digit_counter(1),
	dataf => \ALT_INV_Equal2~5_combout\,
	combout => \WideOr2~combout\);

-- Location: LABCELL_X36_Y2_N36
\int_to_7seg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \int_to_7seg~0_combout\ = ( \Equal2~5_combout\ & ( (!\digit_counter[2]~DUPLICATE_q\ & (digit_counter(1) & ((!digit_counter(0)) # (digit_counter(3))))) # (\digit_counter[2]~DUPLICATE_q\ & (((digit_counter(3))))) ) ) # ( !\Equal2~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001000001111110000100000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digit_counter(0),
	datab => \ALT_INV_digit_counter[2]~DUPLICATE_q\,
	datac => ALT_INV_digit_counter(1),
	datad => ALT_INV_digit_counter(3),
	dataf => \ALT_INV_Equal2~5_combout\,
	combout => \int_to_7seg~0_combout\);

-- Location: LABCELL_X36_Y2_N33
WideOr1 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = ( \Equal2~5_combout\ & ( (!\digit_counter[2]~DUPLICATE_q\ & (((digit_counter(3) & digit_counter(1))))) # (\digit_counter[2]~DUPLICATE_q\ & ((!digit_counter(0) $ (!digit_counter(1))) # (digit_counter(3)))) ) ) # ( !\Equal2~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100010011001011110001001100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digit_counter(0),
	datab => \ALT_INV_digit_counter[2]~DUPLICATE_q\,
	datac => ALT_INV_digit_counter(3),
	datad => ALT_INV_digit_counter(1),
	dataf => \ALT_INV_Equal2~5_combout\,
	combout => \WideOr1~combout\);

-- Location: LABCELL_X36_Y2_N39
WideOr0 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = ( \Equal2~5_combout\ & ( (!digit_counter(1) & (!\digit_counter[2]~DUPLICATE_q\ $ (((!digit_counter(0)) # (digit_counter(3)))))) # (digit_counter(1) & (((digit_counter(3))))) ) ) # ( !\Equal2~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101100011000011110110001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_digit_counter(0),
	datab => \ALT_INV_digit_counter[2]~DUPLICATE_q\,
	datac => ALT_INV_digit_counter(3),
	datad => ALT_INV_digit_counter(1),
	dataf => \ALT_INV_Equal2~5_combout\,
	combout => \WideOr0~combout\);

-- Location: MLABCELL_X34_Y39_N3
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


