use strict;
use warnings;
use Tk;


my $w = MainWindow->new;
$w->Label(-text => "File Finder")->pack;
my $textentry = $w->Entry(-text => "Text To Find")->pack;
$w->Listbox->pack;
$w->Button( -text => "Find");
$w->Button(-text => "Exit")->pack(-side => 'left');

MainLoop;