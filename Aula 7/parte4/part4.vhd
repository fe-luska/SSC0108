library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity part4 is
    port (
        clock   : in STD_LOGIC;                         -- Clock de 50 MHz
        wren    : in STD_LOGIC;                         -- Sinal de escrita na memória
        address : in STD_LOGIC_VECTOR(4 downto 0);      -- Endereço da memória
        data    : in STD_LOGIC_VECTOR(3 downto 0);      -- Dados para escrita na memória
        q       : out STD_LOGIC_VECTOR(3 downto 0);     -- Dados lidos da memória
        HEX1    : out STD_LOGIC_VECTOR(6 downto 0);     -- Exibe os dados lidos da memória
        HEX2    : out STD_LOGIC_VECTOR(6 downto 0);     -- Exibe parte do endereço
        HEX3    : out STD_LOGIC_VECTOR(6 downto 0);     -- Exibe parte do endereço
        HEX4    : out STD_LOGIC_VECTOR(6 downto 0);     -- Exibe parte do endereço de escrita
        HEX5    : out STD_LOGIC_VECTOR(6 downto 0);     -- Exibe parte do endereço de escrita (MSB)
        HEX0    : out STD_LOGIC_VECTOR(6 downto 0);     -- Exibe os dados lidos da memória
        reset   : in  STD_LOGIC;                        -- Reset
        SW      : in STD_LOGIC_VECTOR(8 downto 0)       -- Switches de controle
    );
end part4;

architecture Behavioral of part4 is

    constant COUNT_MAX : integer := 50000000; -- Contador para 1 segundo (50 MHz * 1 s)
    constant ADDRESS_MAX : integer := 32;
    
    signal counter_1s : integer := 0;
    signal clk_1s : STD_LOGIC := '0';  -- Sinal de clock para 1 segundo
    
    signal address_counter : integer := 0;
    signal outputRAM : STD_LOGIC_VECTOR(3 downto 0);
    signal inputRAM  : STD_LOGIC_VECTOR(3 downto 0);
    signal endereco  : STD_LOGIC_VECTOR(4 downto 0);
    signal writeadr : STD_LOGIC_VECTOR(4 downto 0);

    component teste
        port (
            rdaddress    : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
            wraddress    : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
            clock        : IN STD_LOGIC;
            data         : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            wren         : IN STD_LOGIC;
            q            : buffer STD_LOGIC_VECTOR(3 DOWNTO 0)
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

begin
    -- Instanciação da memória
    memoria : teste
        port map (
            rdaddress => endereco,
            wraddress => writeadr,
            clock     => clock,
            data      => inputRAM,
            wren      => wren,
            q         => outputRAM
        );
    
    -- Processo de controle de exibição e escrita na memória
    process(clock, reset)
    begin
        if reset = '1' then
            -- Resetar o contador
            counter_1s <= 0;
            address_counter <= 0;
            HEX0 <= int_to_7seg(0);  -- Exibe 0 no display
            HEX4 <= int_to_7seg(0);  -- Exibe 0 no display
            HEX5 <= int_to_7seg(0);  -- Exibe 0 no display
        elsif rising_edge(clock) then
            -- Incrementar o contador de 1 segundo
            if counter_1s = COUNT_MAX - 1 then
                counter_1s <= 0;
                
                -- Atualizar displays de endereço e conteúdo
                if address_counter = ADDRESS_MAX - 1 then
                    address_counter <= 0;
                else
                    address_counter <= address_counter + 1;
                end if;
                
                endereco <= std_logic_vector(to_unsigned(address_counter, endereco'length));
                
                HEX0 <= int_to_7seg(to_integer(unsigned(outputRAM(3 downto 0))));  -- Dado do endereço
                HEX3 <= int_to_7seg(to_integer(unsigned(endereco(4 downto 4))));  -- Exibe MSB do endereço
                HEX2 <= int_to_7seg(to_integer(unsigned(endereco(3 downto 0))));  -- Exibe LSB do endereço
                
                -- Atualiza o write address e write data
                writeadr <= SW(8) & SW(7) & SW(6) & SW(5) & SW(4);  -- Pega o endereço dos switches
                inputRAM <= SW(3 downto 0);  -- Pega o dado dos switches

                HEX4 <= int_to_7seg(to_integer(unsigned(writeadr(3 downto 0))));  -- Exibe parte do endereço no HEX4
                HEX5 <= int_to_7seg(to_integer(unsigned(writeadr(4 downto 4))));  -- Exibe o MSB do endereço no HEX5
                HEX1 <= int_to_7seg(to_integer(unsigned(inputRAM(3 downto 0))));  -- Exibe o dado no HEX1

            else
                counter_1s <= counter_1s + 1;
            end if;
        end if;
    end process;

end Behavioral;
