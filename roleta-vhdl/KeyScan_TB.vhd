library ieee;
use ieee.std_logic_1164.all;

entity KeyScan_TB is
end KeyScan_TB;

architecture logicFunction of KeyScan_TB is

	component KeyScan is
		port(
		
			-- input
			KeyScan_In: in std_logic_vector(3 downto 0);
			KeyScan_Scan: in std_logic;
			KeyScan_CLK: in std_logic;
			KeyScan_Reset: in std_logic;

			-- output
			KeyScan_Out: out std_logic_vector(3 downto 0);
			KeyScan_K: out std_logic_vector(3 downto 0);
			KeyScan_Press: out std_logic

		);
	end component;
	
	-- input
	signal In_TB: std_logic_vector(3 downto 0);
	signal Scan_TB: std_logic;
	signal CLK_TB: std_logic := '0';
	signal Reset_TB: std_logic;
	
	-- output
	signal Out_TB: std_logic_vector(3 downto 0);
	signal K_TB: std_logic_vector(3 downto 0);
	signal Press_TB: std_logic;
	
	constant MCLK_PERIOD: time := 20 ns;
	constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
	constant CLK_PERIOD: time := 20 ns;
	-- total: 259 ns
	
	begin
	
		CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;
		
		UUT: KeyScan port map (
			KeyScan_In => In_TB,
			KeyScan_Scan => Scan_TB,
			KeyScan_CLK => CLK_TB,
			KeyScan_Reset => Reset_TB,
			KeyScan_Out => Out_TB,
			KeyScan_K => K_TB,
			KeyScan_Press => Press_TB
		);
		
		stimulus: process
		begin
		
			In_TB <= "1111";
			Reset_TB <= '1';
			Scan_TB <= '0';
			
			wait for CLK_PERIOD;
			
			Reset_TB <= '0';
			Scan_TB <= '1';

			wait for CLK_PERIOD;
            
			In_TB <= "1110";
			
			wait for CLK_PERIOD * 4;
			
			In_TB <= "1101";
				
			wait for CLK_PERIOD * 4;
			
			In_TB <= "1011";
			
			wait for CLK_PERIOD * 4;
			
			In_TB <= "0111";
			
			wait;
		
		end process;
		
end architecture;