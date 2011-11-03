use strict;
use warnings;

my @l = (2, 3, 5);
my $l_ref = \@l;

push @l, 10;
print "@$l_ref\n";

my @foo = [10, 20, 30];
push @foo, 50;

print @foo;
