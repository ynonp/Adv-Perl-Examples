use strict;
use warnings;
use Tk;

my $mw = MainWindow->new;

sub generate_button_handler {
    my ($btn_id) = @_;
    return sub {
        print "Clicked: $btn_id\n";
    }
}

foreach my $btn_id (1..10) {
    my $btn = $mw
                ->Button(
                    -text    => $btn_id, 
                    -command => generate_button_handler($btn_id) )
                ->grid( -column => $btn_id / 3, -row => $btn_id % 3);
}

MainLoop;
