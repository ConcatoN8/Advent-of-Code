#!/usr/bin/perl

use warnings;
use diagnostics;

$count = 0;
while(<>)
{
    chomp();
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


        }#forEach

    #TEST PARAMS
    #print "Upper: $upper\n";
    #print "Lower: $lower\n";

    if(substr($code, $lower - 1 , 1) =~ $letter && substr($code, $upper - 1, 1) =~ $letter)
    {
        print "Both\n";#TEST PARAM
    }#if substr Both

    elsif(substr($code, $lower - 1, 1) =~ $letter && substr($code, $upper - 1, 1) !~ $letter)
    {
        $count++;
        print "Got one\n";#TEST PARAM
    }#if substr FIRST
    elsif(substr($code, $lower - 1, 1) !~ $letter && substr($code, $upper - 1, 1) =~ $letter)
    {
    $count++;
    print "Got one\n";#TEST PARAM
    }#if substr SECOND   


    }#if
}#while<>
print "$count\n";
