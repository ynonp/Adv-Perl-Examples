use strict;
use warnings;
use Test::More;
use Series::Fibonacci;

ok(  is_series(0, 1, 1, 2, 3));
ok(  is_series(2, 3, 5, 8));
ok(! is_series(1, 2, 5));
ok(! is_series(7, 3, 13, 15, 27, 42 ));


is( next_in_series(0, 1),   1 );
is( next_in_series(1, 1),   2 );
is( next_in_series(1, 2),   3 );

# test the code died
eval {
    next_in_series(0, 1, 2);
};
ok( $@ );

done_testing();

