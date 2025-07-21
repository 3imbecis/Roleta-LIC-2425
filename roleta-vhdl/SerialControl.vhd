library ieee;
use ieee.std_logic_1164.all;

entity SerialControl is
	port(
	
		-- input
        SerialControl_Reset: in std_logic;
		SerialControl_enRX: in std_logic;
		SerialControl_accept: in std_logic;
		SerialControl_pFlag: in std_logic;
		SerialControl_dFlag: in std_logic;
		SerialControl_RXerror: in std_logic;
		SerialControl_Clk: in std_logic;
		
		-- output
		SerialControl_wr: out std_logic;
		SerialControl_init: out std_logic;
		SerialControl_DXval: out std_logic
		
	);
end SerialControl;

architecture logicFunction of SerialControl is

    type Tstate is (start, wait_for_data, wait_for_parity, output_data, wait_for_neutral);

    signal state: Tstate;
    signal next_state: Tstate;

begin

    state <= start when SerialControl_Reset = '1' else next_state when rising_edge(SerialControl_Clk);
    
    process(state, SerialControl_enRX, SerialControl_accept, SerialControl_pFlag, SerialControl_dFlag, SerialControl_RXerror) begin
        
        case state is
            
            when start =>
                if SerialControl_enRX = '0' then
                    next_state <= wait_for_data;
                else
                    next_state <= start;
                end if;

            when wait_for_data =>
                if SerialControl_enRX = '0' then
                    if SerialControl_dFlag = '1' then
                        next_state <= wait_for_parity;
                    else
                        next_state <= wait_for_data;
                    end if;
                else
                    next_state <= start;
                end if;

            when wait_for_parity =>
                --if SerialControl_enRX = '1' then
                    if SerialControl_pFlag = '1' then
                        if SerialControl_RXerror = '0' then
                            next_state <= output_data;
                        else
                            next_state <= start;
                        end if;
                    else
                        next_state <= wait_for_parity;
                    end if;
                --else
                    --next_state <= wait_for_parity;
                --end if;

            when output_data =>
                if SerialControl_accept = '1' then
                    next_state <= wait_for_neutral;
                else
                    next_state <= output_data;
                end if;

            when wait_for_neutral =>
                if SerialControl_accept = '0' then
                    next_state <= start;
                else
                    next_state <= wait_for_neutral;
                end if;

        end case;
    end process;

    SerialControl_DXval <= '1' when (state = output_data) else '0';
    SerialControl_wr <= '1' when (state = wait_for_data) else '0';
    SerialControl_init <= '1' when (state = start) else '0';
	
end logicFunction;