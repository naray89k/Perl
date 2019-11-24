#!/usr/local/bin/perl

unless (open(MYFILE, "file1.txt")) {
die ("cannot open input file file1\n");
}

# if the program gets this far, the file was
# opened successfully
while (<MYFILE>) {
    print;
}
