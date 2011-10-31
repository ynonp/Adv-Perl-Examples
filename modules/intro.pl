#!/usr/bin/perl 
#===============================================================================
#
#         FILE: intro.pl
#
#        USAGE: ./intro.pl  
#
#  DESCRIPTION: using the Intro module
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 10/31/2011 10:51:57
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;
# use Intro qw/traditional_greeting greet/;
use Intro;

# sub traditional_greeting { return "Take me to your dealer\n"; }

Intro::greet;
greet;

warn traditional_greeting;



