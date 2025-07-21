library ieee;
use ieee.std_logic_1164.all;

entity LCDDispatcher_TB is
end LCDDispatcher_TB;

architecture logicFunction of LCDDispatcher_TB is

    component LCDDispatcher is
        port(
        
        -- input
        LCDDispatcher_Reset: in std_logic;
		LCDDispatcher_Dval: in std_logic;
        LCDDispatcher_Din: in std_logic_vector(4 downto 0);
        LCDDispatcher_CLK: in std_logic;
		
		-- output
		LCDDispatcher_Wrl: out std_logic;
		LCDDispatcher_Dout: out std_logic_vector(4 downto 0);
        LCDDispatcher_done: out std_logic
            
        );
    end component;

    -- input
    signal	Reset_TB: std_logic;
    signal	Dval_TB: std_logic;
    signal  Din_TB: std_logic_vector(4 downto 0);
    signal	CLK_TB: std_logic := '0';
		
	-- output
	signal  Wrl_TB: std_logic;
	signal	Dout_TB: std_logic_vector(4 downto 0);
    signal  done_TB: std_logic;

    constant MCLK_PERIOD: time := 20 ns;
	constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;

    UUT: LCDDispatcher port map (
        LCDDispatcher_Reset => Reset_TB,
        LCDDispatcher_Dval => Dval_TB,
        LCDDispatcher_Din => Din_TB,
        LCDDispatcher_CLK => CLK_TB,
		LCDDispatcher_Wrl => Wrl_TB,
		LCDDispatcher_Dout => Dout_TB,
        LCDDispatcher_done => done_TB
    );

    stimulus: process begin

        Reset_TB <= '1';

        wait for CLK_PERIOD;

        Reset_TB <= '0';

        wait for CLK_PERIOD;

        Din_TB <= "10101";
        Dval_TB <= '0';

        wait for CLK_PERIOD;

        Dval_TB <= '0';

        wait for CLK_PERIOD;

        Dval_TB <= '1';

        wait for CLK_PERIOD * 12;

        Dval_TB <= '0';

        wait;

    end process;

end architecture;