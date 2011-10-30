#!/usr/bin/perl 
#===============================================================================
#
#         FILE: refs_syntax.pl
#
#  DESCRIPTION: references examples
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 10/30/2011 10:36:39
#===============================================================================

use strict;
use warnings;
use Carp;

use List::Util qw/sum/;

sub hello {
    print "Hello World\n";
}

sub gen_list {
    return [2, 3, 5, 6, 5, 4, 3];
}


sub larger_sum {
    my ($l1_ref, $l2_ref) = @_;

    my $sum1 = sum(@$l1_ref);
    my $sum2 = sum(@$l2_ref);

    return ($sum1 > $sum2) ? $sum1 : $sum2;
}

{
    my @list1 = (2, 3, 5, 9);
    my @list2 = (5, 3, 2, 7);

# Create a reference with \@
    my $l2_ref = \@list1;
    my $l1_ref = \@list2;

# dereference with @$
    my @copy   = @$l1_ref;
    my $first  = $l1_ref->[0];

    my %currencies = (
        ISR => 'NIS',
        EUR => 'EURO',
        USA => 'Dollar',
    );

    my $h_ref = \%currencies;
    my %copy = %$h_ref;
    my $coin = $h_ref->{ISR};

    my $x     = 7;
    my $x_ref = \$x;
    $$x_ref = 9;

    print $$x_ref, " == ", 7, "\n";

    my $f_ref = \&hello;
    $f_ref->();

}
################################
#
# Use a ref from outside
#

my $gen_list = gen_list();

sum @$gen_list;
sum @{ gen_list() };

print $gen_list->[2];

#################################
# 
# 

my $al_ref = [1, 2, 3];
my $ah_ref = {
    Israel => 'Bibi',
    USA    => 'Obama',
    France => 'Nicholas',
};

my $af_ref = sub {
    print "I have no name ...:( \n";
};

my $people = [
    { name => 'John', age => 20 },
    { name => 'Jane', age => 32 },
    { name => 'Jim',  age => 8 },
];

use Data::Dumper;
print Dumper($people);


######################################


my $arrayref = [qw/a.txt b.txt c.txt/];
$arrayref    = ['a.txt', 'b.txt', 'c.txt'];






