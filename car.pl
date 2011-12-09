package Car;
use Moose;

has 'speed', is => 'ro', isa => 'Num';

sub go {
    my $self = shift;
    print   "Vroom Vroom [speed: ",
            $self->speed, 
            "]\n";
}

package main;
my $c = Car->new(speed => 10);
$c->go;
