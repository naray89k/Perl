#!/usr/local/bin/perl

# Listing 8.6. A program that uses the same name inside and outside a foreach statement.

$temp = 1;
@list = ("This", "is", "a", "list", "of", "words");
print ("Here are the words in the list: \n");
foreach $temp (@list) {
    print ("$temp ");
}
print("\n");
print("The value of temp is now $temp\n");

# Analysis
# Line 5 assigns 1 to the scalar variable $temp.
# The foreach statement that prints the words in the list is defined in lines 6-8. This statement assigns the
# elements of @list to $temp, one per iteration of the loop.
# After the loop is terminated, the original value of $temp is restored, which is 1. This value is printed by
# line 10.
