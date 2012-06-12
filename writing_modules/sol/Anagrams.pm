package Anagrams;

use strict;
use warnings;
use v5.14;
use Carp;

use base 'Exporter';
our @EXPORT = qw/get_random_anagram get_anagram_for_word read_file/;

my $anagrams;

###################
# SUB read_file
#
# INPUT file_name: the name of a file to read
# OUTPUT dictionary
#
# Function takes a file name of a file with words
# and creates a dictionary of all the anagrams.
#
# File format is one word each line
#
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

###################
# SUB get_random_anagram
#
# INPUT none
# OUTPUT array_ref
#
# Given the dictionary returned from read_file
# returns a random anagram as an array_ref.
#
sub get_random_anagram {
    croak 'You must call Anagrams::read_file before calling get_random_anagram'
        if ! ref ( $anagrams );

    my @keys = keys %$anagrams;

    my $rnd = int(rand(@keys));
    my $random_key = $keys[$rnd];

    return $anagrams->{$random_key};
}

###################
# SUB get_anagram_for_word
#
# INPUT word
# OUTPUT array_ref
#
# Given a word, returns all its anagrams
#
sub get_anagram_for_word {
    croak 'You must call Anagrams::read_file before calling get_anagram_for_word'
        if ! ref ( $anagrams );

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

__END__

=head1 NAME

Anagrams read words file and find Anagrams

=head1 SYNOPSIS

  use Anagrams;

  read_file( 'anagrams.txt' );

  my $random_a = get_random_anagram();
  print "@$random_a";

=head1 DESCRIPTION

=head1 SEE ALSO

=head1 BUGS













