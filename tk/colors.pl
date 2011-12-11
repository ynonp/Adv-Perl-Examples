use strict;
use warnings;
use Tk;

my @colors = qw/red blue green white/;
my $w = MainWindow->new;
my $l = $w->Listbox->pack;
$l->insert('end', @colors);

$l->bind('<<ListboxSelect>>', sub {
        my ($index) = $l->curselection;
        print "Selected $index\n";
    });

MainLoop;