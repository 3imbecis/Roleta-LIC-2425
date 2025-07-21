library ieee;
use ieee.std_logic_1164.all;

entity ParityCheck is
	port(
	
		-- input
		ParityCheck_data: in std_logic;
		ParityCheck_init: in std_logic;
		ParityCheck_clk: in std_logic;
		
		-- output
		ParityCheck_err: out std_logic
		
	);
end ParityCheck;

architecture logicFunction of ParityCheck is

	signal Q: std_logic;
	signal D: std_logic;
	
begin

	D <= ParityCheck_data xor Q;
	Q <= '0' when ParityCheck_init = '1' else D when rising_edge(ParityCheck_clk);
	ParityCheck_err <= not Q;
	
end logicFunction;