#!/usr/bin/env perl
use strict;
use warnings;
use Test::Most;

use Getopt::Usaginator;

my ( $a, $b, $c );
my @arguments = qw/ --a --b xyzzy --c --d /;
Getopt::Usaginator->parse( \@arguments,
    'a' => \$a,
    'b=s' => \$b,
    'c' => \$c,
);

diag @arguments;

is( $a, 1 );
is( $b, 'xyzzy' );
is( $c, 1 );
cmp_deeply( \@arguments, [qw/ --d /] );

done_testing;
