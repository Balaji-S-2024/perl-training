package TaxModule;

our $globalVariable = 1000000;

my $myVariable = "My Variable";

sub calculateTax {
	
	my $p = $_[0];
	my $n = $_[1];
	my $r = $_[2];

	print "\nModule";
	print $TaxModule::globalVariable;
	
	print"\nMyVariable - ";
	print $myVariable;

	return ( int($p) * int($n) * int($r) ) / 100;

}


1;
