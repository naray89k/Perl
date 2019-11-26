#!/usr/local/bin/perl

# Listing 6.11. A program that prints the size of a file in bytes.

print ("Enter the name of the file:\n");
$filename = <STDIN>;
chop ($filename);
if (!(-e $filename)) {
    print ("File $filename does not exist.\n");
} else {
    $size = -s $filename;
    print ("File $filename contains $size bytes.\n");
}
