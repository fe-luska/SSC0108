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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"
-- CREATED		"Tue Aug 27 15:09:57 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY proj2 IS 
	PORT
	(
		D :  IN  STD_LOGIC;
		Clk :  IN  STD_LOGIC;
		Qa :  OUT  STD_LOGIC;
		Qb :  OUT  STD_LOGIC
	);
END proj2;

ARCHITECTURE bdf_type OF proj2 IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 
Qa <= SYNTHESIZED_WIRE_4;
Qb <= SYNTHESIZED_WIRE_1;



SYNTHESIZED_WIRE_0 <= NOT(D);



SYNTHESIZED_WIRE_2 <= NOT(Clk AND D);


SYNTHESIZED_WIRE_3 <= NOT(SYNTHESIZED_WIRE_0 AND Clk);


SYNTHESIZED_WIRE_4 <= NOT(SYNTHESIZED_WIRE_1 AND SYNTHESIZED_WIRE_2);


SYNTHESIZED_WIRE_1 <= NOT(SYNTHESIZED_WIRE_3 AND SYNTHESIZED_WIRE_4);


END bdf_type;