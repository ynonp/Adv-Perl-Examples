#!/usr/bin/perl 
use strict;
use warnings;
use Carp;
use Aliens qw/use_secret_weapon hello/;

hello;
print "------> ", Aliens::traditional_greeting, "\n";
