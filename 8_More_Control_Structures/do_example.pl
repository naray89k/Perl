#!/usr/local/bin/perl

# Listing 8.8. A simple example of a do statement.

$count = 1;
do {
    print ("$count\n");
    $count++;
} until ($count > 5);
