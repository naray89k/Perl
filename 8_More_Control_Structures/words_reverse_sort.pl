#!/usr/local/bin/perl

# Listing 8.7. A program that prints out the words in a line in reverse-sorted order.

$line = <STDIN>;
$line =~ s/^\s+//;
$line =~ s/\s+$//;
foreach $word (reverse sort split(/[\t ]+/, $line)) {
    print ("$word ");
}
print ("\n");
