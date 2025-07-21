library ieee;
use ieee.std_logic_1164.all;

entity ShiftRegister8 is
	port(
	
		-- input
		ShiftRegister8_Reset: in std_logic;
		ShiftRegister8_data: in std_logic;
		ShiftRegister8_clk: in std_logic;
		ShiftRegister8_enableShift: in std_logic;
		
		-- output
		ShiftRegister8_D: out std_logic_vector(7 downto 0)
		
	);
end ShiftRegister8;

architecture logicFunction of ShiftRegister8 is

    signal D: std_logic_vector(7 downto 0);
	
begin

	D(7) <= '0' when ShiftRegister8_Reset = '1' else ShiftRegister8_data when rising_edge(ShiftRegister8_clk) and ShiftRegister8_enableShift = '1';
	D(6) <= '0' when ShiftRegister8_Reset = '1' else D(7) when rising_edge(ShiftRegister8_clk) and ShiftRegister8_enableShift = '1';
	D(5) <= '0' when ShiftRegister8_Reset = '1' else D(6) when rising_edge(ShiftRegister8_clk) and ShiftRegister8_enableShift = '1';
	D(4) <= '0' when ShiftRegister8_Reset = '1' else D(5) when rising_edge(ShiftRegister8_clk) and ShiftRegister8_enableShift = '1';
    D(3) <= '0' when ShiftRegister8_Reset = '1' else D(4) when rising_edge(ShiftRegister8_clk) and ShiftRegister8_enableShift = '1';
    D(2) <= '0' when ShiftRegister8_Reset = '1' else D(3) when rising_edge(ShiftRegister8_clk) and ShiftRegister8_enableShift = '1';
    D(1) <= '0' when ShiftRegister8_Reset = '1' else D(2) when rising_edge(ShiftRegister8_clk) and ShiftRegister8_enableShift = '1';
    D(0) <= '0' when ShiftRegister8_Reset = '1' else D(1) when rising_edge(ShiftRegister8_clk) and ShiftRegister8_enableShift = '1';

    ShiftRegister8_D <= D;
	
end logicFunction;