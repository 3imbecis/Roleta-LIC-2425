library ieee;
use ieee.std_logic_1164.all;

entity RingBufferControl_TB is
end RingBufferControl_TB;

architecture logicFunction of RingBufferControl_TB is

    component RingBufferControl is
        port(
        
        -- input
        RingBufferControl_Reset: in std_logic;
		RingBufferControl_DAV: in std_logic;
		RingBufferControl_CTS: in std_logic;
		RingBufferControl_CLK: in std_logic;
		RingBufferControl_full: in std_logic;
        RingBufferControl_empty: in std_logic;
		
		-- output
		RingBufferControl_Wr: out std_logic;
        RingBufferControl_selPG: out std_logic;
        RingBufferControl_Wreg: out std_logic;
        RingBufferControl_DAC: out std_logic;
        RingBufferControl_incPut: out std_logic;
        RingBufferControl_incGet: out std_logic
            
        );
    end component;

        -- input
        signal Reset_TB: std_logic;
		signal DAV_TB: std_logic;
		signal CTS_TB: std_logic;
		signal CLK_TB: std_logic := '0';
		signal full_TB: std_logic;
        signal empty_TB: std_logic;
		
		-- output
		signal Wr_TB: std_logic;
        signal selPG_TB: std_logic;
        signal Wreg_TB: std_logic;
        signal DAC_TB: std_logic;
        signal incPut_TB: std_logic;
        signal incGet_TB: std_logic;

    constant MCLK_PERIOD: time := 20 ns;
    constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;

    UUT: RingBufferControl port map (
        RingBufferControl_Reset => Reset_TB,
		RingBufferControl_DAV => DAV_TB,
		RingBufferControl_CTS => CTS_TB,
		RingBufferControl_CLK => CLK_TB,
		RingBufferControl_full => full_TB,
        RingBufferControl_empty => empty_TB,
		RingBufferControl_Wr => Wr_TB,
        RingBufferControl_selPG => selPG_TB,
        RingBufferControl_Wreg => Wreg_TB,
        RingBufferControl_DAC => DAC_TB,
        RingBufferControl_incPut => incPut_TB,
        RingBufferControl_incGet => incGet_TB
    );

    stimulus: process begin
    
        DAV_TB <= '0';
        CTS_TB <= '0';
        full_TB <= '0';
        empty_TB <= '0';
        Reset_TB <= '1';

        wait for CLK_PERIOD;

        Reset_TB <= '0';

        wait for CLK_PERIOD;

        -- KD

        DAV_TB <= '1';

        wait for CLK_PERIOD * 4;

        DAV_TB <= '0';

        wait for CLK_PERIOD;

        -- KD (full)

        DAV_TB <= '1';
        full_TB <= '1';

        wait for CLK_PERIOD * 2;

        DAV_TB <= '0';
        full_TB <= '0';

        -- OB

        CTS_TB <= '1';

        wait for CLK_PERIOD * 4;

        CTS_TB <= '0';

        wait for CLK_PERIOD;
        
        -- OB (full)

        CTS_TB <= '1';
        empty_TB <= '1';

        wait for CLK_PERIOD * 2;

        CTS_TB <= '0';
        empty_TB <= '0';

        wait;

    end process;

end architecture;