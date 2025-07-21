library ieee;
use ieee.std_logic_1164.all;

entity LCDSerialReceiver is
	port(
	
		-- input
		LCDSerialReceiver_SS: in std_logic;
		LCDSerialReceiver_SCLK: in std_logic;
		LCDSerialReceiver_CLK: in std_logic;
		LCDSerialReceiver_Reset: in std_logic;
		LCDSerialReceiver_SDX: in std_logic;
		LCDSerialReceiver_accept: in std_logic;
		
		-- output
		LCDSerialReceiver_DXval: out std_logic;
		LCDSerialReceiver_D: out std_logic_vector(4 downto 0)
	);
end LCDSerialReceiver;

architecture logicFunction of LCDSerialReceiver is

	component SerialControl is port (
		
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
	end component;
	
	component ShiftRegister5 is
		port(
		
			-- input
			ShiftRegister5_data: in std_logic;
			ShiftRegister5_clk: in std_logic;
			ShiftRegister5_enableShift: in std_logic;
			ShiftRegister5_Reset: in std_logic;
			
			-- output
			ShiftRegister5_D: out std_logic_vector(4 downto 0)
			
		);
	end component;
	
	component ParityCheck is
		port(
		
			-- input
			ParityCheck_data: in std_logic;
			ParityCheck_init: in std_logic;
			ParityCheck_clk: in std_logic;
			
			-- output
			ParityCheck_err: out std_logic

		);
	end component;
	
	component Counter3 is
		port(
		
			-- input
			Counter3_CE: in std_logic;
			Counter3_CLK: in std_logic;
			Counter3_Reset: in std_logic;
			
			-- output
			Counter3_Q: out std_logic_vector(2 downto 0)

		);
	end component;

	signal pFlag: std_logic;
	signal dFlag: std_logic;
	signal error: std_logic;
    signal RXerror: std_logic;
	signal wr: std_logic;
	signal init: std_logic;
	signal counter: std_logic_vector(2 downto 0);
	
begin

	u0: SerialControl port map (
		SerialControl_Reset => LCDSerialReceiver_Reset,
		SerialControl_enRX => LCDSerialReceiver_SS,
		SerialControl_accept => LCDSerialReceiver_Accept,
		SerialControl_pFlag => pFlag,
		SerialControl_dFlag => dFlag,
		SerialControl_RXerror => RXerror,
        SerialControl_Clk => LCDSerialReceiver_CLK,
		SerialControl_wr => wr,
		SerialControl_init => init,
		SerialControl_DXval => LCDSerialReceiver_DXval
	);

    RXerror <= error and not LCDSerialReceiver_SCLK;
	
	u1: ShiftRegister5 port map (
		ShiftRegister5_data => LCDSerialReceiver_SDX,
		ShiftRegister5_clk => LCDSerialReceiver_SCLK,
		ShiftRegister5_Reset => LCDSerialReceiver_Reset,
	    ShiftRegister5_enableShift => wr,
		ShiftRegister5_D => LCDSerialReceiver_D
	);
	
	u2: ParityCheck port map (
		ParityCheck_data => LCDSerialReceiver_SDX,
		ParityCheck_init => init,
		ParityCheck_clk => LCDSerialReceiver_SCLK,
		ParityCheck_err => error
	);
	
	u3: Counter3 port map (
		Counter3_CE => '1',
		Counter3_CLK => LCDSerialReceiver_SCLK,
		Counter3_Reset => init,
		Counter3_Q => counter
	);
	
	dFlag <= counter(2) and not counter(1) and counter(0) and not LCDSerialReceiver_SCLK;
	pflag <= counter(2) and counter(1) and not counter(0) and not LCDSerialReceiver_SCLK;

end logicFunction;