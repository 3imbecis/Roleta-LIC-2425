library ieee;
use ieee.std_logic_1164.all;

entity Dec4_TB is
end Dec4_TB;

architecture logicFunction of Dec4_TB is

    component Dec4 is
        port(
        
            -- input
            Dec4_S: in std_logic_vector(1 downto 0);
            
            -- output
            Dec4_Out: out std_logic_vector(3 downto 0)
            
        );
    end component;

    -- input
    signal S_TB: std_logic_vector(1 downto 0);

    -- output
    signal Out_TB: std_logic_vector(3 downto 0);

    constant CLK_PERIOD: time := 20 ns;

begin

    UUT: Dec4 port map (
        Dec4_S => S_TB,
        Dec4_Out => Out_TB
    );

    stimulus: process begin

        S_TB <= "00";
        -- Out_TB = 0001

        wait for CLK_PERIOD;

        S_TB <= "01";
        -- Out_TB = 0010

        wait for CLK_PERIOD;

        S_TB <= "10";
        -- Out_TB = 0100

        wait for CLK_PERIOD;

        S_TB <= "11";
        -- Out_TB = 1000

        wait;

    end process;

end architecture;