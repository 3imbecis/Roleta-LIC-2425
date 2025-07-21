package util

/** Útil para organizar dados associados a cada opção de aposta. */
data class RouletteBoard<E>(
    var slot0: E,
    var slot1: E,
    var slot2: E,
    var slot3: E,
    var slot4: E,
    var slot5: E,
    var slot6: E,
    var slot7: E,
    var slot8: E,
    var slot9: E,
    var slotA: E,
    var slotB: E,
    var slotC: E,
    var slotD: E
): Iterable<E> {

    companion object Factory {

        const val SLOTS = "0123456789ABCD"

        /** Cria um RouletteBoard que tenta todos os dados iguais. */
        fun <E> default(value: E) = List(14){ value }.toRouletteBoard()

    }

    /** Acesso via números hexadecimais. */
    operator fun get(i: Int) = when(i){
        0x0 -> slot0
        0x1 -> slot1
        0x2 -> slot2
        0x3 -> slot3
        0x4 -> slot4
        0x5 -> slot5
        0x6 -> slot6
        0x7 -> slot7
        0x8 -> slot8
        0x9 -> slot9
        0xA -> slotA
        0xB -> slotB
        0xC -> slotC
        0xD -> slotD
        else -> throw IndexOutOfBoundsException("$i is outside de 0x0..0xD range.")
    }

    /** Acesso via caracteres. */
    operator fun get(i: Char) = when(i){
        '0' -> slot0
        '1' -> slot1
        '2' -> slot2
        '3' -> slot3
        '4' -> slot4
        '5' -> slot5
        '6' -> slot6
        '7' -> slot7
        '8' -> slot8
        '9' -> slot9
        'A' -> slotA
        'B' -> slotB
        'C' -> slotC
        'D' -> slotD
        else -> throw IndexOutOfBoundsException("$i is outside de '0'..'D' range.")
    }

    /** Atribuição via números hexadecimais. */
    operator fun set(i: Int, value: E) = when(i){
        0x0 -> slot0 = value
        0x1 -> slot1 = value
        0x2 -> slot2 = value
        0x3 -> slot3 = value
        0x4 -> slot4 = value
        0x5 -> slot5 = value
        0x6 -> slot6 = value
        0x7 -> slot7 = value
        0x8 -> slot8 = value
        0x9 -> slot9 = value
        0xA -> slotA = value
        0xB -> slotB = value
        0xC -> slotC = value
        0xD -> slotD = value
        else -> throw IndexOutOfBoundsException("$i is outside de 0x0..0xD range.")
    }

    /** Atribuição via caracteres. */
    operator fun set(i: Char, value: E) = when(i){
        '0' -> slot0 = value
        '1' -> slot1 = value
        '2' -> slot2 = value
        '3' -> slot3 = value
        '4' -> slot4 = value
        '5' -> slot5 = value
        '6' -> slot6 = value
        '7' -> slot7 = value
        '8' -> slot8 = value
        '9' -> slot9 = value
        'A' -> slotA = value
        'B' -> slotB = value
        'C' -> slotC = value
        'D' -> slotD = value
        else -> throw IndexOutOfBoundsException("$i is outside de '0'..'D' range.")
    }

    /** Conversão para lista de dados. */
    fun toList() = listOf(
        slot0,
        slot1,
        slot2,
        slot3,
        slot4,
        slot5,
        slot6,
        slot7,
        slot8,
        slot9,
        slotA,
        slotB,
        slotC,
        slotD
    )

    /** Iterador */
    override fun iterator() = toList().iterator()

}

/** Conversão de lista para RouletteBoard. */
fun <E> List<E>.toRouletteBoard(): RouletteBoard<E> {
    require(size == 14) { "List must have exactly 14 elements (0x0..0xD)" }
    return RouletteBoard(
        this[0x0],
        this[0x1],
        this[0x2],
        this[0x3],
        this[0x4],
        this[0x5],
        this[0x6],
        this[0x7],
        this[0x8],
        this[0x9],
        this[0xA],
        this[0xB],
        this[0xC],
        this[0xD]
    )
}