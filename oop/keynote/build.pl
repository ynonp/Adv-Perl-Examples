package Person;
use Moose;

has 'pet', is => 'ro', builder => '_build_pet';
has 'age', is => 'rw', required => 1;

sub _build_pet {
    my $self = shift;
    if ( $self->age < 13 ) {
        return "None";
    } else {
        return "Dog";
    }
}

package main;
my $p = Person->new(age => 10);
print $p->pet;
