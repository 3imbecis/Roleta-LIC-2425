library ieee;
use ieee.std_logic_1164.all;

entity CountUpDown is
	port(
	
		-- input
		CountUpDown_Up: in std_logic;
		CountUpDown_Down: in std_logic;
		CountUpDown_CLK: in std_logic;
		CountUpDown_Reset: in std_logic;
		
		-- output
		CountUpDown_Q: out std_logic_vector(4 downto 0)
		
	);
end CountUpDown;

architecture logicFunction of CountUpDown is

	component Adder5 is
		port(
		
			  -- input
			  Adder5_Ci: in std_logic;
			  Adder5_A: in std_logic_vector(4 downto 0);
			  Adder5_B: in std_logic_vector(4 downto 0);

			  -- output
			  Adder5_Co: out std_logic;
			  Adder5_S: out std_logic_vector(4 downto 0)

		);
	end component;
	
	component Reg5 is
		port(
		
			-- input
			Reg5_In: in std_logic_vector(4 downto 0);
			Reg5_CE: in std_logic;
			Reg5_CLK: in std_logic;
			Reg5_Reset: in std_logic;
			
			-- output
			Reg5_Out: out std_logic_vector(4 downto 0)
			
		);
	end component;
	
	signal Q: std_logic_vector(4 downto 0);
	signal Adder5_S_to_Reg5_In: std_logic_vector(4 downto 0);

    signal B: std_logic_vector(4 downto 0);
    signal CE: std_logic;

begin

    B <= "00000" when CountUpDown_Up = '1' and CountUpDown_Down = '1' else
         "00001" when CountUpDown_Up = '1' else
         "11111" when CountUpDown_Down = '1' else
         "00000";
    CE <= '1' when CountUpDown_Up = '1' or CountUpDown_Down = '1' else '0';

	u0: Adder5 port map (
		Adder5_Ci => '0',
		Adder5_A => Q,
		Adder5_B => B,
		Adder5_S => Adder5_S_to_Reg5_In
	);
	
	u1: Reg5 port map (
		Reg5_In => Adder5_S_to_Reg5_In,
		Reg5_CE => CE,
		Reg5_CLK => CountUpDown_CLK,
		Reg5_Reset => CountUpDown_Reset,
		Reg5_Out => Q
	);
	
	CountUpDown_Q <= Q;

end logicFunction;