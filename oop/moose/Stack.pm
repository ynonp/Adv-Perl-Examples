package Stack;
use Modern::Perl;

use base 'Exporter';
our @EXPORT = qw/my_push my_pop my_count/;

my @data;

sub my_push {
    push @data, @_;
}

sub my_pop {
    return pop @data;
}

sub my_count {
    return scalar(@data);
}





1;
