package User;
use Mouse;
use DateTime;
sub login { warn 'Welcome' }

around 'login' => sub {
    my $now = DateTime->now;
    if ( $now->hour < 12 ) {
        my $orig = shift;
        my $self = shift;
        $self->$orig(@_);
    }
};

