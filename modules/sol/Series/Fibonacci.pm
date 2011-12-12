package Series::Fibonacci;
#
#===============================================================================
#
#         FILE: Fibonacci.pm
#
#  DESCRIPTION: Write A Series::Fibonacci module
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/08/2011 09:15:00
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;

use base 'Exporter';
our @EXPORT_OK = qw/is_series get_series_in_range next_in_series/;

# True if every element in the series after the second
# is the sum of the two elements preceeding it
sub is_series {
    my (@numbers) = @_;

    return 1 if ( @numbers <= 2 );

    for (my $i=2; $i < @numbers; ++$i ) {
        return if $numbers[$i] != $numbers[$i-1] + $numbers[$i-2];
    }
    return 1;
}

my @fib = (0, 1);

sub get_series_in_range {
    my ($start, $end) = @_;

    for ( my $i = @fib; $i < $end; ++$i ) {
        $fib[$i] = $fib[$i-1] + $fib[$i-2];
    }

    return @fib[$start..$end];
}

sub next_in_series {
}

1;

