package Private;
#
#===============================================================================
#
#         FILE: Private.pm
#
#  DESCRIPTION: Keeping a secret is hard to do
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/01/2011 14:32:33
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;
use Scalar::Util qw/refaddr/;

my %g_secret;

sub new {
    my ($cls) = @_;
    my $self = {};

    bless $self, $cls;

    $g_secret{refaddr $self} = 0;
    return $self;
}

sub get_secret {
    my ($self) = @_;
    return $g_secret{refaddr $self};
}

my $private_method = sub {
    warn 'calling private method';
};

sub set_secret {
    my ($self, $secret) = @_;
    $g_secret{refaddr $self} = $secret;
    $private_method->();
}


1;

