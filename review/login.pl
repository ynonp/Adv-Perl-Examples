use strict;
use warnings;
use feature ':5.10';

my %saved_pwd = (
    apple   => 'red',
    lettuce => 'green',
    lemon   => 'yellow',
    orange  => 'orange',
);

print "Identify Yourself ! ";
my $username = <>;
chomp $username;

print "Password: ";
my $password = <>;
chomp $password;

if ( exists $saved_pwd{$username} &&
     $saved_pwd{$username} eq $password ) {

    say "Welcome, Master";
} else {
    say "Go Away, Intruder !"
}









