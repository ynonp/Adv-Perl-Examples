#
#===============================================================================
#
#         FILE: ArithmeticProgression.pm
#
#  DESCRIPTION: ArithmeticProgression solution
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/01/2011 10:08:19
#     REVISION: ---
#===============================================================================
package Series::ArithmeticProgression;

use strict;
use warnings;
use Carp;

sub is_series {
    my (@numbers) = @_;
    my $diff = $numbers[1] - $numbers[0];

    for my $i (1..@numbers-1) {
        return if $numbers[$i] - $numbers[$i-1] != $diff;
    }

    return 1;
}

sub get_series_in_range {
}

sub next {
}



1;
