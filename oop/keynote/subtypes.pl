package Person;
use Moose;
use Moose::Util::TypeConstraints;

subtype 'age',
    as 'Int',
    where { $_ >= 0 && $_ <= 120 },
    message { "Invalid Age: $_ "};

enum 'EyeColor', [qw/green blue brown gray/];

has 'age', is => 'rw', isa => 'age', default => 0;

package main;
my $p = Person->new;

# works
$p->age(10);

# fail
$p->age(140);
