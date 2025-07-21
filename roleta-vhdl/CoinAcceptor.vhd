library ieee;
use ieee.std_logic_1164.all;

entity CoinAcceptor is
	port(
	
		-- input
		CoinAcceptor_Accept_in: in std_logic;
        CoinAcceptor_Coin_in: in std_logic;
        CoinAcceptor_CoinID_in: in std_logic;
		
		-- output
        CoinAcceptor_Accept_out: out std_logic;
		CoinAcceptor_Coin_out: out std_logic;
		CoinAcceptor_CoinID_out: out std_logic
		
	);
end CoinAcceptor;

architecture logicFunction of CoinAcceptor is begin

    CoinAcceptor_Coin_out <= CoinAcceptor_Coin_in;
    CoinAcceptor_CoinID_out <= CoinAcceptor_CoinID_in;
    CoinAcceptor_Accept_out <= CoinAcceptor_Accept_in;

end logicFunction;