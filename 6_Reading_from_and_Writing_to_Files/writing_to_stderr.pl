#!/usr/local/bin/perl

# Listing 6.6. A program that writes to the standard error file.

open(MYFILE, "file1") ||
die ("Unable to open input file file1\n");
print STDERR ("File file1 opened successfully.\n");
$line = <MYFILE>;
while($line ne ""){
    chop ($line);
    print ("\U$line\E\n");
    $line = <MYFILE>;
}
close(MYFILE)
