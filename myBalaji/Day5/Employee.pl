package Employee;
 
use strict;
use warnings;
 

sub BEGIN{
	print "\nThey are saying this is Constructor\n";
}


sub new {
  my $class = shift;
   my $self = {
        _id=>shift,
        _name=>shift,
        _department=>shift,
        _salary=>shift,
      };


      
      
      bless $self,$class;
      return $self;
}

sub getId {
	my($self) = @_;
	return $self->{_id};
}

sub setId {
	my($self, $id) = @_;
	$self->{_id} = $id if defined($id);
	return $self->{_id};
}	


sub getName {
        my($self) = @_;
        return $self->{_name};
}

sub setName {
        my($self, $name) = @_;
        $self->{_name} = $name if defined($name);
        return $self->{_name};
}




sub getDepartment {
        my($self) = @_;
        return $self->{_department};
}

sub setDepartment {
        my($self, $department) = @_;
        $self->{_department} = $department if defined($department);
        return $self->{_department};
}



sub getSalary {
        my($self) = @_;
        return $self->{_salary};
}

sub setSalary {
        my($self, $salary) = @_;
        $self->{_salary} = $salary if defined($salary);
        return $self->{_salary};
}



sub END {
	print "\nThis id END I think so\n";
}





1;
# our $obj=new Employee(1,'Balaji','MCA','20000');
# print "$obj->{'name'}\n";
