#!/usr/local/bin/perl

# Listing 6.14. A word-search and counting program that uses <>.

$searchword = $ARGV[0];
print ("Word to search for: $searchword\n");
shift (@ARGV);
$totalwordcount = $wordcount = 0;
$filename = $ARGV[0];
while($line = <>) {
	chop ($line);
	@words = split(/ /, $line);
	$w = 1;
	while($w <= @words) {
		if ($words[$w-1] eq $searchword) {
		    $wordcount += 1;
		}
		$w++;
	}
	if(eof) {
		print("occurrences in file $filename: ");
		print("$wordcount\n");
		$totalwordcount += $wordcount;
		$wordcount = 0;
		$filename = $ARGV[0];
	}
}
print("total number of occurrences: $totalwordcount\n");
