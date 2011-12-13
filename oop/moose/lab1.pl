package SeriesDetector::Plugin;
use Moose::Role;
requires 'check';

package SeriesDetector;
use Moose;
has 'plugins', is => 'ro', isa => 'ArrayRef[SeriesDetector::Plugin]';

sub check {
    my $self = shift;
    my @numbers = @_;

    foreach my $plugin (@{$self->plugins}) {
        my $result = $plugin->check(@numbers);
        return $result if $result;
    }

    return;
}

package SeriesDetector::Arithmetic;
use Moose;
with 'SeriesDetector::Plugin';

sub check {
    my $self    = shift;
    my @numbers = @_;

    return "Arithmetic" if @numbers <= 2;

    my $diff = $numbers[1] - $numbers[0];

    foreach my $i (1..@numbers-1) {
        return if $numbers[$i] - $numbers[$i-1] != $diff;
    }

    return "Arithmetic";
}

package main;

my $arith    = SeriesDetector::Arithmetic->new;
my $detector = SeriesDetector->new(plugins => [$arith]);

# success - returns 'Arithmetic'
$detector->check(qw/1 2 3 4/);
$detector->check(qw/10 20 30/);

#fail - returns undef
$detector->check(qw/5 7 11/);

