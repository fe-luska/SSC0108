LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Vhdl2 IS
    PORT (
        D   : IN STD_LOGIC;
        Clk : IN STD_LOGIC;
        Q   : OUT STD_LOGIC
    );
END Vhdl2;

ARCHITECTURE Behavior OF Vhdl2 IS
BEGIN
    PROCESS (Clk)
    BEGIN
        IF falling_edge(Clk) THEN
            Q <= D;
        END IF;
    END PROCESS;
END Behavior;
