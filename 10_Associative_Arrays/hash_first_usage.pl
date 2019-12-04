#!/usr/local/bin/perl

# Listing 10.2. A program that uses an associative array to count the number of capitalized
# words in a file.

while ($inputline = <STDIN>) {
	while ($inputline =~ /\b[A-Z]\S+/g) {
		$word = $&;
		$word =~ s/[;.,:-]$//; # remove punctuation
		$wordlist{$word} += 1;
	}
}
print ("Capitalized words and number of occurrences:\n");
foreach $capword (keys(%wordlist)) {
    print ("$capword: $wordlist{$capword}\n");
}
