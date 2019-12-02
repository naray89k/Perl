#!/usr/local/bin/perl

# Listing 8.5. A demonstration of the foreach statement.

@words = ("Here", "is", "a", "list.");
foreach $word (@words) {
    print ("$word\n");
}
