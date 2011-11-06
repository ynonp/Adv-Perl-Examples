use strict;
use warnings;

use Term::ANSIColor;

my @colors = qw/red blue yellow magenta cyan/;

foreach my $clr (@colors) {
    print color $clr;
    print "Cool im $clr\n";
    print color 'reset';
}
