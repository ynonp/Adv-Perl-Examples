use strict;
use warnings;

use IO::File;
my $filename = shift or die "Usage: $0 <filename>";

my $fh = IO::File->new($filename, "w");
for my $counter (1..10) {
    $fh->print("*" x $counter, "\n" );
}
$fh->close;
