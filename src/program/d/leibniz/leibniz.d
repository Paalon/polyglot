import std.stdio;
import std.conv;

double powersign(long n) {
    if (n % 2 == 0) {
        return 1.0;
    } else {
        return -1.0;
    }
}

double leibniz(long n) {
    auto s = 0.0;
    foreach (i; 0 .. n + 1) {
        s += powersign(i) / (2.0 * i + 1.0);
    }
    return 4.0 * s;
}

void main(string[] args) {
    auto n = to!long(args[1]);
    writefln("%.16f", leibniz(n));
}
