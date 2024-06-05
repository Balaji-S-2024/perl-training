use strict;
use warnings;

my @array;
open(INFO, './test.txt') or die ("Theres is no file :(");

@array = <INFO>;
close(INFO);

print scalar @array;

print "\n";

print @array;
