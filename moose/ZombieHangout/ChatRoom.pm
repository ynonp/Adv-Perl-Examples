#
#===============================================================================
#
#         FILE: ChatRoom.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/08/2011 14:33:55
#     REVISION: ---
#===============================================================================
package ChatRoom;
use Zombie;
use Moose;
use Carp;

has 'zombies', is => 'ro', isa => 'ArrayRef[Zombie]', builder => '_init_zombies';
has 'name', is => 'ro', isa => 'Str', required => 1;

sub _init_zombies { return [] }

sub add_zombie {
    my ($self, $z) = @_;
    $z->room($self);

    push @{ $self->zombies }, $z;
}


1;

