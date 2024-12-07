library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity parte4 is
    Port (
        SW : in STD_LOGIC_VECTOR (2 downto 0);  -- Entradas SW2−0 (Seleção de letras de A até H)
        KEY : in STD_LOGIC_VECTOR (1 downto 0); -- KEY1 (iniciar), KEY0 (reset)
        clk : in STD_LOGIC;                     -- Clock
        LEDR : out STD_LOGIC                    -- Saída para o LED (Morse)
    );
end parte4;

architecture Behavioral of parte4 is

    type state_type is (idle, dot, dash, pause);  -- Definição dos estados: idle, ponto, traço e pausa
	 signal state : state_type := idle;
    signal morse_code : STD_LOGIC_VECTOR(3 downto 0); -- Vetor de 8 bits para armazenar o código Morse
    signal counter : INTEGER := 0;                  -- Contador para definir duração dos pontos e traços
	 signal tam_cod : INTEGER := 0;
    signal bit_idx : INTEGER := 0;                  -- Índice para o bit atual no código Morse
	 signal vled : STD_LOGIC := '0';
    --signal active : STD_LOGIC := '0';               -- Indica se o encoder está ativo ou não
	 
	 --signal debug_state : STD_LOGIC_VECTOR(3 downto 0);

    -- Constantes para definir a duração dos pontos e traços
    constant dot_time : INTEGER := 25000000;  -- Meio segundo para ponto (assumindo 50 MHz clock)
    constant dash_time : INTEGER := 75000000;-- 1.5 segundos para traço
    constant pause_time : INTEGER := 25000000;-- Meio segundo de pausa entre cada símbolo

begin
    process(clk)
    begin
	 --variable vled : std_logic := 0;
		if KEY(0) = '0' then  -- Reset assíncrono
          state <= idle;
			 counter <= 0;
			 vled <= '0';
			 
      elsif rising_edge(clk) then
        case state is
            when idle =>
                if KEY(1) = '0' then
                    -- Selecionar o código Morse correspondente à letra escolhida
                    case SW is
                        when "000" =>
									morse_code <= "1000"; -- A: .-
									tam_cod <= 2;
                        when "001" =>
									morse_code <= "0111"; -- B: -...
									tam_cod <= 4;
                        when "010" =>
									morse_code <= "0101"; -- C: -.-.
									tam_cod <= 4;
                        when "011" =>
									morse_code <= "0110"; -- D: -..
									tam_cod <= 3;
                        when "100" =>
									morse_code <= "1000"; -- E: .
									tam_cod <= 1;
                        when "101" =>
									morse_code <= "1101"; -- F: ..-.
									tam_cod <= 4;
                        when "110" =>
									morse_code <= "0010"; -- G: --.
									tam_cod <= 3;
                        when "111" =>
									morse_code <= "1111"; -- H: ....
									tam_cod <= 4;
                        when others => morse_code <= "0000";
                    end case;
                    --active <= '1';
                    bit_idx <= 0;
                    state <= pause;
						  counter <= 0;
						  
                else
                    state <= idle;
                end if;
                vled <= '0';

            when dot =>
                if counter < dot_time then
                    counter <= counter + 1;
                    vled <= '1';
                    state <= dot;
                else
                    counter <= 0;
                    bit_idx <= bit_idx + 1;
                    state <= pause;
                end if;

            when dash =>
                if counter < dash_time then
                    counter <= counter + 1;
                    vled <= '1';
                    state <= dash;
                else
                    counter <= 0;
                    bit_idx <= bit_idx + 1;
                    state <= pause;
                end if;

            when pause =>

                if counter < pause_time then
                    counter <= counter + 1;
						  vled <= '0';
                    state <= pause;
                else
                    counter <= 0;
                    if bit_idx < tam_cod then
                        if morse_code(3 - bit_idx) = '1' then
                            state <= dot;
                        elsif morse_code(3 - bit_idx) = '0' then
                            state <= dash;
                        end if;
                    else
                        state <= idle;
                        --active <= '0';
                    end if;
                end if;
        end case;
		end if;
    end process;
	LEDR <= vled;
end Behavioral;
