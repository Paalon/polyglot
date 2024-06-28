from dataclasses import dataclass

@dataclass
class Animal:
    name: str
    weight: float

animal = Animal('Max', 5)
print(animal.name)
print(animal.weight)