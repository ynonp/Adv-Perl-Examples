package Person;
#
#===============================================================================
#
#         FILE: Person.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/01/2011 13:55:09
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;

sub new {
    my ($cls, %data) = @_;
    my $self = {};

    bless $self, $cls;

    $self->init(%data);

    return $self;
}

sub grow_up {
    my $self = shift;

    $self->{age} += 1;
}

sub init {
    my ($self, %data) = @_;

    $self->{name} = $data{name};
    $self->{age}  = $data{age};

    return $self;
}

sub get_name { 
    my ($self) = @_;
    return $self->{name};
}

sub set_name {
    my ($self, $name) = @_;
    $self->{name} = $name;
}

sub get_age {
    my ($self) = @_;
    return $self->{age};
}

sub set_age {
    my ($self, $age) = @_;
    $self->{age} = $age;
}



1;

