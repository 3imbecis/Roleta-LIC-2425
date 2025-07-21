library ieee;
use ieee.std_logic_1164.all;

entity ShiftRegister5 is
	port(
	
		-- input
		ShiftRegister5_Reset: in std_logic;
		ShiftRegister5_data: in std_logic;
		ShiftRegister5_clk: in std_logic;
		ShiftRegister5_enableShift: in std_logic;
		
		-- output
		ShiftRegister5_D: out std_logic_vector(4 downto 0)
		
	);
end ShiftRegister5;

architecture logicFunction of ShiftRegister5 is

    signal D: std_logic_vector(4 downto 0);
	
begin

    D(4) <= '0' when ShiftRegister5_Reset = '1' else ShiftRegister5_data when rising_edge(ShiftRegister5_clk) and ShiftRegister5_enableShift = '1';
    D(3) <= '0' when ShiftRegister5_Reset = '1' else D(4) when rising_edge(ShiftRegister5_clk) and ShiftRegister5_enableShift = '1';
    D(2) <= '0' when ShiftRegister5_Reset = '1' else D(3) when rising_edge(ShiftRegister5_clk) and ShiftRegister5_enableShift = '1';
    D(1) <= '0' when ShiftRegister5_Reset = '1' else D(2) when rising_edge(ShiftRegister5_clk) and ShiftRegister5_enableShift = '1';
    D(0) <= '0' when ShiftRegister5_Reset = '1' else D(1) when rising_edge(ShiftRegister5_clk) and ShiftRegister5_enableShift = '1';

    ShiftRegister5_D <= D;
	
end logicFunction;