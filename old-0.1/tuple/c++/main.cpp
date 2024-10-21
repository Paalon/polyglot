#include <tuple>
#include <print>
#include <boost/core/demangle.hpp>

auto const typenameof(auto const & x) {
    return boost::core::demangle(typeid(x).name());
}

int main() {
    // 多重代入
    auto const [a, b, c, d] = std::tuple{0, 0., '0', "0"};
    // 反復
    std::apply([](auto const & ...x) {
        (std::println("{}", typenameof(x)), ...);
    }, std::tuple{a, b, c, d});
}
