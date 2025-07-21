library ieee;
use ieee.std_logic_1164.all;

entity SRC_TB is
end SRC_TB;

architecture logicFunction of SRC_TB is

    component SRC is
        port(
        
		-- input
        SRC_Reset: in std_logic;
		SRC_RDSel: in std_logic;
		SRC_SCLK: in std_logic;
        SRC_CLK: in std_logic;
		SRC_SDX: in std_logic;
		
		-- output
		SRC_set: out std_logic;
		SRC_D: out std_logic_vector(7 downto 0)
            
        );
    end component;

    -- input
    signal Reset_TB: std_logic;
    signal RDSel_TB: std_logic;
    signal SCLK_TB: std_logic;
    signal CLK_TB: std_logic := '0';
    signal SDX_TB: std_logic;
    
    -- output
    signal set_TB: std_logic;
    signal D_TB: std_logic_vector(7 downto 0);

    constant MCLK_PERIOD: time := 20 ns;
    constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;

    UUT: SRC port map (
        SRC_Reset => Reset_TB,
        SRC_RDSel => RDSel_TB,
        SRC_SCLK => SCLK_TB,
        SRC_CLK => CLK_TB,
        SRC_SDX => SDX_TB,
        SRC_set => set_TB,
        SRC_D => D_TB
    );

    stimulus: process begin

        Reset_TB <= '1';
        RDSel_TB <= '1';
        SCLK_TB <= '0';
        SDX_TB <= '0';

        wait for CLK_PERIOD;

        Reset_TB <= '0';
        
        wait for CLK_PERIOD;

        -- 01010101 P:1
        
        RDSel_TB <= '0';

        wait for CLK_PERIOD;
        
        SDX_TB <= '1';
        SCLK_TB <= '0';
        
        wait for CLK_PERIOD;
        
        SCLK_TB <= '1'; -- envia 1
        
        wait for CLK_PERIOD;
        
        SDX_TB <= '0';
        SCLK_TB <= '0';

        wait for CLK_PERIOD;

        SCLK_TB <= '1'; -- envia 0

        wait for CLK_PERIOD;

        SDX_TB <= '1';
        SCLK_TB <= '0';

        wait for CLK_PERIOD;

        SCLK_TB <= '1'; -- envia 1

        wait for CLK_PERIOD;
        
        SDX_TB <= '0';
        SCLK_TB <= '0';

        wait for CLK_PERIOD;

        SCLK_TB <= '1'; -- envia 0
        
        wait for CLK_PERIOD;
        
        SDX_TB <= '1';
        SCLK_TB <= '0';

        wait for CLK_PERIOD;
        
        SCLK_TB <= '1'; -- envia 1
        
        wait for CLK_PERIOD;

        SDX_TB <= '0';
        SCLK_TB <= '0';
        
        wait for CLK_PERIOD;
        
        SCLK_TB <= '1'; -- envia 0

        wait for CLK_PERIOD;

        SDX_TB <= '1';
        SCLK_TB <= '0';

        wait for CLK_PERIOD;

        SCLK_TB <= '1'; -- envia 1

        wait for CLK_PERIOD;

        SDX_TB <= '0';
        SCLK_TB <= '0';

        wait for CLK_PERIOD;

        SCLK_TB <= '1'; -- envia 0

        wait for CLK_PERIOD;

        SDX_TB <= '1'; -- paridade
        SCLK_TB <= '0';

        wait for CLK_PERIOD;

        SCLK_TB <= '1';

        wait for CLK_PERIOD;
        
        wait;

    end process;

end architecture;