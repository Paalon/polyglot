class Animal {
    constructor(name, weight) {
        this.name = name;
        this.weight = weight;
    }
}

const animal = new Animal("Max", 5);
process.stdout.write(`${animal.name}\n`);
process.stdout.write(`${animal.weight}\n`);