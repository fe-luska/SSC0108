LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY parte1 IS
    PORT (
		  clk     : in  STD_LOGIC;   -- Clock de 50 MHz
        reset   : in  STD_LOGIC;   -- Reset para inicializar o contador
        SW0 : IN STD_LOGIC;
        SW1 : IN STD_LOGIC;
        SW2 : IN STD_LOGIC;
        led_output : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE Behavior OF parte1 IS
    CONSTANT LINHA : INTEGER := 50000000;
    CONSTANT PONTO : INTEGER := 20000000;

    SIGNAL counter : INTEGER := 0;
    SIGNAL intervalo : INTEGER := 50000000;
	 SIGNAL comprimento : INTEGER := 0;
    SIGNAL led_state : STD_LOGIC := '0'; -- Inicializando o estado do LED
    SIGNAL cod_morse : STD_LOGIC_VECTOR(4 DOWNTO 0); -- Vetor de 5 bits

    FUNCTION bin_to_morse (d : STD_LOGIC_VECTOR) RETURN STD_LOGIC_VECTOR IS
    BEGIN
        CASE d IS
            WHEN "000" =>
                RETURN "XXX01";  -- A
            WHEN "001" =>
                RETURN "X1110";  -- B
            WHEN "010" =>
                RETURN "X1010";  -- C
            WHEN "011" =>
                RETURN "XX110";  -- D
            WHEN "100" =>
                RETURN "XXXX1";  -- E
            WHEN "101" =>
                RETURN "X1011";  -- F
            WHEN "110" =>
                RETURN "XX100";  -- G
            WHEN "111" =>
                RETURN "X1111";  -- H
            WHEN OTHERS =>
                RETURN "XXXXX";   -- erro
        END CASE;
    END FUNCTION;
	 
	 FUNCTION bin_to_comprimento(d : STD_LOGIC_VECTOR) RETURN INTEGER IS
	 BEGIN
		CASE d IS
            WHEN "000" =>
                RETURN 2;  -- A
            WHEN "001" =>
                RETURN 4;  -- B
            WHEN "010" =>
                RETURN 4;  -- C
            WHEN "011" =>
                RETURN 3;  -- D
            WHEN "100" =>
                RETURN 1;  -- E
            WHEN "101" =>
                RETURN 4;  -- F
            WHEN "110" =>
                RETURN 3;  -- G
            WHEN "111" =>
                RETURN 4;  -- H
            WHEN OTHERS =>
                RETURN 0;   -- erro
        END CASE;
	 END FUNCTION;

BEGIN
    PROCESS (clk, reset) 
        VARIABLE bin_letra : STD_LOGIC_VECTOR (2 DOWNTO 0);
        VARIABLE i : INTEGER := 0;
    BEGIN
        IF reset = '0' THEN
            -- reset
            counter <= 0;
            intervalo <= 50000000; -- Resetando intervalo
            led_state <= '1'; -- Desligar LED no reset
				i := 0;
        
		  ELSIF rising_edge(clk) THEN
            IF counter = 0 AND intervalo = 0 THEN
                
					 bin_letra := SW2 & SW1 & SW0;
                
					 cod_morse <= bin_to_morse(bin_letra);
					 comprimento <= bin_to_comprimento(bin_letra);
					 
					 if i < comprimento THEN
						 CASE cod_morse(i) IS
							  WHEN '1' =>
									counter <= PONTO;
									intervalo <= 20000000;
									i := i + 1;
							  WHEN '0' => 
									counter <= LINHA;
									intervalo <= 20000000;
									i := i + 1;
						 END CASE;
					 else
						i := 0;
						intervalo <= 100000000;
					 end if;

            ELSIF counter /= 0 THEN
                counter <= counter - 1;

                IF led_state = '1' THEN
                    led_state <= '0';  -- Acentuar LED
                END IF;

            ELSIF intervalo /= 0 THEN
                intervalo <= intervalo - 1;

                IF led_state = '0' THEN
                    led_state <= '1';  -- Apagar LED
                END IF;

            END IF;

        END IF;
    END PROCESS;

    led_output <= led_state; -- Saída para o LED

END Behavior;
