library ieee;
use ieee.std_logic_1164.all;

entity KeyboardReader is
	port(
	
		-- input
		KeyboardReader_Ack: in std_logic;
		KeyboardReader_Lin: in std_logic_vector(3 downto 0);
		KeyboardReader_CLK: in std_logic;
		KeyboardReader_Reset: in std_logic;
		
		-- output
		KeyboardReader_Col: out std_logic_vector(3 downto 0);
		KeyboardReader_Dval: out std_logic;
		KeyboardReader_Q: out std_logic_vector(3 downto 0);

        debug_full: out std_logic;
        debug_empty: out std_logic

	);
end KeyboardReader;

architecture logicFunction of KeyboardReader is

	component KeyDecode is
		port(
		
			-- input
			KeyDecode_Ack: in std_logic;
			KeyDecode_Lin: in std_logic_vector(3 downto 0);
			KeyDecode_CLK: in std_logic;
			KeyDecode_Reset: in std_logic;
			
			-- output
			KeyDecode_Col: out std_logic_vector(3 downto 0);
			KeyDecode_Val: out std_logic;
			KeyDecode_K: out std_logic_vector(3 downto 0)
			
		);
	end component;

	component RingBuffer is
		port(
		
			-- input
		RingBuffer_D: in std_logic_vector(3 downto 0);
		RingBuffer_DAV: in std_logic;
		RingBuffer_CLK: in std_logic;
        RingBuffer_Reset: in std_logic;
		RingBuffer_CTS: in std_logic;
		
		-- output
		RingBuffer_Q: out std_logic_vector(3 downto 0);
		RingBuffer_Wreg: out std_logic;
		RingBuffer_DAC: out std_logic;

        debug_full: out std_logic;
        debug_empty: out std_logic
			
		);
	end component;

	component OutputBuffer is
		port(
		
		-- input
		OutputBuffer_D: in std_logic_vector(3 downto 0);
		OutputBuffer_Load: in std_logic;
		OutputBuffer_ACK: in std_logic;
        OutputBuffer_Reset: in std_logic;
        OutputBuffer_CLK: in std_logic;
		
		-- output
		OutputBuffer_Q: out std_logic_vector(3 downto 0);
		OutputBuffer_OBfree: out std_logic;
		OutputBuffer_Dval: out std_logic
			
		);
	end component;

	signal K_to_D: std_logic_vector(3 downto 0);
	signal Q_to_D: std_logic_vector(3 downto 0);
	signal DAC_to_Kack: std_logic;
	signal Kval_to_DAV: std_logic;
	signal OBfree_to_CTS: std_logic;
	signal Wreg_to_Load: std_logic;

begin
	
	u0: KeyDecode port map (
		KeyDecode_CLK => KeyboardReader_CLK,
		KeyDecode_Reset => KeyboardReader_Reset,
		KeyDecode_Lin => KeyboardReader_Lin,
		KeyDecode_Ack => DAC_to_Kack,
		KeyDecode_Col => KeyboardReader_Col,
		KeyDecode_Val => Kval_to_DAV,
		KeyDecode_K => K_to_D
	);
	
	u1: RingBuffer port map (
		RingBuffer_D => K_to_D,
		RingBuffer_DAV => Kval_to_DAV,
		RingBuffer_CLK => KeyboardReader_CLK,
        RingBuffer_Reset => KeyboardReader_Reset,
		RingBuffer_CTS => OBfree_to_CTS,
		RingBuffer_Q => Q_to_D,
		RingBuffer_Wreg => Wreg_to_Load,
		RingBuffer_DAC => DAC_to_Kack,

        debug_empty => debug_empty,
        debug_full => debug_full
	);

	u2: OutputBuffer port map (
		OutputBuffer_D => Q_to_D,
		OutputBuffer_Load => Wreg_to_Load,
		OutputBuffer_ACK => KeyboardReader_Ack,
        OutputBuffer_Reset => KeyboardReader_Reset,
        OutputBuffer_CLK => KeyboardReader_CLK,
		OutputBuffer_Q => KeyboardReader_Q,
		OutputBuffer_OBfree => OBfree_to_CTS,
		OutputBuffer_Dval => KeyboardReader_Dval
	);

end logicFunction;