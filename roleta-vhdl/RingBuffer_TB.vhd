library ieee;
use ieee.std_logic_1164.all;

entity RingBuffer_TB is
end RingBuffer_TB;

architecture logicFunction of RingBuffer_TB is

    component RingBuffer is
        port(
        
		-- input
		RingBuffer_D: in std_logic_vector(3 downto 0);
		RingBuffer_DAV: in std_logic;
		RingBuffer_CLK: in std_logic;
        RingBuffer_Reset: in std_logic;
		RingBuffer_CTS: in std_logic;
		
		-- output
		RingBuffer_Q: out std_logic_vector(3 downto 0);
		RingBuffer_Wreg: out std_logic;
		RingBuffer_DAC: out std_logic
            
        );
    end component;

    -- input
    signal D_TB: std_logic_vector(3 downto 0);
    signal DAV_TB: std_logic;
    signal CLK_TB: std_logic := '0';
    signal Reset_TB: std_logic;
    signal CTS_TB: std_logic;
    
    -- output
    signal Q_TB: std_logic_vector(3 downto 0);
    signal Wreg_TB: std_logic;
    signal DAC_TB: std_logic;

    constant MCLK_PERIOD: time := 20 ns;
    constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;

    UUT: RingBuffer port map (
		RingBuffer_D => D_TB,
		RingBuffer_DAV => DAV_TB,
		RingBuffer_CLK => CLK_TB,
        RingBuffer_Reset => Reset_TB,
		RingBuffer_CTS => CTS_TB,
		RingBuffer_Q => Q_TB,
		RingBuffer_Wreg => Wreg_TB,
		RingBuffer_DAC => DAC_TB
    );

    stimulus: process begin
			
        Reset_TB <= '1';
        D_TB <= "0000";
        CTS_TB <= '0';
        DAV_TB <= '0';

        wait for CLK_PERIOD;

        Reset_TB <= '0';

        wait for CLK_PERIOD;

        D_TB <= "1010";
        DAV_TB <= '1';

        wait for CLK_PERIOD * 4;

        DAV_TB <= '0';

        wait for CLK_PERIOD;
        
        CTS_TB <= '1';

        wait for CLK_PERIOD * 4;

        CTS_TB <= '0';

        wait;
			
    end process;

end architecture;