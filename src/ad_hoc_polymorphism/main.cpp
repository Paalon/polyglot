#include <print>

struct A {};

auto f(A const &) {
    std::println("A");
}

struct B {};

auto f(B const &) {
    std::println("B");
}

int main() {
    f(A{});
    f(B{});
}
