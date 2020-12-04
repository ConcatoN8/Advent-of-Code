#!/usr/bin/perl -w

use warnings;
use diagnostics;

$count = 0;
$valid = 0;
while(<>)
{
if(/^\s+$/)
{
$valid = 0;
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

#REGEX GOES BRRRRRRRRR...
                    
if($a =~ "byr")
{
# byr (Birth Year) - four digits; at least 1920 and at most 2002.
    next if(length($b) != 4);
    if( $b >= 1920 && $b <=2002)
    {
    #print "BIRTHDATE: $b\n";
    $valid++;
    }
}#byr

if($a =~ "iyr")
{
#iyr (Issue Year) - four digits; at least 2010 and at most 2020.
    next if(length($b) != 4);
    if( $b >= 2010 && $b <=2020)
    {
    #print "ISSUE YEAR: $b\n";
    $valid++;
    }
}#iyr

if($a =~ "eyr")
{
#eyr (Expiration Year) - four digits; at least 2020 and at most 2030.
    next if(length($b) != 4);
    if( $b >= 2020 && $b <=2030)
    {
    #print "EXP YEAR: $b\n";
    $valid++;
    }
}#eyr

if($a =~ "hgt")
{
#hgt (Height) - a number followed by either cm or in:
#If cm, the number must be at least 150 and at most 193.
#If in, the number must be at least 59 and at most 76.

    if($b =~ /\d+[cm|in]/)
    {
        if($b =~ /(.*)cm/)
        {
            if($1 >=150 && $1 <=193)
            {
            $valid++;
            }
        }#if cm  
        elsif($b =~ /(.*)in/)
        {
            if($1 >=59 && $1 <=76)
            {
            $valid++;
            }
        }#if cm
    #print "HEIGHT: $b\n";
    }
}#hgt

if($a =~ "hcl")
{
#hcl (Hair Color) - a # followed by exactly six characters 0-9 or a-f.
    next if(length($b) != 7);
    if($b =~ /#[\d|a-z]{6}/)
    {
    $valid++;
    #print "HAIR: $b\n";
    }
}#hcl

if($a =~ "ecl")
{
#ecl (Eye Color) - exactly one of: amb blu brn gry grn hzl oth.
    if($b =~ /amb|blu|brn|gry|grn|hzl|oth/)
    {
    $valid++;
    #print "EYES: $b\n";
    }
}#ecl

if($a =~ "pid")
{
#pid (Passport ID) - a nine-digit number, including leading zeroes.
    next if(length($b) != 9);
    if( $b =~ /\d{9}/)
    {
    #print "PID: $b\n";
    $valid++;
    }
}#pid
    
    
if($valid == 7)
{
$count++;
}                    
    
                     
        }#else (not cid)
    }#if : split
}#forEach field

}# while<>

print "$count\n";
