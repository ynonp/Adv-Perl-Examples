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
