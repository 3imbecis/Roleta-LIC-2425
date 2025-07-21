library ieee;
use ieee.std_logic_1164.all;

entity Mux4_MAC_TB is
end Mux4_MAC_TB;

architecture logicFunction of Mux4_MAC_TB is

    component Mux4_MAC is
        port(
        
		-- input
		Mux4_MAC_A: in std_logic_vector(3 downto 0);
        Mux4_MAC_B: in std_logic_vector(3 downto 0);
		Mux4_MAC_S: in std_logic;
		
		-- output
		Mux4_MAC_Out: out std_logic_vector(3 downto 0)
            
        );
    end component;

    -- input
    signal A_TB: std_logic_vector(3 downto 0);
    signal B_TB: std_logic_vector(3 downto 0);
    signal S_TB: std_logic;
    
    -- output
    signal Out_TB: std_logic_vector(3 downto 0);

    constant CLK_PERIOD: time := 20 ns;

begin

    UUT: Mux4_MAC port map (
        Mux4_MAC_A => A_TB,
        Mux4_MAC_B => B_TB,
        Mux4_MAC_S => S_TB,
        Mux4_MAC_Out => Out_TB
    );

    stimulus: process begin

        A_TB <= "0101";
        B_TB <= "0101";
        S_TB <= '0';
        -- Out_TB = 0101

        wait for CLK_PERIOD;

        A_TB <= "0000";
        B_TB <= "1111";
        S_TB <= '1';
        -- Out_TB = 0000

        wait for CLK_PERIOD;

        A_TB <= "0000";
        B_TB <= "1111";
        S_TB <= '0';
        -- Out_TB = 1111

        wait for CLK_PERIOD;

        A_TB <= "1111";
        B_TB <= "0000";
        S_TB <= '0';
        -- Out_TB = 0000

        wait;

    end process;

end architecture;