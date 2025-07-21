library ieee;
use ieee.std_logic_1164.all;

entity ShiftRegister8_TB is
end ShiftRegister8_TB;

architecture logicFunction of ShiftRegister8_TB is

    component ShiftRegister8 is
        port(
        
            -- input
            ShiftRegister8_Reset: in std_logic;
            ShiftRegister8_data: in std_logic;
            ShiftRegister8_clk: in std_logic;
            ShiftRegister8_enableShift: in std_logic;
            
            -- output
            ShiftRegister8_D: out std_logic_vector(7 downto 0)
            
        );
    end component;

    -- input
    signal Reset_TB: std_logic;
    signal data_TB: std_logic;
    signal clk_TB: std_logic := '0';
    signal enableShift_TB: std_logic;
    
    -- output
    signal D_TB: std_logic_vector(7 downto 0);

    constant MCLK_PERIOD: time := 20 ns;
    constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;
    
    UUT: ShiftRegister8 port map (
        ShiftRegister8_Reset => Reset_TB,
        ShiftRegister8_data => data_TB,
        ShiftRegister8_clk => clk_TB,
        ShiftRegister8_enableShift => enableShift_TB,
        ShiftRegister8_D => D_TB
    );

    stimulus: process begin

        Reset_TB <= '1';

        wait for CLK_PERIOD;

        Reset_TB <= '0';

        wait for CLK_PERIOD;

        data_TB <= '1';
        enableShift_TB <= '1';
        -- D = 1UUUUUUU

        wait for CLK_PERIOD;

        data_TB <= '1';
        enableShift_TB <= '0';
        -- D = 1UUUUUUU

        wait for CLK_PERIOD;

        data_TB <= '0';
        enableShift_TB <= '1';
        -- D = 10UUUUUU

        wait for CLK_PERIOD;
        data_TB <= '1';
        enableShift_TB <= '1';
        -- D = 101UUUUU

        wait for CLK_PERIOD;
        data_TB <= '0';
        enableShift_TB <= '1';
        -- D = 1010UUUU

        wait for CLK_PERIOD;
        data_TB <= '1';
        enableShift_TB <= '1';
        -- D = 10101UUU

        wait for CLK_PERIOD;
        data_TB <= '1';
        enableShift_TB <= '1';
        -- D = 110101UU

        wait for CLK_PERIOD;
        data_TB <= '0';
        enableShift_TB <= '1';
        -- D = 0110101U

        wait for CLK_PERIOD;
        data_TB <= '1';
        enableShift_TB <= '1';
        -- D = 10110101

        wait for CLK_PERIOD;

        wait;

    end process;

end architecture;