use strict;
use warnings;

sub add_x {
    my ($x) = @_;

    return sub {
        my ($y) = @_;
        return $x + $y;
    }
}

my $add_2 = add_x(2);
my $add_5 = add_x(5);

print $add_2->(10), $add_5->(10), "\n";