library ieee;
use ieee.std_logic_1164.all;

entity Adder3 is
    port(

        -- input
        Adder3_Ci: in std_logic;
        Adder3_A: in std_logic_vector(2 downto 0);
        Adder3_B: in std_logic_vector(2 downto 0);

        -- output
        Adder3_Co: out std_logic;
        Adder3_S: out std_logic_vector(2 downto 0)

    );
end Adder3;

architecture logicFunction of Adder3 is

    component FullAdder is
        port(

            -- input
            FullAdder_A: in std_logic;
            FullAdder_B: in std_logic;
            FullAdder_Ci: in std_logic;

            -- output
            FullAdder_S: out std_logic;
            FullAdder_Co: out std_logic

        );
    end component;

    signal c0_to_c1: std_logic;
    signal c1_to_c2: std_logic;

begin

    c0: FullAdder port map (
        FullAdder_A => Adder3_A(0),
        FullAdder_B => Adder3_B(0),
        FullAdder_Ci => Adder3_Ci,
        FullAdder_S => Adder3_S(0),
        FullAdder_Co => c0_to_c1
    );

    c1: FullAdder port map (
        FullAdder_A => Adder3_A(1),
        FullAdder_B => Adder3_B(1),
        FullAdder_Ci => c0_to_c1,
        FullAdder_S => Adder3_S(1),
        FullAdder_Co => c1_to_c2
    );

    c2: FullAdder port map (
        FullAdder_A => Adder3_A(2),
        FullAdder_B => Adder3_B(2),
        FullAdder_Ci => c1_to_c2,
        FullAdder_S => Adder3_S(2),
        FullAdder_Co => Adder3_Co
    );

end logicFunction;