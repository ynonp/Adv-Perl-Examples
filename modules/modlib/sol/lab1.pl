use strict;
use warnings;

use File::Find;
use Storable;

my $needles;

my $STATE_FILE = 'state.bin';
my $new_files_count = 0;

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
            $new_files_count += 1 if ! exists $needles->{$filename};
            $needles->{$filename} = 1;
        }
    }

    close $fh;
}

restore_state;

# set all values to 0
$needles->{$_} = 0 for (keys %$needles);

# For each file, increase its value in the dictionary
find(\&wanted, ".");
print "total: $new_files_count\n";

# delete all entries with value == 0
# They're leftovers from previous rounds that were not
# found in this one
foreach my $filename (keys %$needles) {
    delete $needles->{$filename} if ! $needles->{$filename};
}

save_state;



