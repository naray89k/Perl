#!/usr/local/bin/perl

# Listing 9.2. A program containing a subroutine in the middle of the main program.
while (1) {
	&readaline;
	last if ($line eq "");
	sub readaline {
	    $line = <STDIN>;
	}
	print ($line);
}
print ("done\n");
