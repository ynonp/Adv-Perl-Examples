use strict;
use warnings;

use Try::Tiny;

try {
    die "good bye cruel world";
}
# catch is optional
catch {
    warn "Exception happened: $_";
}

try {
    die "NetworkError";
}
catch {
    if (/Network/) {
        warn 'network error';
    }

    if (/File/) {
        warn 'file error';
    }
}
