#!/usr/local/bin/perl

# Listing 9.11. An example of a nested subroutine.

($wordcount, $charcount) = &getcounts(3);
print ("Totals for three lines: ");
print ("$wordcount words, $charcount characters\n");

sub getcounts{
	my ($numlines) = @_;
	my ($charpattern, $wordpattern);
	my ($charcount, $wordcount);
	my ($line, $linecount);
	my (@retval);
	$charpattern = "";
	$wordpattern = "\\s+";
	$linecount = $charcount = $wordcount = 0;
	while (1) {
		$line = <STDIN>;
		last if ($line eq "");
		$linecount++;
		$charcount += &count($line, $charpattern);
		$line =~ s/^\s+|\s+$//g;
		$wordcount += &count($line, $wordpattern);
		last if ($linecount == $numlines);
	};
	@retval = ($wordcount, $charcount);
}

sub count{
	my ($line, $pattern) = @_;
	my ($count);
	if ($pattern eq "") {
	    @items = split (//, $line);
	} else {
	    @items = split (/$pattern/, $line);
	}
	$count = @items;
}
