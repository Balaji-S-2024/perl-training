package Doctor;
 
use strict;
use warnings;
 
sub new {
 
  my $class = shift;
 
   my $self = {
 
        _id =>shift,
 
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
 
        $self->{_id};
 
}
 
 
sub getName {
 
        my($self) = @_;
 
        return $self->{_name};
 
}
sub setName {
 
        my($self, $name) = @_;
 
        $self->{_name} = $name if defined($name);
 
        $self->{_name};
 
}
 
 
sub getDepartment {
 
        my($self) = @_;
 
        return $self->{_department};
 
}
 
sub setDepartment {
 
        my($self, $department) = @_;
 
        $self->{_department} = $department if defined($department);
 
        $self->{_department};
 
}
sub getSalary {
 
        my($self) = @_;
 
        return $self->{_salary};
 
}
 
sub setSalary {
 
        my($self, $salary) = @_;
 
        $self->{_salary} = $salary if defined($salary);
 
       $self->{_salary};
 
}
 
1;
