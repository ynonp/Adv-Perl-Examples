use strict;
use warnings;

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

