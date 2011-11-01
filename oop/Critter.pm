package Critter;
#
#===============================================================================
#
#         FILE: Critter.pm
#
#  DESCRIPTION: Our first OOP program ... yeah :)
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/01/2011 10:33:16
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;

sub new {
    my ($cls, $age)    = @_;
    my $instance = \$age;

    bless $instance, $cls;
    return $instance;
}

sub hello {
    my ($age_ref) = @_;

    my $age = $$age_ref;
    print "Im a happy critter of $age years old\n";
}


sub make_noise {
    warn "Args: @_";
    print "Ouch !\n";
}


1;

