  library ieee;
use ieee.std_logic_1164.all;

entity Mux4 is
	port(
	
		-- input
		Mux4_In: in std_logic_vector(3 downto 0);
		Mux4_S: in std_logic_vector(1 downto 0);
		
		-- output
		Mux4_Out: out std_logic
		
	);
end Mux4;

architecture logicFunction of Mux4 is
begin
	
	Mux4_Out <= (Mux4_In(0) and not Mux4_S(1) and not Mux4_S(0)) or
				  (Mux4_In(1) and not Mux4_S(1) and     Mux4_S(0)) OR
				  (Mux4_In(2) and     Mux4_S(1) and not Mux4_S(0)) OR
				  (Mux4_In(3) and     Mux4_S(1) and     Mux4_S(0));

end logicFunction;