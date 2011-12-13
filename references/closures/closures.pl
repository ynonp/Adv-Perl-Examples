#!/usr/bin/perl 
use strict;
use warnings;
use Carp;


sub make_counter {
    my $n = 10;

    return sub {
        $n -= 1;

        warn 'In inner function: n = ', $n;

        if ( $n <= 0 ) {
            die 'Muhahhahhaha';
        }

        return $n;
    }
}

sub add_x {
    my ($x) = @_;

    return sub {
        my ($y) = @_;
        return $x + $y;
    }
}

my $countdown = make_counter;
my $t         = make_counter;

# $countdown->() for (1..100);
my $n = $countdown->();
$t->();
$t->();
$t->();
$countdown->();


my $add_2 = add_x(2);
my $add_5 = add_x(5);
my $add_7 = add_x(7);

print $add_2->(5);












