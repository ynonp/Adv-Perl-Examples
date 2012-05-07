#
#===============================================================================
#
#         FILE: stack.t
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/07/2011 15:08:36
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Stack;

use Test::More tests => 2;

mypush(2, 3, 5);
is ( mypop(), 5 );
is ( count_usages(), 2 );







