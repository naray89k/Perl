#!/usr/local/bin/perl

@array = (14, "cheeseburger", 1.23, -7, "toad");
$count = 1;

while ($count <= @array) {
    print("element $count: $array[$count-1]\n");
    $count++;
}
