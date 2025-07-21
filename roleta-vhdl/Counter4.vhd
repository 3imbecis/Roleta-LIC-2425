library ieee;
use ieee.std_logic_1164.all;

entity Counter4 is
	port(
	
		-- input
		Counter4_CE: in std_logic;
		Counter4_CLK: in std_logic;
		Counter4_Reset: in std_logic;
		
		-- output
		Counter4_Q: out std_logic_vector(3 downto 0)
		
	);
end Counter4;

architecture logicFunction of Counter4 is

	component Adder4 is
		port(
		
			  -- input
			  Adder4_Ci: in std_logic;
			  Adder4_A: in std_logic_vector(3 downto 0);
			  Adder4_B: in std_logic_vector(3 downto 0);

			  -- output
			  Adder4_Co: out std_logic;
			  Adder4_S: out std_logic_vector(3 downto 0)

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
	
	signal Q: std_logic_vector(3 downto 0);
	signal Adder4_S_to_Reg4_In: std_logic_vector(3 downto 0);

begin

	u0: Adder4 port map (
		Adder4_Ci => '0',
		Adder4_A => Q,
		Adder4_B => "0001",
		Adder4_S => Adder4_S_to_Reg4_In
	);
	
	u1: Reg4 port map (
		Reg4_In => Adder4_S_to_Reg4_In,
		Reg4_CE => Counter4_CE,
		Reg4_CLK => Counter4_CLK,
		Reg4_Reset => Counter4_Reset,
		Reg4_Out => Q
	);
	
	Counter4_Q <= Q;

end logicFunction;