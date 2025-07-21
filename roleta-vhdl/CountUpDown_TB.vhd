library ieee;
use ieee.std_logic_1164.all;

entity CountUpDown_TB is
end CountUpDown_TB;

architecture logicFunction of CountUpDown_TB is

    component CountUpDown is
        port(
        
            -- input
            CountUpDown_Up: in std_logic;
            CountUpDown_Down: in std_logic;
            CountUpDown_CLK: in std_logic;
            CountUpDown_Reset: in std_logic;
            
            -- output
            CountUpDown_Q: out std_logic_vector(4 downto 0)
            
        );
    end component;

    -- input
    signal Up_TB: std_logic;
    signal Down_TB: std_logic;
    signal CLK_TB: std_logic := '0';
    signal Reset_TB: std_logic;
    
    -- output
    signal Q_TB: std_logic_vector(4 downto 0);

    constant MCLK_PERIOD: time := 20 ns;
    constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;

    UUT: CountUpDown port map (
        CountUpDown_Up => Up_TB,
        CountUpDown_Down => Down_TB,
        CountUpDown_CLK => CLK_TB,
        CountUpDown_Reset => Reset_TB,
        CountUpDown_Q => Q_TB
    );

    stimulus: process begin

        Up_TB <= '0';
        Down_TB <= '0';
        Reset_TB <= '1';

        wait for CLK_PERIOD;

        Reset_TB <= '0';

        wait for CLK_PERIOD;
        
        Up_TB <= '1';

        wait for CLK_PERIOD;

        Up_TB <= '0';

        wait for CLK_PERIOD;
        
        Down_TB <= '1';

        wait for CLK_PERIOD;

        Down_TB <= '0';

        wait for CLK_PERIOD;
        
        Up_TB <= '1';
        Down_TB <= '1';

        wait for CLK_PERIOD;

        Up_TB <= '0';
        Down_TB <= '0';

        wait;

    end process;

end architecture;