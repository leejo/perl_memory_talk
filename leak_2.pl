#!perl

use strict;
use warnings;
use feature qw/ say /;
use Unix::Getrusage;

my ( $i,$ptr,@arr );

printf("Start usage: %ld bytes\n",getrusage()->{ru_maxrss});

for ( $i = 0; $i < 1; $i++ ) {
	push( @arr,$ptr = [ ( 1 ) x 1000 ] );
	# do something with ptr ...
}

printf("  End usage: %ld bytes\n",getrusage()->{ru_maxrss});
exit( 0 );
