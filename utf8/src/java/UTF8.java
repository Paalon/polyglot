public class UTF8 {
    public static void main(String[] args) {
        String str = "🍎 and 🍏";
        int offset = 0, strLen = str.length();
        while (offset < strLen) {
            int curChar = str.codePointAt(offset);
            offset += Character.charCount(curChar);
            System.out.printf("%c\n", curChar);
        }
    }
}