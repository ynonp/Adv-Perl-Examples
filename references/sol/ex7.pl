#!/usr/bin/perl 
#===============================================================================
#
#         FILE: ex7.pl
#
#        USAGE: ./ex7.pl  
#
#  DESCRIPTION: Implement a function called larger_than that 
#               takes a scalar and multiple list refs, and 
#               returns a list composed of all the input 
#               elements in the list refs that are larger 
#               than the given scalar 
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/07/2011 09:56:34
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;
use Scalar::Util qw/looks_like_number/;

sub list_larger_than {
    my ($pivot, @list) = @_;
    return grep { $_ >= $pivot }
            grep { looks_like_number($_) } @list;
}

sub larger_than {
    my ($pivot, @lists) = @_;

    my @results;

    foreach my $l_ref (@lists) {
        croak 'Not an array' 
            if ref($l_ref) ne 'ARRAY';

        push @results, list_larger_than($pivot, @$l_ref);
    }

    return @results;
}

my @l2     = (1, 3, 100);
my @l1     = (2, 5, 10, 15);
my @names  = qw/Tim Tom Tanya/;
my @result = larger_than(10, \@l1, \@l2, \@names);

print "@result == 10 15 100\n";

