use strict;
use warnings;
 
my $coderef = sub {
  print "Hello World\n";
};
  
my $lref = [1,2,3,4];
my $href = { a => 1, b => 2 };
  
$coderef->();
  
print 'coderef is of type: ', ref $coderef, "\n";
print 'lref    is of type: ', ref $lref, "\n";
print 'href    is of type: ', ref $href, "\n";

