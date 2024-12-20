library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity parte1 is
    port (
        clock   : in STD_LOGIC;
        wren    : in STD_LOGIC;
        address : in STD_LOGIC_VECTOR(4 downto 0);
        data    : in STD_LOGIC_VECTOR(3 downto 0);
        q       : out STD_LOGIC_VECTOR(3 downto 0)
    );
end parte1;

architecture Behavioral of parte1 is
    component ram32x4
        port (
            address : in STD_LOGIC_VECTOR(4 downto 0);
            clock   : in STD_LOGIC;
            data    : in STD_LOGIC_VECTOR(3 downto 0);
            wren    : in STD_LOGIC;
            q       : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;

begin
    memoria : ram32x4
        port map (
            address => address,
            clock   => clock,
            data    => data,
            wren    => wren,
            q       => q
        );

end Behavioral;
