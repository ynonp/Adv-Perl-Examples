#===============================================================================
#
#         FILE: arithmetic.t
#
#  DESCRIPTION: 
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/08/2011 09:23:17
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Series::Arithmetic qw/is_series get_series_in_range/;

use Test::More;

my @win  = (3, 5, 7, 9, 11);
my @win2 = (-1, -3, -5, -7);
my @win3 = ();

my @fail = (3, 5, 6);

for my $win_ref (\@win, \@win2, \@win3) {
    ok( is_series(@$win_ref) );
}

for my $lose_ref (\@fail) {
    ok( ! is_series(@$lose_ref) );
}

my @expected = (2, 5, 8);
my @range    = get_series_in_range(2, 10, 3);

for (my $idx = 0; $idx < @range; ++$idx) {
    is($range[$idx], $expected[$idx]);
}

done_testing;

