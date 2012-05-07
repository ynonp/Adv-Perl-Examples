use strict;
use warnings;
use v5.14;
use File::Find;

sub check_file {
    my $filename = $_;
    return if ! -f;
    return unless /.pl$/;

    my %needles = (
        'use strict'   => 0,
        'use warnings' => 0,
    );

    open my $fh, '<', $_;

    while (<$fh>) {
        foreach my $text (keys %needles) {
            $needles{$text} += 1 if ( /$text/ );
        }
    }
    close $fh;

    my @missing = grep { $needles{$_} == 0 } keys %needles;

    say "File: $filename Missing: @missing" if @missing;
}

find( \&check_file, '.' );




