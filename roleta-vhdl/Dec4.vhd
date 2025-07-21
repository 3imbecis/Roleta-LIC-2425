library ieee;
use ieee.std_logic_1164.all;

entity Dec4 is
	port(
	
		-- input
		Dec4_S: in std_logic_vector(1 downto 0);
		
		-- output
		Dec4_Out: out std_logic_vector(3 downto 0)
		
	);
end Dec4;

architecture logicFunction of Dec4 is
begin
	
	Dec4_Out(0) <= not Dec4_S(1) and not Dec4_S(0);
	Dec4_Out(1) <= not Dec4_S(1) and     Dec4_S(0);
	Dec4_Out(2) <=     Dec4_S(1) and not Dec4_S(0);
	Dec4_Out(3) <=     Dec4_S(1) and     Dec4_S(0);

end logicFunction;