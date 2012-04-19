use strict;
use warnings;
use List::Util qw/first/;

use v5.14;

my @contacts;

sub find_by_number {
    my ( $number ) = @_;
    # first returns the first element in a list
    # for which the condition is truth
    return first { $_->{number} eq $number } @contacts;
}

sub find_by_name {
    my ( $name ) = @_;

    return first { $_->{name} eq $name } @contacts;
}

sub add_to_contacts {
    my ( $name, $phone, $title ) = @_;

    my $details = {
        name  => $name,
        phone => $phone,
        title => $title,
    };

    push @contacts, $details;
}

sub print_details {
    use Data::Dumper;
    print Dumper(@_);
}

############################################################

# Initialize our contact list
add_to_contacts('Mike', '03-9112131', 'Mr.');
add_to_contacts('Jim',  '04-9291213', 'Dr.');
add_to_contacts('Jane', '02-6331232', 'Prof.');

# Reads a line of input, remove its \n and
# store the value in $name variable
while (chomp ( my $name = <>) ) {

    # Then find the contact named $name
    my $details = find_by_name( $name );

    # and print out its details
    print_details( $details );
}




