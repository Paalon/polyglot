class Animal {
    var name: String
    var weight: Float64
    init(name: String, weight: Float64) {
        self.name = name
        self.weight = weight
    }
}

let animal = Animal(name: "Max", weight: 5)
print(animal.name)
print(animal.weight)