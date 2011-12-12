use strict;
use warnings;
use feature ':5.10';
use List::Util;
use MyConfig qw/init value/;

###################
# Write a module called MyConfig that parses 
# configuration files into hash-refs
#
# Assume the following configuration file syntax:
# 
# key1: value1
# key2: value2
#
# Usage:

init('details.ini');
say value('name');

