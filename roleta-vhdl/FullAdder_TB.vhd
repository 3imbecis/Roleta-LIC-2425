library ieee;
use ieee.std_logic_1164.all;

entity FullAdder_TB is
end FullAdder_TB;

architecture logicFunction of FullAdder_TB is

    component FullAdder is
        port(

            -- input
            FullAdder_A: in std_logic;
            FullAdder_B: in std_logic;
            FullAdder_Ci: in std_logic;

            -- output
            FullAdder_S: out std_logic;
            FullAdder_Co: out std_logic

        );
    end component;

    -- input
    signal A_TB: std_logic;
    signal B_TB: std_logic;
    signal Ci_TB: std_logic;

    -- output
    signal S_TB: std_logic;
    signal Co_TB: std_logic;

    constant CLK_PERIOD: time := 20 ns;

begin

    UUT: FullAdder port map (
        FullAdder_A => A_TB,
        FullAdder_B => B_TB,
        FullAdder_Ci => Ci_TB,
        FullAdder_S => S_TB,
        FullAdder_Co => Co_TB
    );

    stimulus: process begin

        -- 0 + 0 + 0 = 0 (0)
        A_TB <= '0';
        B_TB <= '0';
        Ci_TB <= '0';
        -- Co_TB = 0
        -- S_TB = 0

        wait for CLK_PERIOD;

        -- 0 + 1 + 0 = 1 (0)
        A_TB <= '0';
        B_TB <= '1';
        Ci_TB <= '0';
        -- Co_TB = 0
        -- S_TB = 1

        wait for CLK_PERIOD;

        -- 1 + 1 + 0 = 0 (1)
        A_TB <= '1';
        B_TB <= '1';
        Ci_TB <= '0';
        -- Co_TB = 1
        -- S_TB = 0

        wait for CLK_PERIOD;

        -- 1 + 1 + 1 = 1 (1)
        A_TB <= '1';
        B_TB <= '1';
        Ci_TB <= '1';
        -- Co_TB = 1
        -- S_TB = 1

        wait;

    end process;

end architecture;