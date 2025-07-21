library ieee;
use ieee.std_logic_1164.all;

entity KeyControl is
	port(
	
		-- input
		KeyControl_Ack: in std_logic;
		KeyControl_Press: in std_logic;
		KeyControl_CLK: in std_logic;
		KeyControl_Reset: in std_logic;
		
		-- output
		KeyControl_Val: out std_logic;
		KeyControl_Scan: out std_logic
		
	);
end KeyControl;

architecture logicFunction of KeyControl is

	type Tstate is (scanning, hold, resume);
	
	signal state: Tstate;
	signal next_state: Tstate;

begin

	state <= scanning when KeyControl_Reset = '1' else next_state when falling_edge(KeyControl_CLK);

	process(state, KeyControl_Ack, KeyControl_Press) begin
		case state is

			when scanning =>
				if KeyControl_Press = '1' then
					next_state <= hold;
				else
					next_state <= scanning;
				end if;
			
			when hold =>
				if KeyControl_Ack = '1' then
					next_state <= resume;
				else
					next_state <= hold;
				end if;

			when resume =>
				if KeyControl_Ack = '0' and KeyControl_Press = '0' then
					next_state <= scanning;
				else
					next_state <= resume;
				end if;

		end case;
	end process;

	KeyControl_Val <= '1' when state = hold else '0';
	KeyControl_Scan <= '1' when state = scanning and KeyControl_Press = '0' else '0';
	
end logicFunction;