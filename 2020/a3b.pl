#!/usr/bin/perl -w

use warnings;
use diagnostics;

$count = 0;
$slope = 0;
$tree = "\#";

$skip = -1;
$n = 1;

while(<>)
{
    chomp();

    $temp = $slope % 31;

    $skip = (-1) ** $n;#exponent for alternating series (-1)^n
    $n++;

    #TEST PARAMS
    #print "Skip is $skip\n";
    #print "n is $n\n";

    next if($skip > 0);


    if(substr($_, $temp, 1) =~ $tree)
    {
    
    #TEST PARAMS
    # print "TREE FOUND at index $temp\n";
    #print "$_\n";
    #print " \n";
    
    $count++;
    }#count TREE

    $slope += 1;#ADJUST SLOPE HERE
}#while<>
print "count is: $count\n";
$total = 86 * 159 * 97 * 88 * $count;#Manually compute previous trials
print "GAND TOTAL: $total\n";
