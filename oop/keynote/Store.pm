package Store;
use Moose;

has 'owner', is => 'ro', isa => 'Str';

has 'clients',  is => 'rw', isa => 'ArrayRef[Client]';
has 'products', is => 'rw', isa => 'ArrayRef[Product]';

has 'revenue',  is => 'rw', isa => 'Num';

1;
