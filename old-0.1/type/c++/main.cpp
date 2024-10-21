#include <tuple>
#include <print>
#include <boost/core/demangle.hpp>

auto const typeof(auto const & x) {
	return boost::core::demangle(typeid(x).name());
}

int main() {
	std::apply([](auto &&... xs) {
		((std::println("{}", typeof(xs))), ...);
	}, std::tuple{0, 0., '0', "0"});
}
