use strict;
use warnings;
use List::Util qw/sum/;

sub sum_is_larger {
    my $length_of_first_list = shift;
    my @first_list           = splice( @_, 0, $length_of_first_list);
    my @second_list          = @_;

    return ( sum(@first_list) > sum(@second_list) );
}

my @l = (2, 3, 5);
my @g = (1, 4);

if ( sum_is_larger(scalar(@l), @l, @g) ) {
        print "l is better\n";
}

