use strict;
use warnings;
use v5.14;
use File::Find;

# The lines that we want to find in the files
my @keywords = (
    'use strict',
    'use warnings'
);

# This function takes a filename and a list of keywords
# and returns a list of keywords missing from the file
sub missing_keywords_in_file {
    my ( $filename, @keywords ) = @_;

    # map creates a dictionary, where the keyword
    # is the key, and the value is 0
    my %needles = map { $_ => 0 } @keywords;

    # Now we open the file for reading, if
    # we failed, just skip and move on
    open my $fh, '<', $_ or return;

    while (<$fh>) {
        # and search for the keywords
        foreach my $text (keys %needles) {
            $needles{$text} += 1 if ( /$text/ );
        }
    }
    close $fh;

    my @missing = grep { $needles{$_} == 0 } keys %needles;
}

# File::Find entry point
# Gets the list of missing keywords and prints
# them on screen
sub check_file {
    return if ! -f;
    return unless /.pl$/;

    my $filename = $_;

    my @missing = missing_keywords_in_file( $filename, @keywords );

    say "File: $filename Missing: @missing" if @missing;
}

find( \&check_file, '.' );




