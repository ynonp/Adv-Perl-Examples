package main;
use SeriesDetector;
use SeriesDetector::Arithmetic;

my $arith    = SeriesDetector::Arithmetic->new;
my $detector = SeriesDetector->new(plugins => [$arith]);

# success - returns 'Arithmetic'
$detector->check(qw/1 2 3 4/);
$detector->check(qw/10 20 30/);

#fail - returns undef
$detector->check(qw/5 7 11);

