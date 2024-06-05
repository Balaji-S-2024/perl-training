use strict;
use Employee;

my $employeeObj1 = new Employee(1, "Balaji", "MCA", 70000);
my $employeeObj2 = new Employee(2, "Giridhar", "MCA", 100000);
print $employeeObj1->{name};
print $employeeObj2->{name};
