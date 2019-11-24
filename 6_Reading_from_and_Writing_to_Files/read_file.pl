#!/usr/local/bin/perl

if (open(MYFILE, "file1.txt")) {
    $line = <MYFILE>;
    while ($line ne "") {
        print ($line);
        $line = <MYFILE>;
    }
}
