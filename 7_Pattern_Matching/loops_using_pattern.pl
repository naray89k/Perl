#!/usr/local/bin/perl

# Listing 7.10. A program that loops using a pattern.

while ("balata" =~ /.a/g) {
    $match = $&;
    print ("$match\n");
}
