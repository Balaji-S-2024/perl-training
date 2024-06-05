package Doctor;
 
use strict;
use warnings;
 
use parent 'Person';

sub new {
 
  my $class = shift;
  my @superArgs = @_;
 
  my $self = $class->SUPER::new($superArgs[0], $superArgs[1], $superArgs[2], $superArgs[3]);
  $self->{_salary} = $superArgs[4];
  $self->{_department} = $superArgs[5];
  
  bless $self,$class;
 
      return $self;
 
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
