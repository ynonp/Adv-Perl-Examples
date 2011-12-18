#!/usr/bin/env perl

package Queue;
use Moose;

has 'q' => (
    is => 'ro',
    isa => 'ArrayRef[Int]',
    default => sub { [] },
    traits => [qw/Array/],
    handles => {
        add_item => 'push',
        next_item => 'shift',
    },
);

package main;
my $q = Queue->new;
$q->add_item(10, 20);

use Data::Dumper;
warn Dumper($q->q);