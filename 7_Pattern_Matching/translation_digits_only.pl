#!/usr/local/bin/perl

# Listing 7.14. A program that ensures that a string consists of nothing but digits.

$string = <STDIN>;
$string =~ tr/0-9//cd;
print ("$string\n");
