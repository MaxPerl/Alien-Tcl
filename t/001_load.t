# -*- perl -*-

# t/001_load.t - check module loading and create testing directory

use Test::More tests => 2;

BEGIN { use_ok( 'Alien::Tcl' ); }

my $object = Alien::Tcl->new ();
isa_ok ($object, 'Alien::Tcl');


