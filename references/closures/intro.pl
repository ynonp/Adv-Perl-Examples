#!/usr/bin/perl 
#===============================================================================
#
#         FILE: intro.pl
#
#        USAGE: ./intro.pl  
#
#  DESCRIPTION: Closures Introduction
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 10/30/2011 15:37:47
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;

my $foo = 5;

sub what_is_foo { 
    return $foo; 
}


{
    my $x;

    sub remember_me {
        my ($val) = @_;
        $x = $val if defined($val);

        return $x;
    }

    sub inc {
        $x += 1;
    }
}


remember_me(5);
print remember_me(), "\n";

inc();
print remember_me(), "\n";
