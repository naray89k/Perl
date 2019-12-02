#!/usr/local/bin/perl

# Listing 8.14. A program that uses a label.

$total = 0;
$firstcounter = 0;
DONE: while ($firstcounter < 10) {
	$secondcounter = 1;
	while ($secondcounter <= 10) {
		$total++;
		if ($firstcounter == 4 && $secondcounter == 7) {
		    last DONE;
		}
		$secondcounter++;
	}
	$firstcounter++;
}
print ("$total\n");


# INFERENCE:
# Here, the last statement only quits the inner while loop. The outer while loop, which reads from the
# file represented by FILE1, continues executing.
# To quit from more than one loop at once, do the following:
# 1. Assign a label to the outer loop (the one from which you want to quit).
# 2. When you use last, next, or redo, specify the label you just assigned.
