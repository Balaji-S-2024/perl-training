use strict;
# use Employee;
require './Employee.pl';

my $employeeObj1 = new Employee(1, "Balaji", "MCA", 70000);
my $employeeObj2 = new Employee(2, "Giridhar", "MCA", 100000);
print "\n".$employeeObj1->getName()."\n";

$employeeObj1->setName("Changeing Name...");

print "\n".$employeeObj1->getName()."\n";


print "\n".$employeeObj1->getDepartment()."\n";

$employeeObj1->setDepartment("Changeing Department...");

print "\n".$employeeObj1->getDepartment()."\n";


print "\n".$employeeObj1->getSalary()."\n";

$employeeObj1->setSalary(999999);

print "\n".$employeeObj1->getSalary()."\n";


print "\n".$employeeObj1->getId()."\n";

$employeeObj1->setId(10);

print "\n".$employeeObj1->getId()."\n";

print"================================================";
print "\n".$employeeObj1->setName("Calling SETTER for NAME");

# print $employeeObj2->{name};
