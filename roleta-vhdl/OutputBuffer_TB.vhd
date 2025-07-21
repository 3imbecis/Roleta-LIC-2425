library ieee;
use ieee.std_logic_1164.all;

entity OutputBuffer_TB is
end OutputBuffer_TB;

architecture logicFunction of OutputBuffer_TB is

    component OutputBuffer is
        port(
        
		-- input
		OutputBuffer_D: in std_logic_vector(3 downto 0);
		OutputBuffer_Load: in std_logic;
		OutputBuffer_ACK: in std_logic;
        OutputBuffer_Reset: in std_logic;
        OutputBuffer_CLK: in std_logic;
		
		-- output
		OutputBuffer_Q: out std_logic_vector(3 downto 0);
		OutputBuffer_OBfree: out std_logic;
		OutputBuffer_Dval: out std_logic
            
        );
    end component;

		-- input
		signal D_TB: std_logic_vector(3 downto 0);
		signal Load_TB: std_logic;
		signal ACK_TB: std_logic;
        signal Reset_TB: std_logic;
        signal CLK_TB: std_logic := '0';
		
		-- output
		signal Q_TB: std_logic_vector(3 downto 0);
		signal OBfree_TB: std_logic;
		signal Dval_TB: std_logic;

    constant MCLK_PERIOD: time := 20 ns;
    constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;

    UUT: OutputBuffer port map (
		OutputBuffer_D => D_TB,
		OutputBuffer_Load => Load_TB,
		OutputBuffer_ACK => ACK_TB,
        OutputBuffer_Reset => Reset_TB,
        OutputBuffer_CLK => CLK_TB,
		OutputBuffer_Q => Q_TB,
		OutputBuffer_OBfree => OBfree_TB,
		OutputBuffer_Dval => Dval_TB
    );

    stimulus: process begin
			
            Reset_TB <= '1';

            wait for CLK_PERIOD;

            Reset_TB <= '0';

            wait for CLK_PERIOD;

            D_TB <= "1111";
            Load_TB <= '0';
            ACK_TB <=  '0';

            wait for CLK_PERIOD;

            D_TB <= "1111";
            Load_TB <= '1';
            ACK_TB <=  '0';

            wait for CLK_PERIOD;

            D_TB <= "1111";
            Load_TB <= '0';
            ACK_TB <=  '1';

            wait for CLK_PERIOD;

            D_TB <= "1111";
            Load_TB <= '0';
            ACK_TB <=  '0';	

			wait;
			
			
			
    end process;

end architecture;