use strict;
use warnings;
use Getopt::Std;
use Data::Dumper;

my %opts;

getopts('oif:', \%opts);

print Dumper(\%opts);
