#!/usr/local/bin/perl

# Listing 6.9. A program that tests for read permission on a file.

unless(open(MYFILE, "file1")){
	if (!(-e "file1")) {
	    die ("File file1 does not exist.\n");
	} elsif (!(-r "file1")) {
	    die ("You are not allowed to read file1.\n");
	} else {
	    die ("File1 cannot be opened\n");
	}
}
