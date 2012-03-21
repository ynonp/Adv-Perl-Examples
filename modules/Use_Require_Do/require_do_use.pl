#!/usr/bin/perl 
#===============================================================================
#
#         FILE: require_do_use.pl
#
#        USAGE: ./require_do_use.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/01/2011 09:08:50
#     REVISION: ---
#===============================================================================

use strict;
use Carp;
use Data::Dumper;

require Foo;
require Foo;
require Foo;
require Foo;

sub refresh_configuration {
    do 'window.cfg';
}

sub save_config {
    print "package Config\n";
    print Dumper($Config::window);
}

while(<>) {
    refresh_configuration();
    print $Config::window->{title}, "\n";
    save_config();
}




