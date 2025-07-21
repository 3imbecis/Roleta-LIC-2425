library ieee;
use ieee.std_logic_1164.all;

entity RouletteDispatcher is
	port(
	
		-- input
        RouletteDispatcher_Reset: in std_logic;
		RouletteDispatcher_Dval: in std_logic;
        RouletteDispatcher_Din: in std_logic_vector(7 downto 0);
		RouletteDispatcher_CLK: in std_logic;

		-- output
		RouletteDispatcher_WrD: out std_logic;
		RouletteDispatcher_Dout: out std_logic_vector(7 downto 0);
        RouletteDispatcher_done: out std_logic
		
	);
end RouletteDispatcher;

architecture logicFunction of RouletteDispatcher is

    type Tstate is (wait_for_data, enable, done);

    signal state: Tstate;
    signal next_state: Tstate;

begin

    state <= wait_for_data when RouletteDispatcher_Reset = '1' else next_state when rising_edge(RouletteDispatcher_CLK);

    process(state, RouletteDispatcher_Dval, RouletteDispatcher_Din) begin

        case state is

            when wait_for_data =>
                if RouletteDispatcher_Dval = '1' then
                    next_state <= enable;
                else
                    next_state <= wait_for_data;
                end if;

            when enable =>
                next_state <= done;
                      
            when done =>
                if RouletteDispatcher_Dval = '0' then
                    next_state <= wait_for_data;
                else
                    next_state <= done;
                end if;

        end case;
    end process;

    RouletteDispatcher_Dout <= RouletteDispatcher_Din;
    RouletteDispatcher_WrD <= '1' when state = enable else '0';
    RouletteDispatcher_done <= '1' when state = done else '0';

end logicFunction;