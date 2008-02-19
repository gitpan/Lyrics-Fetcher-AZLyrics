#!/usr/bin/perl


# A quick, simple example of using this module directly.
# 
# It's recommended to call it from Lyrics::Fetcher (see example.pl) rather
# than directly, but if you'd prefer to use it directly, this is how.
#
# $Id: example-direct.pl 259 2008-02-19 22:45:53Z davidp $

use strict;
use warnings;
use Lyrics::Fetcher::AZLyrics;


my ($artist, $title) = @ARGV;

if (!$artist || !$title) {
    print "Usage: $0 artist title\n";
    exit;
}

print "Fetching lyrics for $title by $artist\n";

if (my $lyrics = Lyrics::Fetcher::AZLyrics->fetch($artist, $title)) 
{
    print "Got lyrics:\n$lyrics\n";
} else {
    die "Failed to fetch lyrics ($Lyrics::Fetcher::Error)\n";
}
