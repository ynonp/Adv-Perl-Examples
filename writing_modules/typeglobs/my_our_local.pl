#!/usr/bin/perl 
#===============================================================================
#
#         FILE: my_our_local.pl
#
#        USAGE: ./my_our_local.pl  
#
#  DESCRIPTION: SCoping types in perl, and their usages
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 10/31/2011 09:19:36
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;

my $z;

sub foo {
    my $x;
    our ($y, $t);
    print "x = $x\n";
    print "y = $y\n";
    print "z = $z\n";
    print "t = $t\n";
}

sub bar {
    my $x;
    our $y;

    $x = 5;
    $y = 7;
    $z = 9;
}

sub buz {
    our $t = 9;
    {
        local $t = 5;
        print "t = $t\n";
        foo;
    }

    print "t = $t\n";
}



{
    local $,='|';
    print 2, 3, 4, 5;
}

#bar;
#foo;








