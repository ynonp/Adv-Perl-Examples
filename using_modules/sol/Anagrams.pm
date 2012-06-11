package Anagrams;

use strict;
use warnings;
use v5.14;

use base 'Exporter';
our @EXPORT = qw/get_random_anagram get_anagram_for_word read_file/;

my $anagrams;

sub read_file {
    my ( $filename ) = @_;

    open my $fh, '<', $filename;
    while (<$fh>) {
        chomp;
        my $key = encode($_);

        $anagrams->{$key} ||= [];

        push $anagrams->{$key}, $_;
    }
    close $fh;
}

sub get_random_anagram {
    my @keys = keys %$anagrams;

    my $rnd = int(rand(@keys));
    my $random_key = $keys[$rnd];

    return $anagrams->{$random_key};
}

sub get_anagram_for_word {
    my ( $word ) = @_;

    my $key = encode($word);
    return $anagrams->{$key};
}

# Take a word and return a hash key
# made from the letters sorted alphabetically
sub encode {
    my ( $word ) = @_;
    my @letters = split //, $word;
    return join('', sort @letters);
}


1;













