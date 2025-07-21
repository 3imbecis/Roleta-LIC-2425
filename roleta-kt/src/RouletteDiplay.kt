import isel.leic.utils.Time
import util.Alignment

/** Controla o mostrador de pontuação. */
object RouletteDiplay {

    private const val UPDATE_MASK = 0b00000_110
    private const val ON_MASK = 0b00000_111
    private const val OFF_MASK = 0b00001_111

    // Caracteres especiais
    private const val CHAR_MINUS          = 0x10
    private const val CHAR_TOP_RIGHT      = 0x11
    private const val CHAR_TOP_LEFT       = 0x12
    private const val CHAR_LEFT           = 0x13
    private const val CHAR_BOTTOM_LEFT    = 0x14
    private const val CHAR_BOTTOM_RIGHT   = 0x15
    private const val CHAR_RIGHT          = 0x16
    private const val CHAR_LEFT_RIGHT     = 0x17
    private const val CHAR_TOP_MID_BOTTOM = 0x18
    private const val CHAR_TOP            = 0x19
    private const val CHAR_LEFT_UPPER     = 0x1a
    private const val CHAR_LEFT_LOWER     = 0x1b
    private const val CHAR_BOTTOM         = 0x1c
    private const val CHAR_RIGHT_LOWER    = 0x1d
    private const val CHAR_RIGHT_UPPER    = 0x1e
    private const val CHAR_EMPTY          = 0x1f

    /** Velocidade da animação */
    private const val ANIM_SPEED = 100

    /** _Frames_ de animação. */
    private val ANIM_FRAMES = listOf(
        listOf(CHAR_LEFT        , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY        ), // [|     ]
        listOf(CHAR_TOP_LEFT    , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY        ), // [/     ]
        listOf(CHAR_TOP         , CHAR_TOP    , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY        ), // [--    ]
        listOf(CHAR_EMPTY       , CHAR_TOP    , CHAR_TOP    , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY        ), // [ --   ]
        listOf(CHAR_EMPTY       , CHAR_EMPTY  , CHAR_TOP    , CHAR_TOP    , CHAR_EMPTY  , CHAR_EMPTY        ), // [  --  ]
        listOf(CHAR_EMPTY       , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_TOP    , CHAR_TOP    , CHAR_EMPTY        ), // [   -- ]
        listOf(CHAR_EMPTY       , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_TOP    , CHAR_TOP          ), // [    --]
        listOf(CHAR_EMPTY       , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_TOP_RIGHT    ), // [     \]
        listOf(CHAR_EMPTY       , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_RIGHT        ), // [     |]
        listOf(CHAR_EMPTY       , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_BOTTOM_RIGHT ), // [     /]
        listOf(CHAR_EMPTY       , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_BOTTOM , CHAR_BOTTOM       ), // [    --]
        listOf(CHAR_EMPTY       , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_BOTTOM , CHAR_BOTTOM , CHAR_EMPTY        ), // [   -- ]
        listOf(CHAR_EMPTY       , CHAR_EMPTY  , CHAR_BOTTOM , CHAR_BOTTOM , CHAR_EMPTY  , CHAR_EMPTY        ), // [  --  ]
        listOf(CHAR_EMPTY       , CHAR_BOTTOM , CHAR_BOTTOM , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY        ), // [ --   ]
        listOf(CHAR_BOTTOM      , CHAR_BOTTOM , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY        ), // [--    ]
        listOf(CHAR_BOTTOM_LEFT , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY  , CHAR_EMPTY        )  // [\     ]
    )

    /** Inicializa o mostrador. */
    fun init(){
        off(true) // Desliga
        off(false) // Liga
        clear() // Limpa
    }

    /** Atualiza a _frame_ de animação. */
    fun animation(){
        val time = Time.getTimeInMillis() / ANIM_SPEED
        val i = (time % ANIM_FRAMES.size).toInt()
        setAllDigits(ANIM_FRAMES[i])
    }

