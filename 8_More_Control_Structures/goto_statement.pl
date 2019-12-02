#!/usr/local/bin/perl

# Listing 8.15. A program that uses the goto statement.

NEXTLINE: $line = <STDIN>;
if ($line ne "") {
    print ($line);
    goto NEXTLINE;
}
