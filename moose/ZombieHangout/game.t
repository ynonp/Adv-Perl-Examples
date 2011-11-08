#
#===============================================================================
#
#         FILE: game.t
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/08/2011 14:36:28
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use ChatRoom;
use Zombie;

use Test::More;

my $lobbie = ChatRoom->new(name => 'Lobbie');
my $z      = Zombie->new(name => 'dd124sa');
my $r      = Zombie->new(name => 'nnnnsmam');

$lobbie->add_zombie($z);
$lobbie->add_zombie($r);

$z->broadcast('Hello all');

is( $r->num_unread, 1 );
is( $r->read, 'Hello all');

ok(1);

done_testing;





