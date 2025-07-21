library ieee;
use ieee.std_logic_1164.all;

entity Adder3_TB is
end Adder3_TB;

architecture logicFunction of Adder3_TB is

    component Adder3 is
        port(

            -- input
            Adder3_Ci: in std_logic;
            Adder3_A: in std_logic_vector(2 downto 0);
            Adder3_B: in std_logic_vector(2 downto 0);

            -- output
            Adder3_Co: out std_logic;
            Adder3_S: out std_logic_vector(2 downto 0)

        );
    end component;

    -- input
    signal Ci_TB: std_logic;
    signal A_TB: std_logic_vector(2 downto 0);
    signal B_TB: std_logic_vector(2 downto 0);

    -- output
    signal Co_TB: std_logic;
    signal S_TB: std_logic_vector(2 downto 0);

	constant CLK_PERIOD: time := 20 ns;

begin

    UUT: Adder3 port map (
        Adder3_Ci => Ci_TB,
        Adder3_A => A_TB,
        Adder3_B => B_TB,
        Adder3_Co => Co_TB,
        Adder3_S => S_TB
    );

    stimulus: process begin

        -- 000 + 000 + 0 = 000 (0)
        Ci_TB <= '0';
        A_TB <= "000";
        B_TB <= "000";
        -- Co_TB = 0
        -- S = 000

        wait for CLK_PERIOD;

        -- 011 + 001 + 0 = 100 (0)
        Ci_TB <= '0';
        A_TB <= "011";
        B_TB <= "001";
        -- Co_TB = 0
        -- S = 100

        wait for CLK_PERIOD;

        -- 111 + 001 + 0 = 000 (1)
        Ci_TB <= '0';
        A_TB <= "111";
        B_TB <= "000";
        -- Co_TB = 1
        -- S = 000

        wait;

    end process;

end architecture;