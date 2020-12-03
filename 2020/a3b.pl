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

#    next if($skip > 0);
 #   $skip = $skip * $skip;
    chomp();#$_ is one line


    $temp = $slope % 31;
#if ($temp > 31)
#{
#    $temp % 32;
#}

#    for($i = $slope; $i <= $temp; $i++)#i hits slope location
#{


#foreach $char (split//, $_)
#{

#print "\_ is: $_\n";
#print "temp is: $temp\n";
#print "slope is: $slope\n";

    $skip = (-1) ** $n;
    $n++;

    print "Skip is $skip\n";
    print "n is $n\n";

    next if($skip > 0);


if(substr($_, $temp, 1) =~ $tree) #substr($char?
{   

   # print "TREE FOUND at index $temp\n";
print "$_\n";
    print " \n";
   $count++;
}#count TREE
#}#for each

$slope += 1;#ADJUST SLOPE HERE
#}#for i


}#while<>
print "count is: $count\n";
$total = 86 * 159 * 97 * 88 * $count;
print "GAND TOTAL: $total\n";
