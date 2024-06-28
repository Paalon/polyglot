use strict;
use warnings;
use utf8;

sub powersign {
    my ($n) = @_;
    if ($n % 2 == 0) {
        return 1;
    } else {
        return -1;
    }
}

sub leibniz {
    my ($n) = @_;
    my $s = 0;
    for (my $i = 0; $i <= $n; $i++) {
        $s += powersign($i) / (2 * $i + 1)
    }
    return 4 * $s;
}

print leibniz(@ARGV);
print "\n";
