use strict;
use warnings;

package Person;
use Moose;

has 'name', is => 'ro', isa => 'Str';
has 'age',  is => 'rw', isa => 'Int';

package main;
use feature ':5.10';

my $p = Person->new(name => "James");
say $p->name;
