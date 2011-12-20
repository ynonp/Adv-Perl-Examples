use strict;
use warnings;

my %count;

while (<>) {
    $count{$_} += 1 for split;

    #my @words = split;
    #foreach my $word (@words) {
        #$count{$word} += 1;
    #}
}

while (my ($word, $count) = each %count) {
    print "$word appears $count times\n";
}
