library ieee;
use ieee.std_logic_1164.all;

entity FullAdder is
    port(

        -- input
        FullAdder_A: in std_logic;
        FullAdder_B: in std_logic;
        FullAdder_Ci: in std_logic;

        -- output
        FullAdder_S: out std_logic;
        FullAdder_Co: out std_logic

    );
end FullAdder;

architecture logicFunction of FullAdder is
begin

    FullAdder_S <= FullAdder_A xor FullAdder_B xor FullAdder_Ci;
    FullAdder_Co <= (FullAdder_A and FullAdder_B) or (FullAdder_Ci and (FullAdder_A xor FullAdder_B));

end logicFunction;