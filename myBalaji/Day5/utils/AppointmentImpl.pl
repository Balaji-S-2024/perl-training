use strict; 
use warnings;

require '../models/Appointment.pl';

my $aObj1 = Appointment->new;

print "\n".$aObj1->setId(1000);
print "\n".$aObj1->getId()."\n";

my $obj = Appointment->new({
	id => 1001,
	date => '02-06-2024',
	time => '12:00:00'
});

print "\n";
print "ISA\n";
print $obj->isa('Appointment');
print "\n";
print $obj->can('getDate') ."\n";
#print $obj->getId();

