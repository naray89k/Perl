#!/usr/local/bin/perl

@names = ('Narayanan', 'Gandhimathi', 'Vaanadhi', 'Govardhan');
chop (@input);
$string = join(" ", @names);
print ("$string\n");
print('string length:',length($string), "\n");
