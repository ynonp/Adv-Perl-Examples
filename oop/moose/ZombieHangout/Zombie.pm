#
#===============================================================================
#
#         FILE: Zombie.pm
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/08/2011 14:31:37
#     REVISION: ---
#===============================================================================
package Zombie;
use Moose;
use Carp;

has 'name', is => 'ro', required => 1;
has 'incoming', is => 'ro', lazy_build => 1;
has 'room', is => 'rw', isa => 'ChatRoom';

sub broadcast {
    my ($self, $msg) = @_;
    foreach my $zombie ( @{ $self->room->zombies } ) {
        $zombie->add_message($msg);
    }

}

sub whisper {
    my ($self, $friend, $msg) = @_;
}

sub _build_incoming {
    return [];
}

sub add_message {
    my ($self, $msg) = @_;
    push @{ $self->incoming }, $msg;
}

sub num_unread {
    my ($self) = @_;

    return scalar( @{ $self->incoming } );
}

sub read {
    my ($self) = @_;
    return shift @{ $self->incoming };
}

1;

