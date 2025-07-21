library ieee;
use ieee.std_logic_1164.all;

entity SLCDC is
	port(
	
		-- input
        SLCDC_Reset: in std_logic;
		SLCDC_LCDSel: in std_logic;
		SLCDC_SCLK: in std_logic;
		SLCDC_CLK: in std_logic;
		SLCDC_SDX: in std_logic;
		
		-- output
		SLCDC_E: out std_logic;
		SLCDC_D: out std_logic_vector(4 downto 0)
	);
end SLCDC;

architecture logicFunction of SLCDC is

    component LCDSerialReceiver is
    	port(
	
            -- input
            LCDSerialReceiver_Reset: in std_logic;
            LCDSerialReceiver_SS: in std_logic;
            LCDSerialReceiver_SCLK: in std_logic;
            LCDSerialReceiver_CLK: in std_logic;
            LCDSerialReceiver_SDX: in std_logic;
            LCDSerialReceiver_accept: in std_logic;
            
            -- output
            LCDSerialReceiver_DXval: out std_logic;
            LCDSerialReceiver_D: out std_logic_vector(4 downto 0)

        );
    end component;

    component LCDDispatcher is 
        port(

            -- input
            LCDDispatcher_Reset: in std_logic;
            LCDDispatcher_Dval: in std_logic;
            LCDDispatcher_Din: in std_logic_vector(4 downto 0);
            LCDDispatcher_CLK: in std_logic;

            -- output
            LCDDispatcher_Wrl: out std_logic;
            LCDDispatcher_Dout: out std_logic_vector(4 downto 0);
            LCDDispatcher_done: out std_logic

        );
    end component;

    signal val: std_logic;
    signal D: std_logic_vector(4 downto 0);
    signal done_to_accept: std_logic;

begin

    u0: LCDSerialReceiver port map (
        LCDSerialReceiver_Reset => SLCDC_Reset,
        LCDSerialReceiver_SS => SLCDC_LCDSel,
        LCDSerialReceiver_SCLK => SLCDC_SCLK,
        LCDSerialReceiver_CLK => SLCDC_CLK,
        LCDSerialReceiver_SDX => SLCDC_SDX,
        LCDSerialReceiver_accept => done_to_accept,
        LCDSerialReceiver_DXval => val,
        LCDSerialReceiver_D => D
    );

    u1: LCDDispatcher port map (
        LCDDispatcher_Reset => SLCDC_Reset,
        LCDDispatcher_Dval => val,
        LCDDispatcher_Din => D,
        LCDDispatcher_CLK => SLCDC_CLK,
        LCDDispatcher_Wrl => SLCDC_E,
        LCDDispatcher_Dout => SLCDC_D,
        LCDDispatcher_done => done_to_accept
    );
	
end logicFunction;