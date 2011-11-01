#
#===============================================================================
#
#         FILE: series.t
#
#  DESCRIPTION: Unit test file for series
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/01/2011 10:19:12
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Series::ArithmeticProgression;

use Test::More tests => 3;

ok ( Series::ArithmeticProgression::is_series(2, 3, 4, 5) );
ok ( Series::ArithmeticProgression::is_series(4, 6, 8, 10) );
ok ( Series::ArithmeticProgression::is_series(0, -2, -4, -6) );


