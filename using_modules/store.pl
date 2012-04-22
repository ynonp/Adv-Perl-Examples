use strict;
use warnings;
use Storable;

my $data = { counter => 0 };
eval {
    $data = retrieve('state.bin');
};

$data->{counter}++;
print $data->{counter}, "\n";

store($data, 'state.bin');

