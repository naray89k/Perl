#!/usr/local/bin/perl

# Listing 7.1. A program that illustrates the use of the matching operator.

print ("Ask me a question politely:\n");
$question = <STDIN>;
if ($question =~ /please/) {
    print ("Thank you for being polite!\n");
} else {
    print ("That was not very polite!\n");
}
