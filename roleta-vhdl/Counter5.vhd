library ieee;
use ieee.std_logic_1164.all;

entity Counter5 is
	port(
	
		-- input
		Counter5_CE: in std_logic;
		Counter5_CLK: in std_logic;
		Counter5_Reset: in std_logic;
		
		-- output
		Counter5_Q: out std_logic_vector(4 downto 0)
		
	);
end Counter5;

architecture logicFunction of Counter5 is

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

begin

	u0: Adder5 port map (
		Adder5_Ci => '0',
		Adder5_A => Q,
		Adder5_B => "00001",
		Adder5_S => Adder5_S_to_Reg5_In
	);
	
	u1: Reg5 port map (
		Reg5_In => Adder5_S_to_Reg5_In,
		Reg5_CE => Counter5_CE,
		Reg5_CLK => Counter5_CLK,
		Reg5_Reset => Counter5_Reset,
		Reg5_Out => Q
	);
	
	Counter5_Q <= Q;

end logicFunction;