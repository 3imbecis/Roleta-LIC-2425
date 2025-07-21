import util.GRAY
import util.RED
import util.RESET
import util.RouletteBoard
import util.toRouletteBoard
import java.io.File

object FileAccess {

    fun read(path: String) = File(path).readLines()

    fun write(path: String, content: String) = File(path).writeText(content)

}