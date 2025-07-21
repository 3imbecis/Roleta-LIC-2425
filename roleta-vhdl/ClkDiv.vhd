library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity ClkDiv is
    generic(div: natural := 250_000);
    port(

        -- input
        clk_in: in std_logic;

        -- output
        clk_out: out std_logic

    );
end ClkDiv;

architecture bhv of ClkDiv is

    signal count: integer := 1;
    signal tmp: std_logic := '0';

begin

    process(clk_in) begin

        if(clk_in'event and clk_in='1') then

            count <=count+1;

            if (count = div/2) then
                tmp <= NOT tmp;
                count <= 1;
            end if;

        end if;

    end process;

    clk_out <= tmp;

end bhv;