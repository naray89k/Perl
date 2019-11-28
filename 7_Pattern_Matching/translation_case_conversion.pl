#!/usr/local/bin/perl

# Listing 7.13. An uppercase-to-lowercase conversion program.
while ($line = <STDIN>) {
    $line =~ tr/A-Z/a-z/;
    print ($line)
}
