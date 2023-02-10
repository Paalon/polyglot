<?php
for ($n = 1; $n <= 50; $n++) {
    if ($n % 3 == 0 && $n % 5 == 0) {
        echo 'fizz buzz';
    } elseif ($n % 3 == 0) {
        echo 'fizz';
    } elseif ($n % 5 == 0) {
        echo 'buzz';
    } else {
        echo $n;
    }
    echo PHP_EOL;
}
?>