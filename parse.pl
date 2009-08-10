#!/usr/bin/perl

use strict;
use warnings;

my $bad = 0;
my $good = 0;
while (<>) {
    if ( /,GOOD"$/ ... /^(\d+)$/ ) {
        $good += $1 if defined($1);
    }
    if ( /,BAD"$/ ... /^(\d+)$/ ) {
        $bad += $1 if defined($1);
    }
}

print "GOOD, $good\n";
print "BAD, $bad\n";
