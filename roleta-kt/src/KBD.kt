import isel.leic.utils.Time

// Ler teclas. Funções retornam '0'..'9','A'..'D','#','*' ou NONE
object KBD {

    private const val NONE = 0.toChar()

    private const val KEYPAD = "147*2580369#ABCD"

    private const val KEY_MASK = 0b00001111 // input
    private const val VAL_MASK = 0b00010000 // input

    private const val ACK_MASK = 0b10000000 // output

    /** Inicializa o teclado. */
    fun init(){

        // Garantir que nenhuma tecla é acknowledged no ínicio
        HAL.clearBits(ACK_MASK)

    }

    /** Retorna de imediato a tecla premida ou `NONE` se não há tecla premida. */
    fun getKey(): Char {

        // Verificar se existe alguma tecla premida
        if(!HAL.isBit(VAL_MASK)) return NONE

        // Receber tecla premida
        val i = HAL.readBits(KEY_MASK)
        check(i in 0 until KEYPAD.length) { "Invalid key code (0x${Integer.toHexString(i)})" }

        // Acknowledge
        HAL.setBits(ACK_MASK)
        while(HAL.isBit(VAL_MASK)) {} // Esperar que acknowledge seja recebido
        HAL.clearBits(ACK_MASK)

        return KEYPAD[i]
    }

    /**
     * Retorna a tecla premida ou `NONE` caso o `timeout` passe.
     * @property timeout Milissegundos até deixar de esperar.
     */
    fun waitKey(timeout: Long): Char {

        val end = Time.getTimeInMillis() + timeout

        while(Time.getTimeInMillis() < end){
            val key = getKey()
            if(key != NONE) return key
        }

        return NONE
    }

}

fun main(){

    KBD.init()
//    println("start")
//    Time.sleep(10000)
//    println("print")
    while(true)
        print(KBD.waitKey(60_000L))

}