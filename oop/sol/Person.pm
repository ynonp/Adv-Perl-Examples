package Person;
#
#===============================================================================
#
#         FILE: Person.pm
#
#  DESCRIPTION: A Person class
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/01/2011 13:55:09
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;
use Scalar::Util qw/looks_like_number/;
use Hash::Util qw/lock_keys/;

sub new {
    my ($cls, %data) = @_;
    my $self = { };

    bless $self, $cls;

    $self->init(%data);

    lock_keys(%$self);

    return $self;
}

sub grow_up {
    my $self = shift;

    $self->{age} += 1;
}

sub init {
    my ($self, %data) = @_;

    $self->set_name($data{name});
    $self->set_age ($data{age});

    return $self;
}

sub get_name { 
    my ($self) = @_;
    return $self->{name};
}

sub set_name {
    my ($self, $name) = @_;
    croak 'Name cannot be empty' if length($name) == 0;
    $self->{name} = $name;
}

sub get_age {
    my ($self) = @_;
    return $self->{age};
}

sub set_age {
    my ($self, $age) = @_;
    croak 'Age must be numeric' if ! looks_like_number($age);
    croak 'Age must be > 0 and < 120' if ( $age < 0 ) || ( $age > 120 );
    
    $self->{age} = $age;
}



1;

