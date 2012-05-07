use strict;
use warnings;
use Tk;

sub find_in_files {
    my ($term) = @_;
    local @ARGV = glob('*');
    my %needles;

    while(<>) {
        $needles{$ARGV} += 1 if /$term/;
    }
    return keys %needles;
}

##########################################
#

sub generate_find_handler {
    my ($textentry, $lb) = @_;

    return sub {
        $lb->delete(0, 'end');

        my $term = $textentry->get();
        my @results = find_in_files($term);

        $lb->insert('end', @results);
    }
}

########################################
#

my $w = MainWindow->new;
$w->Label(-text => "File Finder")->pack;
my $textentry = $w->Entry(-text => "Text To Find")->pack;

my $l = $w->Listbox->pack;
$w->Button(
    -text    => "Find",
    -command => generate_find_handler($textentry, $l)
)->pack(-side => 'right');

$w->Button(
    -text    => "Exit",
    -command => sub { exit },
)->pack(-side => 'left');

$textentry->bind('<Key-Return>', 
                    generate_find_handler($textentry, $l));
MainLoop;