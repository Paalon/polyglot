for (let n = 1; n <= 50; n++) {
    if (n % 15 === 0) {
        process.stdout.write("fizz buzz\n");
    } else if (n % 3 == 0) {
        process.stdout.write("fizz\n");
    } else if (n % 5 === 0) {
        process.stdout.write("buzz\n");
    } else {
        process.stdout.write(`${n}\n`);
    }
}