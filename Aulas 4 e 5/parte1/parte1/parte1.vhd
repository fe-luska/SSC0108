library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity parte1 is
    Port (
        clk   : in STD_LOGIC;
        T     : in STD_LOGIC;
		  clear : in STD_LOGIC;
        Q     : out STD_LOGIC; 
        Qn    : out STD_LOGIC
    );
end parte1;

architecture Behavioral of parte1 is
    signal Q_int : STD_LOGIC := '0';
begin
    process (clk, clear)
    begin
		  if clear = '1' then
            Q_int <= '0';
        elsif rising_edge(clk) then
            if T = '1' then
                Q_int <= not Q_int;
            end if;
        end if;
    end process;

    Q <= Q_int;
    Qn <= not Q_int;
end Behavioral;
