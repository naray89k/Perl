#!/usr/local/bin/perl

unless (open(INFILE, "infile")) {
    die ("Input file infile cannot be opened.\n");
}
if (-e "outfile") {
    die ("Output file outfile already exists.\n");
}
unless (open(OUTFILE, ">outfile")) {
    die ("Output file outfile cannot be opened.\n");
}
$line = <INFILE>;
while ($line ne "") {
	chop ($line);
	print OUTFILE ("\U$line\E\n");
	$line = <INFILE>;
}
