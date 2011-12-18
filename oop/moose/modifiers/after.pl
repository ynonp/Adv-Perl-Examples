package Secret;
use Mouse;

has 'message', is => 'ro', required => 1, clearer => 'reset';
has 'counter', is => 'rw', default => 3;

after 'message' => sub {
    my $self = shift;
    $self->counter( $self->counter - 1 );
    if ( $self->counter <= 0 ) {
        $self->reset;
    }
};

package main;
my $secret = Secret->new(message => 'This message will self destroy');
print $secret->message, "\n" for (1..5);