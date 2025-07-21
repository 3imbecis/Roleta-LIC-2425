library ieee;
use ieee.std_logic_1164.all;

entity BufferControl is
	port(
	
		-- input
		BufferControl_Reset: in std_logic;
		BufferControl_clk: in std_logic;
		BufferControl_Load: in std_logic;
        BufferControl_ACK: in std_logic;
		
		-- output
		BufferControl_OBfree: out std_logic;
		BufferControl_Wreg: out std_logic;
        BufferControl_Dval: out std_logic
		
	);
end BufferControl;

architecture logicFunction of BufferControl is

	type Tstate is (start, data_available, ack_received);

    signal state: Tstate := start;
    signal next_state: Tstate := start;

begin

	state <= start when BufferControl_Reset = '1' else next_state when rising_edge(BufferControl_clk);

	process(state, BufferControl_Load, BufferControl_ACK) begin

	case state is
            
            when start =>
                if BufferControl_Load = '1'then
                    next_state <= data_available;
                else
                    next_state <= start;
                end if;

            when data_available =>
				if BufferControl_ACK = '1' then
					next_state <= ack_received;
					else
					next_state <= data_available;
					end if;

            when ack_received =>
				if BufferControl_ACK = '1' then
					next_state <= ack_received;
					else 
					next_state <= start;
				end if;
            end case;

	end process;

	BufferControl_Wreg <= '1' when (state = start and BufferControl_Load = '1') else '0';
	BufferControl_OBfree <= '1' when (state = start) else '0';
    BufferControl_Dval <= '1' when (state = data_available) else '0';


end logicFunction;