use strict;
use warnings;

use DateTime;

require '../models/Doctor.pl';
require '../models/Patient.pl';
require '../models/Appointment.pl';
 
my $obj = new Doctor(22,'Balaji','MBBS', 70000);
 
my $obj2 = new Patient(33,'Balaji','18-05-2002', 8870245458,'Nothing', 'B+ve');
 
print $obj->getId()."\n";
print $obj->getName()."\n";
print $obj->getDepartment()."\n";
#print $obj->getSalary()."\n";
 
#updating a salary in doctor
 
$obj -> setSalary(50000);
 
print $obj->getSalary(). "\n";
 
print"\n";
#create a Patient Object
 
print $obj2->getId()."\n";
 
print $obj2->getName()."\n";
 
print $obj2->getDob()."\n";
 
print $obj2->getCno()."\n";
 
print $obj2->getHistory()."\n";
 
print $obj2->getBloodGrp()."\n";
 
#create a Appointment object
my $obj3 = Appointment->new;
$obj3->setId(int(rand(1000)));
print $obj3->getId()."\n";


my $date = DateTime->new(
	year => 2024,
	month => 6,
	day => 5,
	hour => 12,
	minute => 0,
	second => 0,
	nanosecond => 0,
	time_zone => 'Asia/Kolkata',
);


# $obj3->setDate($date->{year}, $date->{month}, $date->{day});
# $obj3->setTime($date->{hour}, $date->{minute}, $date->{second};
