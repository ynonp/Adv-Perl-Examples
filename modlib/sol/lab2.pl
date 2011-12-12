use strict;
use warnings;

use Getopt::Std;
use Term::ANSIColor;
use Data::Dumper;

my $opts = {};
getopts('c:', $opts);

my $color = $opts->{c} || 'blue';

print color $color;
while (<>) {
    print;
}
print color 'reset';


