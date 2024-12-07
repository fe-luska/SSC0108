library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity parte2 is
    port (
        clock   : in STD_LOGIC;
        wren    : in STD_LOGIC;
        address : in STD_LOGIC_VECTOR(4 downto 0);
        data    : in STD_LOGIC_VECTOR(3 downto 0);
        q       : out STD_LOGIC_VECTOR(3 downto 0);
        HEX4    : out STD_LOGIC_VECTOR(6 downto 0); -- Endereço 1 dígito (4 BITS)
        HEX5    : out STD_LOGIC_VECTOR(6 downto 0); -- Endereço 2 dígito (0, 0, 0, MSB)
        HEX2    : out STD_LOGIC_VECTOR(6 downto 0); -- Input dados
        HEX0    : out STD_LOGIC_VECTOR(6 downto 0)  -- Output dados
    );
end parte2;

architecture Behavioral of parte2 is
    component ram32x4
        port (
            address : in STD_LOGIC_VECTOR(4 downto 0);
            clock   : in STD_LOGIC;
            data    : in STD_LOGIC_VECTOR(3 downto 0);
            wren    : in STD_LOGIC;
            q       : buffer STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;

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

    signal outputRAM : STD_LOGIC_VECTOR(3 downto 0);
    signal inputRAM : STD_LOGIC_VECTOR(3 downto 0);
    signal endereco : STD_LOGIC_VECTOR(4 downto 0);
begin
    
    -- outputRAM <= q; -- Saída da RAM
    -- inputRAM <= data; -- Dados de entrada
    -- endereco <= address; 

    
    memoria : ram32x4
        port map (
            address => endereco,
            clock   => clock,
            data    => inputRAM,
            wren    => wren,
            q       => outputRAM
        );
		  
	 process(clock)
    begin
        if rising_edge(clock) then
            endereco <= address(4 downto 0);
				inputRAM <= data(3 downto 0);
        end if;
    end process;
		  
	 HEX0 <= int_to_7seg(to_integer(unsigned(outputRAM)));
    HEX2 <= int_to_7seg(to_integer(unsigned(inputRAM)));  
    HEX4 <= int_to_7seg(to_integer(unsigned(endereco(3 downto 0)))); -- Endereço 4 bits
    HEX5 <= int_to_7seg(to_integer(unsigned(endereco(4 downto 4)))); -- Endereço MSB

end Behavioral;
