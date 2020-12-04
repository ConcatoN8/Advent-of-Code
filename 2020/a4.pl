#!/usr/bin/perl -w

use warnings;
use diagnostics;

$count = 0;
@reqd = ("byr", "iyr", "eyr", "hgt", "hcl", "ecl", "pid");
$fieldsFound = 0;
while(<>)
{

    if(/^\s+$/)
    {
    $fieldsFound = 0;
    }

chomp();

@fields = split/\s+/,$_;

foreach(@fields)
{
    if($_ =~/(.*):(.*)/)
    {
    $a = $1;
    $b = $2;
        if($a =~ "cid")
        {
        next;
        }#if cid
        else
        {
            for($i = 0; $i < 7; $i++)#iterate thru @reqd
            {
                if($a =~ @reqd[$i])
                {
                $fieldsFound++;
                
                    if($fieldsFound == 7)
                    {
                    $count++;
                    }#if all fields met
                
                #TEST PARAMS
                #print "field is: $a\n";
                #print "fieldsFound is: $fieldsFound\n";
                
                }#if match
            }#for i
        }#else (not cid)
    }#if : split
}#forEach field


}# while<>

print "$count\n";
