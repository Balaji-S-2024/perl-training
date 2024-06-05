package TaxModule;

sub calculateTax {
	
	my $p = $_[0];
	my $n = $_[1];
	my $r = $_[2];

	return ($p * $n * $r) / 100;

}
