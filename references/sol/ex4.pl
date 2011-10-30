#!/usr/bin/perl 
#===============================================================================
#
#         FILE: ex4.pl
#
#        USAGE: ./ex4.pl  
#
#  DESCRIPTION: Write a program that builds a properties database from 
#               property files. Each property file contains lines of the 
#               format key=value. 
#               The program takes a list of such files, and parses them 
#               to build a central dictionary, to allow random access to properties.
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 10/30/2011 14:52:09
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;
use Data::Dumper;

my $CONFIG_LINE_RE = qr {
# this regular expression describes a line in a config file
# line format:
# key = value
# extracts both key and value
#
# EXAMPLES
# title = Hello World
#
#     key       spaces   =     spaces   value
   (\b\w+\b)   [\s]*     =    [\s]*   (\b[\w ]+)


}xms;


my $data;

sub get_field {
    my ($filename, $prop) = @_;

    return $data->{$filename}->{$prop};
}

sub get_files_having {
    my ($key) = @_;

    my @results = keys %$data;
    return grep { exists $data->{$_}->{$key} } @results;

}


while (<>) {
    my ($k, $v) = /$CONFIG_LINE_RE/;

    $data->{$ARGV}->{$k} = $v;
}

warn Dumper($data);
print get_files_having('x'), "\n";


