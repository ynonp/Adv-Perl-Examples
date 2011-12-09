package Writer;
use Moose::Role;

requires 'write';

package Logger;
use Moose;
has 'writer' => (
    is => 'ro', 
    does => 'Writer', 
    required => 1,
);

package ScreenWriter;
use Moose;
with 'Writer';

sub write {
    print @_;
}

package main;
my $w = ScreenWriter->new;
my $l = Logger->new(writer => $w);
