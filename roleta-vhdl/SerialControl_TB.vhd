library ieee;
use ieee.std_logic_1164.all;

entity SerialControl_TB is
end SerialControl_TB;

architecture logicFunction of SerialControl_TB is

    component SerialControl is
        port(
        
            -- input
            SerialControl_Reset: in std_logic;
            SerialControl_enRX: in std_logic;
            SerialControl_accept: in std_logic;
            SerialControl_pFlag: in std_logic;
            SerialControl_dFlag: in std_logic;
            SerialControl_RXerror: in std_logic;
            SerialControl_Clk: in std_logic;
            
            -- output
            SerialControl_wr: out std_logic;
            SerialControl_init: out std_logic;
            SerialControl_DXval: out std_logic
            
        );
    end component;

    -- input
    signal Reset_TB: std_logic;
    signal enRX_TB: std_logic := '1';
    signal accept_TB: std_logic := '0';
    signal pFlag_TB: std_logic := '0';
    signal dFlag_TB: std_logic := '0';
    signal RXerror_TB: std_logic := '0';
    signal Clk_TB: std_logic := '0';
    
    -- output
    signal wr_TB: std_logic;
    signal init_TB: std_logic;
    signal DXval_TB: std_logic;

    constant MCLK_PERIOD: time := 20 ns;
    constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    CLk_TB <= not CLk_TB after MCLK_HALF_PERIOD;

    UUT: SerialControl port map (
        SerialControl_Reset => Reset_TB,
        SerialControl_enRX => enRX_TB,
        SerialControl_accept => accept_TB,
        SerialControl_pFlag => pFlag_TB,
        SerialControl_dFlag => dFlag_TB,
        SerialControl_RXerror => RXerror_TB,
        SerialControl_Clk => Clk_TB,
        SerialControl_wr => wr_TB,
        SerialControl_init => init_TB,
        SerialControl_DXval => DXval_TB
    );

    stimulus: process begin
    
        ---------- SUCCESSFUL TEST ----------
        Reset_TB <= '1';

        wait for CLK_PERIOD;

        Reset_TB <= '0';

        wait for CLK_PERIOD;

        -- state: neutral
        enRX_TB <= '1';
        
        wait for CLK_PERIOD;
        
        -- state: neutral
        enRX_TB <= '0';

        wait for CLK_PERIOD;
        
        -- state: start
        -- init = 1
        -- wr = 1
        enRX_TB <= '0';

        wait for CLK_PERIOD;

        -- state: wait_for_data
        -- init = 0
        -- wr = 1
        dFlag_TB <= '0';
        
        wait for CLK_PERIOD;

        -- state: wait_for_data
        dFlag_TB <= '1';
        
        wait for CLK_PERIOD;
        
        -- state: wait_for_parity
        dFlag_TB <= '0';
        pFlag_TB <= '0';
        
        wait for CLK_PERIOD;
        
        -- state: wait_for_parity 
        pFlag_TB <= '1';
        RXerror_TB <= '0';

        wait for CLK_PERIOD;

        -- state: output_data
        -- DXval = 1
        pFlag_TB <= '0';
        accept_TB <= '0';
        
        wait for CLK_PERIOD;

        -- state: output_data
        accept_TB <= '1';

        ---------- ERROR TEST ----------

        wait for CLK_PERIOD;

        -- state: neutral
        -- DXval = 0
        accept_TB <= '0';
        enRX_TB <= '1';
        
        wait for CLK_PERIOD;

        -- state: start
        -- init = 1
        -- wr = 1
        enRX_TB <= '0';

        wait for CLK_PERIOD;

        -- state: wait_for_data
        -- init = 0
        -- wr = 1
        dFlag_TB <= '1';
        
        wait for CLK_PERIOD;
        
        -- state: wait_for_parity
        dFlag_TB <= '0';
        pFlag_TB <= '1';
        RXerror_TB <= '1';

        wait for CLK_PERIOD;
        
        -- state: neutral
        -- DXval = 0
        pFlag_TB <= '0';
        RXerror_TB <= '0';
        enRX_TB <= '0';

        wait;

    end process;

end architecture;