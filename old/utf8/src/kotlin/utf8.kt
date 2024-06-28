fun main() {
    for (n in "🍎 and 🍏".codePoints().toArray()) {
        println("%c".format(n))
    }
}