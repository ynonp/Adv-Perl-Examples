package Breakable;
use Moose::Role;

has 'is_broken', is => 'rw', isa => 'Bool';

sub break {
    my $self = shift;
    print "Ouch\n" if ! $self->is_broken;
    $self->is_broken(1);
}

sub fix {
    my $self = shift;
    print "Works now\n" if $self->is_broken;
    $self->is_broken(0);
}

package Glass;
use Moose;

with 'Breakable';

package main;
my $g = Glass->new;
$g->break;
