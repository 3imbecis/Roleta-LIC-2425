
object CoinAcceptor {

    private const val COIN_MASK =        0b01000000
    private const val COIN_ID_MASK =     0b00100000
    private const val COIN_ACCEPT_MASK = 0b01000000

    /**
     * Deteta novas moedas e retorna o seu valor.
     *
     * Retorna `0`, caso não tiver nenhuma moeda.
     */
    fun get(): Int {

        // Verificar se existe uma moeda
        if(!HAL.isBit(COIN_MASK)) return 0

        // Verificar o valor da moeda
        val coin = if(HAL.isBit(COIN_ID_MASK)) 4 else 2

        // Aceitar moeda
        HAL.setBits(COIN_ACCEPT_MASK)
        while(HAL.isBit(COIN_MASK)) {}
        HAL.clearBits(COIN_ACCEPT_MASK)

        return coin
    }

}

fun main(){

    while(true){

        val coins = CoinAcceptor.get()
        if(coins != 0) println("${coins}$")

    }

}