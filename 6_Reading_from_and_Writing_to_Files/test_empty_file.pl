#!/usr/local/bin/perl

# Listing 6.10. A program that tests whether the file is empty before opening it for writing.

if (-e "outfile") {
	if (!(-w "outfile")) {
	    die ("Missing write permission for outfile.\n");
	}
	if (!(-z "outfile")) {
	    die ("File outfile is non-empty.\n");
	}
}
# at this point, the file is either empty or doesn't exist,
# and we have permission to write to it if it exists
