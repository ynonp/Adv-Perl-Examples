use Modern::Perl;

package Zombie;

sub eat_brain {
    my ($self, $who) = @_;

    $self->{num_brains}++;

    if ( $self->{num_brains} % 10 == 0 ) {
        say "Im a big Zombie now";
    }

    say "$who is Yummy...";
}

sub meet_friends {
    my ($self) = @_;
    say "I am from $self->{cemetary}";
}

sub raise_from_the_dead {
    my ($cls) = @_;
    my $self = {
        num_brains => 0,
        cemetary   => 'Saint James Cemetary',
    };

    bless $self, $cls;
    return $self;
}



##########################
#
package main;

my $z1 = Zombie->raise_from_the_dead;

$z1->eat_brain("Johny") for (1..4);
$z1->meet_friends;












