#!/usr/bin/perl 
#===============================================================================
#
#         FILE: yaml.pl
#
#        USAGE: ./yaml.pl  
#
#  DESCRIPTION: Example for using YAML::Tiny
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/01/2011 09:40:27
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;
use YAML::Tiny;

my $yaml = YAML::Tiny->read('config.yml') or die 'Invalid config file';

print $yaml->[0]->{window}->{title}, "\n";

