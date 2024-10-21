#include <unordered_map>
#include <utility>
#include <print>

int main() {
    auto const dictionary = std::unordered_map{
        std::make_pair("a", "apple"),
        std::make_pair("b", "banana"),
    };
    for (auto const & [key, value] : dictionary) {
        std::println("{} {}", key, value);
    }
}
