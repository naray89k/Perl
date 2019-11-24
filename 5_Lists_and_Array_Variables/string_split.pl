#!/usr/local/bin/perl

$wordcount = 0;
$line = "This is a test sentence";

@array = split(/ /, $line);
$wordcount += @array;
print("Sentence:",$line,"\n");
print("Total number of words: $wordcount\n");
