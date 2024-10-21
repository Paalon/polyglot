fun main() {    
    val dictionary = mapOf("a" to "apple", "b" to "banana")
	for (entry in dictionary.entries.iterator()) {
        println("${entry.key} ${entry.value}")
    }
}
