#!/usr/bin/perl 
#===============================================================================
#
#         FILE: lab1.pl
#
#        USAGE: ./lab1.pl  
#
#  DESCRIPTION: Write a function that returns 
#               sum(@l1) - sum(@l2)
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/06/2011 11:09:10
#===============================================================================

use strict;
use warnings;
use Carp;
use List::Util qw/sum/;

sub diff {
    my ($l1_ref, $l2_ref) = @_;
    return sum(@$l1_ref) - sum(@$l2_ref);
}

print diff([1, 2, 3], [3, 2]);





