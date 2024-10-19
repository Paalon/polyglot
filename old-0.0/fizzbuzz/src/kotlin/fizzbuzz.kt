fun main() {
    for (n in 1..50) {
        when {
            n % 3 == 0 && n % 5 == 0 -> println("fizz buzz")
            n % 3 == 0 -> println("fizz")
            n % 5 == 0 -> println("buzz")
            else -> println(n)
        }
    }
}
