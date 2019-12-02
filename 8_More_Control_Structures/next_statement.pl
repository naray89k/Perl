1: #!/usr/local/bin/perl
2:
3: print ("Enter the last number in the sum:\n");
4: $limit = <STDIN>;
5: chop ($limit);
6: $count = 1;
7: $total = $eventotal = 0;
8: for ($count = 1; $count <= $limit; $count++) {
9: $total += $count;
10: if ($count % 2 == 1) {
11: # start the next iteration if the number is odd
12: next;
13: }
14: $eventotal += $count;
15: }
16: print("The sum of the numbers 1 to $limit is $total\n");
17: print("The sum of the even numbers is $eventotal\n");
