#!/usr/bin/perl 
#===============================================================================
#
#         FILE: ex1.pl
#
#        USAGE: ./ex1.pl  
#
#  DESCRIPTION: Implement a function that gets a hash ref, key and value - 
#               and inserts the new key/value into the hash
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 10/30/2011 14:17:58
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;
use Data::Dumper;

sub add_to_hash {
    my ($h_ref, $key, $val) = @_;

    croak 'Invalid argument' 
        if ! ( ref($h_ref) eq 'HASH' );

    $h_ref->{$key} = $val;
}


my %leader = (
    Israel => 'Bibi',
    USA    => 'Obama',
);

warn Dumper(\%leader);
add_to_hash(\%leader, 'Germany', 'Merkel');
warn Dumper(\%leader);

add_to_hash(7);




