#include <tuple>
#include <string>
#include <iostream>

std::tuple<int, int, std::string> f1(int const x, int const y, std::string const & z) {
    return std::tuple{x + y, x * y, z};
}

auto f2(int const x, int const y, std::string const & z) -> std::tuple<int, int, std::string> {
    return std::tuple{x + y, x * y, z};
}

auto f3 = [](int const x, int const y, std::string const & z) -> std::tuple<int, int, std::string> {
    return std::tuple{x + y, x * y, z};
};

auto f1_i(auto const x, auto const y, auto const & z) {
    return std::tuple{x + y, x * y, z};
}

std::ostream & operator<<(std::ostream & stream, std::tuple<int, int, std::string> const & tuple) {
    auto const [a, b, c] = tuple;
    stream << "(" << a << ", " << b << ", \"" << c << "\")";
    return stream;
}

int main() {
    auto const s5 = std::string{"5"};
    std::cout << f1(3, 4, s5) << std::endl;
    std::cout << f2(3, 4, s5) << std::endl;
    std::cout << f3(3, 4, s5) << std::endl;
    std::cout << f1_i(3, 4, s5) << std::endl;
}