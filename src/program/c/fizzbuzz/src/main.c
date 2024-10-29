#include <stdio.h>

int main() {
    for (int n = 1; n <= 50; n++) {
        if (n % 3 == 0 && n % 5 == 0) {
            printf("fizz buzz\n");
        } else if (n % 3 == 0) {
            printf("fizz\n");
        } else if (n % 5 == 0) {
            printf("buzz\n");
        } else {
            printf("%d\n", n);
        }
    }
}