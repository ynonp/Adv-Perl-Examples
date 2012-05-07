package Series::Fibonacci;

use base 'Exporter';

use strict;
use warnings;

our @EXPORT = qw/is_series next_in_series series_in_range/;

my @fib = (0, 1);

sub is_series {
    my @numbers = @_;

    while (@numbers > 2) {
        return if $numbers[-1] != $numbers[-2] + $numbers[-3];
        pop @numbers;
    }

    return 1;
}

sub series_in_range {
    my ($start, $end) = @_;

    if ( $start < 0 ) {
        die 'Invalid start value';
    }

    if ( $end < $start ) {
        die 'Invalid end value';
    }

    push @fib, next_in_series(@fib)
        while $fib[-1] < $end;

    return grep { $_ > $start &&
                  $_ < $end } @fib;

}

sub next_in_series {
    my @numbers = @_;

    die 'Not a series'
        unless is_series(@numbers);

    return $numbers[-2] + $numbers[-1];
}


