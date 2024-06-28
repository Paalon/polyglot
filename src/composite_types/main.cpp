#include <stdfloat>
#include <print>

struct Point {
    std::float64_t x;
    std::float64_t y;
};

int main() {
    auto const p = Point{1.0f64, 2.0f64};
    std::println("{}", p.x);
    std::println("{}", p.y);
}
