#!/usr/local/bin/perl

# Listing 7.4. A simple variable-name validation program.

print ("Enter a variable name:\n");
$varname = <STDIN>;
chop ($varname);

if ($varname =~ /\$[A-Za-z][_0-9a-zA-Z]*/) {
    print ("$varname is a legal scalar variable\n");
} elsif ($varname =~ /@[A-Za-z][_0-9a-zA-Z]*/) {
    print ("$varname is a legal array variable\n");
} elsif ($varname =~ /[A-Za-z][_0-9a-zA-Z]*/) {
    print ("$varname is a legal file variable\n");
} else {
    print ("I don't understand what $varname is.\n");
}
