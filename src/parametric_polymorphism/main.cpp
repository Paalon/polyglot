#include <print>

struct A {};
struct B {};

template <typename T> void f(T const &) {
    std::println("do the same thing from C++");
}

int main() {
    f(A{});
    f(B{});
}
