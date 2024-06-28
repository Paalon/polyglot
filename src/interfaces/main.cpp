#include <print>

struct CanFly {
    virtual void fly() const = 0;
    virtual ~CanFly() {}
};

struct CanSwim {
    virtual void swim() const = 0;
    virtual ~CanSwim() {}
};

struct Butterfly : CanFly {
    void fly() const {
        std::println("The butterfly flies.");
    }
};

struct Dolphin : CanSwim {
    void swim() const {
        std::println("The dolphin swims.");
    }
};

struct Duck : CanFly, CanSwim {
    void fly() const {
        std::println("The duck flies.");
    }
    void swim() const {
        std::println("The duck swims.");
    }
};

int main() {
    auto const butterfly = Butterfly{};
    butterfly.fly();
    
    auto const dolphin = Dolphin{};
    dolphin.swim();

    auto const duck = Duck{};
    duck.fly();
    duck.swim();
}
