use strict;
use warnings;
use feature ':5.10';
local %SIG;

$SIG{INT}  = sub { say "Im still here: INT" };
$SIG{TERM} = sub { say "Go Away: TERM" };

$0 = "Dr Evil";

while(1) { sleep 10 }