library ieee;
use ieee.std_logic_1164.all;

entity KeyDecode is
	port(
	
		-- input
		KeyDecode_Ack: in std_logic;
		KeyDecode_Lin: in std_logic_vector(3 downto 0);
		KeyDecode_CLK: in std_logic;
		KeyDecode_Reset: in std_logic;
		
		-- output
		KeyDecode_Col: out std_logic_vector(3 downto 0);
		KeyDecode_Val: out std_logic;
		KeyDecode_K: out std_logic_vector(3 downto 0)
	);
end KeyDecode;

architecture logicFunction of KeyDecode is

	component KeyScan is
		port(
		
			-- input
			KeyScan_Lin: in std_logic_vector(3 downto 0);
			KeyScan_Scan: in std_logic;
			KeyScan_CLK: in std_logic;
			KeyScan_Reset: in std_logic;
			
			-- output
			KeyScan_Col: out std_logic_vector(3 downto 0);
			KeyScan_K: out std_logic_vector(3 downto 0);
			KeyScan_Press: out std_logic
			
		);
	end component;

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

	component ClkDiv is 
		port(
			-- input
        	clk_in: in std_logic;

        	-- output
        	clk_out: out std_logic
		);
    end component;

	signal Scan: std_logic;
	signal Press: std_logic;
	signal clk: std_logic;

begin
	
	u0: KeyScan port map (
		KeyScan_Lin => KeyDecode_Lin,
		KeyScan_Scan => Scan,
		KeyScan_CLK => clk,
		KeyScan_Reset => KeyDecode_Reset,
		KeyScan_Col => KeyDecode_Col,
		KeyScan_K => KeyDecode_K,
		KeyScan_Press => Press
	);
	
	u1: KeyControl port map (
		KeyControl_Ack => KeyDecode_Ack,
		KeyControl_Press => Press,
		KeyControl_CLK => clk,
		KeyControl_Reset => KeyDecode_Reset,
		KeyControl_Val => KeyDecode_Val,
		KeyControl_Scan => Scan
	);

	u2: ClkDiv port map (
		clk_in => KeyDecode_CLK,
		clk_out => clk
	);

end logicFunction;