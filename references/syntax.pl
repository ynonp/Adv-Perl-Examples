use strict;
use warnings;
use List::Util qw/sum shuffle/;
use feature ':5.10';
use Data::Dumper;


#########
# Perl References Syntax
#

my @l = (2, 3, 5, 9);
my @g = (1..50);

# Make a ref using the \ op
my $l_ref = \@l;
my $g_ref = \@g;

#############
# Hash refs
#

my %colors = (
    red   => '#FF0000',
    green => '#00FF00',
    blue  => '#0000FF',
);

$colors{white} = '#FFFFFF';

my $colors_ref = \%colors;

print Dumper(\%colors);

#################
# Subroutine References
#

my $f_ref = \&larger_sum;

###################
#
# Using Refs
#

push @$l_ref, 10;
say "10 = ", pop(@$l_ref);

my $second = $l_ref->[1];

###################

my $red_value = $colors_ref->{red};


##################
#
# $f_ref->(1, 2, 3);


##################



sub larger_sum {
    my ($l1_ref, $l2_ref) = @_;

    my @l1 = @$l1_ref;
    my @l2 = @$l2_ref;

    say "sum1 = ", sum(@l1);
    say "sum2 = ", sum(@l2);
}



####################
# Anonymous References
#



my $numbers_ref = [ 2, 5, 9, 11 ];

my $names_ref = {
    Bob  => 27,
    Mike => 29,
    Tim  => 33,
};

my $f1 = sub { print "Hello World\n" };

$f1->(2, 3);

my $f2 = sub {
    my ($x, $y) = @_;
    return $x * $y;
};

say $f2->(2, 3);
