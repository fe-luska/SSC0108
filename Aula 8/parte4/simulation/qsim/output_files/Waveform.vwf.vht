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
-- Generated on "10/15/2024 17:14:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          parte4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY parte4_vhd_vec_tst IS
END parte4_vhd_vec_tst;
ARCHITECTURE parte4_arch OF parte4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL KEY : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC;
SIGNAL SW : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT parte4
	PORT (
	clk : IN STD_LOGIC;
	KEY : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	LEDR : OUT STD_LOGIC;
	SW : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : parte4
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	KEY => KEY,
	LEDR => LEDR,
	SW => SW
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- KEY[1]
t_prcs_KEY_1: PROCESS
BEGIN
	KEY(1) <= '1';
	WAIT FOR 30000 ps;
	KEY(1) <= '0';
	WAIT FOR 30000 ps;
	KEY(1) <= '1';
WAIT;
END PROCESS t_prcs_KEY_1;

-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '1';
WAIT;
END PROCESS t_prcs_KEY_0;
-- SW[2]
t_prcs_SW_2: PROCESS
BEGIN
	SW(2) <= '0';
WAIT;
END PROCESS t_prcs_SW_2;
-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
	SW(1) <= '0';
WAIT;
END PROCESS t_prcs_SW_1;
-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
	SW(0) <= '0';
WAIT;
END PROCESS t_prcs_SW_0;
END parte4_arch;
