#!/usr/bin/perl 
#===============================================================================
#
#         FILE: packages.pl
#
#        USAGE: ./packages.pl  
#
#  DESCRIPTION: Using packages
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 10/31/2011 10:38:31
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;

our $x = 5;

{
    package foo;
    our $x = 7;
    print "x = $x\n";
}


print "x = $x\n";
print "x = $foo::x\n";

package foo;
our $x;
print "x = $x\n";


