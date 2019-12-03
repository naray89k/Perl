#!/usr/local/bin/perl

# Listing 9.3. A program that uses a subroutine return value. 

$total = 0;
@numbers = &getnumbers;
foreach $number (@numbers) {
    $total += $number;
}
print ("the total is $total\n");

sub getnumbers {
	$line = <STDIN>;
	$line =~ s/^\s+|\s*\n$//g;
	split(/\s+/, $line); # this is the return value
}
