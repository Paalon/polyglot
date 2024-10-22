#include <array>
#include <print>
#include <string>

using std::literals::string_literals::operator""s;

int main() {
    auto const xs = std::array{"a"s, "b"s, "c"s};
    for (auto const & x : xs) {
        std::println("{}", x);
    }
}
