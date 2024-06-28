#include <iostream>

struct Animal {
    std::string name;
    double weight;
};

int main() {
    auto const animal = Animal{"Max", 5};
    std::cout << animal.name << std::endl;
    std::cout << animal.weight << std::endl;
}