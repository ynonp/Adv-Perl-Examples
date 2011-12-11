use strict;
use warnings;

use Tk;

my $w = MainWindow->new;
$w->Label(-text => "Hello World")->pack;

MainLoop;
