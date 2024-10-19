import std.stdio;

void main() {
    for (uint n = 1; n <= 50; n++) {
        if (n % 3 == 0 && n % 5 == 0) {
            writeln("fizz buzz");
        } else if (n % 3 == 0) {
            writeln("fizz");
        } else if (n % 5 == 0) {
            writeln("buzz");
        } else {
            writeln(n);
        }
    }
}
