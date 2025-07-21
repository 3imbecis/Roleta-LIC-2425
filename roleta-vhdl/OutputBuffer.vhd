library ieee;
use ieee.std_logic_1164.all;

entity OutputBuffer is
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
end OutputBuffer;

architecture logicFunction of OutputBuffer is

	component BufferControl is
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
	end component;

	component Reg4 is
		port(
		
		-- input
		Reg4_In: in std_logic_vector(3 downto 0);
		Reg4_CE: in std_logic;
		Reg4_CLK: in std_logic;
		Reg4_Reset: in std_logic;
		
		-- output
		Reg4_Out: out std_logic_vector(3 downto 0)

		);
	end component;
	
	signal Wreg: std_logic;

begin
	
	u0: BufferControl port map (
			BufferControl_Reset => OutputBuffer_Reset,
		    BufferControl_clk => OutputBuffer_CLK,
		    BufferControl_Load => OutputBuffer_Load,
            BufferControl_ACK => OutputBuffer_ACK,
		    BufferControl_OBfree => OutputBuffer_OBfree,
	    	BufferControl_Wreg => Wreg,
            BufferControl_Dval => OutputBuffer_Dval
	);

	u1: Reg4 port map (
		Reg4_In => OutputBuffer_D,
		Reg4_CE => '1',
		Reg4_CLK => Wreg,
		Reg4_Reset => OutputBuffer_Reset,
		Reg4_Out => OutputBuffer_Q
	);


end logicFunction;