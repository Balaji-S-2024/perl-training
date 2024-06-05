use strict;
use warnings;

use Data::Dumper;

require '../models/Patient.pl';

my $pObj1 = new Patient(1, "Balaji", "02-02-2002", 6381308742, "Fever", "B+ve");

my $pObj2 = Patient->new;

# print Dumper \$pObj1;

print "\n".$pObj1->getId()."\n";
$pObj1->setId(100);

print "\n".$pObj1->getName()."\n";
$pObj1->setName("Changed Name");

print "\n".$pObj1->getDob()."\n";
$pObj1->setDob("18-05-2002");

print "\n".$pObj1->getCno()."\n";
$pObj1->setCno(9047481185);

print "\n".$pObj1->getHistory()."\n";
$pObj1->setHistory("Nothing...");

print "\n".$pObj1->getBloodGrp()."\n";
$pObj1->setBloodGrp("AB-ve");

print "\n=====AFTER CHANGING=====";
print "\n".$pObj1->getId()."\n";
print "\n".$pObj1->getBloodGrp()."\n";
print "\n".$pObj1->getName()."\n";
print "\n".$pObj1->getHistory()."\n";
print "\n".$pObj1->getCno()."\n";
print "\n".$pObj1->getDob()."\n";
