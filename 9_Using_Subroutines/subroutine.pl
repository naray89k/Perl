#!/usr/local/bin/perl

# Listing 9.1. A program that uses a subroutine.

$total = 0;
&getnumbers;
foreach $number (@numbers) {
    $total += $number;
}
print ("the total is $total\n");

sub getnumbers {
    $line = <STDIN>;
    $line =~ s/^\s+|\s*\n$//g;
    @numbers = split(/\s+/, $line);
}
