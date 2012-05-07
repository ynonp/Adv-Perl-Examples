#
#===============================================================================
#
#         FILE: Intro.pm
#
#  DESCRIPTION: Introduction to modules
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 10/31/2011 10:49:26
#     REVISION: ---
#===============================================================================
package Intro;

use strict;
use warnings;
use Carp;

# Using the Exporter
#
# 1. use base 'Exporter' at the top of your module
# 2. Define which names you want to export
# 3. Define which names are optionally exported
#
use base 'Exporter';

our @EXPORT = qw/greet/;
our @EXPORT_OK = qw/greet traditional_greeting/;

sub traditional_greeting { "Take me to your leader\n" }

sub greet { warn traditional_greeting }

1;




