library ieee;
use ieee.std_logic_1164.all;

entity KeyScan is
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
end KeyScan;

architecture logicFunction of KeyScan is

	component Counter4 is
		port(
		
			-- input
			Counter4_CE: in std_logic;
			Counter4_CLK: in std_logic;
			Counter4_Reset: in std_logic;
			
			-- output
			Counter4_Q: out std_logic_vector(3 downto 0)

		);
	end component;

	component Dec4 is
		port(
		
			-- input
			Dec4_S: in std_logic_vector(1 downto 0);
			
			-- output
			Dec4_Out: out std_logic_vector(3 downto 0)

		);
	end component;

	component Mux4 is
		port(
		
			-- input
			Mux4_In: in std_logic_vector(3 downto 0);
			Mux4_S: in std_logic_vector(1 downto 0);
			
			-- output
			Mux4_Out: out std_logic

		);
	end component;
	
	signal Q: std_logic_vector(3 downto 0);
	signal Not_KeyScan_Col: std_logic_vector(3 downto 0);
	signal Not_KeyScan_Press: std_logic;

begin
	
	u0: Counter4 port map (
		Counter4_CE => KeyScan_Scan,
		Counter4_CLK => KeyScan_CLK,
		Counter4_Reset => KeyScan_Reset,
		Counter4_Q => Q
	);
	
	KeyScan_K <= Q;
	
	u1: Dec4 port map (
		Dec4_S(1) => Q(3),
		Dec4_S(0) => Q(2),
		Dec4_Out => Not_KeyScan_Col
	);
	
	KeyScan_Col(3) <= not Not_KeyScan_Col(3);
	KeyScan_Col(2) <= not Not_KeyScan_Col(2);
	KeyScan_Col(1) <= not Not_KeyScan_Col(1);
	KeyScan_Col(0) <= not Not_KeyScan_Col(0);
	
	u2: Mux4 port map (
		Mux4_In => KeyScan_Lin,
		Mux4_S(1) => Q(1),
		Mux4_S(0) => Q(0),
		Mux4_Out => Not_KeyScan_Press
	);
	
	KeyScan_Press <= not Not_KeyScan_Press;

end logicFunction;