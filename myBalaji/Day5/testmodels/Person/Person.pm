package Person;
use strict;
use warnings;

# constructor
sub BEGIN {
	
}

#sub new {
#	my $class = shift;
#	my $self = {};
#	bless $self, $class;
#	return $self;
#}


sub new {
	my $class = shift;
	my $self = {
		_id => shift,
		_name => shift,
		_dob => shift,
		_contactno => shift,
		#_history => shift,
		#_bloodgrp => shift
	};


	# bless $self, $class;
	return bless $self, $class;

}


sub setId{
	my ( $self, $id ) = @_;
	$self->{_id} = $id if defined($id);
	return $self->{_id};
}

sub getId{
	my ($self) = @_;
	return $self->{_id};
}


sub setName {
	my ($self, $name) = @_;
	$self->{_name} = $name if defined($name);
	return $self->{_name};
}

sub getName {
	my ($self) = @_;
	return $self->{_name};
}


sub setDob{
        my ( $self, $dob ) = @_;
        $self->{_dob} = $dob if defined($dob);
        return $self->{_dob};
}

sub getDob{
        my ($self) = @_;
        return $self->{_dob};
}


sub setCno{
        my ( $self, $contactno ) = @_;
        $self->{_contactno} = $contactno if defined($contactno);
        return $self->{_contactno};
}

sub getCno{
        my ($self) = @_;
        return $self->{_contactno};
}



# Mthod Overriding

sub login {
	my @data = @_;
	if($data[2] eq 'DOCTOR') {
		print "\nPerson is DOCTOR!";
	}else{
		print"\nPerson is PATIENT!";
	}
}


1;
