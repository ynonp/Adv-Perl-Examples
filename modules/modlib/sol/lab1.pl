use strict;
use warnings;

use File::Find;
use Storable;

my $needles;

my $STATE_FILE = 'state.bin';
my $counter = 0;

sub restore_state {
    eval {
        $needles = retrieve($STATE_FILE);
    };
}

sub save_state {
    store($needles, $STATE_FILE);
}

sub wanted {
    my $filename = $_;

    open my $fh, '<', $filename;

    while (<$fh>) {
        if ( /holy grail/ ) {
            $counter += 1 if ! exists $needles->{$filename};
            $needles->{$filename} = 1;
        }
    }

    close $fh;
}

restore_state;

# set all values to 0
$needles->{$_} = 0 for (keys %$needles);

find(\&wanted, ".");
print "total: $counter\n";

# delete all entries with value == 0
delete $needles->{$_} for (grep { $needles->{$_} == 0 } keys %$needles);

save_state;



