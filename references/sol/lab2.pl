#!/usr/bin/perl 
#===============================================================================
#
#         FILE: lab2.pl
#
#        USAGE: ./lab2.pl  
#
#  DESCRIPTION: Add a (key, value) to a hash
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/06/2011 11:16:50
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;
use Data::Dumper;

my %money = (
    USA    => 'Dollar',
    Israel => 'NIS',
);

sub add_to_hash {
    my ($h_ref, $k, $v) = @_;

    croak 'First arg was NOT a hashref'
        if ref($h_ref) ne 'HASH';

    $h_ref->{$k} = $v;
}

add_to_hash(\%money, 3, 5);
print Dumper(\%money);








