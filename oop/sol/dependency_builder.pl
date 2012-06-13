use strict;
use warnings;
use v5.14;

package Dep::Module;
use Moose;

has 'name', is => 'ro', isa => 'Str', required => 1;

has 'depends_on' => (
    is => 'rw',
    isa => 'ArrayRef[Dep::Module]',
    traits => ['Array'],
    handles => { add_dependency => 'push', filtered_dependencies => 'grep', ready_to_build => 'is_empty' },
    default => sub { [] },
);

sub is_depends_on {
    my $self = shift;
    my ( $other_module ) = @_;

    return $self->filtered_dependencies( sub { $_ == $other_module } );
}

sub remove_dependency {
    my $self = shift;
    my ( $other_module ) = @_;

    my @filtered = $self->filtered_dependencies( sub { $_ != $other_module } );
    $self->depends_on ( \@filtered );
}

sub build {
    my $self = shift;
    say "Building Module: ", $self->name;
}

package Dep::Tree;
use Moose;

has 'modules' => (
    is => 'rw',
    isa => 'HashRef[Dep::Module]',
    traits => [ 'Hash' ],
    handles => { all_modules => 'values', get_module => 'get', remove_module => 'delete' },
    default => sub { +{} },
);

sub add_module_by_name {
    my $self = shift;
    my ( $module_name ) = @_;

    $self->modules->{$module_name} ||= Dep::Module->new( name => $module_name );
}

sub add_dependency_for_module {
    my $self = shift;
    my ( $module, $depends_on ) = @_;

    $self->add_module_by_name ( $_ ) for ( $module, $depends_on );
    $self->modules->{ $module }->add_dependency ( $self->get_module( $depends_on ) );
}

sub build_module {
    my $self = shift;
    my ( $module ) = @_;

    die 'Cannot build module ', $module->name, ' before building all its dependencies'
        unless $module->ready_to_build;

    $module->build;

    foreach my $remaining ( $self->all_modules ) {
        if ( $remaining->is_depends_on ( $module ) ) {
            $remaining->remove_dependency ( $module );
        }
    }

    $self->remove_module ( $module->name );
}

sub next_module_to_build {
    my $self = shift;

    return if ! $self->all_modules;

    for my $module ( $self->all_modules ) {
        return $module if $module->ready_to_build;
    }
}

sub read_file {
    my $self = shift;
    my ( $filename ) = @_;

    open my $fh, '<', $filename;
    while (<$fh>) {
        chomp;
        my ( $module_name, $dependencies ) = split /\s*:\s*/;
        next if ! defined ( $module_name );

        my @dependencies = split /\s*,\s*/, $dependencies;
        $self->add_dependency_for_module ( $module_name, $_ ) for @dependencies;
    }
    close $fh;
}


package main;
my $modules_file = <<END;
Luke: Han Solo, Leia, Yoda
Leia: Padme Amidala, Anakin Skywalker
Obi-Wan: Yoda
Darth Vader: Anakin Skywalker

END

my $t = Dep::Tree->new;

$t->read_file ( \$modules_file );

while ( my $next = $t->next_module_to_build ) {
    $t->build_module ( $next );
}


