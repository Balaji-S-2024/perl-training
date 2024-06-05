package Patient;
use strict;
use warnings;

# Inheritance
use parent 'Person';
# use parent Person;

# constructor
sub BEGIN {
	
}

#sub new {
#	my $class = shift;
#my $self = {};
#bless $self, $class;
#	return $self;
#}


sub new {
	my $class = shift;
	my @superArgs = @_;
	my $self = $class->SUPER::new($superArgs[0], $superArgs[1], $superArgs[2], $superArgs[3]);
	$self->{_history} = $superArgs[4];
	$self->{_bloodgrp} = $superArgs[5];
	


	# bless $self, $class;
	return bless $self, $class;

}


sub setHistory{
        my ( $self, $history ) = @_;
        $self->{_history} = $history if defined($history);
        return $self->{_history};
}

sub getHistory{
        my ($self) = @_;
        return $self->{_history};
}

sub setBloodGrp{
        my ( $self, $bloodgrp ) = @_;
        $self->{_bloodgrp} = $bloodgrp if defined($bloodgrp);
        return $self->{_bloodgrp};
}

sub getBloodGrp{
        my ($self) = @_;
        return $self->{_bloodgrp};
}


1;
