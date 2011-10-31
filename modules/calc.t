#
#===============================================================================
#
#         FILE: calc.t
#
#  DESCRIPTION: Unit test file for Calc.pm
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 10/31/2011 14:19:21
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

use Test::More tests => 4;
use lib './lib';

diag("Starting to test Calc");

ok(1);
is(3, 3, "Failinnnnnnnng" );

is ( Calc::plus(3, 3), 5 );
die 'goodbye cruel world';

is ( Calc::minus(3, 1), 2 );




