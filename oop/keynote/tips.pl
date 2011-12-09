package Person;
use Moose;

has 'name', is => 'ro';

package Person;
use Moose;

has 'name', is => 'ro', required => 1;
