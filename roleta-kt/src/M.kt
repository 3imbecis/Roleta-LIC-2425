import isel.leic.utils.Time
import util.Alignment
import util.RouletteBoard
import kotlin.system.exitProcess

object M {

    private const val M_MASK = 0b10000000

    /** Retorna o estado de manutenção */
    fun check() = HAL.isBit(M_MASK)

    // Modo de Manutenção
    fun maintenanceMode(){

        TUI.clear()

        while(true){

            TUI.write("${TUI.MAINTENANCE}AINTENANCE",0)

            // Lista de Comandos
            TUI.scrollText("* ${TUI.ARROW} Test |" +
                    " A ${TUI.ARROW} Info |" +
                    " C ${TUI.ARROW} Results |" +
                    " D ${TUI.ARROW} Off |" +
                    " # ${TUI.ARROW} Back |",1, 200)

            val key = TUI.getKey()

            // Keys dos Comandos
            when (key) {
                '*' -> RouletteGame.startGame(true)
                'A' -> maintenanceInfo()
                'C' -> maintenanceResults()
                'D' -> maintenanceOff()
            }

            // Sair do modo de manutenção
            if(!check()) return

        }

    }

    fun maintenanceInfo(){

        TUI.clear()

        while(true){

            TUI.write("Coins: ${CoinDeposit.info.coinCount}",0, Alignment.LEFT)
            TUI.write("Games: ${CoinDeposit.info.gameCount}",1, Alignment.LEFT)

            val key = TUI.getKey()

            if(key == '*'){
                CoinDeposit.resetInfo()
                TUI.clear()
            }

            // Sair do comando
            if(key == '#'){
                TUI.clear()
                return
            }

        }

    }

    fun maintenanceResults(){

        TUI.clear()

        var selectedSlot: Char? = null

        while(true){

            if(selectedSlot == null){
                TUI.write("Click on a slot", 0)
                TUI.write("to see results", 1)
            }else{
                TUI.write("Wins: ${Statistics.results[selectedSlot].winCount}", 0, Alignment.LEFT)
                TUI.write("Coins: ${Statistics.results[selectedSlot].coinCount}", 1, Alignment.LEFT)
                TUI.write(selectedSlot.toString(), 0, Alignment.RIGHT)
            }

            val key = TUI.getKey()

            if(key in RouletteBoard.SLOTS){
                selectedSlot = key
                TUI.clear()
            }

            if (key == '*'){

                Statistics.resetResults()

                TUI.clear()
                TUI.write("Results reseted!", 0)
                Time.sleep(2000L)
                TUI.clear()

            }

            // Sair do comando
            if(key == '#'){
                TUI.clear()
                return
            }

        }
    }

    fun maintenanceOff(){

        TUI.clear()

        while (true){

            TUI.write("Shut off?",0)
            TUI.write("* ${TUI.ARROW} Yes | # ${TUI.ARROW} No",1)

            val key = TUI.getKey()

            // Guardar coins e resultados e depois desligar
            if(key == '*'){

                TUI.clear()
                TUI.write("Shutting off...", 0)

                CoinDeposit.saveInfo()
                Statistics.saveResults(Statistics.results)

                Time.sleep(1000)
                TUI.clear()

                exitProcess(0)
            }

            // Sair do comando
            if(key == '#'){
                TUI.clear()
                return
            }

        }

    }

}

fun main(){

    var lastState: Boolean? = null

    while(true){

        val state = M.check()
        if(state == lastState) continue
        lastState = state

        println("Maintenance is ${if(state) "ON" else "OFF"}")

    }

}