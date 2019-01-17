#file:MyApache2/Rocks.pm
#----------------------
package HelloWorld::Hello;

use strict;
use warnings;

use Apache2::RequestRec ();
use Apache2::RequestIO ();

use Apache2::Const -compile => qw(OK);

sub handler {
    my $r = shift;

    $r->content_type('text/plain');
    print "Hello world, you've got custom Perl Handlers!\n";

    return Apache2::Const::OK;
}
1;