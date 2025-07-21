library ieee;
use ieee.std_logic_1164.all;

entity LCDDispatcher is
	port(
	
		-- input
        LCDDispatcher_Reset: in std_logic;
		LCDDispatcher_Dval: in std_logic;
        LCDDispatcher_Din: in std_logic_vector(4 downto 0);
        LCDDispatcher_CLK: in std_logic;
		
		-- output
		LCDDispatcher_Wrl: out std_logic;
		LCDDispatcher_Dout: out std_logic_vector(4 downto 0);
        LCDDispatcher_done: out std_logic
		
	);
end LCDDispatcher;

architecture logicFunction of LCDDispatcher is

    component Counter5 is
        port(
        
            -- input
            Counter5_CE: in std_logic;
            Counter5_CLK: in std_logic;
            Counter5_Reset: in std_logic;
            
            -- output
            Counter5_Q: out std_logic_vector(4 downto 0)
            
        );
    end component;

    type Tstate is (wait_for_data, reset_counter, enable, cooldown, done);

    signal state: Tstate;
    signal next_state: Tstate;

    signal count_enable: std_logic;
    signal count_reset: std_logic;
    signal count_result: std_logic_vector(4 downto 0);

begin
	
    state <= wait_for_data when LCDDispatcher_Reset = '1' else next_state when rising_edge(LCDDispatcher_CLK);

    u0: Counter5 port map (
		Counter5_CE => count_enable,
        Counter5_CLK => LCDDispatcher_CLK,
        Counter5_Reset => count_reset,
        Counter5_Q => count_result
	);

    process(state, LCDDispatcher_Dval, LCDDispatcher_Din, count_result) begin

        case state is

            when wait_for_data =>
                if LCDDispatcher_Dval = '1' then
                    next_state <= reset_counter;
                else
                    next_state <= wait_for_data;
                end if;

            when reset_counter =>
                next_state <= enable;

            when enable =>
                -- tw = 230ns  clk = 50mhz  => min 12 ciclos (0b01100)
                if count_result = "01111" then 
                    next_state <= cooldown;
                else
                    next_state <= enable;
                end if;

            when cooldown =>
                -- tc = 500ns  clk = 50mhz  => min 25 ciclos (0b11001)
                -- if count_result(4) and count_result(3) and not count_result(2) and not count_result(1) and count_result(0) then 
                if count_result = "11111" then 
                    next_state <= done;
                else 
                    next_state <= cooldown;
                end if;
                      
            when done =>
                if LCDDispatcher_Dval = '0' then
                    next_state <= wait_for_data;
                else
                    next_state <= done;
                end if;
        
        end case;
    end process;

    LCDDispatcher_Dout <= LCDDispatcher_Din;
    count_enable <= '1' when state = enable or state = cooldown else '0';
    count_reset <= '1' when state = reset_counter else '0';
    LCDDispatcher_Wrl <= '1' when state = enable else '0';
    LCDDispatcher_done <= '1' when state = done else '0';  
    
end logicFunction;