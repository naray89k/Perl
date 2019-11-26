#!/usr/local/bin/perl

# Pattern-Sequence Scalar Variables
# $1, $2, ... are the variable used to store portion of patterns matched while enclosed within '()'
# $& built-in scalar variable contains the entire matched pattern.

$string = "This string contains the number 25.11.";
$string =~ /-?(\d+)\.?(\d+)/;
$integerpart = $1;
$decimalpart = $2;
print("The matched pattern is: $& \n");
print("Integer Part: $1 \n");
print("Decimal Part: $2 \n");
