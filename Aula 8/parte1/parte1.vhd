library ieee;
use ieee.std_logic_1164.all;

entity parte1 is
    port (
        clk     : in std_logic;    -- KEY0
        reset_n : in std_logic;    -- SW0
        w       : in std_logic;    -- SW1
        z       : out std_logic;   -- LED 9
        leds    : out std_logic_vector(8 downto 0)  -- LEDs 8 a 0
    );
end entity parte1;

architecture behavioral of parte1 is
    signal state : std_logic_vector(8 downto 0);

begin
    
    process (clk)
    begin
        if rising_edge(clk) then
            if reset_n = '0' then
                state <= "000000000";  -- reset to state A
            else
                case state is
                    when "000000000" =>  -- estado A
                        if w = '1' then
                            state <= "000000011";  -- estado B
                        else
                            state <= "000100001";  -- estado F
                        end if;

                    when "000000011" =>  -- estado B
                        if w = '1' then
                            state <= "000000101";  -- Estado C
                        else
                            state <= "000100001";  -- Estado F
                        end if;

                    when "000000101" =>  -- estado C
                        if w = '1' then
                            state <= "000001001";  -- D
                        else
                            state <= "000100001";  -- F
                        end if;

                    when "000001001" =>  -- Estado D
                        if w = '1' then
                            state <= "000010001";  -- E
                        else
                            state <= "000100001";  -- F
                        end if;

                    when "000010001" =>  -- E
                        if w = '1' then
                            state <= "000010001";  -- E
                        else
                            state <= "000100001";  -- F
                        end if;

                    when "000100001" =>  -- F
                        if w = '0' then
                            state <= "001000001";  -- G
                        else
                            state <= "000000011";  -- B
                        end if;
						  when "001000001" =>  -- G
                        if w = '0' then
                            state <= "010000001";  -- H
                        else
                            state <= "000000011";  -- B
                        end if;
						  when "010000001" =>  -- H
                        if w = '0' then
                            state <= "100000001";  -- I
                        else
                            state <= "000000011";  -- B
                        end if;
						  when "100000001" =>  -- I
                        if w = '0' then
                            state <= "100000001";  -- I
                        else
                            state <= "000000011";  -- B
                        end if;
								
                    when others =>
                        state <= "000000000";  -- A
                end case;
            end if;
        end if;
    end process;

    -- LED 9 acende nos estados E e I
    z <= '1' when (state = "000010001" or state = "100000001") else '0';

    -- Assign state to LEDs
    leds <= state;

end architecture behavioral;
