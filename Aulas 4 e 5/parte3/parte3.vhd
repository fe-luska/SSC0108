library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity parte3 is
    Port (
        clk     : in  STD_LOGIC;   -- Clock de 50 MHz
        reset   : in  STD_LOGIC;   -- Reset para inicializar o contador
        seg     : out STD_LOGIC_VECTOR (6 downto 0)  -- Saída para o display de 7 segmentos
    );
end parte3;

architecture Behavioral of parte3 is
    -- Constantes
    constant COUNT_MAX : integer := 50000000; -- Contador para 1 segundo (50 MHz * 1 s)
    
    -- Sinais
    signal counter_1s : integer := 0;
    signal digit_counter : integer := 0;
    signal clk_1s : STD_LOGIC := '0';  -- Sinal de clock para 1 segundo
    
    -- Funções de conversão para display de 7 segmentos
    function int_to_7seg (d : integer) return STD_LOGIC_VECTOR is
    begin
        case d is
             when 0 => return "1000000"; -- A para 0
				  when 1 => return "1111001"; -- B para 1
				  when 2 => return "0100100"; -- C para 2
				  when 3 => return "0110000"; -- D para 3
				  when 4 => return "0011001"; -- E para 4
				  when 5 => return "0010010"; -- F para 5
				  when 6 => return "0000010"; -- G para 6
				  when 7 => return "1111000"; -- H para 7
				  when 8 => return "0000000"; -- I para 8
				  when 9 => return "0011000"; -- J para 9
            when others => return "1111111"; -- Desconhecido
        end case;
    end function;

begin
    process(clk, reset)
    begin
        if reset = '1' then
            counter_1s <= 0;
            clk_1s <= '0';
            digit_counter <= 0;
				seg <= int_to_7seg(digit_counter);
        elsif rising_edge(clk) then
            -- Contador de 1 segundo
            if counter_1s = COUNT_MAX - 1 then
                counter_1s <= 0;
                clk_1s <= '1';
            else
                counter_1s <= counter_1s + 1;
            end if;
            
            -- Atualiza o contador de dígitos a cada pulso de 1 segundo
            if clk_1s = '1' then
					 clk_1s <= '0';
                if digit_counter = 9 then
                    digit_counter <= 0;
                else
                    digit_counter <= digit_counter + 1;
                end if;
					 seg <= int_to_7seg(digit_counter);
            end if;
        end if;
    end process;
    
    -- Saída para o display de 7 segmentos
    -- seg <= int_to_7seg(digit_counter);
end Behavioral;
