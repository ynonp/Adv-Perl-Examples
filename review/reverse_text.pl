use strict;
use warnings;
use feature ':5.10';

my @text = <>;
chomp(@text);

my @rev_text = reverse(@text);
say "@rev_text";

