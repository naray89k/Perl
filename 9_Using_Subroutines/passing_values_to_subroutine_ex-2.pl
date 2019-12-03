#!/usr/local/bin/perl

# Listing 9.10. Another example of a subroutine with arguments passed to it.

$wordcount = $charcount = 0;
$charpattern = "";
$wordpattern = "\\s+";
while ($line = <STDIN>) {
	$charcount += &count($line, $charpattern);
	$line =~ s/^\s+|\s+$//g;
	$wordcount += &count($line, $wordpattern);
}
print ("Totals: $wordcount words, $charcount characters\n");

sub count {
	my ($line, $pattern) = @_;
	my ($count);
	if ($pattern eq "") {
	    @items = split (//, $line);
	} else {
	    @items = split (/$pattern/, $line);
	}
	$count = @items;
}
