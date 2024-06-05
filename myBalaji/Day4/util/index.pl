require '../models/Doctor.pl';

my $doctorObj = new Doctor(1, "balaji", "MBBS");
print $doctorObj->{id};
