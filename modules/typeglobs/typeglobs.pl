#!/usr/bin/perl 
#===============================================================================
#
#         FILE: typeglobs.pl
#
#        USAGE: ./typeglobs.pl  
#
#  DESCRIPTION: package namespace table examples
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 10/31/2011 09:49:24
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;

our $name = "foo";
our @name = (2, 3);
sub name  { "hello" }

our $t = 5;

print ${$main::{name}}, "\n";


$main::{test} = \5;

{
    our $test;
    print "wtf !? $test\n";
}

for ( 1..10 ) {
    my $name = "add_$_";
    $main::{$name} = sub {
        print "My name is $name\n";
    };
}


add_2();





