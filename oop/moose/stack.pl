use Modern::Perl;
use StackObj;

my $stack = StackObj->new;

$stack->my_push(10, 20, 30);
#$stack->my_push('a');

say $stack->my_pop();

