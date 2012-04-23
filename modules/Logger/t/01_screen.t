use strict;
use warnings;
use v5.14;

use Test::More;
use Logger;
use Term::ANSIColor;

{
    my $l = Logger->new;
    my $virtual_file;

    open my $test_fh, '>', \$virtual_file;

    my $stdout = select $test_fh;
    $l->log('hello');
    select $stdout;

    is ( $virtual_file, 'hello' );
}

{
    my $l = Logger->new;
    my $expected_text;
    open my $h, '>', \$expected_text;
    
    my $stdout = select $h;
    print color 'red';
    print 'Hello';
    print color 'reset';

    select $stdout;

    close $h;

    my $log_text;
    open my $fh, '>', \$log_text;

    $stdout = select $fh;
    $l->error( 'Hello' );
    select $stdout;

    close $fh;

    is ( $log_text, $expected_text );

}


done_testing;

