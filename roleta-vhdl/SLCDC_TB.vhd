library ieee;
use ieee.std_logic_1164.all;

entity SLCDC_TB is
end SLCDC_TB;

architecture logicFunction of SLCDC_TB is

    component SLCDC is
        port(
        
            -- input
            SLCDC_Reset: in std_logic;
		    SLCDC_LCDSel: in std_logic;
		    SLCDC_SCLK: in std_logic;
		    SLCDC_CLK: in std_logic;
		    SLCDC_SDX: in std_logic;
		
		    -- output
		    SLCDC_E: out std_logic;
		    SLCDC_D: out std_logic_vector(4 downto 0)
            
        );
    end component;

    -- input
    signal Reset_TB: std_logic;
    signal LCDSel_TB: std_logic;
    signal SCLK_TB: std_logic;
    signal CLK_TB: std_logic := '0';
    signal SDX_TB: std_logic;
    
    -- output
    signal E_TB: std_logic;
    signal D_TB: std_logic_vector(4 downto 0);

    constant MCLK_PERIOD: time := 20 ns;
    constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;

    UUT: SLCDC port map (
        SLCDC_Reset => Reset_TB,
        SLCDC_LCDSel => LCDSel_TB,
        SLCDC_SCLK => SCLK_TB,
        SLCDC_CLK => CLK_TB,
        SLCDC_SDX => SDX_TB,
        SLCDC_E => E_TB,
        SLCDC_D => D_TB
    );

    stimulus: process begin

        Reset_TB <= '1';
        LCDSel_TB <= '1';
        SCLK_TB <= '0';
        SDX_TB <= '0';

        wait for CLK_PERIOD;

        Reset_TB <= '0';

        wait for CLK_PERIOD;

        -- 11011 P:1

        LCDSel_TB <= '0';

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
        
        wait;

    end process;

end architecture;