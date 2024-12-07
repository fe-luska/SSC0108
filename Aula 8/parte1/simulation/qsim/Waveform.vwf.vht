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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/14/2024 20:32:09"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          parte1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY parte1_vhd_vec_tst IS
END parte1_vhd_vec_tst;
ARCHITECTURE parte1_arch OF parte1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL leds : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL reset_n : STD_LOGIC;
SIGNAL w : STD_LOGIC;
SIGNAL z : STD_LOGIC;
COMPONENT parte1
	PORT (
	clk : IN STD_LOGIC;
	leds : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	reset_n : IN STD_LOGIC;
	w : IN STD_LOGIC;
	z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : parte1
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	leds => leds,
	reset_n => reset_n,
	w => w,
	z => z
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		clk <= '0';
		WAIT FOR 15000 ps;
		clk <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- reset_n
t_prcs_reset_n: PROCESS
BEGIN
	reset_n <= '1';
WAIT;
END PROCESS t_prcs_reset_n;

-- w
t_prcs_w: PROCESS
BEGIN
	w <= '1';
	WAIT FOR 1000 ps;
	w <= '0';
	WAIT FOR 69000 ps;
	w <= '1';
	WAIT FOR 171000 ps;
	w <= '0';
	WAIT FOR 360000 ps;
	w <= '1';
	WAIT FOR 120000 ps;
	w <= '0';
	WAIT FOR 120000 ps;
	w <= '1';
	WAIT FOR 120000 ps;
	w <= '0';
WAIT;
END PROCESS t_prcs_w;
END parte1_arch;
