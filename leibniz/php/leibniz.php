<?php
declare(strict_types=1);

function powersign($n) {
    if ($n % 2 == 0) {
        return 1;
    } else {
        return -1;
    }
}

function leibniz($n) {
	$s = 0;
    for ($i = 0; $i <= $n; $i++) {
        $s += powersign($i) / (2 * $i + 1);
    }
    return 4 * $s;
}

echo leibniz(intval($argv[1]));
echo PHP_EOL;
?>
