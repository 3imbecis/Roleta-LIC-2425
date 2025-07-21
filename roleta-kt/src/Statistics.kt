import util.GRAY
import util.RED
import util.RESET
import util.RouletteBoard
import util.toRouletteBoard
import java.io.File

/** Resultados de uma opção de aposta específica. */
data class Results(
    /** Nº de saídas. */
    var winCount: Int,
    /** Nº de prémios atribuídos. */
    var coinCount: Int
)

/** Atualiza as estatísticas. */
object Statistics {

    private const val RESULTS_PATH = "Roulette_Stats.txt"
    private var _results: RouletteBoard<Results>? = null
    val results: RouletteBoard<Results> get() = _results!!

    /**
     * Carrega o `RouletteBoard<Results>` que esteja no seu ficheiro.
     *
     * Caso exista ocorra algum erro, é retornado um `RouletteBoard<Results>` inicial.
     */
    fun init(){
        try{

            val data = FileAccess.read(RESULTS_PATH)
            assert(data.size == 14) { "Unexpected amount of data!" }

            val results = MutableList<Results?>(14) {null}

            data.mapIndexed { i, line ->

                val lineData = line.split(';')
                assert(lineData.size == 3) { "Unexpected amount of data on line ${i + 1}!" }

                val (index, winCount, coinCount) = lineData.map { it.toIntOrNull() }
                assert(index != null && winCount != null && coinCount != null){ "Unexpected type of data on line ${i + 1}!" }

                assert(results[index!!] == null) {"Unexpected double entry"}

                results[index!!] = Results(winCount!!, coinCount!!)

            }

            _results = results.map { it!! }.toRouletteBoard()

        }catch(e: Exception){
            println("${RED}LoadResultsError:${RESET} ${e.message} ${GRAY}- Returning default results...${RESET}")
            resetResults()
        }
    }

    /** Guarda o resultado de um jogo. */
    fun addResult(slot: Int, coins: Int){
        _results!![slot].winCount++
        _results!![slot].coinCount += coins
    }

    /** Reinicia `RouletteBoard<Results>`. */
    fun resetResults(){
        _results = RouletteBoard.default(Results(0, 0))
    }

    /** Guarda `RouletteBoard<Results>` no seu ficheiro. */
    fun saveResults(results: RouletteBoard<Results>){
        try{

            FileAccess.write(RESULTS_PATH,results.mapIndexed
            { i, results -> "${i};${results.winCount};${results.coinCount}" }.joinToString("\n"))

        }catch(e: Exception){
            println("${RED}SaveResultsError:${RESET} ${e.message}")
        }
    }

}

fun main(){
    Statistics.init()
    Statistics.saveResults(Statistics.results)

}