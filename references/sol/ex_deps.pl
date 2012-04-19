use strict;
use warnings;
use v5.14;
use List::MoreUtils qw/all/;

my %dependencies;

# Prepare the list of dependencies by reading
# the input and storing data into a dictionray
while (<>) {
    chomp;
    my ($module, $_) = split /:/;
    $module =~ s/:$//;
    my @deps = map /^\s*(.+\S)\s*$/, split /,/;
    $dependencies{$module} = \@deps;

    foreach my $dependant_module (@deps) {
        unless ( exists $dependencies{$dependant_module} ) {
            $dependencies{$dependant_module} = []
        }
    }
}

# Use the dependencies dictionray to figure out
# which module to build next.
my @build_order;
while ( %dependencies ) {
    while (my ($m, $d_list) = each %dependencies ) {
        if ( all { $_ ~~ @build_order } @$d_list ) {
            push @build_order, $m;
            delete $dependencies{$m};
        }
    }
}

say join ", ", @build_order;
