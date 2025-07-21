library ieee;
use ieee.std_logic_1164.all;

entity RingBuffer is
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
end RingBuffer;

architecture logicFunction of RingBuffer is

	component RingBufferControl is
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
	end component;

	component MemoryAddressControl is
		port(

		-- input
		MemoryAddressControl_putget: in std_logic;
		MemoryAddressControl_CLK: in std_logic;
		MemoryAddressControl_incPut: in std_logic;
		MemoryAddressControl_incGet: in std_logic;
        MemoryAddressControl_Reset: in std_logic;
		
		-- output
		MemoryAddressControl_Address: out std_logic_vector(3 downto 0);
		MemoryAddressControl_full: out std_logic;
		MemoryAddressControl_empty: out std_logic
		 
		);
	end component;

	component RAM is
		generic(
		ADDRESS_WIDTH : natural := 4;
		DATA_WIDTH : natural := 4
	);
	port(
		address : in std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
		wr: in std_logic;
		din: in std_logic_vector(DATA_WIDTH - 1 downto 0);
		dout: out std_logic_vector(DATA_WIDTH - 1 downto 0)
	);
	end component;
	
	signal full: std_logic;
    signal empty: std_logic;
    signal Wr: std_logic;
    signal selPG: std_logic;
    signal incPut: std_logic;
    signal incGet: std_logic;
	SIGNAL Address: std_logic_vector(3 downto 0);

begin
	
	u0: RingBufferControl port map (

		RingBufferControl_Reset => RingBuffer_Reset,
		RingBufferControl_DAV => RingBuffer_DAV,
		RingBufferControl_CTS => RingBuffer_CTS,
		RingBufferControl_CLK => RingBuffer_CLK,
		RingBufferControl_full => full,
        RingBufferControl_empty => empty,
		RingBufferControl_Wr => Wr,
        RingBufferControl_selPG => selPG,
        RingBufferControl_Wreg => RingBuffer_Wreg,
        RingBufferControl_DAC => RingBuffer_DAC,
        RingBufferControl_incPut => incPut,
        RingBufferControl_incGet => incGet
		
	);
	
	u1: MemoryAddressControl port map (

		MemoryAddressControl_putget => selPG, 
		MemoryAddressControl_CLK => RingBuffer_CLK,
		MemoryAddressControl_incPut => incPut,
		MemoryAddressControl_incGet => incGet,
        MemoryAddressControl_Reset => RingBuffer_Reset,
		MemoryAddressControl_Address => Address,
		MemoryAddressControl_full => full,
		MemoryAddressControl_empty => empty
		
	);
	
	u2: RAM port map (

		address => Address,
		wr => Wr,
		din => RingBuffer_D,
		dout => RingBuffer_Q

	);

    debug_full <= full;
    debug_empty <= empty;

end logicFunction;