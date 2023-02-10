public class UTF8 {
    public static void main(String[] args) {
        for (int n: "🍎 and 🍏".codePoints().toArray()) {
            System.out.printf("%c\n", n);
        }
    }
}