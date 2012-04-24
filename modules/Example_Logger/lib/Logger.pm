use strict;
use warnings;
use v5.14;

package ScreenWriter;
use Mouse;
use Term::ANSIColor;

sub log { shift; print @_ }

sub error {
    my $self = shift;
    print color 'red';
    $self->log(@_);
    print color 'reset';
}

package FileWriter;
use Mouse;
use IO::File;

has 'fh', is => 'ro', isa => 'FileHandle', lazy_build => 1;
has 'filename', is => 'ro', isa => 'Str', required => 1;

sub _build_fh {
    my $self = shift;
    open my $fh, '>>', $self->filename;
    $fh->autoflush( 1 );
    return $fh;
}

sub DESTROY {
    my $self = shift;
    close $self->fh;
}

sub log {
    my $self = shift;
    print { $self->fh } @_;
}

sub error { shift->log( @_ ) }

package Logger;
use Mouse;
use Term::ANSIColor;

has 'filename', is => 'ro', isa => 'Str';
has 'writer' => (
    is => 'ro',
    lazy_build => 1,
    handles => [qw/log error/],
); 

sub _build_writer {
    my $self = shift;

    if ( $self->filename ) {
        return FileWriter->new ( filename => $self->filename );
    } else {
        return ScreenWriter->new;
    }
}


1;
