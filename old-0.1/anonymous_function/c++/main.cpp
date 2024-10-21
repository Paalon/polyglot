#include <tuple>
#include <string>
#include <iostream>

std::ostream & operator<<(std::ostream & stream, std::tuple<int, int, std::string> const & tuple) {
    auto const [a, b, c] = tuple;
    stream << "(" << a << ", " << b << ", \"" << c << "\")";
    return stream;
}

int main() {
    std::cout << [](int const x, int const y, std::string const & z) -> std::tuple<int, int, std::string> {
        return std::tuple{x + y, x * y, z};
    }(3, 4, std::string{"5"}) << std::endl;
}