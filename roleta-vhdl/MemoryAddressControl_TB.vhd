library ieee;
use ieee.std_logic_1164.all;

entity MemoryAddressControl_TB is
end MemoryAddressControl_TB;

architecture logicFunction of MemoryAddressControl_TB is

    component MemoryAddressControl is
        port(
        
		-- input
		MemoryAddressControl_putget: in std_logic;
		MemoryAddressControl_CLK: in std_logic;
		MemoryAddressControl_incPut: in std_logic;
		MemoryAddressControl_incGet: in std_logic;
        MemoryAddressControl_Reset: in std_logic;
		
		-- output
		MemoryAddressControl_Address: out std_logic_vector(3 downto 0);
		MemoryAddressControl_full: out std_logic;
		MemoryAddressControl_empty: out std_logic
            
        );
    end component;

        -- input
		signal putget_TB: std_logic;
		signal CLK_TB: std_logic := '0';
		signal incPut_TB: std_logic;
		signal incGet_TB: std_logic;
        signal Reset_TB: std_logic;
		
		-- output
		signal Address_TB: std_logic_vector(3 downto 0);
		signal full_TB: std_logic;
		signal empty_TB: std_logic;

    constant MCLK_PERIOD: time := 20 ns;
    constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;

    UUT: MemoryAddressControl port map (
		MemoryAddressControl_putget => putget_TB,
		MemoryAddressControl_CLK => CLK_TB,
		MemoryAddressControl_incPut => incPut_TB,
		MemoryAddressControl_incGet => incGet_TB,
        MemoryAddressControl_Reset => Reset_TB,
		MemoryAddressControl_Address => Address_TB,
		MemoryAddressControl_full => full_TB,
		MemoryAddressControl_empty => empty_TB
            
    );

    stimulus: process begin
			
            putget_TB <= '0';
            incPut_TB <= '0';
            incGet_TB <= '0';
            Reset_TB <= '1';

            wait for CLK_PERIOD;

            Reset_TB <= '0';

            wait for CLK_PERIOD;

            incPut_TB <= '1';
            wait for CLK_PERIOD * 3;
            incPut_TB <= '0';
            
            incGet_TB <= '1';
            wait for CLK_PERIOD * 3;
            incGet_TB <= '0';
            
            incPut_TB <= '1';
            wait for CLK_PERIOD * 16;
            incPut_TB <= '0';
    
            putget_TB <= '1';

            wait for CLK_PERIOD;

            putget_TB <= '0';

			wait;
			
			
			
    end process;

end architecture;