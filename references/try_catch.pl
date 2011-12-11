#!/usr/bin/env perl
use strict;
use warnings;
use feature ':5.10';

#Write a function that looks for a word in a file

#find_word($filename, $word);

#If file open failed => die
#if word not found   => die

#Use find_word catching the dies printing
#nice message telling what happened

#./mygrep.pl word filename

sub find_word {
    my ($word, $filename) = @_;
    my $counter = 0;

    open my $fh, '<', $filename or die "OPEN";
    while (<$fh>) {
        $counter += 1 if /$word/;
    }

    die "NO_MATCH" if $counter == 0;
    close($fh);

    return $counter;
}

my ($word, $filename) = @ARGV;

# Using Try::Tiny
#try {
    #my $count = find_word($word, $filename);
    #print "Word found $count times\n";
#}
#catch {
    #say "Failed to open file $filename" if /OPEN/;
    #say "No match"                      if /NO_MATCH/;
#}

eval {
    my $count = find_word($word, $filename);
    print "Word found $count times\n";
};
given ($@) {
    say "Failed to open file: $filename"  when /OPEN/;
    say "Nothing found"                   when /NO_MATCH/;
}












