#!/usr/local/bin/perl

# Listing 7.11. A simple white space cleanup program.
@input = <STDIN>;
$count = 0;

while ($input[$count] ne "") {
	$input[$count] =~ s/^[ \t]+//;
	$input[$count] =~ s/[ \t]+\n$/\n/;
	$input[$count] =~ s/[ \t]+/ /g;
	$count++;
}

print ("Formatted text:\n");
print (@input);
