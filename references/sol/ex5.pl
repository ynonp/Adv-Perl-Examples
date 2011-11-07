#!/usr/bin/perl 
#===============================================================================
#
#         FILE: 5.pl
#
#        USAGE: ./5.pl  
#
#  DESCRIPTION: Write a function that removes the 
#               first element from each array passed to it. 
#               The return value of the function should be 
#               the number of elements removed from all arrays.
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      VERSION: 1.0
#      CREATED: 11/07/2011 09:44:57
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;

sub chop_first {
    my $counter;

    foreach my $l_ref (@_) {
        croak "Argument $l_ref not an array ref"
            if ref($l_ref) ne 'ARRAY';

        my $first = shift @$l_ref;
        $counter++ if defined($first);
    }
    return $counter;
}

my @l1;
my @l2 = (0, 2, 4, 6, 8);
my @names = qw/Bill John Katie/;

my $result = chop_first(\@l1, \@l2, \@names);
print "$result == 2\n";













