#!/usr/bin/perl 
#===============================================================================
#
#         FILE: ex3.pl
#
#        USAGE: ./ex3.pl  
#
#  DESCRIPTION: Implement map. Write a function called mymap that 
#               gets a code ref and a list, and runs the code for 
#               each element in the list, returning a list of the results
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 10/30/2011 14:41:11
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;

sub mymap {
    my ($f_ref, @data) = @_;

    croak 'Invalid Function' 
        if ref $f_ref ne 'CODE';

    my @results;

    foreach my $el (@data) {
        push @results, $f_ref->($el);
    }

    return @results;
}


my @data = (1, 2, 3, 4, 5);
my $code = sub { $_[0] * 2 };

print "@{ [ mymap($code, @data) ] } \n";











