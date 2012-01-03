use strict;
use warnings;
use feature ':5.10';
use List::Util qw/sum reduce/;
use autodie;

my %db;

{
    local @ARGV = qw/a.txt b.txt/;
    while (<>) {
        chomp;
        my ($k, $v) = split /=/;
        $db{$ARGV}->{$k} = $v;
    }
}

say $db{'a.txt'}->{color};



