import std.stdio;

struct Animal {
    string name;
    float weight;
}

void main() {
    auto animal = Animal("Max", 5);
    writeln(animal.name);
    writeln(animal.weight);
}