package OTP;

use strict;
use warnings;

sub generateOTP {
	my $min = $_[0];
	my $max = $_[1];

	my $otp = int (rand($max)) + $min;

	print $otp."\n";
}

1;
