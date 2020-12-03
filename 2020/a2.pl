#!/usr/bin/perl

use warnings;
#use diagnostics;

$count = 0;
while(<>)
{
    chomp();
#    print "$_\n";
if ($_ =~ /(.*)-(.*) (.*): (.*)/gi)
{

    $lower = $1;
    $upper = $2;
    $letter = $3;#letter
    $code = $4;#code

$charCount = 0;    
foreach $char (split//, $code)
{

if($char =~ $letter)
{
print "$char\n";
    $charCount++;
}#if Char


#if($charCount < $upper && $charCount > $lower)
#{
 #   $count++;
#}#if charCount


}#forEach

print "$charCount\n";
print "Upper: $upper\n";
print "Lower: $lower\n";

if($charCount <= $upper && $charCount >= $lower)
{
    $count++;
}#if charCount  

}
#if

} 
#while<>
print "$count\n";
