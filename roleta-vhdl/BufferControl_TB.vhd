library ieee;
use ieee.std_logic_1164.all;

entity BufferControl_TB is
end BufferControl_TB;

architecture logicFunction of BufferControl_TB is

    component BufferControl is
        port(
        
        -- input
        BufferControl_Reset: in std_logic;
		BufferControl_clk: in std_logic;
		BufferControl_Load: in std_logic;
        BufferControl_ACK: in std_logic;
		
		-- output
		BufferControl_OBfree: out std_logic;
		BufferControl_Wreg: out std_logic;
        BufferControl_Dval: out std_logic
            
        );
    end component;

        -- input
        signal Reset_TB: std_logic;
		signal clk_TB: std_logic := '0';
		signal Load_TB: std_logic;
        signal ACK_TB: std_logic;
		
		-- output
		signal OBfree_TB: std_logic;
		signal Wreg_TB: std_logic;
        signal Dval_TB: std_logic;

    constant MCLK_PERIOD: time := 20 ns;
    constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    clk_TB <= not clk_TB after MCLK_HALF_PERIOD;

    UUT: BufferControl port map (
        BufferControl_Reset => Reset_TB,
        BufferControl_clk => clk_TB,
		BufferControl_Load => Load_TB,
        BufferControl_ACK => ACK_TB,
		BufferControl_OBfree => OBfree_TB,
		BufferControl_Wreg => Wreg_TB,
        BufferControl_Dval => Dval_TB
    );

    stimulus: process begin
    
        ---------- SUCCESSFUL TEST ----------

        Reset_TB <= '1';

        wait for CLK_PERIOD;

        Reset_TB <= '0';

        wait for CLK_PERIOD;

        Load_TB <= '0';

        wait for CLK_PERIOD;

        Load_TB <= '1';

        wait for CLK_PERIOD;

        ACK_TB <= '0';

        wait for CLK_PERIOD;

        ACK_TB <= '1';

        wait for CLK_PERIOD;

        ACK_TB <= '0';

        wait;

    end process;

end architecture;