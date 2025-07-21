library ieee;
use ieee.std_logic_1164.all;

entity Counter3 is
	port(
	
		-- input
		Counter3_CE: in std_logic;
		Counter3_CLK: in std_logic;
		Counter3_Reset: in std_logic;
		
		-- output
		Counter3_Q: out std_logic_vector(2 downto 0)
		
	);
end Counter3;

architecture logicFunction of Counter3 is

	component Adder3 is
		port(
		
			  -- input
			  Adder3_Ci: in std_logic;
			  Adder3_A: in std_logic_vector(2 downto 0);
			  Adder3_B: in std_logic_vector(2 downto 0);

			  -- output
			  Adder3_Co: out std_logic;
			  Adder3_S: out std_logic_vector(2 downto 0)

		);
	end component;
	
	component Reg3 is
		port(
		
			-- input
			Reg3_In: in std_logic_vector(2 downto 0);
			Reg3_CE: in std_logic;
			Reg3_CLK: in std_logic;
			Reg3_Reset: in std_logic;
			
			-- output
			Reg3_Out: out std_logic_vector(2 downto 0)
			
		);
	end component;
	
	signal Q: std_logic_vector(2 downto 0);
	signal Adder3_S_to_Reg3_In: std_logic_vector(2 downto 0);

begin

	u0: Adder3 port map (
		Adder3_Ci => '0',
		Adder3_A => Q,
		Adder3_B => "001",
		Adder3_S => Adder3_S_to_Reg3_In
	);
	
	u1: Reg3 port map (
		Reg3_In => Adder3_S_to_Reg3_In,
		Reg3_CE => Counter3_CE,
		Reg3_CLK => Counter3_CLK,
		Reg3_Reset => Counter3_Reset,
		Reg3_Out => Q
	);
	
	Counter3_Q <= Q;

end logicFunction;