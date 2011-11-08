package Intro;
use Dancer ':syntax';

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

get '/hello/:name' => sub {
    my $name = params->{name};
    return "Hello $name";
};

get '/people' => sub {
    my @people = (
        { name => 'John' },
        { name => 'Tim' },
        { name => 'Jane' },
    );

    template 'people', { community => \@people} ;
};


true;
