package Logger;
use Mouse;

sub log {
    my $self = shift;
    my ($msg) = @_;

    print $msg;
}

before 'log' => sub { select *STDERR };
after  'log' => sub { select *STDOUT };

package main;
my $log = Logger->new;
$log->log("hello\n");