package Series::Arithmetic;
#
#===============================================================================
#
#         FILE: Arithmetic.pm
#
#  DESCRIPTION: Write A Series::Arithmetic module
#
#       AUTHOR: Ynon Perek (), ynonperek@gmail.com
#      COMPANY: 
#      VERSION: 1.0
#      CREATED: 11/08/2011 09:15:00
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use Carp;

use base 'Exporter';
our @EXPORT_OK = qw/is_series get_series_in_range next_in_series/;

sub is_series {
    my (@numbers) = @_;


    return 1 if ( @numbers < 2 );

    my $diff = $numbers[1] - $numbers[0];

    for my $idx (1..@numbers-1) {
        return if ($numbers[$idx] - $numbers[$idx-1]) != $diff;
    }

    return 1;
}

sub get_series_in_range {
    my ($start, $end, $step) = @_;
    my @result;

    for ( my $i = $start; $i < $end; $i += $step ) {
        push @result, $i;
    }

    return @result;
}

sub next_in_series {
}

1;


__END__

=head1 NAME

Series::Arithmetic makes arithmetics fun again

=head1 SYNOPSIS

    my @numbers = get_series_in_range(1, 10, 3);
    if ( is_series (@numbers ) ) {
        print "Got a Series::Arithmetic\n";
    }


=head1 DESCRIPTION

=over

=item is_series(@numbers)

checks is a given argument forms a series

=item get_series_in_range($start, $end, $step)

Returns a new series in range

=back


=head1 SEE ALSO











