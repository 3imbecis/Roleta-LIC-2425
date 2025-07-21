library ieee;
use ieee.std_logic_1164.all;

entity Reg4_TB is
end Reg4_TB;

architecture logicFunction of Reg4_TB is

    component Reg4 is
        port(
        
            -- input
            Reg4_In: in std_logic_vector(3 downto 0);
            Reg4_CE: in std_logic;
            Reg4_CLK: in std_logic;
            Reg4_Reset: in std_logic;
            
            -- output
            Reg4_Out: out std_logic_vector(3 downto 0)
            
        );
    end component;

    -- input
    signal In_TB: std_logic_vector(3 downto 0);
    signal CE_TB: std_logic;
    signal CLK_TB: std_logic;
    signal Reset_TB: std_logic;
    
    -- output
    signal Out_TB: std_logic_vector(3 downto 0);

    constant MCLK_PERIOD: time := 20 ns;
    constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;

    UUT: Reg4 port map (
        Reg4_In => In_TB,
        Reg4_CE => CE_TB,
        Reg4_CLK => CLK_TB,
        Reg4_Reset => Reset_TB,
        Reg4_Out => Out_TB
    );

    stimulus: process begin

        In_TB <= "0000";
        CE_TB <= '0';
        Reset_TB <= '1';
        -- Out_TB = UUUU

        wait for CLK_PERIOD;

        In_TB <= "1010";
        CE_TB <= '1';
        Reset_TB <= '0';
        -- Out_TB = 0000

        wait for CLK_PERIOD;

        In_TB <= "0110";
        CE_TB <= '1';
        -- Out_TB = 1010

        wait for CLK_PERIOD;

        In_TB <= "0000";
        CE_TB <= '0';
        -- Out_TB = 0110

        wait;

    end process;

end architecture;