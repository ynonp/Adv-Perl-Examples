use 5.014;

say "Who are you ?";
# Read a line from "STDIN"
my $line = <STDIN>;

say "Welcome, $line";

# prefer to use glob
my @files = <*.pl>;
say "files = @files";

# Read a line from file handle
open my $fh, '<', $0;

# Read a line into $_
#while (<$fh>) {
    #print;
#}

close $fh;

# Read from Default
# If there is data in @ARGV, read a line from the
# next file in @ARGV, also setting $ARGV to the 
# current file name
#
# If no data in @ARGV, read from STDIN
#

my $default = <>;
print "First line in $ARGV is: $default";



