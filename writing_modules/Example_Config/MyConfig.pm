package MyConfig;
use strict;
use warnings;

use base 'Exporter';
# our @EXPORT = qw/init value/;
our @EXPORT_OK = qw/init value/;

my %data;
sub init {
    my ($filename) = @_;
    local @ARGV = $filename;

    while(<>) {
        chomp;
        my ($k, $v) = split / *: */;
        $data{$k} = $v if defined($k);
    }

    return \%data;
}

sub value {
    my ($key) = @_;
    return $data{$key};
}

1;


=head1 Name

MyConfig is a cool module for working with config files

=head1 SYNOPSIS

  MyConfig::init('details.ini');
  say MyConfig::value('key');

=head1 DESCRIPTION

This module parses config files and lets you access
their content.

Config file format is:
  key: value

=over

=item init

The init method initializes the data

=item value

returns a value for a given key

=back





