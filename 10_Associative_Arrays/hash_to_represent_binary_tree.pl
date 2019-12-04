#!/usr/local/bin/perl

# Listing 10.5. A program that uses an associative array to represent a binary tree.

$rootname = "parent";
%tree = ("parentleft", "child1",
"parentright", "child2",
"child1left", "grandchild1",
"child1right", "grandchild2",
"child2left", "grandchild3",
"child2right", "grandchild4");
# traverse tree, printing its elements
&print_tree($rootname);

sub print_tree {
  local ($nodename) = @_;
  local ($leftchildname, $rightchildname);

  $leftchildname = $nodename . "left";
  $rightchildname = $nodename . "right";
  if ($tree{$leftchildname} ne "") {
    &print_tree($tree{$leftchildname});
  }
  print ("$nodename\n");
  if ($tree{$rightchildname} ne "") {
    &print_tree($tree{$rightchildname});
  }
}
