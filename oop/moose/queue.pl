package Queue;
use Mouse;

has 'data', is => 'rw', isa => 'ArrayRef[Int]';

sub q {
    my $self = shift;
    my $queue_ref = $self->data;
    push @$queue_ref, @_;

    $self->data($queue_ref);
}

sub dq {
    my $self = shift;
    my $queue_ref = $self->data;

    return shift @$queue_ref;
}

package main;
my $q1 = Queue->new(data => []);
my $q2 = Queue->new(data => []);

$q1->q(2, 3, 5);
$q2->q(10, 20);

print "q1 dq = ", $q1->dq, "\n";
print "q2 dq = ", $q2->dq, "\n";

$q1->q('foo');













