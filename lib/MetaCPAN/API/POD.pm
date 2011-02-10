use strict;
use warnings;
package MetaCPAN::API::POD;
# ABSTRACT: POD information for MetaCPAN::API

use Any::Moose 'Role';

requires '_http_req';

has pod_prefix => (
    is      => 'ro',
    isa     => 'Str',
    default => 'pod',
);

# http://api.metacpan.org/pod/AAA::Demo
sub search_pod {
    my $self    = shift;
    my $dist    = shift;
    my $base    = $self->base_url;
    my $prefix  = $self->pod_prefix;
    my $url     = "$base/$prefix/$dist";
    my $result  = $self->_http_req($url);

    return $result;
}

1;
