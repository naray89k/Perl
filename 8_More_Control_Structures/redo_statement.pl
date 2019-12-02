#!/usr/local/bin/perl

# Listing 8.12. A word-counting program that uses the redo statement.

$total = 0;
for ($count = 1; $count <= 3; $count++) {
	$line = <STDIN>;
	last if ($line eq "");
	$line =~ s/^[\t ]*//;
	$line =~ s/[\t ]*\n$//;
	redo if ($line eq "");
	@words = split(/[\t ]+/, $line);
	$total += @words;
}
print ("The total number of words is $total\n");
