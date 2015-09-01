#!/usr/bin/perl -w
open(TEXT, "<shake.txt") or die "Can't open file.\n";
$lineNum = 1; ## holds the number of the line
$line = 0; ## holds each line as its read in
$count = 0; ## keeps count of 'shake' frequency
@lineAry = (); ## holds line numbers
while($line = <TEXT>)
{
 chomp($line); ## remove invisible '\n' character
 if($line =~ /shake/)
 {
 ## count frequency of 'shake' in current line.
 while($line =~ /shake/ig) { $count++; }
 ## store current line number in array
 push(@lineAry, $lineNum);
 $lineNum++;
 }
}
close(TEXT); ## close file
print "\n\n'Shake' occurs $count times in file.\n";
print "It occurs on the following lines: ";
foreach $e (@lineAry) { print "$e, "; }
print "\nmallesh\n\n";
exit;

