fun main() {
    val animal = Animal(name = "Max", weight = 5.0)
    println(animal.name)
    println(animal.weight)
}

class Animal(name: String, weight: Double) {
    var name: String
    var weight: Double
    init {
        this.name = name
        this.weight = weight
    }
}