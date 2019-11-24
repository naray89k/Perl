#!/usr/local/bin/perl

@array = (1, 2, 3, 4);
$end_index = 2;

# Array slicing with index ranges, .. operator, & variable substitution, etc.
# @subarray = @array[1,2];
# @subarray = @array[1..2];
@subarray = @array[1..$end_index];
print ("The first element of subarray is $subarray[0]\n");
print ("The second element of subarray is $subarray[1]\n");
