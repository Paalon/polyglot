#include <print>

struct A {};

auto const f(A const &) {
    std::println("A");
}

struct B {};

auto const f(B const &) {
    std::println("B");
}

int main() {
    f(A{});
    f(B{});
}
