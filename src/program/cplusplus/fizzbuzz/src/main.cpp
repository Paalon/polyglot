#include <print>
#include <string>
#include <format>
#include <concepts>

using std::literals::string_literals::operator""s;

template <std::integral T>
std::string fizzbuzzString(T n) {
    auto const n3 = n % static_cast<T>(3) == static_cast<T>(0);
    auto const n5 = n % static_cast<T>(5) == static_cast<T>(0);
    if (n3 && n5) {
        return "fizz buzz"s;
    } else if (n3) {
        return "fizz"s;
    } else if (n5) {
        return "buzz"s;
    } else {
        return std::format("{}", n);
    }
}

template <std::integral T>
void printFizzbuzz(T n, T m) {
    for (auto k = n; k <= m; k++) {
        std::println("{}", fizzbuzzString(k));
    }
}

int main() {
    printFizzbuzz(1, 30);
}
