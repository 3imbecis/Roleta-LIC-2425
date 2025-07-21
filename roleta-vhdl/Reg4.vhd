library ieee;
use ieee.std_logic_1164.all;

entity Reg4 is
	port(
	
		-- input
		Reg4_In: in std_logic_vector(3 downto 0);
		Reg4_CE: in std_logic;
		Reg4_CLK: in std_logic;
		Reg4_Reset: in std_logic;
		
		-- output
		Reg4_Out: out std_logic_vector(3 downto 0)
		
	);
end Reg4;

architecture logicFunction of Reg4 is
begin

	Reg4_Out(3) <= '0' when Reg4_Reset = '1' else Reg4_In(3) when rising_edge(Reg4_CLK) and Reg4_CE = '1';
	Reg4_Out(2) <= '0' when Reg4_Reset = '1' else Reg4_In(2) when rising_edge(Reg4_CLK) and Reg4_CE = '1';
	Reg4_Out(1) <= '0' when Reg4_Reset = '1' else Reg4_In(1) when rising_edge(Reg4_CLK) and Reg4_CE = '1';
	Reg4_Out(0) <= '0' when Reg4_Reset = '1' else Reg4_In(0) when rising_edge(Reg4_CLK) and Reg4_CE = '1';

end logicFunction;