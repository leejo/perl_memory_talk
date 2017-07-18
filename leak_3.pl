#!perl

use strict;
use warnings;
use feature qw/ say /;
use Devel::Peek;

my ( $i,$ptr );

for ( $i = 0; $i < 100000; $i++ ) {
	$ptr = [ ( 1 ) x 1000 ];
	# do something with ptr ...
}

Dump( $ptr );

exit( 0 );
