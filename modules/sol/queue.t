#
#===============================================================================
#
#         FILE: queue.t
#
#  DESCRIPTION: test the Queue module
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/07/2011 16:08:32
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Queue;

use Test::More tests => 7;

my_q(2);
my_q(3);
my_q('foo');

is(my_count(), 3, "counting elements after queue");
is(my_dq(), 2, "dequeue first");
is(my_dq(), 3, "dequeue second");
is(my_dq(), 'foo', "dequeue a string");

my $undef = my_dq();
ok ( ! defined($undef), "undef on empty queue" );

is(my_count(), 0, "zero count on empty queue");

eval {
    my_q(2, 3);
};
ok ( $@, "die when trying to queue more than one element" );








