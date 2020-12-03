#!/usr/bin/perl -w

use warnings;
use diagnostics;

$count = 0;
$slope = 0;
$tree = "\#";

while(<>)
{
    chomp();

    $temp = $slope % 31;

    #TEST PARAMS
    #print "\_ is: $_\n";
    #print "temp is: $temp\n";
    #print "slope is: $slope\n";

    if(substr($_, $temp, 1) =~ $tree)
    {
        #TEST PARAMS
        #print "TREE FOUND at index $temp\n";
        #print "$_\n";
        $count++;
    }#count TREE
    
    $slope += 3;
    
}#while<>
print "$count\n";
