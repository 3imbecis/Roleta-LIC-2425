library ieee;
use ieee.std_logic_1164.all;

entity LCDSerialReceiver_TB is
end LCDSerialReceiver_TB;

architecture logicFunction of LCDSerialReceiver_TB is

    component LCDSerialReceiver is
        port(
        
            -- input
            LCDSerialReceiver_Reset: in std_logic;
            LCDSerialReceiver_SS: in std_logic;
            LCDSerialReceiver_SCLK: in std_logic;
            LCDSerialReceiver_CLK: in std_logic;
            LCDSerialReceiver_SDX: in std_logic;
            LCDSerialReceiver_accept: in std_logic;
            
            -- output
            LCDSerialReceiver_DXval: out std_logic;
            LCDSerialReceiver_D: out std_logic_vector(4 downto 0)

            
        );
    end component;

    -- input
    signal Reset_TB: std_logic;
    signal SS_TB: std_logic;
    signal SCLK_TB: std_logic;
    signal CLK_TB: std_logic := '0';
    signal SDX_TB: std_logic;
    signal accept_TB: std_logic;
    
    -- output
    signal DXval_TB: std_logic;
    signal D_TB: std_logic_vector(4 downto 0);

    constant MCLK_PERIOD: time := 20 ns;
    constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;

    UUT: LCDSerialReceiver port map (
        LCDSerialReceiver_Reset => Reset_TB,
        LCDSerialReceiver_SS => SS_TB,
        LCDSerialReceiver_SCLK => SCLK_TB,
        LCDSerialReceiver_CLK => CLK_TB,
        LCDSerialReceiver_SDX => SDX_TB,
        LCDSerialReceiver_accept => accept_TB,
        LCDSerialReceiver_DXval => DXval_TB,
        LCDSerialReceiver_D => D_TB
    );

    stimulus: process begin

        Reset_TB <= '1';
        SS_TB <= '1';
        SDX_TB <= '0';
        accept_TB <= '0';
        SCLK_TB <= '0';

        wait for CLK_PERIOD;

        Reset_TB <= '0';
        
        wait for CLK_PERIOD;
        
        -- 11011 P:1

        SS_TB <= '0';

        wait for CLK_PERIOD;

        SDX_TB <= '1';

        SCLK_TB <= '0';
        wait for CLK_PERIOD;
        SCLK_TB <= '1';
        wait for CLK_PERIOD;

        SDX_TB <= '1'; 

        SCLK_TB <= '0';
        wait for CLK_PERIOD;
        SCLK_TB <= '1';
        wait for CLK_PERIOD;

        SDX_TB <= '0';
        
        SCLK_TB <= '0';
        wait for CLK_PERIOD;
        SCLK_TB <= '1';
        wait for CLK_PERIOD;

        SDX_TB <= '1';

        SCLK_TB <= '0';
        wait for CLK_PERIOD;
        SCLK_TB <= '1';
        wait for CLK_PERIOD;
        
        SDX_TB <= '1';
        
        SCLK_TB <= '0';
        wait for CLK_PERIOD;
        SCLK_TB <= '1';
        wait for CLK_PERIOD;

        -- parity
        
        SDX_TB <= '1';
        
        SCLK_TB <= '0';
        wait for CLK_PERIOD;
        SCLK_TB <= '1';
        wait for CLK_PERIOD;

        -- accept
        
        accept_TB <= '1';
        
        wait for CLK_PERIOD;
        
        accept_TB <= '0';
        
        wait for CLK_PERIOD;

        wait;

    end process;

end architecture;