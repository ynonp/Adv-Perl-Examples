use strict;
use warnings;
 
sub foo {
    print "foo\n";
}
 
sub bar {
    print "bar\n";
}
 
sub hello {
    print "Hello: ", @_, "\n";
}
 
# The dispatch table is a hash containing
# function name and a reference to the 
# subroutine.
# It saves us the evil if-else block checking
# which function is needed.
# Here I used a hash ref, but a hash was just
# as good.
 
my $dispatch = {
    foo    => \&foo,
    bar    => \&bar,
    hello  => \&hello,
};
 
while (<>) {
    chomp;
    my ($cmd, @args) = split;
    if ( exists $dispatch->{$cmd} ) {
        # Note the dereferencing: 
        # It means: take the hashref $dispatch,
        #                find the value $cmd in that hash,
        #                treat it as a function ref, 
        #                call that function with @args
        $dispatch->{$cmd}->(@args);
    }
}


