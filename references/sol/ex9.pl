use strict;
use warnings;

sub make_counter {
    my $top = shift;
    my $count = 0;
    return sub {
        return $count >= $top ? undef : $count++;
    };
}

my $c = make_counter(5);
my $d = make_counter(7);

# prints 0 1 2
print $c->(), $c->(), $c->(), "\n";

# prints 0 1 2
print $d->(), $d->(), $d->(), "\n";

# prints 3
print $c->(), "\n";