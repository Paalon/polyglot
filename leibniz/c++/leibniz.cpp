#include <concepts>
#include <cstdint>
#include <sstream>
#include <iostream>
#include <limits>

template <std::integral T>
auto is_even(T n) {
    return n % T{2} == T{0};
}

template <std::integral T>
auto powersign(T n) {
    return is_even(n) ? T{1} : T{-1};
}

template <std::integral T>
auto leibniz(T n) {
    using F = double;
    auto s = F{0};
    for (auto k = T{0}; k <= n; k++) {
        s += static_cast<F>(powersign(k)) / static_cast<F>(T{2} * k + T{1});
    }
    return F{4} * s;
}

int main(int argc, char * argv[]) {
    std::stringstream stream;
    stream << argv[1];
    int64_t n;
    stream >> n;

    typedef std::numeric_limits<double> lim;
    std::cout.precision(lim::max_digits10);
    std::cout << leibniz(n) << std::endl;
}
