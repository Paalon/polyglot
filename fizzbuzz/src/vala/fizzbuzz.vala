void main () {
    for (int n = 1; n <= 50; n++) {
    	if (n % 3 == 0 && n % 5 == 0) {
    		stdout.printf ("fizz buzz\n");
    	} else if (n % 3 == 0) {
    		stdout.printf ("fizz\n");
    	} else if (n % 5 == 0) {
    		stdout.printf ("buzz\n");
    	} else {
    		stdout.printf ("%d\n", n);
    	}
    }
}
