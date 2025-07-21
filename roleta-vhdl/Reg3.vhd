library ieee;
use ieee.std_logic_1164.all;

entity Reg3 is
	port(
	
		-- input
		Reg3_In: in std_logic_vector(2 downto 0);
		Reg3_CE: in std_logic;
		Reg3_CLK: in std_logic;
		Reg3_Reset: in std_logic;
		
		-- output
		Reg3_Out: out std_logic_vector(2 downto 0)
		
	);
end Reg3;

architecture logicFunction of Reg3 is
begin

	Reg3_Out(2) <= '0' when Reg3_Reset = '1' else Reg3_In(2) when rising_edge(Reg3_CLK) and Reg3_CE = '1';
	Reg3_Out(1) <= '0' when Reg3_Reset = '1' else Reg3_In(1) when rising_edge(Reg3_CLK) and Reg3_CE = '1';
	Reg3_Out(0) <= '0' when Reg3_Reset = '1' else Reg3_In(0) when rising_edge(Reg3_CLK) and Reg3_CE = '1';

end logicFunction;