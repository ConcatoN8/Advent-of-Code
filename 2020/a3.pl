#!/usr/bin/perl -w

use warnings;
use diagnostics;

$count = 0;
$slope = 0;
$tree = "\#";

while(<>)
{
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

print "\_ is: $_\n";
print "temp is: $temp\n";
print "slope is: $slope\n";

if(substr($_, $temp, 1) =~ $tree) #substr($char?
{
    print "TREE FOUND at index $temp\n";
print "$_\n";
    print " \n";
   $count++;
}#count TREE
#}#for each

$slope += 3;
#}#for i


}#while<>
print "$count\n";
