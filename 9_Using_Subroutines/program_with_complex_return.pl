#!/usr/local/bin/perl

# Listing 9.5. A program illustrating a potential problem with return values from
# subroutines.

$total = &get_total;
print("The total is $total\n");

sub get_total {
	$value = 0;
	$inputline = <STDIN>;
	$inputline =~ s/^\s+|\s*\n$//g;
	@subwords = split(/\s+/, $inputline);
	$index = 0;
	while ($subwords[$index] ne "") {
	    $value += $subwords[$index++];
	}
}
