#!/usr/local/bin/perl

@array = ("one", "two", "three", "four", "five");
print("@array[4,1,3]\n");
@array[1,2,3] = @array[2,3,4];
print ("@array\n");
