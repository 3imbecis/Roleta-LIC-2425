library ieee;
use ieee.std_logic_1164.all;

entity RouletteDispatcher_TB is
end RouletteDispatcher_TB;

architecture logicFunction of RouletteDispatcher_TB is

    component RouletteDispatcher is
        port(
        
            -- input
            RouletteDispatcher_Reset: in std_logic;
            RouletteDispatcher_Dval: in std_logic;
            RouletteDispatcher_Din: in std_logic_vector(7 downto 0);
            RouletteDispatcher_CLK: in std_logic;

            -- output
            RouletteDispatcher_WrD: out std_logic;
            RouletteDispatcher_Dout: out std_logic_vector(7 downto 0);
            RouletteDispatcher_done: out std_logic
            
        );
    end component;

    -- input
    signal  Reset_TB: std_logic;
    signal	Dval_TB: std_logic;
    signal  Din_TB: std_logic_vector(7 downto 0);
    signal  CLK_TB: std_logic := '0';
		
	-- output
	signal  WrD_TB: std_logic;
	signal	Dout_TB: std_logic_vector(7 downto 0);
    signal  done_TB: std_logic;

    constant MCLK_PERIOD: time := 20 ns;
	constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;

    UUT: RouletteDispatcher port map (
        RouletteDispatcher_Reset => Reset_TB,
        RouletteDispatcher_Dval => Dval_TB,
        RouletteDispatcher_Din => Din_TB,
        RouletteDispatcher_CLK => CLK_TB,
        RouletteDispatcher_WrD => WrD_TB,
		RouletteDispatcher_Dout => Dout_TB,
        RouletteDispatcher_done => done_TB
    );

    stimulus: process begin

        Reset_TB <= '1';
        Din_TB <= "00000000";
        Dval_TB <= '0';

        wait for CLK_PERIOD;
        
        Reset_TB <= '0';
        
        wait for CLK_PERIOD;
        
        Din_TB <= "01010101";
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