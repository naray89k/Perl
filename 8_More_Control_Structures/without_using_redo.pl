#!/usr/local/bin/perl

# Listing 8.13. A program that counts the words in three non-blank lines of input without
# using the redo statement.

$nonblanklines = 0;
while (1) {
	$line = <STDIN>;
	last if ($line eq "");
	$line =~ s/^[\t ]*//;
	$line =~ s/[\t ]*\n$//;
	if ($line ne "") {
		$nonblanklines += 1;
		@words = split(/[\t ]+/, $line);
		$total += @words;
	}
	last if ($nonblanklines == 3);
};
print ("The total number of words is $total\n");
