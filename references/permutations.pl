use strict;
use warnings;
use v5.14;
use Algorithm::Combinatorics qw/combinations permutations/;

my @numbers = qw/2 4 6 8/;
my @ops     = qw{* - + /};
my $goal    = 25;

my %ops = (
    'a+b' => sub { @_ == 2 ? $_[0] + $_[1] : "($_[0] + $_[1])" },
    'a-b' => sub { @_ == 2 ? $_[0] - $_[1] : "($_[0] - $_[1])" },
    'b-a' => sub { @_ == 2 ? $_[1] - $_[0] : "($_[1] - $_[0])" },
    'a*b' => sub { @_ == 2 ? $_[0] * $_[1] : "($_[0] * $_[1])" },
    'a/b' => sub { @_ == 2 ? $_[0] / $_[1] : "($_[0] / $_[1])" },
    'b/a' => sub { @_ == 2 ? $_[1] / $_[0] : "($_[1] / $_[0])" },
);



#######################################################
# Program Main
#
my @parsed_ops = parse_ops(@ops);

OUT: foreach my $np ( permutations( \@numbers ) ) {
    foreach my $op ( permutations( \@parsed_ops) ) {

        my $sol;
        eval {
            $sol = solves([@$np], $op, $goal);
        };

        if ( $sol ) {
            say "sol = $sol";
            last OUT;
        }
    }
}


###############################################
# Subroutine Definitions
#

sub solves {
    my ($numbers, $ops, $goal) = @_;

    my $sol = $numbers[-1];

    while ( @$numbers > 1) {
        my ($n1, $n2, $op) = (pop $numbers, pop $numbers, pop $ops);
        push $numbers, $op->($n1, $n2);

        $sol = $op->($sol, $n2, 'p');
    }

    my $guess = pop $numbers;

    if ( abs( $guess - $goal ) < 0.001 ) {
        return $sol;
    } else {
        return;
    }
}

sub parse_ops {
    my @parsed;

    foreach my $op (@_) {
        given ($op) {
            when ('+') { push @parsed, $ops{'a+b'} };
            when ('*') { push @parsed, $ops{'a*b'} };
            when ('-') { push @parsed, $ops{'a-b'}, $ops{'b-a'} };
            when ('/') { push @parsed, $ops{'a/b'}, $ops{'b/a'} };
        }
    }
    return @parsed;
}

