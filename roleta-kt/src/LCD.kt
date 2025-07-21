import isel.leic.utils.Time

/** Escreve no LCD usando a interface a 4 bits. */
object LCD {

    // Dimensão do display.
    const val LINES = 2
    const val COLS = 16

    /** Define se a interface é Série ou Paralela */
    private const val SERIAL_INTERFACE = true

    private const val RS_MASK = 0b010000
    private const val E_MASK =  0b100000

    private const val CGRAM_MASK = 0b01000000

    /** Escreve um nibble de comando/dados no LCD em paralelo. */
    private fun writeNibbleParallel(rs: Boolean, data: Int){

        if(rs) HAL.setBits(RS_MASK)
        else HAL.clearBits(RS_MASK)

        HAL.setBits(E_MASK)
        HAL.writeBits(0xF, data)
        HAL.clearBits(E_MASK)
    }

    /** Escreve um nibble de comando/dados no LCD em série. */
    private fun writeNibbleSerial(rs: Boolean, data: Int){

        // Adicionar bit de RS
        var data = data shl 1
        if(rs) data = data or 1

        SerialEmitter.send(SerialEmitter.Destination.LCD, data, 5)
    }

    /** Escreve um nibble de comando/dados no LCD. */
    private fun writeNibble(rs: Boolean, data: Int){
        require(data in 0x0..0xF){ "0x${data.toString(16)} is not a valid nibble" } // como os dados sao 4 bits so podem ir até 16
        return when(SERIAL_INTERFACE){
            true -> writeNibbleSerial(rs, data)
            false -> writeNibbleParallel(rs, data)
        }
    }

    /** Escreve um byte de comando/dados no LCD. */
    private fun writeByte(rs: Boolean, data: Int) {
        require(data in 0x00..0xFF){ "0x${data.toString(16)} is not a valid byte" } // requerir que a data seja até 255 porque sao 8 bits
        writeNibble(rs, data shr 4) // shift right 4 vezes -> 0b00001111 -> mandar parte alta primeiro
        writeNibble(rs, data and 0xF) // mascara para mandar so a parte baixa 0b00001111 and 0xF
    }

    /** Escreve um comando no LCD. */
    private fun writeCMD(data: Int) = writeByte(false, data) // escreve 2 tramas de controlo

    /** Escreve dados no LCD. */
    private fun writeDATA(data: Int) = writeByte(true, data) // escreve 2 tramas de dados

    /** Envia a sequência de iniciação para comunicação a 4 bits. */
    fun init(){

        Time.sleep(20)
        writeNibble(false,0b0011)
        Time.sleep(5)
        writeNibble(false, 0b0011)
        Time.sleep(1)
        writeNibble(false, 0b0011)
        Time.sleep(1)
        writeNibble(false, 0b0010)

        writeCMD(0b00101000) // function set - DL=0 N=1 F=0
        Time.sleep(1)
        writeCMD(0b00001000) // display off - D=0 C=0 B=0
        Time.sleep(1)
        clear() // clear display
        Time.sleep(5)
        writeCMD(0b00000110) // entry mode set - I/D=1 S=0
        Time.sleep(1)
        writeCMD(0b00001100) // display on - D=1 C=0 B=0

    }

    /** Escreve uma string na posição corrente. */
    fun write(text: String){
        for(c in text) write(c)
    }

    /** Escreve um carácter na posição corrente. */
    fun write(char: Char) = writeDATA(char.code)

    /** Envia um comando para posicionar o cursor. */
    fun cursor(line: Int, column: Int){
        require(line in 0 until LINES) { "Line must be between 0 and ${LINES - 1}" }
        require(column in 0 until COLS) { "Line must be between 0 and ${COLS - 1}" }
        when (line){
            0 -> writeCMD(0b10000000 + column)
            1 -> writeCMD(0b10000000 + 0x40 + column)
        }
    }

    /** Envia comando para limpar o ecrã e posicionar o cursor na posição inicial. */
    fun clear() = writeCMD(0b00000001)

    /**
     * Regista um caráter personalizado.
     * @property char Caráter a associar.
     * @property picture Desenho do caráter 5×8.
     */
    fun loadChar(char: Char, picture: List<String>){
        require(char.code in 0b000..0b111){ "Character is more than 3 bits" }
        writeCMD(CGRAM_MASK or (char.code shl 3))
        repeat(8){ i ->
            val code = picture[i].map{ if(it == ' ') '0' else '1' }.joinToString("").toInt(2)
            writeDATA(code)
        }
        cursor(0,0) // mais rapido demora 37 microsegundos
    }

}

fun main(){

    HAL.init()
    SerialEmitter.init()
    LCD.init()


    LCD.loadChar(0.toChar(), listOf(
        "     ",
        "  #  ",
        "  #  ",
        "  #  ",
        "  #  ",
        "## ##",
        "## ##",
        "     "
    ))

    LCD.write("Hello! ${0.toChar()}")


        LCD.write("Hello! ${0.toChar()}")
        LCD.cursor(1, 0)
        LCD.write("0123456789")

        Time.sleep(3000)

        LCD.clear()
        LCD.write("Goodbye...")

        Time.sleep(3000)

        LCD.clear()

}