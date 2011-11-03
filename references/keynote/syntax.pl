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
print scalar @$nested_ref, "\n";

my $p1 = { name => 'Tom', age => 18 };
my $p2 = { name => 'Tim', age => 21 };
my $p3 = { name => 'Martha', age => 22 };

my @people = ($p1, $p2);
$p1->{friends} = [$p2, $p3];

use Data::Dumper;
print Dumper(\@people);
}

{

my $actions = [
    sub { print "hello\n" },
    sub { print 2 + 2     },
    sub { die "Muhahaha"  },
];

$actions->[int rand(@$actions)]->();

}

{

sub gen_colors { [qw/red blue green/] }

my $colors = gen_colors;
print $colors->[1], "\n";


}

{
use List::Util qw/max/;

sub max_value {
    my ($f1, $f2, $f3, $data) = @_;
    return max( $f1->($data),
                $f2->($data),
                $f3->($data));
}

sub add_2 { $_[0] + 2 }
sub mul_2 { $_[0] * 2 }
sub triple { $_[0] * 3 }

print max_value(\&add_2, \&mul_2, \&triple, 3);

}

