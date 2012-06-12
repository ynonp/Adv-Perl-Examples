use strict;
use warnings;

use Anagrams;
use Test::More;

use v5.14;
use File::Slurp qw//;

my $file_content = <<'END';
age
mage
game
dad
add
mega
END

File::Slurp::write_file( 'anagrams.txt', $file_content );

read_file('anagrams.txt');

my $a = get_anagram_for_word('age');
is ( scalar( @$a ), 1, );
is ( $a->[0], 'age' );

my $b_ref = get_anagram_for_word('mage');

# is_deeply( $b, [qw/mage game/] );
ok ( 'mage' ~~ $b_ref, "Mage in anagrams" );
ok ( 'game' ~~ $b_ref, "Game in Anagrams" );
ok ( 'mega' ~~ $b_ref, "Mega in anagrams" );

done_testing;
