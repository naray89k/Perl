#!/usr/local/bin/perl

# Listing 7.2. A word-count program that handles multiple spaces between words.

$wordcount = 0;
$line = <STDIN>;
while ($line ne "") {
	chop ($line);
	@words = split(/ +/, $line);
	$wordcount += @words;
	$line = <STDIN>;
}
print ("Total number of words: $wordcount\n");
