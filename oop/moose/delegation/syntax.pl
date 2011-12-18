#!/usr/bin/env perl

package Contact;
use Moose;

has 'email' => (
    is      => 'ro',
    handles => [ qw/send_mail/ ]
);
