#
#===============================================================================
#
#         FILE: private.t
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/01/2011 14:41:03
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Private;
use Data::Dumper;

use Test::More;

my $p = Private->new;
my $q = Private->new;

$p->set_secret(5);
$q->set_secret(7);

is ( $p->get_secret, 5 );
is ( $q->get_secret, 7 );
ok ( ! defined($p->{secret}) );
ok ( ! defined($q->{secret}) );

ok ( $p->can('get_secret') );

diag( Dumper($p) );
done_testing;





