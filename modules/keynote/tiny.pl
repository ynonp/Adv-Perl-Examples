use strict;
use warnings;

use Try::Tiny;

try {
    die 'FileError';
}
catch {
    warn 'file error' if /FileError/;
}