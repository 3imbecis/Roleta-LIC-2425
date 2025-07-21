  library ieee;
use ieee.std_logic_1164.all;

entity Mux4_MAC is
	port(
	
		-- input
		Mux4_MAC_A: in std_logic_vector(3 downto 0);
        Mux4_MAC_B: in std_logic_vector(3 downto 0);
		Mux4_MAC_S: in std_logic;
		
		-- output
		Mux4_MAC_Out: out std_logic_vector(3 downto 0)
		
	);
end Mux4_MAC;

architecture logicFunction of Mux4_MAC is
begin
	
	Mux4_MAC_Out(0) <= (Mux4_MAC_A(0) and Mux4_MAC_S) or (Mux4_MAC_B(0) and not Mux4_MAC_S);
    Mux4_MAC_Out(1) <= (Mux4_MAC_A(1) and Mux4_MAC_S) or (Mux4_MAC_B(1) and not Mux4_MAC_S);
    Mux4_MAC_Out(2) <= (Mux4_MAC_A(2) and Mux4_MAC_S) or (Mux4_MAC_B(2) and not Mux4_MAC_S);
    Mux4_MAC_Out(3) <= (Mux4_MAC_A(3) and Mux4_MAC_S) or (Mux4_MAC_B(3) and not Mux4_MAC_S);

end logicFunction;