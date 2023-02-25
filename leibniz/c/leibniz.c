#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

bool is_even(int64_t n) {
    return n % 2LL == 0LL;
}

int64_t powersign(int64_t n) {
    return is_even(n) ? 1LL : -1LL;
}

double leibniz(int64_t n) {
    double s = 0.;
    for (int64_t i = 0LL; i <= n; i++) {
        s += (double)powersign(i) / (double)(2LL * i + 1LL);
    }
    return 4. * s;
}

int main(int argc, char * argv[]) {
    int64_t n = atoll(argv[1]);
    printf("%.16lf\n", leibniz(n));
}
