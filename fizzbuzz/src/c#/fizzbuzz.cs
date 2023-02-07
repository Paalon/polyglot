using System;

public class FizzBuzz {
    public static void Main() {
        for (int n = 1; n <= 50; n++) {
            if (n % 3 == 0 && n % 5 == 0) {
                Console.WriteLine("fizz buzz");
            } else if (n % 3 == 0) {
                Console.WriteLine("fizz");
            } else if (n % 5 == 0) {
                Console.WriteLine("buzz");
            } else {
                Console.WriteLine(n);
            }
        }
    }
}
