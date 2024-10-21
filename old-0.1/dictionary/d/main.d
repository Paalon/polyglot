import std.stdio;

void main() {
    const dictionary = ["a": "apple", "b": "banana"];
    foreach (key, value; dictionary) {
        writefln("%s %s", key, value);
    }
}
