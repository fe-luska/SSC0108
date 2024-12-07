library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Parte2a is
    port    (
        enable  : in    std_logic;
        clock   : in    std_logic;
        reset   : in    std_logic;
        q1      : out   std_logic_vector(6 downto 0);
        q2      : out   std_logic_vector(6 downto 0);
        q3      : out   std_logic_vector(6 downto 0);
        q4      : out   std_logic_vector(6 downto 0)
    );
end Parte2a;

architecture behavioral of Parte2a is
    signal counter   : unsigned(15 downto 0);

    -- Funções de conversão para display de 7 segmentos
    function int_to_7seg(d : integer) return std_logic_vector is
    begin
        case d is
            when 0   => return "1000000"; -- 0
            when 1   => return "1111001"; -- 1
            when 2   => return "0100100"; -- 2
            when 3   => return "0110000"; -- 3
            when 4   => return "0011001"; -- 4
            when 5   => return "0010010"; -- 5
            when 6   => return "0000010"; -- 6
            when 7   => return "1111000"; -- 7
            when 8   => return "0000000"; -- 8
            when 9   => return "0010000"; -- 9
            when 10  => return "0001000"; -- A
            when 11  => return "0000011"; -- B
            when 12  => return "1000110"; -- C
            when 13  => return "0100001"; -- D
            when 14  => return "0000110"; -- E
            when 15  => return "0001110"; -- F
            when others => return "0000000"; -- Desconhecido
        end case;
    end function;

begin

    process(clock, reset, enable)
    begin
        if reset = '1' then
            counter <= (others => '0');
        elsif rising_edge(clock) then
            if enable = '1' then
                counter <= counter + 1;
            end if;
        end if;
    end process;

    q1 <= int_to_7seg(to_integer(counter(3 downto 0))); -- Menos significativos
    q2 <= int_to_7seg(to_integer(counter(7 downto 4)));
    q3 <= int_to_7seg(to_integer(counter(11 downto 8)));
    q4 <= int_to_7seg(to_integer(counter(15 downto 12))); -- Mais significativos

end behavioral;
