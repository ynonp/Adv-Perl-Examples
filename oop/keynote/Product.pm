package Product;
use Moose;

has 'name' => (
    is     => 'rw',
    reader => 'get_name',
    writer => '_set_name',
);

has 'price' => (
    is     => 'rw',
    reader => 'get_price',
    writer => 'set_price',
);

1;
