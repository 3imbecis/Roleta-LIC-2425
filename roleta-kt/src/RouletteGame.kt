import isel.leic.utils.Time
import util.Alignment
import util.RouletteBoard
import kotlin.math.ceil

object RouletteGame {

    /** Nº de moedas a gastar. */
    private var credits = 0

    /** Deteta novas moedas e adiciona ao jogo. */
    private fun checkNewCoins(){

        // Detetar nova moeda
        val coin = CoinAcceptor.get()
        if(coin == 0) return

        // Adicionar aos créditos
        credits += coin

    }

    fun init(){

        // Inicialização

        HAL.init()
        SerialEmitter.init()
        LCD.init()
        RouletteDiplay.init()
        KBD.init()
        TUI.init()


        CoinDeposit.init()
        Statistics.init()

        // Ecrã Inicial

        while(true){

            checkNewCoins()

            // --- LCD ---

            // Título
            TUI.write("Roulette Game", 0)

            // Créditos
            val creditsStr = " ${credits}$"
            TUI.write(creditsStr, 1, Alignment.RIGHT)

            // Instruções
            TUI.scrollText(
                if(credits > 0) "Click * to play!" else "Insert coins!",
                1,
                range = 0..(LCD.COLS - creditsStr.length)
            )

            // --- KB ---

            // Começar o jogo
            if(TUI.getKey() == '*' && credits > 0) startGame()

            // Manutenção
            if(M.check()) M.maintenanceMode()

        }

    }

    fun startGame(maintenance: Boolean = false){

        // Apostas

        val bets = RouletteBoard.default(0)
        var lastBet = Time.getTimeInMillis()
        var betEnd: Long? = null

        TUI.clear()

        while(true){

            checkNewCoins()

            // --- LCD ---

            val betSum = bets.toList().sum()

            if(betSum == 14 * 9) {

                // O jogador não pode apostar mais
                // Mostrar instrução para começar a jogar
                var msg = "Max bets!"
                if(betEnd == null) msg += " Click # to start."
                TUI.scrollText(msg, 0, range = 0..LCD.COLS - 2)

            }else if(Time.getTimeInMillis() - lastBet > 5e3 && credits == 0){

                // O jogador está inativo e necessita de mais créditos
                val msg = if(betEnd == null) "Click # to start or insert coins!" else "Insert coins to keep betting!"
                TUI.scrollText(msg, 0, range = 0..LCD.COLS - 2)

            }else if(Time.getTimeInMillis() - lastBet > 5e3 && betSum > 0) {

                // O jogador está inativo
                // Mostrar instrução para começar a jogar
                val msg = if(betEnd == null) "Click # to start or keep betting!" else "You can still bet!"
                TUI.scrollText(msg,0, range = 0..LCD.COLS - 2)

            }else if(betSum > 0){

                // O jogador já apostou
                // Mostrar apostas do utilizador
                TUI.write(
                    bets.toList().joinToString("") { if (it == 0) " " else it.toString() },
                    0, Alignment.LEFT
                )

            }else{

                // O jogador ainda não apostou
                // Mostrar instrução para apostar
                TUI.scrollText("Click on these keys to bet!", 0, range = 0..LCD.COLS - 2)

            }

            val cornerIcon = when {
                betEnd != null -> ceil((betEnd - Time.getTimeInMillis()) / 1e3).toInt().toString()
                !maintenance -> "$"
                else -> null
            }
            if(cornerIcon != null) TUI.write(cornerIcon, 0, Alignment.RIGHT)

            TUI.write("0123456789ABCD ${when{
                maintenance -> TUI.MAINTENANCE
                credits > 9 -> TUI.NINE_PLUS
                else -> credits
            }}", 1)

            // --- KB ---

            val key = TUI.getKey()

            // Apostas
            if(
                key in RouletteBoard.SLOTS &&
                (credits > 0 || maintenance) && // Tem créditos ou está em modo manutenção
                bets[key] < 9 // Não chegou ao limite de apostas dessa tecla
            ){

                bets[key]++
                if(!maintenance){

                    // Retirar dos créditos
                    credits--

                    // Adicionar ao depósito
                    CoinDeposit.addCoin()

                }

                lastBet = Time.getTimeInMillis()

            }

            // Começar o jogo
            if(
                key == '#' &&
                bets.toList().sum() > 0 && // Existe alguma aposta
                betEnd == null // Jogo ainda não começou
            ) betEnd = Time.getTimeInMillis() + 5000L // Acabar as apostas em 5 segundos

            // O jogo já começou
            if(betEnd != null){
                RouletteDiplay.animation()
                if(Time.getTimeInMillis() > betEnd) break // Acabar as apostas
            }

        }

        // Animação

        TUI.clear()

        val animEnd = Time.getTimeInMillis() + (1000L..5000L).random()
        while(Time.getTimeInMillis() < animEnd){

            RouletteDiplay.animation()

            TUI.write("Good luck!", 0)
            TUI.scrollText("Not accepting more bets.", 1)

        }

        // Fim

        TUI.clear()

        val winSlot = (0x0..0xD).random()
        val winCredits = bets[winSlot] * 2

        RouletteDiplay.write("${winSlot.toString(16)}   ${winCredits.toString().padStart(2, ' ')}")

        val winEnd = Time.getTimeInMillis() + 5000L
        while(Time.getTimeInMillis() < winEnd){
            TUI.write(if(bets[winSlot] > 0) "Congrats! ${TUI.HAPPY}" else "Oh no! ${TUI.SAD}", 0)
            TUI.scrollText(if(bets[winSlot] > 0) "You won ${winCredits} credits!" else "Better luck next time!", 1)
        }

        if(!maintenance){

            credits += winCredits

            CoinDeposit.cashOut(winCredits)

            // Atualizar info e estatísticas
            Statistics.addResult(winSlot, winCredits)
            CoinDeposit.addGamePlayed()

        }

        RouletteDiplay.clear()

    }

}

fun main() = RouletteGame.init()