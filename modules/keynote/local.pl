use strict;
use warnings;

my @l = (1, 2, 3);
{ local $"=")("; print "(@l)\n"; }

print "(@l)\n";