public class Struct {
    public static void main(String[] args) {
        Animal animal = new Animal("Max", 5);
        System.out.println(animal.name);
        System.out.println(animal.weight);
    }
}

class Animal {
    String name;
    double weight;
    public Animal(String name, double weight) {
        this.name = name;
        this.weight = weight;
    }
}