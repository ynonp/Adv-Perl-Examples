use strict;
use warnings;
use Tk;
use File::Slurp;

sub load_file {
    my ($editor, $filename) = @_;
    my $content = read_file($filename);
    $editor->Insert($content);
}

sub save_file {
    my ($editor, $filename) = @_;

    return sub {
        my $content = $editor->get('1.0', 'end');
        write_file($filename, $content);
    }
}

my $USAGE = <<"END";
    Usage: editor.pl <filename>

    This is a simple text editor written in Tk
    Hope you find it useful
END

my $filename = shift or die $USAGE;

my $w = MainWindow->new;
my $t = $w->Text->pack;
my $save_btn = $w->Button(
    -text => 'Save',
    -command => save_file($t, $filename),
)->pack(-expand => 'true', -fill => 'both');

load_file($t, $filename);

MainLoop;
