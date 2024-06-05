use strict;
use warnings;

print "\nHello";

my @grp = qw/O O+ O- A A+ B B+ B- AB+ AB- /;
print "\n";
print @grp;

my @gr1 = @grp[100];
my @gr2 = @grp[3..5];
print "\n@ gr 1\n";
print @gr1;
print "\n";
print @gr2;

my @arr = ("S1", "S2", 3, 4);

my @sorted = sort sor(@arr);

sub sor {
	$a <=> $b;
}

print "\nsorted \n";
print @sorted;

print "\nComparision ";
print "S1" <=> 3;

my @cus;
my $r;
my $c;

print "\nEnter no of  Cus:\n";

chomp($r = int<STDIN>);
for(my $i = 0; $i < $r; $i++){
	print "\nEnter No of EMI's:\n";
	chomp($c = int<STDIN>);
	for(my $j = 0; $j <$c; $j++){
		print "\nEnter amount :\n ";
		chomp(my $amt = int<STDIN>);
		$cus[$i][$j] = $amt;
	}

}

for(my $i = 0; $i < scalar @cus; $i++){
	for(my $j = 0; $j < scalar @cus[$i]; $j++){
		print $cus[$i][$j];
	}
	print"\n";
}


print "\n";
