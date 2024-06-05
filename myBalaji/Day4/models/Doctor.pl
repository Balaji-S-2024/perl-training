package Doctor;

use strict;
use warnings;

sub new {
	
	our $class = shift;

	our $self = {
		
		id => shift,
		name => shift,
		qualification => shift,
	
	};

	bless $self, $class;

	return $self;
}

1;
