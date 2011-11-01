#!/usr/bin/perl 
#===============================================================================
#
#         FILE: critter.pl
#
#        USAGE: ./critter.pl  
#
#  DESCRIPTION: Punching some critters
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/01/2011 10:34:48
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;
use Critter;

my $x_ref = Critter->new(16);
my $friend = Critter->new(8);

print $$x_ref, "\n";

$x_ref->make_noise();

$x_ref->hello;
Critter::hello($x_ref);

$friend->hello;
Critter::hello($friend);










