use strict;
use warnings;

use IO::File;

my $filename = shift or die "Usage: $0 <filename>";

my $fh = IO::File->new($filename, "r");
while (my $line = <$fh>) {
    printf("%0.2d %s", $fh->input_line_number, $line);
}
$fh->close;
