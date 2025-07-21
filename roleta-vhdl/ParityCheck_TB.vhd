library ieee;
use ieee.std_logic_1164.all;

entity ParityCheck_TB is
end ParityCheck_TB;

architecture logicFunction of ParityCheck_TB is

    component ParityCheck is
        port(
        
            -- input
            ParityCheck_data: in std_logic;
            ParityCheck_init: in std_logic;
            ParityCheck_clk: in std_logic;
            
            -- output
            ParityCheck_err: out std_logic
            
        );
    end component;

    -- input
    signal data_TB: std_logic;
    signal init_TB: std_logic;
    signal clk_TB: std_logic;
    
    -- output
    signal err_TB: std_logic;

    constant MCLK_PERIOD: time := 20 ns;
    constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;
    
    UUT: ParityCheck port map (
        ParityCheck_data => data_TB,
        ParityCheck_init => init_TB,
        ParityCheck_clk => clk_TB,
        ParityCheck_err => err_TB
    );

    stimulus: process begin

        wait for CLK_PERIOD;

        data_TB <= '1';
        init_TB <= '0';
        -- D = 1
        -- Q = 0
        -- err = 0

        wait for CLK_PERIOD;

        data_TB <= '0';
        init_TB <= '1';
        -- Q = 1
        -- D = 0
        -- err = 1

        wait for CLK_PERIOD;

        data_TB <= '1';
        init_TB <= '1';
        -- Q = 1
        -- D = 1
        -- err = 0

        wait for CLK_PERIOD;

        data_TB <= '1';
        init_TB <= '1';
        -- Q = 1
        -- D = 1
        -- err = 1

        wait;

    end process;

end architecture;