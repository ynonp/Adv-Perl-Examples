use strict;
use warnings;
use v5.14;

use Test::More;
use Logger;
use autodie;
use File::Slurp;

{
    my $logfile_name = 'log.txt';
    my $l = Logger->new( filename => $logfile_name );
    $l->log( 'hello' );
    undef $l;

    my $content = read_file ( $logfile_name );
    ok ( $content =~ /hello$/ );
    unlink $logfile_name;
}


done_testing;
