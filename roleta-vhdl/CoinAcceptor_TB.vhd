library ieee;
use ieee.std_logic_1164.all;

entity CoinAcceptor_TB is
end CoinAcceptor_TB;

architecture logicFunction of CoinAcceptor_TB is

    component CoinAcceptor is
        port(
        
		-- input
		CoinAcceptor_CLK: in std_logic;
		CoinAcceptor_Reset: in std_logic;
		CoinAcceptor_Accept: in std_logic;
        CoinAcceptor_CoinInput: in std_logic_vector(1 downto 0);
		
		-- output
		CoinAcceptor_CoinId: out std_logic;
		CoinAcceptor_CoinOutput: out std_logic
            
        );
    end component;

    -- input
    signal Reset_TB: std_logic;
    signal Accept_TB: std_logic;
    signal CLK_TB: std_logic := '0';
    signal CoinInput_TB: std_logic_vector(1 downto 0);
    
    -- output
    signal CoinId_TB: std_logic;
    signal CoinOutput_TB: std_logic;

    constant MCLK_PERIOD: time := 20 ns;
    constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;

    UUT: CoinAcceptor port map (
        CoinAcceptor_CLK => CLK_TB,
        CoinAcceptor_Reset => Reset_TB,
        CoinAcceptor_Accept => Accept_TB,
        CoinAcceptor_CoinInput => CoinInput_TB,
        CoinAcceptor_CoinId => CoinId_TB,
        CoinAcceptor_CoinOutput => CoinOutput_TB
    );

    stimulus: process begin

        Reset_TB <= '1';
        Accept_TB <= '1';
        CoinInput_TB <= "11";

        wait for CLK_PERIOD;

        Reset_TB <= '0';

        wait for CLK_PERIOD;

        Accept_TB <= '0';
        CoinInput_TB <= "00";

        wait for CLK_PERIOD;

        Accept_TB <= '0';
        CoinInput_TB <= "01";

        wait for CLK_PERIOD;
        
        Accept_TB <= '1';
        CoinInput_TB <= "00";

        wait for CLK_PERIOD;

        Accept_TB <= '0';
        CoinInput_TB <= "00";

        wait for CLK_PERIOD;

        Accept_TB <= '0';
        CoinInput_TB <= "00";
        
        wait for CLK_PERIOD;

        Accept_TB <= '0';
        CoinInput_TB <= "11";
        
        wait for CLK_PERIOD;

        Accept_TB <= '1';
        CoinInput_TB <= "11";

        wait for CLK_PERIOD;

        Accept_TB <= '0';
        CoinInput_TB <= "11";

        wait for CLK_PERIOD;
        
        wait;

    end process;

end architecture;