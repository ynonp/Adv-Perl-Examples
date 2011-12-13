use strict;
use warnings;
use Tk;
use List::Util qw/shuffle/;

my @colors = qw/red blue green/;
my $l;
sub clicked {
    my ($clr) = shuffle @colors;
    $l->configure(-text => $clr );
}

my $w = MainWindow->new;
$l = $w->Label(-text => "red")->pack;

my $b = $w->Button(-text => "Click", -command => \&clicked)->pack;

MainLoop;