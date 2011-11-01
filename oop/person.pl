#!/usr/bin/perl 
#===============================================================================
#
#         FILE: person.pl
#
#        USAGE: ./person.pl  
#
#  DESCRIPTION: Working with ppl
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/01/2011 11:01:12
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;
use Person;

my $p = Person->new(name => 'Tom', age => 20);
my $q = Person->new(name => 'Tim', age => 19);

$p->set_age(25);

$p->{age} = -8;

$p->hello;
$q->hello;



