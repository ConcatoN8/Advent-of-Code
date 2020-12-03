#!/usr/bin/perl

use warnings;
use diagnostics;

$count = 0;
while(<>)
{
    chomp();
if ($_ =~ /(.*)-(.*) (.*): (.*)/gi)
{
    $lower = $1;#lower bound
    $upper = $2;#upper bound
    $letter = $3;#letter to compare against
    $code = $4;#"password"

    $charCount = 0;    
    foreach $char (split//, $code)
    {
        if($char =~ $letter)
        {
            print "$char\n";
            $charCount++;
        }#if Char
    }#forEach

    #TEST PARAMS
    #print "$charCount\n";
    #print "Upper: $upper\n";
    #print "Lower: $lower\n";

    if($charCount <= $upper && $charCount >= $lower)
    {
        $count++;
    }#if charCount  

}#if
}#while<>
print "$count\n";
