#include <print>

struct CanFly {
    void fly() const {
        std::println("I fly.");
    }
};

struct Butterfly : CanFly {};

int main() {
    auto const butterfly = Butterfly{};
    butterfly.fly();
}
