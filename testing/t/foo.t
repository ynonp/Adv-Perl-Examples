use strict;
use warnings;
use Scalar::Util qw/looks_like_number/;

use Test::More tests => 4;

diag("Starting to test");

ok(1);
ok(   looks_like_number(7));
ok( ! looks_like_number('foo') );
ok(0, "Some test description for failure");


