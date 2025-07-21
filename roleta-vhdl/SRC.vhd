library ieee;
use ieee.std_logic_1164.all;

entity SRC is
	port(
	
		-- input
        SRC_Reset: in std_logic;
		SRC_RDSel: in std_logic;
		SRC_SCLK: in std_logic;
		SRC_CLK: in std_logic;
		SRC_SDX: in std_logic;
		
		-- output
		SRC_set: out std_logic;
		SRC_D: out std_logic_vector(7 downto 0)
		
	);
end SRC;

architecture logicFunction of SRC is

    component SRCSerialReceiver is
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
    end component;

    component RouletteDispatcher is 
        port(

		-- input
        RouletteDispatcher_Reset: in std_logic;
		RouletteDispatcher_Dval: in std_logic;
        RouletteDispatcher_Din: in std_logic_vector(7 downto 0);
		RouletteDispatcher_CLK: in std_logic;

		-- output
		RouletteDispatcher_WrD: out std_logic;
		RouletteDispatcher_Dout: out std_logic_vector(7 downto 0);
        RouletteDispatcher_done: out std_logic

        );
    end component;

    signal val: std_logic;
    signal D: std_logic_vector(7 downto 0);
    signal done_to_accept: std_logic;

begin

    u0: SRCSerialReceiver port map (
        SRCSerialReceiver_Reset => SRC_Reset,
        SRCSerialReceiver_SS => SRC_RDSel,
        SRCSerialReceiver_SCLK => SRC_SCLK,
        SRCSerialReceiver_CLK => SRC_CLK,
        SRCSerialReceiver_SDX => SRC_SDX,
        SRCSerialReceiver_accept => done_to_accept,
        SRCSerialReceiver_DXval => val,
        SRCSerialReceiver_D => D
    );  

    u1: RouletteDispatcher port map (
        RouletteDispatcher_Reset => SRC_Reset,
        RouletteDispatcher_Dval => val,
        RouletteDispatcher_Din => D,
        RouletteDispatcher_CLK => SRC_CLK,
        RouletteDispatcher_WrD => SRC_set,
        RouletteDispatcher_Dout => SRC_D,
        RouletteDispatcher_done => done_to_accept
    );
	
end logicFunction;