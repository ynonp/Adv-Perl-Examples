# QUESTION: How to add a pack of modules
#           within a single use statment ?
#
# ANSEWER
#
# The following package MyPack is a collection
# of modules. When a user writes "use MyPack"
# she gets all the modules listed in the eval
# string into her namespace
#

package MyPack;

sub import {
    my $my_caller = caller( 0 );

    print "World\n";
    eval <<"END";

package $my_caller;

use List::Util qw/sum min max/;
use Scalar::Util qw/looks_like_number/;

END

}

print "Hello\n";

1;
