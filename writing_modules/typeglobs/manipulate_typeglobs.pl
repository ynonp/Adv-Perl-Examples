#!/usr/bin/perl 
#===============================================================================
#
#         FILE: manipulate_typeglobs.pl
#
#        USAGE: ./manipulate_typeglobs.pl  
#
#  DESCRIPTION: Using typeglob manipulations to
#               create cool functions dynamically
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 10/31/2011 10:08:04
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;

#'Be <font color="red">VERY</font> very careful <font color="blue">Today</font>';

#"Be ", red("VERY"), " very careful ", blue("Eugine");

my @colors = qw/red blue green yellow purple/;

foreach my $clr (@colors) {
    $main::{$clr} = sub { "<font color=\"$clr\">@_</font>" };
}

print "Be ", purple("careful"), " with that ", red("Axe"), " Eugine\n";


