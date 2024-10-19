function powersign(n) {
    if (n % 2 === 0) {
        return 1;
    } else {
        return -1;
    }
}

function leibniz(n) {
    let s = 0;
    for (let k = 0; k <= n; k++) {
        s += powersign(k) / (2 * k + 1);
    }
    return 4 * s;
}

const n = parseInt(process.argv[2]);
process.stdout.write(`${leibniz(n)}\n`);
