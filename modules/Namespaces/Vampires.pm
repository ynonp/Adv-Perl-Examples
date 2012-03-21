package Vampires;

use strict;
use warnings;
use 5.014;
use base 'Exporter';

our @EXPORT = qw/fight_zombies/;

sub secret_weapon {
    say "AHHHHHHHH";
}

sub fight_zombies {
    secret_weapon();
}

1;
