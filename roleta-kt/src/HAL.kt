import isel.leic.UsbPort

object HAL {

    /** Último _output_ enviado. */
    var lastOutput = 0

    /** Inicializa o _output_ do UsbPort. */
    fun init() = UsbPort.write(0)

    /** Verifica se os bits da `mask` estão ativos no _input_ do UsbPort. */
    fun isBit(mask: Int) = readBits(mask) == mask

    /** Retorna os bits no _input_ do UsbPort filtrados por `mask`. */
    fun readBits(mask: Int) = UsbPort.read() and mask

    /** Escreve no _output_ do UsbPort `value` filtrado por `mask`. */
    fun writeBits(mask: Int, value: Int) = write((value and mask) or (lastOutput and mask.inv()))

    /** Ativa no _output_ do UsbPort os bits da `mask`. */
    fun setBits(mask: Int) = write(lastOutput or mask)

    /** Desativa no _output_ do UsbPort os bits da `mask`. */
    fun clearBits(mask: Int) = write(lastOutput and mask.inv())

    /** Escreve no _output_ do UsbPort e guarda o que escreveu.  */
    private fun write(output: Int){
        UsbPort.write(output)
        lastOutput = output
    }

}

fun main(){

    HAL.init()

    while(true){
        println(HAL.readBits(0xF).toString(2))
        readln()
    }

}