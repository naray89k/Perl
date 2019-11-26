#!/usr/local/bin/perl

# Listing 7.6. A program that counts the number of input lines containing the word the.

$thecount = 0;
print("Enter the input here:\n");
$line = <STDIN>;
while($line ne ""){
	if($line =~ /\bthe\b/) {
	    $thecount += 1;
	}
	$line = <STDIN>;
}
print("Number of lines containing 'the': $thecount\n");
