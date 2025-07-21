library ieee;
use ieee.std_logic_1164.all;

entity RingBufferControl is
	port(
	
		-- input
        RingBufferControl_Reset: in std_logic;
		RingBufferControl_DAV: in std_logic;
		RingBufferControl_CTS: in std_logic;
		RingBufferControl_CLK: in std_logic;
		RingBufferControl_full: in std_logic;
        RingBufferControl_empty: in std_logic;
		
		-- output
		RingBufferControl_Wr: out std_logic;
        RingBufferControl_selPG: out std_logic;
        RingBufferControl_Wreg: out std_logic;
        RingBufferControl_DAC: out std_logic;
        RingBufferControl_incPut: out std_logic;
        RingBufferControl_incGet: out std_logic
		
	);
end RingBufferControl;

architecture logicFunction of RingBufferControl is

    type Tstate is (init, kd_addr, kd_write,kd_inc, kd_ack, ob_inc, ob_read);
    -- type Tstate is (start, writing, Wr_activate, incPut_activate, accepted_data, reading,incGet_activate);

    signal state: Tstate;
    signal next_state: Tstate;

begin

    state <= init when RingBufferControl_Reset = '1' else next_state when rising_edge(RingBufferControl_CLK);

    process(state, RingBufferControl_DAV, RingBufferControl_CTS, RingBufferControl_full, RingBufferControl_empty) begin
        case state is

            -- KD

            when init =>
                if RingBufferControl_DAV = '1' and RingBufferControl_full = '0' then
                    next_state <= kd_addr;
                elsif RingBufferControl_CTS = '1' and RingBufferControl_empty = '0' then 
                    next_state <= ob_read;
                else
                    next_state <= init;
                end if;

            when kd_addr => next_state <= kd_write;
            when kd_write => next_state <= kd_inc;
            when kd_inc => next_state <= kd_ack;

            when kd_ack =>
                if RingBufferControl_DAV = '0' then 
                   next_state <= init;
                else
                    next_state <= kd_ack;
                end if;
            
            -- OB

            when ob_read =>
                if RingBufferControl_CTS = '1' then
                    next_state <= ob_read;
                else
                    next_state <= ob_inc;
                end if;

            when ob_inc => next_state <= init;
            
        end case;
    end process;

    RingBufferControl_Wr <= '1' when state = kd_write else '0';
    RingBufferControl_selPG <= '1' when state = kd_addr or state = kd_write else '0';
    RingBufferControl_Wreg <= '1' when state = ob_read else '0';
    RingBufferControl_DAC <= '1' when state = kd_ack else '0';
    RingBufferControl_incPut <= '1' when state = kd_inc else '0';
    RingBufferControl_incGet <= '1' when state = ob_inc else '0';
   

end logicFunction;