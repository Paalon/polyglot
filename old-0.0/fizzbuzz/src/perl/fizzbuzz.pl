use strict;
use warnings;
for my $n (1..50) {
    if ($n % 3 == 0 && $n % 5 == 0) {
        print "fizz buzz\n";
    }
    elsif ($n % 3 == 0) {
        print "fizz\n";
    }
    elsif ($n % 5 == 0) {
        print "buzz\n";
    }
    else {
        print "$n\n";
    }
}
