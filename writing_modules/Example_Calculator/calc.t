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

use Test::More;
use lib './lib';
use Calc;

is ( Calc::plus(3, 3), 6 , "plus");
is ( Calc::minus(3, 1), 2, "minus" );

done_testing;


