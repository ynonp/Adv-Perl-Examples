#!/usr/bin/perl 
#===============================================================================
#
#         FILE: delegation.pl
#
#        USAGE: ./delegation.pl  
#
#  DESCRIPTION: Delegating functionality to attribute
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/01/2011 16:11:32
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;

package Bar;
use Moose;

sub mikki {
    print "In bar::Mikki\n";
}

sub eat {
    my $self = shift;
    print "Yummy ...\n";
    $self->mikki();
}

package Foo;
use Moose;
has 'bar', is => 'ro', isa => 'Bar', handles => [qw/eat/];

sub mikki {
    die 'Muhahahha';
}

package main;

my $b = Bar->new;
my $f = Foo->new(bar => $b);
$f->eat;












