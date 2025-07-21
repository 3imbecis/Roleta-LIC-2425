library ieee;
use ieee.std_logic_1164.all;

entity Maintenance is
	port(
	
		-- input
		Maintenance_in: in std_logic;
		
		-- output
		Maintenance_out: out std_logic

		
	);
end Maintenance;

architecture logicFunction of Maintenance is begin

    Maintenance_out <= Maintenance_in;
	
end logicFunction;