library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity parte3 is
    port (
        clock   : in STD_LOGIC;
        wren    : in STD_LOGIC;
        address : in STD_LOGIC_VECTOR(4 downto 0);
        data    : in STD_LOGIC_VECTOR(3 downto 0);
        q       : out STD_LOGIC_VECTOR(3 downto 0);
        HEX4    : out STD_LOGIC_VECTOR(6 downto 0); -- Endereço 1 dígito (4 BITS)
        HEX5    : out STD_LOGIC_VECTOR(6 downto 0); -- Endereço 2 dígito (0, 0, 0, MSB)
        HEX2    : out STD_LOGIC_VECTOR(6 downto 0); -- Input dados
        HEX0    : out STD_LOGIC_VECTOR(6 downto 0)  -- Output
    );
end parte3;

architecture Behavioral of parte3 is
    TYPE mem IS ARRAY(0 TO 31) OF STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL memory_array : mem;
    signal outputRAM : STD_LOGIC_VECTOR(3 downto 0);
    signal inputRAM : STD_LOGIC_VECTOR(3 downto 0);
    signal endereco : INTEGER range 0 to 31;

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
    process(clock)
    begin
        if falling_edge(clock) then
            endereco <= to_integer(unsigned(address));
            
            if wren = '1' then
                memory_array(endereco) <= data;
            end if;

            outputRAM <= memory_array(endereco);                
        end if;
    end process;

    HEX0 <= int_to_7seg(to_integer(unsigned(outputRAM)));
    HEX2 <= int_to_7seg(to_integer(unsigned(data)));  
    HEX4 <= int_to_7seg(endereco mod 16);
    HEX5 <= int_to_7seg(endereco / 16);

end Behavioral;
