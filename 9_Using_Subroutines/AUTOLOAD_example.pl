#!/usr/local/bin/perl

# Listing 9.15. A program that uses AUTOLOAD.

&nothere("hi", 46);

AUTOLOAD {
    print("subroutine $AUTOLOAD not found\n");
    print("arguments passed: @_\n");
}
