use strict;
use warnings;
use v5.14;
use Data::Dumper;

my %db;

while (<>) {
    my ($k, $v)    = /(\w+)  \s*=\s*  (\w+)/x;
    $db{$ARGV}{$k} = $v;
}

sub get_value {
    my ($filename, $prop) = @_;
    return $db{$filename}->{$prop};
}

sub where_is {
    my ($prop) = @_;

    grep { exists $db{$_}->{$prop} } keys %db;
}


print Dumper(\%db);