    /** Escreve um número no centro do mostrador. */
    fun setValue(value: Int) = write(value.toString(), Alignment.CENTER)

    /**
     * Envia um comando para desativar/ativar a visualização do mostrador.
     *
     * - `true`: Desativar
     * - `false`: Ativar
     */
    fun off(value: Boolean){
        SerialEmitter.send(
            SerialEmitter.Destination.ROULETTE,
            if(value) OFF_MASK else ON_MASK,
            8
        )
    }

    /** Define um dígito numa posição específica. */
    private fun setDigit(pos: Int, value: Int){
        require(pos in 0..5) { "pos must be between 0 to 5" }
        require(value in 0x00..0x1f) { "value must be from 0x00 to 0x1f" }

        // Evita atualizar o dígito caso seja igual ao último estado
        if(lastState[pos] == value) return

        // Atualizar próximo estado
        nextState[pos] = value

        SerialEmitter.send(SerialEmitter.Destination.ROULETTE, (value shl 3) or (5 - pos), 8)

    }

    /** Define todos os dígitos a partir de uma lista e atualiza */
    private fun setAllDigits(digits: List<Int>){
        repeat(6){ i -> setDigit(i, digits[i]) }
        update()
    }

    /** Define todos os dígitos e atualiza. */
    private fun setAllDigits(d0: Int, d1: Int, d2: Int, d3: Int, d4: Int, d5: Int) =
        setAllDigits(listOf(d0, d1, d2, d3, d4, d5))

    /** Escreve caracteres no mostrador com alinhamento. */
    fun write(string: String, align: Alignment = Alignment.LEFT){
        require(Regex("^[-_0-9a-fA-F ]{0,6}\$").matches(string)) { "string must be up to 6 characters long and contain only hex digits, dashes, underscores or spaces" }

        // Calcular ínicio dependendo do alinhamento
        val startPos = when(align){
            Alignment.LEFT -> 0
            Alignment.CENTER -> (6 - string.length) / 2
            Alignment.RIGHT -> 6 - string.length
        }

        // Limpar tudo
        repeat(6){ i -> setDigit(i, CHAR_EMPTY) }

        // Escrever texto
        repeat(string.length){ i ->
            setDigit(startPos + i, when(string[i]){
                '-' -> CHAR_MINUS
                '_' -> CHAR_BOTTOM
                '0' -> 0
                '1' -> 1
                '2' -> 2
                '3' -> 3
                '4' -> 4
                '5' -> 5
                '6' -> 6
                '7' -> 7
                '8' -> 8
                '9' -> 9
                'a', 'A' -> 0xa
                'b', 'B' -> 0xb
                'c', 'C' -> 0xc
                'd', 'D' -> 0xd
                'e', 'E' -> 0xe
                'f', 'F' -> 0xf
                ' ' -> CHAR_EMPTY
                else -> throw IllegalStateException("Unexpected ${string[i]} character!")
            })
        }

        update()

    }

    private var lastState = MutableList(6) { 0 }
    private var nextState = MutableList(6) { 0 }

    /**
     * Atualiza mostrador, caso haja alterações.
     * @property forced Atualiza mesmo não havendo alterações
     */
    private fun update(forced: Boolean = false){

        // Evitar atualizar caso não seja forçado e não exista mudanças
        if(!forced && lastState == nextState) return

        // Enviar comando para atualizar
        SerialEmitter.send(SerialEmitter.Destination.ROULETTE, UPDATE_MASK, 8)

        // Atualizar o último estado
        repeat(6){ i-> lastState[i] = nextState[i] }

    }

    /** Limpa o mostrador. */

    fun clear(){
        repeat(6){ i -> setDigit(i, CHAR_EMPTY) }
        update()
    }
}

fun main(){

    RouletteDiplay.init()

    RouletteDiplay.write("2-5", Alignment.CENTER)
    Time.sleep(1000)


    val end = Time.getTimeInMillis() + 5000
    while(Time.getTimeInMillis() < end)
        RouletteDiplay.animation()

    RouletteDiplay.setValue(-3)
    RouletteDiplay.clear()
}