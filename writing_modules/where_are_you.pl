#!/usr/bin/perl 
#===============================================================================
#
#         FILE: where_are_you.pl
#
#        USAGE: ./where_are_you.pl  
#
#  DESCRIPTION: perl modules search path
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 10/31/2011 13:56:20
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;
use lib './lib';

use Calc;

local $,="\n";
print @INC;






