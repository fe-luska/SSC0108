library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity parte5 is
    Port (
        clk     : in  STD_LOGIC;   -- Clock de 50 MHz
        reset   : in  STD_LOGIC;   -- Reset para inicializar o contador
        seg0     : out STD_LOGIC_VECTOR (6 downto 0);  -- Saída para o display de 7 segmentos primeiro da esq pra dir
		  seg1     : out STD_LOGIC_VECTOR (6 downto 0);
		  seg2     : out STD_LOGIC_VECTOR (6 downto 0);
		  seg3     : out STD_LOGIC_VECTOR (6 downto 0);
		  seg4     : out STD_LOGIC_VECTOR (6 downto 0);
		  seg5     : out STD_LOGIC_VECTOR (6 downto 0)
    );
end parte5;

architecture Behavioral of parte5 is
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
              when 0 => return "0100001"; -- letra d
				  when 1 => return "0000110"; -- letra E
				  when 2 => return "1000000"; -- digito 0
            when others => return "1111111"; -- Desligado
        end case;
    end function;

begin
    process(clk, reset)
    begin
        if reset = '1' then
            counter_1s <= 0;
            clk_1s <= '0';
            digit_counter <= 0;
				seg0 <= int_to_7seg(digit_counter mod 6);
			   seg1 <= int_to_7seg((digit_counter + 1) mod 6);
		    	seg2 <= int_to_7seg((digit_counter + 2) mod 6);
			   seg3 <= int_to_7seg((digit_counter + 3) mod 6);
				seg4 <= int_to_7seg((digit_counter + 4) mod 6);
				seg5 <= int_to_7seg((digit_counter + 5) mod 6);
				
        elsif rising_edge(clk) then
            -- Contador de 1 segundo
            if counter_1s = COUNT_MAX - 1 then
                counter_1s <= 0;
                clk_1s <= '1';
            else
                counter_1s <= counter_1s + 1;
            end if;
            
            if clk_1s = '1' then
					 clk_1s <= '0';
                digit_counter <= digit_counter + 1;
					 seg0 <= int_to_7seg(digit_counter mod 6);
				 	 seg1 <= int_to_7seg((digit_counter + 1) mod 6);
					 seg2 <= int_to_7seg((digit_counter + 2) mod 6);
					 seg3 <= int_to_7seg((digit_counter + 3) mod 6);
					 seg4 <= int_to_7seg((digit_counter + 4) mod 6);
					 seg5 <= int_to_7seg((digit_counter + 5) mod 6);	
            end if;
				
        end if;
    end process;
    
    -- Saída para o display de 7 segmentos
    -- seg <= int_to_7seg(digit_counter);
end Behavioral;
