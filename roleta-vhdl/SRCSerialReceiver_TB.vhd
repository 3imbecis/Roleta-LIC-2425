library ieee;
use ieee.std_logic_1164.all;

entity SRCSerialReceiver_TB is
end SRCSerialReceiver_TB;

architecture logicFunction of SRCSerialReceiver_TB is

    component SRCSerialReceiver is
        port(

		-- input
        SRCSerialReceiver_Reset: in std_logic;
		SRCSerialReceiver_SS: in std_logic;
		SRCSerialReceiver_SCLK: in std_logic;
        SRCSerialReceiver_CLK: in std_logic;
		SRCSerialReceiver_SDX: in std_logic;
		SRCSerialReceiver_accept: in std_logic;
		
		-- output
		SRCSerialReceiver_DXval: out std_logic;
		SRCSerialReceiver_D: out std_logic_vector(7 downto 0)
            
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
    signal D_TB: std_logic_vector(7 downto 0);

    constant MCLK_PERIOD: time := 20 ns;
    constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;

    UUT: SRCSerialReceiver port map (
        SRCSerialReceiver_Reset => Reset_TB,
        SRCSerialReceiver_SS => SS_TB,
        SRCSerialReceiver_SCLK => SCLK_TB,
        SRCSerialReceiver_CLK => CLK_TB,
        SRCSerialReceiver_SDX => SDX_TB,
        SRCSerialReceiver_accept => accept_TB,
        SRCSerialReceiver_DXval => DXval_TB,
        SRCSerialReceiver_D => D_TB
    );

    stimulus: process begin

        ---------- SUCCESSFUL TEST ----------
        -- P:0 10110110

        Reset_TB <= '1';
        SS_TB <= '1';
        SDX_TB <= '0';
        accept_TB <= '0';
        SCLK_TB <= '0';

        wait for CLK_PERIOD;

        Reset_TB <= '0';

        wait for CLK_PERIOD;

        -- 10101010 P:1

        SS_TB <= '0';

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

        SDX_TB <= '1'; 
        SCLK_TB <= '0';

        wait for CLK_PERIOD;

        SCLK_TB <= '1'; -- paridade

        wait for CLK_PERIOD;

        -- accept
        
        accept_TB <= '1';
        
        wait for CLK_PERIOD;
        
        accept_TB <= '0';
        
        wait for CLK_PERIOD;

        wait;

    end process;

end architecture;