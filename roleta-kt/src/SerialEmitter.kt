import isel.leic.utils.Time

/** Envia tramas para os diferentes módulos Serial Receiver */
object SerialEmitter {

    enum class Destination { LCD, ROULETTE }

    // [ NOTA IMPORTANTE! ]
    // O bits SEL têm que ser negados
    // Ou seja, para selecionar o LCD, deve-se fazer HAL.clearBits(LCD_SEL)

    private const val LCD_SEL = 0b00000001
    private const val RD_SEL  = 0b00000010

    private const val SDX     = 0b00001000
    private const val SCLK    = 0b00010000

    /** Inicializa o SerialEmitter */
    fun init(){
        HAL.writeBits(
            LCD_SEL or RD_SEL or SDX or SCLK,
            LCD_SEL or RD_SEL // SDX e SCLK devem estar a zero
        )
    }

    /**
     * Envia uma trama para o _Serial Receiver_.
     * @property addr Destino
     * @property data Bits de dados
     * @property size Nº de bits a enviar
     */
    fun send(addr: Destination, data: Int, size: Int){

        // Ativar destino
        HAL.clearBits(when(addr){
            Destination.LCD -> LCD_SEL
            Destination.ROULETTE -> RD_SEL
        })

        // Enviar dados
        repeat(size){ i ->

            // Preparar SDX
            when((data shr i) and 1){
                1 -> HAL.setBits(SDX)
                0 -> HAL.clearBits(SDX)
            }

            // CLK
            HAL.setBits(SCLK)
            HAL.clearBits(SCLK)

        }

        // Enviar bit de paridade
        when(data.countOneBits() % 2){
            1 -> HAL.clearBits(SDX)
            0 -> HAL.setBits(SDX)
        }

        // CLK
        HAL.setBits(SCLK)
        HAL.clearBits(SCLK)

        // Desativar destino
        HAL.setBits(LCD_SEL or RD_SEL)
    }

}

fun main(){

    SerialEmitter.init()

    while(true){
        SerialEmitter.send(SerialEmitter.Destination.ROULETTE, readln().toInt(2), 8)
    }

//    println("11100001 - Off")
//    SerialEmitter.send(SerialEmitter.Destination.ROULETTE, 0b11100001, 8)
//    Time.sleep(1000)
//
//    println("11100000 - On")
//    SerialEmitter.send(SerialEmitter.Destination.ROULETTE, 0b11100000, 8)
//    Time.sleep(1000)
//
//    // clear
//
//    println("00011111 - clear digit 0")
//    SerialEmitter.send(SerialEmitter.Destination.ROULETTE, 0b00011111, 8)
//    Time.sleep(1000)
//
//    println("00111111 - clear digit 1")
//    SerialEmitter.send(SerialEmitter.Destination.ROULETTE, 0b00111111, 8)
//    Time.sleep(1000)
//
//    println("01011111 - clear digit 2")
//    SerialEmitter.send(SerialEmitter.Destination.ROULETTE, 0b01011111, 8)
//    Time.sleep(1000)
//
//    println("01111111 - clear digit 3")
//    SerialEmitter.send(SerialEmitter.Destination.ROULETTE, 0b01111111, 8)
//    Time.sleep(1000)
//
//    println("10011111 - clear digit 4")
//    SerialEmitter.send(SerialEmitter.Destination.ROULETTE, 0b10011111, 8)
//    Time.sleep(1000)
//
//    println("10111111 - clear digit 5")
//    SerialEmitter.send(SerialEmitter.Destination.ROULETTE, 0b10111111, 8)
//    Time.sleep(1000)
//
//    // end clear
//
//    println("00000000 - update digit")
//    SerialEmitter.send(SerialEmitter.Destination.ROULETTE, 0b00000000, 8)
//    Time.sleep(1000)
//
//    println("11000000 - update")
//    SerialEmitter.send(SerialEmitter.Destination.ROULETTE, 0b11000000, 8)
//    Time.sleep(1000)

    // O DXval não parece ser ativo na simulação
    // Mas isso não significa que não está a funcionar
}