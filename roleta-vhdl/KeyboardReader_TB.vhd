library ieee;
use ieee.std_logic_1164.all;

entity KeyboardReader_TB is
end KeyboardReader_TB;

architecture logicFunction of KeyboardReader_TB is

    component KeyboardReader is
        port(
        
            -- input
            KeyboardReader_Ack: in std_logic;
            KeyboardReader_Lin: in std_logic_vector(3 downto 0);
            KeyboardReader_CLK: in std_logic;
            KeyboardReader_Reset: in std_logic;
            
            -- output
            KeyboardReader_Col: out std_logic_vector(3 downto 0);
            KeyboardReader_Dval: out std_logic;
            KeyboardReader_Q: out std_logic_vector(3 downto 0)
            
        );
    end component;

    -- input
    signal Ack_TB: std_logic;
    signal Lin_TB: std_logic_vector(3 downto 0);
    signal CLK_TB: std_logic := '0';
    signal Reset_TB: std_logic;
    
    -- output
    signal Col_TB: std_logic_vector(3 downto 0);
    signal Dval_TB: std_logic;
    signal Q_TB: std_logic_vector(3 downto 0);

    constant MCLK_PERIOD: time := 20 ns;
    constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;

    UUT: KeyboardReader port map (
        KeyboardReader_Ack => Ack_TB,
        KeyboardReader_Lin => Lin_TB,
        KeyboardReader_CLK => CLK_TB,
        KeyboardReader_Reset => Reset_TB,
        KeyboardReader_Col => Col_TB,
        KeyboardReader_Dval => Dval_TB,
        KeyboardReader_Q => Q_TB
    );

    stimulus: process begin
	 
			Reset_TB <= '1';
            Lin_TB <= "1111";
            Ack_TB <= '0';
			
			wait for CLK_PERIOD;
			
			Reset_TB <= '0';
			
			wait for CLK_PERIOD * 11;
			
			Lin_TB <= "1110";
			wait for CLK_PERIOD * 20;
			Lin_TB <= "1111";
			wait for CLK_PERIOD * 20;
            
			Lin_TB <= "1110";
			wait for CLK_PERIOD * 20;
			Lin_TB <= "1111";
			wait for CLK_PERIOD * 20;
            
			Lin_TB <= "1110";
			wait for CLK_PERIOD * 20;
			Lin_TB <= "1111";
			wait for CLK_PERIOD * 20;
            
			Lin_TB <= "1110";
			wait for CLK_PERIOD * 20;
			Lin_TB <= "1111";
			wait for CLK_PERIOD * 20;
            
			Lin_TB <= "1110";
			wait for CLK_PERIOD * 20;
			Lin_TB <= "1111";
			wait for CLK_PERIOD * 20;
            
			Lin_TB <= "1110";
			wait for CLK_PERIOD * 20;
			Lin_TB <= "1111";
			wait for CLK_PERIOD * 20;
            
			Lin_TB <= "1110";
			wait for CLK_PERIOD * 20;
			Lin_TB <= "1111";
			wait for CLK_PERIOD * 20;
            
			Lin_TB <= "1110";
			wait for CLK_PERIOD * 20;
			Lin_TB <= "1111";
			wait for CLK_PERIOD * 20;
            
			Lin_TB <= "1110";
			wait for CLK_PERIOD * 20;
			Lin_TB <= "1111";
			wait for CLK_PERIOD * 20;
            
			Lin_TB <= "1110";
			wait for CLK_PERIOD * 20;
			Lin_TB <= "1111";
			wait for CLK_PERIOD * 20;
			
			ACK_TB <= '1';
			wait for CLK_PERIOD * 10;
			ACK_TB <= '0';
			wait for CLK_PERIOD * 10;
            
			ACK_TB <= '1';
			wait for CLK_PERIOD * 10;
			ACK_TB <= '0';
			wait for CLK_PERIOD * 10;
            
			ACK_TB <= '1';
			wait for CLK_PERIOD * 10;
			ACK_TB <= '0';
			wait for CLK_PERIOD * 10;
            
			ACK_TB <= '1';
			wait for CLK_PERIOD * 10;
			ACK_TB <= '0';
			wait for CLK_PERIOD * 10;
            
			ACK_TB <= '1';
			wait for CLK_PERIOD * 10;
			ACK_TB <= '0';
			wait for CLK_PERIOD * 10;
            
			ACK_TB <= '1';
			wait for CLK_PERIOD * 10;
			ACK_TB <= '0';
			wait for CLK_PERIOD * 10;
            
			ACK_TB <= '1';
			wait for CLK_PERIOD * 10;
			ACK_TB <= '0';
			wait for CLK_PERIOD * 10;
            
			ACK_TB <= '1';
			wait for CLK_PERIOD * 10;
			ACK_TB <= '0';
			wait for CLK_PERIOD * 10;
            
			ACK_TB <= '1';
			wait for CLK_PERIOD * 10;
			ACK_TB <= '0';
			wait for CLK_PERIOD * 10;
            
			ACK_TB <= '1';
			wait for CLK_PERIOD * 10;
			ACK_TB <= '0';
			wait for CLK_PERIOD * 10;
            
			wait;

    end process;

end architecture;