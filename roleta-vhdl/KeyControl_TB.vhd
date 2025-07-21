library ieee;
use ieee.std_logic_1164.all;

entity KeyControl_TB is
end KeyControl_TB;

architecture logicFunction of KeyControl_TB is

	component KeyControl is
		port(
		
			-- input
			KeyControl_Ack: in std_logic;
			KeyControl_Press: in std_logic;
			KeyControl_CLK: in std_logic;
			KeyControl_Reset: in std_logic;
			
			-- output
			KeyControl_Val: out std_logic;
			KeyControl_Scan: out std_logic

		);
	end component;
	
	-- input
	signal Ack_TB: std_logic;
	signal Press_TB: std_logic;
	signal CLK_TB: std_logic := '0';
	signal Reset_TB: std_logic;
	
	-- output
	signal Val_TB: std_logic;
	signal Scan_TB: std_logic;
	
	constant MCLK_PERIOD: time := 20 ns;
	constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
	constant CLK_PERIOD: time := 20 ns;
	-- total: 139 ns
	
begin

    CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;
    
    UUT: KeyControl port map (
        KeyControl_Ack => Ack_TB,
        KeyControl_Press => Press_TB,
        KeyControl_CLK => CLK_TB,
        KeyControl_Reset => Reset_TB,
        KeyControl_Val => Val_TB,
        KeyControl_Scan => Scan_TB
    );
    
    stimulus: process
    begin
    
        Reset_TB <= '1';
        
        wait for CLK_PERIOD - 1ns;
        
        -- Scanning...
        Reset_TB <= '0';

        wait for CLK_PERIOD * 2;
        
        Ack_TB <= '0';
        Press_TB <= '0';
        -- Val_TB = 0
        -- Scan_TB = 1
        
        wait for CLK_PERIOD * 2;
        
        -- User pressed! Stopped.
        Press_TB <= '1';
        -- Val_TB = 1
        -- Scan_TB = 0
        
        wait for CLK_PERIOD * 2;
        
        -- Acknowledged but user is still pressing. Still stopped.
        Ack_TB <= '1';
        -- Val_TB = 1
        -- Scan_TB = 0
        
        wait for CLK_PERIOD * 2;
        
        -- User stopped pressing. Back to scanning...
        Press_TB <= '0';
        -- Val_TB = 0
        -- Scan_TB = 1
        
        wait;
    
    end process;
		
end architecture;