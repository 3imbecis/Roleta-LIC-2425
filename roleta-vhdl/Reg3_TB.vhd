library ieee;
use ieee.std_logic_1164.all;

entity Reg3_TB is
end Reg3_TB;

architecture logicFunction of Reg3_TB is

    component Reg3 is
        port(
        
            -- input
            Reg3_In: in std_logic_vector(2 downto 0);
            Reg3_CE: in std_logic;
            Reg3_CLK: in std_logic;
            Reg3_Reset: in std_logic;
            
            -- output
            Reg3_Out: out std_logic_vector(2 downto 0)
            
        );
    end component;

    -- input
    signal In_TB: std_logic_vector(2 downto 0);
    signal CE_TB: std_logic;
    signal CLK_TB: std_logic;
    signal Reset_TB: std_logic;
    
    -- output
    signal Out_TB: std_logic_vector(2 downto 0);

    constant MCLK_PERIOD: time := 20 ns;
    constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
    constant CLK_PERIOD: time := 20 ns;

begin

    CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;

    UUT: Reg3 port map (
        Reg3_In => In_TB,
        Reg3_CE => CE_TB,
        Reg3_CLK => CLK_TB,
        Reg3_Reset => Reset_TB,
        Reg3_Out => Out_TB
    );

    stimulus: process begin

        In_TB <= "000";
        CE_TB <= '0';
        Reset_TB <= '1';
        -- Out_TB = UUU

        wait for CLK_PERIOD;

        In_TB <= "101";
        CE_TB <= '1';
        Reset_TB <= '0';
        -- Out_TB = 000

        wait for CLK_PERIOD;

        In_TB <= "110";
        CE_TB <= '1';
        -- Out_TB = 101

        wait for CLK_PERIOD;

        In_TB <= "000";
        CE_TB <= '0';
        -- Out_TB = 110

        wait;

    end process;

end architecture;