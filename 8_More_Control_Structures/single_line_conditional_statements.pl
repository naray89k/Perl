#!/usr/local/bin/perl

# Listing 8.1. A program that uses single-line conditional statements to copy one file to another.

die ("Can't open input\n") unless (open(INFILE, "infile"));
die ("Can't open output\n") unless (open(OUTFILE, ">outfile"));
print OUTFILE ($line) while ($line = <INFILE>);
close (INFILE);
close (OUTFILE);
