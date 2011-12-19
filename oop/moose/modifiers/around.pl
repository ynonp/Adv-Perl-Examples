package AroundExample;
use Mouse;
use feature ':5.10';

sub foo { print "In Foo\n" }

around 'foo' => sub {
    my $orig = shift;
    my $self = shift;

    say "Around: before calling method";
    $self->$orig(@_);
    say "Aroung: after calling method";
};

package main;
my $f = AroundExample->new;
$f->foo;
