library ieee;
use ieee.std_logic_1164.all;

entity MemoryAddressControl is
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
end MemoryAddressControl;

architecture logicFunction of MemoryAddressControl is

	component Counter4 is
		port(
		
		-- input
		Counter4_CE: in std_logic;
		Counter4_CLK: in std_logic;
		Counter4_Reset: in std_logic;
		
		-- output
		Counter4_Q: out std_logic_vector(3 downto 0)

		);
	end component;

	component CountUpDown is
		port(
		
		-- input
		CountUpDown_Up: in std_logic;
		CountUpDown_Down: in std_logic;
		CountUpDown_CLK: in std_logic;
		CountUpDown_Reset: in std_logic;
		
		-- output
		CountUpDown_Q: out std_logic_vector(4 downto 0)

		);
	end component;

	component Mux4_MAC is
		port(

        -- input
		Mux4_MAC_A: in std_logic_vector(3 downto 0);
        Mux4_MAC_B: in std_logic_vector(3 downto 0);
		Mux4_MAC_S: in std_logic;
		
		-- output
		Mux4_MAC_Out: out std_logic_vector(3 downto 0)
			
		);
	end component;

	signal incPut: std_logic;
	signal incGet: std_logic;

    signal get_addr: std_logic_vector(3 downto 0);	
    signal put_addr: std_logic_vector(3 downto 0);	
    signal size: std_logic_vector(4 downto 0);

	signal full: std_logic;
	signal empty: std_logic;

begin

	incPut <= '1' when MemoryAddressControl_incPut = '1' and full = '0' else '0';
	incGet <= '1' when MemoryAddressControl_incGet = '1' and empty = '0' else '0';
	
	u0: Counter4 port map (
		Counter4_CE => incGet,
		Counter4_CLK => MemoryAddressControl_CLK,
		Counter4_Reset => MemoryAddressControl_Reset,
		Counter4_Q => get_addr
	);
	
	u1: Counter4 port map (
		Counter4_CE => incPut,
		Counter4_CLK => MemoryAddressControl_CLK,
		Counter4_Reset => MemoryAddressControl_Reset,
		Counter4_Q => put_addr
	);

	u2: CountUpDown port map (
		CountUpDown_Up => incPut,
		CountUpDown_Down => incGet,
		CountUpDown_CLK => MemoryAddressControl_CLK,
		CountUpDown_Reset => MemoryAddressControl_Reset,
		CountUpDown_Q => size
	);
	
	u3: Mux4_MAC port map (
		Mux4_MAC_A => put_addr,
        Mux4_MAC_B => get_addr,
		Mux4_MAC_S => MemoryAddressControl_putget,
		Mux4_MAC_Out => MemoryAddressControl_Address
	);

    full <= '1' when size = "10000" else '0';
	MemoryAddressControl_full <= full;

    empty <= '1' when size = "00000" else '0';
	MemoryAddressControl_empty <= empty;
	
end logicFunction;