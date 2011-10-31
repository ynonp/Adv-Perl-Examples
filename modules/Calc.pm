package Calc;
use Modern::Perl;

sub plus {
    my ($a, $b) = @_;
    return $a+$b;
}

sub minus {
    my ($a, $b) = @_;
    return $a-$b;
}

1;

=head1 Simple Calculator Module

The calculator module provides functionality related to calculating 
and doing math. 
It supports all basic operations.

=over

=item plus()

The plus subroutine takes two numbers and returns their sum

=item minus()

The minus subroutine takes two numbers and returns the first minus the second

=back

Thank you for choosing the Calculator module.

