package Logger;
use Mouse;
use strict;
use warnings;
use v5.14;
use Term::ANSIColor;

sub log {
    my $self = shift;
    print @_;
}

sub error {
    my $self = shift;
    print color 'red';
    print @_;
    print color 'reset';
}



1;
