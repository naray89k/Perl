#!/usr/local/bin/perl

# Listing 9.13. A program that demonstrates aliasing.

$foo = 26;
@foo = ("here's", "a", "list");
&testsub (*foo);
print ("The value of \$foo is now $foo\n");

sub testsub {
	local (*printarray) = @_;
	foreach $element (@printarray) {
	    print ("$element\n");
	}
	$printarray = 61;
}
