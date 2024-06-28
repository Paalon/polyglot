import std.range.primitives: empty;
import std.utf: decodeFront;
import std.stdio: writeln;

void main() {
    auto text = "🍎 and 🍏";
    while (!text.empty) {
        writeln(text.decodeFront);
    }
}