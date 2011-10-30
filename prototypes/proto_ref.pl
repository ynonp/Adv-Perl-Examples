#!/usr/bin/perl 
#===============================================================================
#
#         FILE: proto_ref.pl
#
#        USAGE: ./proto_ref.pl  
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 10/30/2011 16:18:57
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;

sub add_to_list(\@@) {
    my ($l_ref, @data) = @_;
    push @$l_ref, @data;
}

my @l = (1, 2, 3);
add_to_list(@l, 5);
&add_to_list(\@l, 5);


my $f = \&add_to_list;
$f->(@l, 5);
add_to_list(@l, 5);






