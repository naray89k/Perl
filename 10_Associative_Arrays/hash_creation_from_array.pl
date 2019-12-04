#!/usr/local/bin/perl

# Listing 10.3. A program that uses the return value from a built-in function to create an
# associative array.

$inputline = <STDIN>;
$inputline =~ s/^\s+|\s+\n$//g;
%fruit = split(/\s+/, $inputline);
print ("Number of bananas: $fruit{\"bananas\"}\n");
