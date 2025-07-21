library ieee;
use ieee.std_logic_1164.all;

entity Adder4_TB is
end Adder4_TB;

architecture logicFunction of Adder4_TB is

    component Adder4 is
        port(

            -- input
            Adder4_Ci: in std_logic;
            Adder4_A: in std_logic_vector(3 downto 0);
            Adder4_B: in std_logic_vector(3 downto 0);

            -- output
            Adder4_Co: out std_logic;
            Adder4_S: out std_logic_vector(3 downto 0)

        );
    end component;

    -- input
    signal Ci_TB: std_logic;
    signal A_TB: std_logic_vector(3 downto 0);
    signal B_TB: std_logic_vector(3 downto 0);

    -- output
    signal Co_TB: std_logic;
    signal S_TB: std_logic_vector(3 downto 0);

    constant CLK_PERIOD: time := 20 ns;

begin

    UUT: Adder4 port map (
        Adder4_Ci => Ci_TB,
        Adder4_A => A_TB,
        Adder4_B => B_TB,
        Adder4_Co => Co_TB,
        Adder4_S => S_TB
    );

    stimulus: process begin

        -- 0000 + 0000 + 0 = 0000 (0)
        Ci_TB <= '0';
        A_TB <= "0000";
        B_TB <= "0000";
        -- Co_TB = 0
        -- S = 0000

        wait for CLK_PERIOD;

        -- 0111 + 0001 + 0 = 1000 (0)
        Ci_TB <= '0';
        A_TB <= "0111";
        B_TB <= "0001";
        -- Co_TB = 0
        -- S = 1000

        wait for CLK_PERIOD;

        -- 1111 + 0001 + 0 = 0000 (1)
        Ci_TB <= '0';
        A_TB <= "1111";
        B_TB <= "0000";
        -- Co_TB = 1
        -- S = 0000

        wait;

    end process;

end architecture;