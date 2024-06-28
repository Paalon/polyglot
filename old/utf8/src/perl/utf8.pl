use strict;
use warnings;
use utf8;
use open ':std', ':encoding(UTF-8)';

foreach my $char (split('', '🍎 and 🍏')) {
  print "$char\n";
}