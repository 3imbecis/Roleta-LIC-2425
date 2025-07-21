import util.GRAY
import util.RED
import util.RESET
import java.io.File
import kotlin.math.max
import kotlin.math.min

data class Info(
    /** Nº de jogos realizados. */
    var gameCount: Int,
    /** Nº de moedas guardadas no cofre do moedeiro. */
    var coinCount: Int
)

object CoinDeposit {

    private const val INFO_PATH = "statistics.txt"
    private var _info: Info? = null
    val info: Info get() = _info!!

    /**
     * Carrega o `Info` que esteja no seu ficheiro.
     *
     * Caso exista ocorra algum erro, é retornado um `Info` inicial.
     */
    fun init(){
        try{

            val data = FileAccess.read(INFO_PATH)
            assert(data.size == 2) { "Unexpected amount of data!" }

            val (gameCount, coinCount) = data.map { it.toIntOrNull() }
            assert(gameCount != null && coinCount != null){ "Unexpected type of data!" }

            _info = Info(gameCount!!, coinCount!!)

        }catch(e: Exception){
            println("${RED}LoadInfoError:${RESET} ${e.message} ${GRAY}- Returning default info...${RESET}")
            resetInfo()
        }
    }

    /** Incrementa o nº de jogos realizados. */
    fun addGamePlayed() = _info!!.gameCount++

    /** Incrementa o nº de moedas guardadas no cofre do moedeiro */
    fun addCoin() = _info!!.coinCount++

    /** Subtrai o nº de moedas guardadas no cofre do moedeiro */
    fun cashOut(coins: Int){
        _info!!.coinCount -= coins
    }

    /** Reinicia `Info`. */
    fun resetInfo(){
        _info = Info(0, 0)
    }

    /** Guarda `Info` no seu ficheiro. */
    fun saveInfo(){
        try{
            FileAccess.write(INFO_PATH, "${info.gameCount}\n${info.coinCount}")
        }catch(e: Exception){
            println("${RED}SaveInfoError:${RESET} ${e.message}")
        }
    }

}