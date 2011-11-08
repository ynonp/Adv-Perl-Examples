#
#===============================================================================
#
#         FILE: person.t
#
#  DESCRIPTION: testing the people
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/01/2011 14:01:36
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Person;
use Student;

use Test::More;

my $p = Person->new(name => 'Tom', age => 0);
my $q = Person->new(name => 'Tim', age => 5);

eval {
    my $dead = Person->new(name => "Dracula", age => 380 );
};
ok ( $@ );


# also a good way
# my $r = Person->new({ name => 'James', age => 10});


#my $s = Student->new(name => 'Nobody', age => 5, grade => 11);

$p->grow_up;
$q->grow_up;

is ( $p->get_age, 1 );
is ( $q->get_age, 6 );

#is ( $s->get_grade, 11);
#ok ( $s->is_smart );


done_testing();



