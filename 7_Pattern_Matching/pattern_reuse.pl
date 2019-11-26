#!/usr/local/bin/perl

# /[\da-z]+[:;][\da-z]+[:;][\da-z]+/ 
# The Above expression can be rewritten as below
# /([\da-z]+])[:;]\1[:;]\1/
# \1 represents the group pattern memory.
# furthermore it can be even simplified as below
# /([\da-z]+])([:;])\1\2\1/
#
# Explanation:
# ------------
# Pattern sequences are stored in memory from left to right, so \1 represents the subpattern matched by [\da-z]+ and \2
# represents the subpattern matched by [:;].
#

@datelist = ('12-05-92', '26.11.87', '07 04 92');
foreach $date_str (@datelist){
    if( $date_str =~ /\d{2}([\W])\d{2}\1\d{2}/ ){
        print("string: $date_str is a date format \n");
    }
}


# Pattern-Sequence Scalar Variables
# Note that pattern-sequence memory is preserved only for the length of the pattern. This means that if you define the
# following pattern (which, incidentally, matches any floating-point number that does not contain an exponent):
