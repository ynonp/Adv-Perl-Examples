package ForeverYoung;
use Mouse::Role;

after 'grow_up' => sub {
    my $self = shift;  
    $self->age($self->age - 1) 
};

package Person;
use Mouse;
with 'ForeverYoung';
has 'name', is => 'ro', isa => 'Str', required => 1;
has 'age', is => 'rw', isa => 'Int', required => 1;

sub grow_up {
    my $self = shift;
    $self->age($self->age + 1);
}


package main;
my $peter = Person->new(name => "Peter Pen", age => 14);

print "Peter is ", $peter->age, " years old\n";
print "Years pass...\n";
$peter->grow_up for (1..10);
print "Peter is ", $peter->age, " years old\n";