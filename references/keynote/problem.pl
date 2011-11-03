#!/usr/bin/perl
use strict;
use warnings;

sub longer {
    my (@l1, @l2) = @_;
    return @l1 > @l2 ? @l1 : @l2;
}

sub longer_better {
    my $sz1 = shift;
    my @l1  = splice(@_, 0, $sz1);
    my $sz2 = shift;
    my @l2  = splice(@_, 0, $sz2);

    return @l1 > @l2 ? @l1 : @l2;
}

print longer_better(2, (2, 3), 3, (9, 8, 7));
