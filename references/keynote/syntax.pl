use strict;
use warnings;

{
my (@l, %h, $x);
sub foo { }

# create a list ref with \@
my $l_ref = \@l;

# create a hash ref with \%
my $h_ref = \%h;

# create a scalar ref with \$
my $x_ref = \$x;

# create a subroutine ref with \&
my $f_ref = \&foo;

# note that assignment operator generates
# a copy operation
my @copy = @$l_ref;
my %copy = %$h_ref;
my $copy = $$x_ref;

# Direct element access from references
my $first  = $l_ref->[0];
my $val    = $h_ref->{key};
my $result = $f_ref->('x', 'y');

my $al_ref = [2, 3, 5];
my $ah_ref = {
    Adam   => 'Eve',
    Bonnie => 'Clyde',
};
}

{
# Nested lists
my $nested_ref = [1, 2, [3, 4, 3], [qw/a b c/]];

# prints 4
print $nested_ref->[2]->[1], "\n";

# prints b
print $nested_ref->[3]->[1], "\n";

# prints 4
print scalar @$nested_ref;
}
