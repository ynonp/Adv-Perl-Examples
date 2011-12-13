package Person;
use Mouse;

has 'name', is => 'ro', isa => 'Str';
has 'age', is => 'rw', isa => 'Int';

package main;

my $p1 = Person->new(name => 'Jimmy', age => 10);
my $p2 = Person->new(name => 'Tommy', age => 'foo');

print "jimmy is: ", $p1->age, " years old\n";


