#include <iostream>

using std::cout, std::endl;

int main() {
    for (auto n = 1; n <= 50; n++) {
        if (n % 3 == 0 && n % 5 == 0) {
            cout << "fizz buzz" << endl;
        } else if (n % 3 == 0) {
            cout << "fizz" << endl;
        } else if (n % 5 == 0) {
            cout << "buzz" << endl;
        } else {
            cout << n << endl;
        }
    }
}