library ieee;
use ieee.std_logic_1164.all;

entity Mux4_TB is
end Mux4_TB;

architecture logicFunction of Mux4_TB is

    component Mux4 is
        port(
        
            -- input
            Mux4_In: in std_logic_vector(3 downto 0);
            Mux4_S: in std_logic_vector(1 downto 0);
            
            -- output
            Mux4_Out: out std_logic
            
        );
    end component;

    -- input
    signal In_TB: std_logic_vector(3 downto 0);
    signal S_TB: std_logic_vector(1 downto 0);
    
    -- output
    signal Out_TB: std_logic;

    constant CLK_PERIOD: time := 20 ns;

begin

    UUT: Mux4 port map (
        Mux4_In => In_TB,
        Mux4_S => S_TB,
        Mux4_Out => Out_TB
    );

    stimulus: process begin

        In_TB <= "0101";
        S_TB <= "00";
        -- Out_TB = 1

        wait for CLK_PERIOD;

        In_TB <= "0101";
        S_TB <= "01";
        -- Out_TB = 0

        wait for CLK_PERIOD;

        In_TB <= "0101";
        S_TB <= "10";
        -- Out_TB = 1

        wait for CLK_PERIOD;

        In_TB <= "0101";
        S_TB <= "11";
        -- Out_TB = 0

        wait;

    end process;

end architecture;