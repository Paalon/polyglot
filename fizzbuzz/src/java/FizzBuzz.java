public class FizzBuzz {
    public static void main(String[] args) {
        for (int n = 1; n <= 50; n++) {
            if (n % 15 == 0) {
                System.out.println("fizz buzz");
            } else if (n % 3 == 0) {
                System.out.println("fizz");
            } else if (n % 5 == 0) {
                System.out.println("buzz");
            } else {
                System.out.println(n);
            }
        }
    }
}
