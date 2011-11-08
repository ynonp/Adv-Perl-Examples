#
#===============================================================================
#
#         FILE: Queue.pm
#
#  DESCRIPTION: Write a module for working with a Queue. 
#               The module should support basic operations: 
#               enqueue, dequeue, count
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/07/2011 16:06:33
#     REVISION: ---
#===============================================================================
package Queue;
use strict;
use warnings;
use Carp;

use base 'Exporter';
our @EXPORT = qw/my_q my_dq my_count/;
my @data;

sub my_q {
    croak 'Too many arguments'
        if @_ != 1;

    my ($el) = @_;

    push @data, $el;
}

sub my_dq {
    return shift @data;
}

sub my_count {
    return scalar(@data);
}

1;

__END__

=head1 NAME

Queue - A sample perl queue implementation

=head1 SYNOPSIS

  my_q(2);
  my_q(5);

  # prints 2
  print my_dq, "\n";

  # pritns 1
  print my_count, "\n";

=head1 DESCRIPTION

This is a queueu module implementing a simple Queue
Have fun using it

=over

=item my_q(item)

adds "item" to the Queue

=item my_dq()

removes an item from the Queue

=back



