#!/usr/bin/perl 
#===============================================================================
#
#         FILE: Stack.pm
#
#        USAGE: ./Stack.pm
#
#  DESCRIPTION: Demo stack module
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/07/2011 14:39:57
#     REVISION: ---
#===============================================================================
package Stack;

use strict;
use warnings;
use Carp;
use base 'Exporter';

our @EXPORT = qw/mypush mypop count_usages/;

my @data;
my $usages = 0;

sub mypush {
    $usages += 1;
    push @data, @_;
}

sub mypop {
    $usages += 1;
    return pop @data;
}

sub count_usages {
    return $usages;
}

1;
