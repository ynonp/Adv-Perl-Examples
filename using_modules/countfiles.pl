use strict;
use warnings;
use File::Find;

my $ext = '.pl';

my $count = 0;

# the wanted function is called once for every
# path in the directory tree
sub wanted {
    # $_ is the name of the current file
    $count++ if /$ext$/
}

find(\&wanted, '.');
print "found $count pl files\n";
