library ieee;
use ieee.std_logic_1164.all;

entity Counter4_TB is
end Counter4_TB;

architecture logicFunction of Counter4_TB is

    component Counter4 is
        port(
        
            -- input
            Counter4_CE: in std_logic;
            Counter4_CLK: in std_logic;
            Counter4_Reset: in std_logic;
            
            -- output
            Counter4_Q: out std_logic_vector(3 downto 0)
            
        );
    end component;

    -- input
    signal CE_TB: std_logic;
    signal CLK_TB: std_logic := '0';
    signal Reset_TB: std_logic;
    
    -- output
    signal Q_TB: std_logic_vector(3 downto 0);

    constant MCLK_PERIOD: time := 20 ns;
    constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;

    UUT: Counter4 port map (
        Counter4_CE => CE_TB,
        Counter4_CLK => CLK_TB,
        Counter4_Reset => Reset_TB,
        Counter4_Q => Q_TB
    );

    stimulus: process begin

        CE_TB <= '0';
        Reset_TB <= '1';
        -- Q_TB = 0000

        wait for CLK_PERIOD;

        Reset_TB <= '0';
        -- Q_TB = 0000

        wait for CLK_PERIOD;

        CE_TB <= '1';
        -- Q_TB = 0000

        wait for CLK_PERIOD;

        -- Q_TB = 0001

        wait for CLK_PERIOD;
        
        -- Q_TB = 0010

        wait for CLK_PERIOD;
        
        -- Q_TB = 0011

        wait;

    end process;

end architecture;