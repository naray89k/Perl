#!/usr/local/bin/perl

# Listing 8.9. A program that exits using the last statement.

$total = 0;
while (1) {
    $line = <STDIN>;
    if ($line eq "") {
        last;
    }
	chop ($line);
	@numbers = split (/[\t ]+/, $line);
	foreach $number (@numbers) {
		if ($number =~ /[^0-9]/) {
		    print STDERR ("$number is not a number\n");
		}
		$total += $number;
	}
}
print ("The total is $total.\n");
