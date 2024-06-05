package Employee;
 
use strict;
use warnings;
 
sub new {
  our $class = shift;
   our $self = {
        'id'=>shift,
        'name'=>shift,
        'department'=>shift,
        'salary'=>shift,
      };
return bless $self,$class;
}
1;
our $obj=new Employee(1,'Balaji','MCA','20000');
print "$obj->{'name'}\n";
