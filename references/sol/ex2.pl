#!/usr/bin/perl 
#===============================================================================
#
#         FILE: ex2.pl
#
#        USAGE: ./ex2.pl  
#
#  DESCRIPTION: Implement a function that takes a list ref and a value, 
#               and adds that value to the list
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 10/30/2011 14:30:30
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;


sub add_to_list {
    my ($l_ref, $el) = @_;

    croak 'Invalid Argument' 
        if ref($l_ref) ne 'ARRAY';

    push @$l_ref, $el;
}

my @l = (2, 3, 4);

add_to_list(\@l, 7);




