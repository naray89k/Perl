#!/usr/local/bin/perl

# Listing 7.12. A program that multiplies every integer in a file by 2.
$count = 0;
while ($ARGV[$count] ne "") {
	open (FILE, "$ARGV[$count]");
	@file = <FILE>;
	$linenum = 0;
	while ($file[$linenum] ne "") {
		$file[$linenum] =~ s/\d+/$& * 2/eg;
		$linenum++;
	}
	close (FILE);
	open (FILE, ">$ARGV[$count]");
	print FILE (@file);
	close (FILE);
	$count++;
}
