use strict;
use warnings;
use Tk;
use List::Util qw/shuffle/;

my @colors = qw/red blue green/;
my $w = MainWindow->new;
my $l = $w->Label(-text => "red")->pack;

my $b = $w->Button(-text => "Click", -command => sub {
        my ($clr) = shuffle @colors;
        $l->configure(-text => $clr );
    })->pack;

MainLoop;