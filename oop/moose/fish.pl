package Fish;
use Moose;
use List::Util qw/shuffle/;
use feature ':5.10';

my @colors = qw/red blue green white yellow magenta pink purple gold silver/;

has 'name', is => 'ro', default => 'Nemo';
has 'color', is => 'ro', lazy_build => 1;
has 'speed', is => 'ro', lazy_build => 1;

sub _build_color {
    my ($color) = shuffle @colors;
    return $color;
}

sub _build_speed {
    return int(rand(100));
}

sub hello {
    my $self = shift;
    say "[", $self->name, "]; color = ", $self->color, "; ",
        "speed = ", $self->speed;
}

package main;

my @fishtank;
push @fishtank, Fish->new for (1..20);

$_->hello for grep { $_->speed > 50 } @fishtank;

#foreach my $fish (@fishtank) {
    #if ( $fish->speed > 20 ) {
        #$fish->hello;
    #}
#}






