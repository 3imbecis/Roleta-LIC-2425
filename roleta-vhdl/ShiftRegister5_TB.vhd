library ieee;
use ieee.std_logic_1164.all;

entity ShiftRegister5_TB is
end ShiftRegister5_TB;

architecture logicFunction of ShiftRegister5_TB is

    component ShiftRegister5 is
        port(
        
            -- input
            ShiftRegister5_Reset: in std_logic;
            ShiftRegister5_data: in std_logic;
            ShiftRegister5_clk: in std_logic;
            ShiftRegister5_enableShift: in std_logic;
            
            -- output
            ShiftRegister5_D: out std_logic_vector(4 downto 0)
            
        );
    end component;

    -- input
    signal Reset_TB: std_logic;
    signal data_TB: std_logic;
    signal clk_TB: std_logic := '0';
    signal enableShift_TB: std_logic;
    
    -- output
    signal D_TB: std_logic_vector(4 downto 0);

    constant MCLK_PERIOD: time := 20 ns;
    constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;
    
    UUT: ShiftRegister5 port map (
        ShiftRegister5_Reset => Reset_TB,
        ShiftRegister5_data => data_TB,
        ShiftRegister5_clk => clk_TB,
        ShiftRegister5_enableShift => enableShift_TB,
        ShiftRegister5_D => D_TB
    );

    stimulus: process begin

        Reset_TB <= '1';

        wait for CLK_PERIOD;

        Reset_TB <= '0';

        wait for CLK_PERIOD;

        data_TB <= '1';
        enableShift_TB <= '1';
        -- D = 1UUUU

        wait for CLK_PERIOD;

        data_TB <= '1';
        enableShift_TB <= '0';
        -- D = 1UUUU

        wait for CLK_PERIOD;

        data_TB <= '0';
        enableShift_TB <= '1';
        -- D = 10UUU

        wait for CLK_PERIOD;
        data_TB <= '1';
        enableShift_TB <= '1';
        -- D = 101UU

        wait for CLK_PERIOD;
        data_TB <= '0';
        enableShift_TB <= '1';
        -- D = 1010U

        wait for CLK_PERIOD;
        data_TB <= '1';
        enableShift_TB <= '1';
        -- D = 10101

    end process;

end architecture;