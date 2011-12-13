#!/usr/bin/perl 
#===============================================================================
#
#         FILE: intro.pl
#
#        USAGE: ./intro.pl  
#
#  DESCRIPTION: Prototypes are EVIL. Do not use
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 10/30/2011 16:08:44
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;

sub count($@) {
    my ($x, @l) = @_;
    return $x + (scalar @l);
}

sub bar {
    my ($x, $y, $z) = @_;

    return $x + $y + $z;
}

sub foo($$$) {
    my ($x, $y, $z) = @_;

    return $x + $y + $z;
}

my @l = (1, 2, 3);

print bar(@l), "\n";
print &foo(@l), "\n";

print bar(@l, 7, 9), "\n";
print foo(@l, 7, 9), "\n";
print foo(3, 5, 8), "\n";

