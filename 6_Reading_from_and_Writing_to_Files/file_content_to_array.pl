#!/usr/local/bin/perl

unless (open(MYFILE, "file1.txt")) {
 die ("cannot open input file file1\n");
}
@input = <MYFILE>;
print (@input);
