library ieee;
use ieee.std_logic_1164.all;

entity Roleta is
	port(
	
		-- input
		CLK: in std_logic;
		Reset: in std_logic;
		KBD_KeyLin: in std_logic_vector(3 downto 0);
        Coin: in std_logic;
        CoinID: in std_logic;
        Maintenance_in: in std_logic;

		-- output
		KBD_KeyCol: out std_logic_vector(3 downto 0);
		LCD_E: out std_logic;
		LCD_RS: out std_logic;
		LCD_D: out std_logic_vector(7 downto 4);
        RD_HEX0: out std_logic_vector(7 downto 0);
        RD_HEX1: out std_logic_vector(7 downto 0);
        RD_HEX2: out std_logic_vector(7 downto 0);
        RD_HEX3: out std_logic_vector(7 downto 0);
        RD_HEX4: out std_logic_vector(7 downto 0);
        RD_HEX5: out std_logic_vector(7 downto 0);
		Accept: out std_logic;

        debug_full: out std_logic;
        debug_empty: out std_logic

	);
end Roleta;

architecture logicFunction of Roleta is
	
	component UsbPort is
		port(
		
			-- input
			inputPort: in std_logic_vector(7 downto 0);
			
			-- output
			outputPort: out std_logic_vector(7 DOWNTO 0)
			
		);
	end component;

	component KeyboardReader is
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
	end component;

    component SLCDC is
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
    end component;

    component SRC is
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
    end component;

    component rouletteDisplay is
        port(
            
            -- input
            set: in std_logic;
            cmd: in std_logic_vector(2 downto 0);
            data: in std_logic_vector(4 downto 0);

            -- output
            HEX0: out std_logic_vector(7 downto 0);
            HEX1: out std_logic_vector(7 downto 0);
            HEX2: out std_logic_vector(7 downto 0);
            HEX3: out std_logic_vector(7 downto 0);
            HEX4: out std_logic_vector(7 downto 0);
            HEX5: out std_logic_vector(7 downto 0)

        );
    end component;

    component CoinAcceptor is
        port(
        
            -- input
            CoinAcceptor_Accept_in: in std_logic;
            CoinAcceptor_Coin_in: in std_logic;
            CoinAcceptor_CoinID_in: in std_logic;
            
            -- output
            CoinAcceptor_Accept_out: out std_logic;
            CoinAcceptor_Coin_out: out std_logic;
            CoinAcceptor_CoinID_out: out std_logic
            
        );
    end component;

    component Maintenance is
        port(
        
            -- input
            Maintenance_in: in std_logic;
            
            -- output
            Maintenance_out: out std_logic

            
        );
    end component;
	
    -- Input (Hardware → Software)
    signal usb_input: std_logic_vector(7 downto 0);

    -- Output (Software → Hardware)
    signal usb_output: std_logic_vector(7 downto 0);

    signal RD_set: std_logic;
    signal RD_cmd: std_logic_vector(2 downto 0);
    signal RD_data: std_logic_vector(4 downto 0);

    -- signal tmp: std_logic_vector(9 downto 0);

begin

    u0: UsbPort port map (
		inputPort => usb_input,
		outputPort => usb_output
	);

	u1: KeyboardReader port map (
		KeyboardReader_Ack => usb_output(7),
        KeyboardReader_Lin => KBD_KeyLin,
        KeyboardReader_CLK => CLK,
        KeyboardReader_Reset => Reset,
        KeyboardReader_Col => KBD_KeyCol,
        KeyboardReader_Dval => usb_input(4),
        KeyboardReader_Q => usb_input(3 downto 0),
        debug_empty => debug_empty,
        debug_full => debug_full
    );

    u2: SLCDC port map (
        SLCDC_Reset => Reset,
        SLCDC_LCDSel => usb_output(0),
        SLCDC_SCLK => usb_output(4),
        SLCDC_CLK => CLK,
        SLCDC_SDX => usb_output(3),
        SLCDC_E => LCD_E,
        SLCDC_D(0) => LCD_RS,
        SLCDC_D(4 downto 1) => LCD_D(7 downto 4)
    );
	 
    u3: SRC port map (
        SRC_Reset => Reset,
        SRC_RDSel => usb_output(1),
        SRC_SCLK => usb_output(4),
        SRC_CLK => CLK,
        SRC_SDX => usb_output(3),
        SRC_set => RD_set,
        SRC_D(2 downto 0) => RD_cmd,
        SRC_D(7 downto 3) => RD_data
    );

    u4: rouletteDisplay port map (
        set => RD_set,
        cmd => RD_cmd,
        data => RD_data,
        HEX0 => RD_HEX0,
        HEX1 => RD_HEX1,
        HEX2 => RD_HEX2,
        HEX3 => RD_HEX3,
        HEX4 => RD_HEX4,
        HEX5 => RD_HEX5
    );

    u5: CoinAcceptor port map (
        CoinAcceptor_Accept_in => usb_output(6),
        CoinAcceptor_Coin_in => Coin,
        CoinAcceptor_CoinID_in => CoinID,
        CoinAcceptor_Accept_out => Accept,
        CoinAcceptor_Coin_out => usb_input(6),
        CoinAcceptor_CoinID_out => usb_input(5)
    );

    u6: Maintenance port map (
        Maintenance_in => Maintenance_in,
        Maintenance_out => usb_input(7)
    );

end logicFunction;