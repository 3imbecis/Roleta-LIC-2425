library ieee;
use ieee.std_logic_1164.all;

entity Adder4 is
    port(

        -- input
        Adder4_Ci: in std_logic;
        Adder4_A: in std_logic_vector(3 downto 0);
        Adder4_B: in std_logic_vector(3 downto 0);

        -- output
        Adder4_Co: out std_logic;
        Adder4_S: out std_logic_vector(3 downto 0)

    );
end Adder4;

architecture logicFunction of Adder4 is

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
    signal c2_to_c3: std_logic;

begin

    c0: FullAdder port map (
        FullAdder_A => Adder4_A(0),
        FullAdder_B => Adder4_B(0),
        FullAdder_Ci => Adder4_Ci,
        FullAdder_S => Adder4_S(0),
        FullAdder_Co => c0_to_c1
    );

    c1: FullAdder port map (
        FullAdder_A => Adder4_A(1),
        FullAdder_B => Adder4_B(1),
        FullAdder_Ci => c0_to_c1,
        FullAdder_S => Adder4_S(1),
        FullAdder_Co => c1_to_c2
    );

    c2: FullAdder port map (
        FullAdder_A => Adder4_A(2),
        FullAdder_B => Adder4_B(2),
        FullAdder_Ci => c1_to_c2,
        FullAdder_S => Adder4_S(2),
        FullAdder_Co => c2_to_c3
    );

    c3: FullAdder port map (
        FullAdder_A => Adder4_A(3),
        FullAdder_B => Adder4_B(3),
        FullAdder_Ci => c2_to_c3,
        FullAdder_S => Adder4_S(3),
        FullAdder_Co => Adder4_Co
    );

end logicFunction;