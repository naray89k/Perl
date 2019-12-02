#!/usr/local/bin/perl

# Listing 8.4. A program that uses the for statement to read four input lines and write
# three of them.

for ($line = <STDIN>, $count = 1; $count <= 3; $line = <STDIN>, $count++) {
    print ($line);
}
