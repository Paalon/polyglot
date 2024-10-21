#include <vector>
#include <iostream>

int main() {
    auto xs = std::vector{"a", "b", "c"};

    xs.pop_back();
    xs.push_back("C");
    xs.erase(xs.begin());
    xs.insert(xs.begin(), "A");
    xs.erase(xs.begin() + 1);
    xs.insert(xs.begin() + 1, "B");

    for (auto const & x : xs) {
        std::cout << x << std::endl;
    }
}
