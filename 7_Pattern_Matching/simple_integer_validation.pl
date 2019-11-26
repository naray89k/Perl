#!/usr/local/bin/perl

print ("Enter a number:\n");
$number = <STDIN>;
chop ($number);
if ($number =~ /^-?\d+$|^-?0[xX][\da-fa-F]+$/) {
    print ("$number is a legal integer.\n");
} else {
    print ("$number is not a legal integer.\n");
}
