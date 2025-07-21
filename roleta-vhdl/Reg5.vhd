library ieee;
use ieee.std_logic_1164.all;

entity Reg5 is
	port(
	
		-- input
		Reg5_In: in std_logic_vector(4 downto 0);
		Reg5_CE: in std_logic;
		Reg5_CLK: in std_logic;
		Reg5_Reset: in std_logic;
		
		-- output
		Reg5_Out: out std_logic_vector(4 downto 0)
		
	);
end Reg5;

architecture logicFunction of Reg5 is
begin

	Reg5_Out(4) <= '0' when Reg5_Reset = '1' else Reg5_In(4) when rising_edge(Reg5_CLK) and Reg5_CE = '1';
	Reg5_Out(3) <= '0' when Reg5_Reset = '1' else Reg5_In(3) when rising_edge(Reg5_CLK) and Reg5_CE = '1';
	Reg5_Out(2) <= '0' when Reg5_Reset = '1' else Reg5_In(2) when rising_edge(Reg5_CLK) and Reg5_CE = '1';
	Reg5_Out(1) <= '0' when Reg5_Reset = '1' else Reg5_In(1) when rising_edge(Reg5_CLK) and Reg5_CE = '1';
	Reg5_Out(0) <= '0' when Reg5_Reset = '1' else Reg5_In(0) when rising_edge(Reg5_CLK) and Reg5_CE = '1';

end logicFunction;