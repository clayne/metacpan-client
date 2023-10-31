
# examples/fields-filter.pl

use strict;
use warnings;
use Data::Printer;

use MetaCPAN::Client;

my $module =
    MetaCPAN::Client->new->module('Moose',
                                  { fields => [ qw/ author version / ] });

p $module;
