#include <stdio.h>

typedef struct Animal {
    char * name;
    double weight;
} Animal;

int main() {
    Animal animal = {"Max", 5.0};
    printf("%s\n", animal.name);
    printf("%f\n", animal.weight);
}