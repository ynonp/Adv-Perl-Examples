#
#===============================================================================
#
#         FILE: Aliens.pm
#
#  DESCRIPTION: Welcomes the aliens
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/07/2011 14:48:52
#     REVISION: ---
#===============================================================================
package Aliens;

use warnings;
use strict;
use Carp;
use Term::ANSIColor;

use base 'Exporter';

our @EXPORT    = qw/hello/;
our @EXPORT_OK = qw/use_secret_weapon hello/;

sub traditional_greeting { "Take me to your leader" }

# only use inside the file
my $emergency_weapon_never_use = sub {
    print "Lets be friends\n";
};

sub hello {
    print color 'red';
    print traditional_greeting, "\n";
    print color 'reset';
}

sub use_secret_weapon {
    print color 'green';
    print "pow pow pow\n";
    print color 'reset';
}




1;
