use strict;
use warnings;

use DateTime;
my $now = DateTime->now;
my $month = $now->month_name;

print "We are in $month\n";
