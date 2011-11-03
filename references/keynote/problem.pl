#!/usr/bin/perl
use strict;
use warnings;

sub longer {
    my (@l1, @l2) = @_;
    return @l1 > @l2 ? @l1 : @l2;
}
