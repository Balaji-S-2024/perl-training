use strict;
use warnings;
use feature "switch";

use TaxModule;

print "\nEnter aMOUNT:";
my $amt = int<STDIN>;

print "\nEnter No Of Years:";
my $yrs = int<STDIN>;

print "\nEnter any one of the following: \n\t[A]\n\t[B]\n\t[C]\n";

chomp(my $ch = <STDIN>);

my $res = 0;

given ($ch){

	when('A'){
		$res = TaxModule::calculateTax($amt, $yrs, 2);
	}

	when('B'){
		$res = TaxModule::calculateTax($amt, $yrs, 8);
	}

	when('C'){
		$res = TaxModule::calculateTax($amt, $yrs, 10);
	}

}

# my $res = TaxModule::calculateTax(100, 1, 10);

print "\nGlobal Varable is : ";
# print "TaxModule.$globalVariable";
print "\nBefore in pl ".$TaxModule::globalVariable;

$TaxModule::globalVariable = 9999;

print "\nAfter in pl ".$TaxModule::globalVariable;

TaxModule::calculateTax(1000, 1, 10);

print "\n"."The Tax Amount Calculated is : $res "."\n";

