library ieee;
use ieee.std_logic_1164.all;

entity SRCSerialReceiver is
	port(
	
		-- input
		SRCSerialReceiver_Reset: in std_logic;
		SRCSerialReceiver_SS: in std_logic;
		SRCSerialReceiver_SCLK: in std_logic;
		SRCSerialReceiver_CLK: in std_logic;
		SRCSerialReceiver_SDX: in std_logic;
		SRCSerialReceiver_accept: in std_logic;
		
		-- output
		SRCSerialReceiver_DXval: out std_logic;
		SRCSerialReceiver_D: out std_logic_vector(7 downto 0)
		
	);
end SRCSerialReceiver;

architecture logicFunction of SRCSerialReceiver is

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
	
	component ShiftRegister8 is port (
		
		-- input
		ShiftRegister8_Reset: in std_logic;
		ShiftRegister8_data: in std_logic;
		ShiftRegister8_clk: in std_logic;
		ShiftRegister8_enableShift: in std_logic;
		
		-- output
		ShiftRegister8_D: out std_logic_vector(7 downto 0)
		);

	end component;
	
	component ParityCheck is port (
		
		-- input
		ParityCheck_data: in std_logic;
		ParityCheck_init: in std_logic;
		ParityCheck_clk: in std_logic;
		
		-- output
		ParityCheck_err: out std_logic
		);
	end component;
	
	component Counter4 is port (
		
		-- input
		Counter4_CE: in std_logic;
		Counter4_CLK: in std_logic;
		Counter4_Reset: in std_logic;
		
		-- output
		Counter4_Q: out std_logic_vector(3 downto 0)

    );
	end component;

	signal pFlag: std_logic;
	signal dFlag: std_logic;
	signal error: std_logic;
	signal RXerror: std_logic;
	signal wr: std_logic;
	signal init: std_logic;
	signal counter: std_logic_vector(3 downto 0);
	
begin

	u0: SerialControl port map (
		SerialControl_Reset => SRCSerialReceiver_Reset,
		SerialControl_enRX => SRCSerialReceiver_SS,
		SerialControl_accept => SRCSerialReceiver_Accept,
		SerialControl_pFlag => pFlag,
		SerialControl_dFlag => dFlag,
		SerialControl_RXerror => RXerror,
        SerialControl_Clk => SRCSerialReceiver_CLK,
		SerialControl_wr => wr,
		SerialControl_init => init,
		SerialControl_DXval => SRCSerialReceiver_DXval
	);

	RXerror <= error and not SRCSerialReceiver_SCLK;
	
	u1: ShiftRegister8 port map (
		ShiftRegister8_Reset => SRCSerialReceiver_Reset,
		ShiftRegister8_data => SRCSerialReceiver_SDX,
		ShiftRegister8_clk => SRCSerialReceiver_SCLK,
		ShiftRegister8_enableShift => wr,
		ShiftRegister8_D => SRCSerialReceiver_D
	);
	
	u2: ParityCheck port map (
		ParityCheck_data => SRCSerialReceiver_SDX,
		ParityCheck_init => init,
		ParityCheck_clk => SRCSerialReceiver_SCLK,
		ParityCheck_err => error
	);
	
	u3: Counter4 port map (
		Counter4_CE => '1',
		Counter4_CLK => SRCSerialReceiver_SCLK,
		Counter4_Reset => init,
		Counter4_Q => counter
	);
	
	dFlag <= counter(3) and not counter(2) and not counter(1) and not counter(0) and not SRCSerialReceiver_SCLK;
	pflag <= counter(3) and not counter(2) and not counter(1) and counter(0) and not SRCSerialReceiver_SCLK;
	
end logicFunction;