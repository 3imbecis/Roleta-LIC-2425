import isel.leic.utils.Time
import util.Alignment

object TUI {

    /** 9+ - Para indicar que há mais de 9 créditos */
    const val NINE_PLUS = 0.toChar()

    /** Emoticon feliz - Para vitórias */
    const val HAPPY = 1.toChar()

    /** Emoticon triste - Para perdas */
    const val SAD = 2.toChar()

    /** Símbolo de Manutenção */
    const val MAINTENANCE = 3.toChar()

    /** Seta para a direita */
    const val ARROW = 4.toChar()

    /** Inicializa o TUI. */
    fun init(){
        // dar load aos chars

        LCD.clear()

        LCD.loadChar(NINE_PLUS, listOf(
            "###  ",
            "# #  ",
            "###  ",
            "  #  ",
            "###  ",
            "   # ",
            "  ###",
            "   # "
        ))

        LCD.loadChar(HAPPY, listOf(
            "     ",
            "     ",
            " # # ",
            "     ",
            "#   #",
            " ### ",
            "     ",
            "     "
        ))

        LCD.loadChar(SAD, listOf(
            "     ",
            "     ",
            " # # ",
            "     ",
            " ### ",
            "#   #",
            "     ",
            "     "
        ))

        LCD.loadChar(MAINTENANCE, listOf(
            "#####",
            "     ",
            "#   #",
            "## ##",
            "# # #",
            "#   #",
            "     ",
            "#####"
        ))

        LCD.loadChar(ARROW, listOf(
            "     ",
            "  #  ",
            "   # ",
            "#####",
            "   # ",
            "  #  ",
            "     ",
            "     "
        ))

    }

    /* ---------- LCD ---------- */

    /**
     * Escreve texto.
     * @property align Alinhamento.
     * @property range Limites do texto.
     */
    fun write(text: String, line: Int, align: Alignment = Alignment.CENTER, range: IntRange = 0..LCD.COLS){
        require(line in 0 until LCD.LINES) { "Invalid line." }

        val rangeSize = range.last - range.start
        val startCol = range.start + when(align){
            Alignment.LEFT -> 0
            Alignment.CENTER -> (rangeSize - text.length) / 2
            Alignment.RIGHT -> rangeSize - text.length
        }


        updateLine(line, text, startCol)

    }

    /**
     * Atualiza a frame de animação de um texto rotativo.
     *
     * Útil para mostrar texto maior do que a largura do LCD.
     */
    fun scrollText(text: String, line: Int, speed: Int = 250, range: IntRange = 0..LCD.COLS){
        require(line in 0 until LCD.LINES) { "Invalid line." }

        val time = Time.getTimeInMillis() / speed
        val rangeSize = range.last - range.start

        val text = "$text "
        println((time % text.length).toInt())
        var res = text.substring((time % text.length).toInt())
        while(res.length < rangeSize) res += text
        res = res.substring(0 until rangeSize)

        updateLine(line, res, range.start)

    }

    fun clear(){
        line0 = List(LCD.COLS){ " " }.joinToString("")
        line1 = List(LCD.COLS){ " " }.joinToString("")
        LCD.clear()
    }

    private var line0 = List(LCD.COLS){ " " }.joinToString("")
    private var line1 = List(LCD.COLS){ " " }.joinToString("")

    /** Atualiza as linhas do LCD evitando comandos redundantes. */
    private fun updateLine(line: Int, text: String, start: Int = 0){

        // Obter último estado da linha
        val lastLine = when(line){
            0 -> line0
            1 -> line1
            else -> throw IllegalArgumentException("Invalid line.")
        }

        // Sobrescrever linha
        val prefix = if(start > 0) lastLine.substring(0 until start) else ""
        val suffix = if(start + text.length <= LCD.COLS) lastLine.substring(start + text.length) else ""
        val currLine = (prefix + text + suffix).substring(0 until LCD.COLS)

        if(lastLine == currLine) return

        var col: Int? = null
        repeat(LCD.COLS){ i ->
            if(lastLine[i] == currLine[i]) return@repeat

            if(col != i) {
                LCD.cursor(line, i)
                col = i
            }
            LCD.write(currLine[i])
            col = col + 1


        }

        // Atualizar último estado da linha
        when(line){
            0 -> line0 = currLine
            1 -> line1 = currLine
        }

    }

    /* ---------- Keyboard ---------- */

    /** Retorna de imediato a tecla premida ou `NONE` se não há tecla premida. */
    fun getKey() = KBD.getKey()

}

fun main(){

    HAL.init()
    SerialEmitter.init()
    LCD.init()
    TUI.init()

    TUI.write("BOAS TUDO BEM CT",0)
    Time.sleep(2000)
    TUI.write("YAYS 5UDO BEM CT",0)


        while(true){

            TUI.scrollText("If you are seeing this text scrolling, it means that the TUI is working!", 0)

            val key = TUI.getKey()
            if(key != 0.toChar()) TUI.write(key.toString(), 1)

        }

}