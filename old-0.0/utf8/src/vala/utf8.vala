void main() {
    unichar c;
    for (int i = 0; "🍎 and 🍏".get_next_char (ref i, out c);) {
        stdout.printf ("%s\n", c.to_string ());
    }
}
