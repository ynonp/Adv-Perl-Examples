use strict;
use warnings;
use Fatal qw/open close/;
#use autodie;

sub count_lines {
    my ($filename) = @_;
    my $lines = 0;

    open my $f, '<', $filename;
    $lines++ while (<$f>);
    close $f;

    return $lines;
}

print count_lines(@ARGV), "\n";
