#include <print>

struct CanFly {
    void fly() const {
        std::println("I fly.");
    }
};

struct CanSwim {
    void swim() const {
        std::println("I swim.");
    }
};

struct Duck : CanFly, CanSwim {};

int main() {
    auto const duck = Duck{};
    duck.fly();
    duck.swim();
}
