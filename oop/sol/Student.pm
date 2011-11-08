package Student;

#
#===============================================================================
#
#         FILE: Student.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/01/2011 14:12:50
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;
use Person;

use base 'Person';
#our @ISA = qw/Person/;

sub set_grade {
    my ($self, $grade) = @_;
    $self->{grade} = $grade;
}

sub init {
    my ($self, %data) = @_;

    $self->SUPER::init(%data);
    $self->{grade} = $data{grade};

}

sub get_grade {
    my ($self) = @_;
    return $self->{grade};
}

sub is_smart {
    my ($self) = @_;

    return $self->get_grade > $self->get_age;
}


1;

