package Person;

sub new {
    my $cls    = shift;

    my $self = {
        name => 'James',
        age  => 19,
        @_
    };

    bless $self, $cls;
    return $self;
}

sub get_name {
    my $self = shift;
    return $self->{name};
}

sub set_name {
    my $self = shift;
    my ($val) = @_;

    $self->{name} = $val;
}

package Student;
use base 'Person';

sub show_grades {
    print "98\n";
}



package main;
my $p = Student->new(name => 'Billy');

$p->show_grades;
print $p->get_name;


