#!/usr/bin/perl 
#===============================================================================
#
#         FILE: intro.pl
#
#        USAGE: ./intro.pl  
#
#  DESCRIPTION: Moose Introduction
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/01/2011 15:53:00
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;

package Person;
use Moose;

has 'name', is => 'ro', required => 1;

package main;
my $p = Person->new(name => 'Ynon');

# $p->name('James');

print $p->name, "\n";





