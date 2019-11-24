#!/usr/local/bin/perl

unless (open(INFILE, "file1.txt")) {
    die ("cannot open input file file1\n");
}

unless (open(OUTFILE, ">outfile.txt")) {
    die ("cannot open output file outfile\n");
}

$line = <INFILE>;

while ($line ne "") {
    print OUTFILE ($line);
    $line = <INFILE>;
}
