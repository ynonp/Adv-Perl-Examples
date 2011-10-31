#!/usr/bin/perl 
#===============================================================================
#
#         FILE: package_subs.pl
#
#        USAGE: ./package_subs.pl  
#
#  DESCRIPTION: packages and subroutines
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 10/31/2011 10:44:20
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;

sub foo { warn 'Im foo' }


{
    package p;
    sub foo { warn 'Im p::foo' }
}

foo();
p::foo();







