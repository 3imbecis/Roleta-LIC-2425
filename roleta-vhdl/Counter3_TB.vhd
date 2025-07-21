library ieee;
use ieee.std_logic_1164.all;

entity Counter3_TB is
end Counter3_TB;

architecture logicFunction of Counter3_TB is

    component Counter3 is
        port(
        
            -- input
            Counter3_CE: in std_logic;
            Counter3_CLK: in std_logic;
            Counter3_Reset: in std_logic;
            
            -- output
            Counter3_Q: out std_logic_vector(2 downto 0)
            
        );
    end component;

    -- input
    signal CE_TB: std_logic;
    signal CLK_TB: std_logic := '0';
    signal Reset_TB: std_logic;
    
    -- output
    signal Q_TB: std_logic_vector(2 downto 0);

    constant MCLK_PERIOD: time := 20 ns;
    constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;

    UUT: Counter3 port map (
        Counter3_CE => CE_TB,
        Counter3_CLK => CLK_TB,
        Counter3_Reset => Reset_TB,
        Counter3_Q => Q_TB
    );

    stimulus: process begin

        CE_TB <= '0';
        Reset_TB <= '1';
        -- Q_TB = 000

        wait for CLK_PERIOD;

        Reset_TB <= '0';
        -- Q_TB = 000

        wait for CLK_PERIOD;

        CE_TB <= '1';
        -- Q_TB = 000

        wait for CLK_PERIOD;

        -- Q_TB = 001

        wait for CLK_PERIOD;
        
        -- Q_TB = 010

        wait for CLK_PERIOD;
        
        -- Q_TB = 011

        wait;

    end process;

end architecture;