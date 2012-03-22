package WordFreq;
use Moose;

has 'freq'    => (
    is        => 'rw',
    writer    => '_set_freq',
    isa       => 'HashRef[Int]',
    default   => sub { return {} },
    traits    => [qw/Hash/],
    handles   => {
        count => 'get',
    },
);

sub init_from_stdin {
    my $self = shift;
    my %freq;
    while (<>) {
        $freq{$_}++ for split;
    }
    $self->_set_freq(\%freq);
}

package main;
my $f = WordFreq->new;
$f->init_from_stdin;

print $f->count('foo');