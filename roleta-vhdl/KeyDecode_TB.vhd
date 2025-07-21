library ieee;
use ieee.std_logic_1164.all;

entity KeyDecode_TB is
end KeyDecode_TB;

architecture logicFunction of KeyDecode_TB is

    component KeyDecode is
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
    end component;

    -- input
    signal Ack_TB: std_logic;
    signal Lin_TB: std_logic_vector(3 downto 0);
    signal CLK_TB: std_logic := '0';
    signal Reset_TB: std_logic;
    
    -- output
    signal Col_TB: std_logic_vector(3 downto 0);
    signal Val_TB: std_logic;
    signal K_TB: std_logic_vector(3 downto 0);

    constant MCLK_PERIOD: time := 20 ns;
    constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;

    UUT: KeyDecode port map (
        KeyDecode_Ack => Ack_TB,
        KeyDecode_Lin => Lin_TB,
        KeyDecode_CLK => CLK_TB,
        KeyDecode_Reset => Reset_TB,
        KeyDecode_Col => Col_TB,
        KeyDecode_Val => Val_TB,
        KeyDecode_K => K_TB
    );

    stimulus: process begin
			
        Reset_TB <= '1';
        Ack_TB <= '0';        
        Lin_TB <= "1111";
        
        wait for CLK_PERIOD;
        
        Reset_TB <= '0';
        
        wait for CLK_PERIOD;

        -- Tecla 1

        Lin_TB <= "1110";
            
        wait for CLK_PERIOD * 5;

        Ack_TB <= '1';
        wait for CLK_PERIOD;
        Ack_TB <= '0';
        wait for CLK_PERIOD;

        -- Tecla 4

        Lin_TB <= "1101";
        
        wait for CLK_PERIOD * 5;

        Ack_TB <= '1';
        wait for CLK_PERIOD;
        Ack_TB <= '0';
        wait for CLK_PERIOD;

        -- Tecla 7

        Lin_TB <= "1011";
        
        wait for CLK_PERIOD * 5;

        Ack_TB <= '1';
        wait for CLK_PERIOD;
        Ack_TB <= '0';
        wait for CLK_PERIOD;

        wait;	
			
    end process;

end architecture;