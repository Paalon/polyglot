int64 powersign (int64 n) {
	return n % 2 == 0 ? 1 : -1;
}

double leibniz (int64 n) {
	var s = 0.0;
	int64 k = 0;
	for (k = 0; k <= n; k++) {
		s += (double) powersign (k) / (double) (2 * k + 1);
	}
	return 4 * s;
}

void main (string[] args) {
	var n = int64.parse(args[1]);
	stdout.printf ("%.16lf\n", leibniz (n));
}
