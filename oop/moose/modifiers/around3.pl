package Test;
use Mouse;

sub foo { warn 'In foo' }
sub bar { warn 'In bar' }
sub buz { warn 'In buz' }

around qr/^(foo|bar|buz)$/ => sub {
    warn 'Before call';
    my $orig = shift;
    my $self = shift;

    $self->$orig(@_);
    warn 'After call';
};

package main;
my $t = Test->new;
$t->foo;
$t->bar;