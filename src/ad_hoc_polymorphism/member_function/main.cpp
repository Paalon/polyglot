#include <print>

struct A {
    auto f() const {
        std::println("A");
    }
};

struct B {
    auto f() const {
        std::println("B");
    }
};

int main() {
    A{}.f();
    B{}.f();
}
