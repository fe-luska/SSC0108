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
-- Generated on "09/10/2024 15:23:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          contador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY contador_vhd_vec_tst IS
END contador_vhd_vec_tst;
ARCHITECTURE contador_arch OF contador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clear : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL Enable : STD_LOGIC;
SIGNAL Q1 : STD_LOGIC;
SIGNAL Q2 : STD_LOGIC;
SIGNAL Q3 : STD_LOGIC;
SIGNAL Q4 : STD_LOGIC;
COMPONENT contador
	PORT (
	Clear : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	Enable : IN STD_LOGIC;
	Q1 : OUT STD_LOGIC;
	Q2 : OUT STD_LOGIC;
	Q3 : OUT STD_LOGIC;
	Q4 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : contador
	PORT MAP (
-- list connections between master ports and signals
	Clear => Clear,
	CLK => CLK,
	Enable => Enable,
	Q1 => Q1,
	Q2 => Q2,
	Q3 => Q3,
	Q4 => Q4
	);

-- Clear
t_prcs_Clear: PROCESS
BEGIN
	Clear <= '0';
WAIT;
END PROCESS t_prcs_Clear;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 25000 ps;
	CLK <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- Enable
t_prcs_Enable: PROCESS
BEGIN
	Enable <= '0';
	WAIT FOR 20000 ps;
	Enable <= '1';
	WAIT FOR 30000 ps;
	Enable <= '0';
	WAIT FOR 10000 ps;
	Enable <= '1';
	WAIT FOR 20000 ps;
	Enable <= '0';
	WAIT FOR 10000 ps;
	Enable <= '1';
	WAIT FOR 10000 ps;
	Enable <= '0';
	WAIT FOR 10000 ps;
	Enable <= '1';
	WAIT FOR 10000 ps;
	Enable <= '0';
	WAIT FOR 60000 ps;
	Enable <= '1';
	WAIT FOR 10000 ps;
	Enable <= '0';
	WAIT FOR 10000 ps;
	Enable <= '1';
	WAIT FOR 30000 ps;
	Enable <= '0';
	WAIT FOR 10000 ps;
	Enable <= '1';
	WAIT FOR 10000 ps;
	Enable <= '0';
	WAIT FOR 10000 ps;
	Enable <= '1';
	WAIT FOR 20000 ps;
	Enable <= '0';
	WAIT FOR 10000 ps;
	Enable <= '1';
	WAIT FOR 80000 ps;
	Enable <= '0';
	WAIT FOR 10000 ps;
	Enable <= '1';
	WAIT FOR 10000 ps;
	Enable <= '0';
	WAIT FOR 10000 ps;
	Enable <= '1';
	WAIT FOR 10000 ps;
	Enable <= '0';
	WAIT FOR 20000 ps;
	Enable <= '1';
	WAIT FOR 40000 ps;
	Enable <= '0';
	WAIT FOR 20000 ps;
	Enable <= '1';
	WAIT FOR 20000 ps;
	Enable <= '0';
	WAIT FOR 30000 ps;
	Enable <= '1';
	WAIT FOR 10000 ps;
	Enable <= '0';
	WAIT FOR 20000 ps;
	Enable <= '1';
	WAIT FOR 20000 ps;
	Enable <= '0';
	WAIT FOR 20000 ps;
	Enable <= '1';
	WAIT FOR 20000 ps;
	Enable <= '0';
	WAIT FOR 30000 ps;
	Enable <= '1';
	WAIT FOR 10000 ps;
	Enable <= '0';
	WAIT FOR 30000 ps;
	Enable <= '1';
	WAIT FOR 10000 ps;
	Enable <= '0';
	WAIT FOR 10000 ps;
	Enable <= '1';
	WAIT FOR 10000 ps;
	Enable <= '0';
	WAIT FOR 40000 ps;
	Enable <= '1';
	WAIT FOR 20000 ps;
	Enable <= '0';
	WAIT FOR 40000 ps;
	Enable <= '1';
	WAIT FOR 20000 ps;
	Enable <= '0';
	WAIT FOR 10000 ps;
	Enable <= '1';
	WAIT FOR 10000 ps;
	Enable <= '0';
	WAIT FOR 40000 ps;
	Enable <= '1';
	WAIT FOR 20000 ps;
	Enable <= '0';
	WAIT FOR 10000 ps;
	Enable <= '1';
	WAIT FOR 20000 ps;
	Enable <= '0';
	WAIT FOR 10000 ps;
	Enable <= '1';
	WAIT FOR 20000 ps;
	Enable <= '0';
WAIT;
END PROCESS t_prcs_Enable;
END contador_arch;
