package Person;
#
#===============================================================================
#
#         FILE: Person.pm
#
#  DESCRIPTION: A Person class with name and age
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/01/2011 11:00:54
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;

sub new {
    my ($cls, %data) = @_;

    my $instance = {
        name => 'Anonymous',
        age => -1,
        %data,
    };

    bless $instance, $cls;
    return $instance;
}

sub set_age {
    my ($person_ref, $val) = @_;
    $person_ref->{age} = $val;
}

sub hello {
    my ($person_ref) = @_;

    print $person_ref->{name}, " is ", $person_ref->{age}, " years old\n";
}


1;

