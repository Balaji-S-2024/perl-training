# use Scalar::util qw(reftype)
use DateTime;
use DateTime::Format::Duration;
use Data::Dumper;
# print "Perl training!";
# 
#
#
#=head
#print "HEAD"
#=cut


print "\nCom\n";
# $var = <>;
# print "$var";
printf "%s", $var;


$fname = "Balaji";
$lname = "Sankar";
$salary = 90_0000;
printf "\nfname = %s lname = %s salary = %d\n", $fname, $lname, $salary;

# chomp($name1=<STDIN>);
# chomp($name2=<STDIN>);
# chomp($sal=<STDIN>);
# $sala = int($sal));
# print "\n".$name1."\n";
# print "\n".$name2."\n";
# print "\n".$sala."\n";


$d = localtime();
printf "%s\n", $d;
print `ls`; 

$currentDateTime = DateTime->now;
print "\nCurr date %s", $currentDateTime;

print "\nEnter DOB";

print "\nEnter year:";
chomp($year = int(<STDIN>));

print "\nEnter Month:";
chomp($month = int(<STDIN>));

print "\nEnter Day:";
chomp($day = int(<STDIN>));

$dob = DateTime->new(
	day => $day,
	month => $month,
	year => $year
);

print "\nDOB = $dob";

print "Duration Calc";
my $duration = $currentDateTime - $dob;
print "\n duration - ";
print Dumper %$duration;
print "\n";
my $dfd = DateTime::Format::Duration->new(
	pattern => '%Y years, %m months, %e days, %H hours, %M minutes, %S seconds', 
	normalise => 1
);

my $currAge = DateTime::Format::Duration->new(
	pettern => '%Y years',
	normalise => 1
);

print "\nCurrGe\n";
print $currAge->format_duration($dob);
# print int($curAge) + 10000;


my $age = $dfd->format_duration($duration);
print "\nAGE\n";
print "\n$age\n";

print "\n-----------\n";
print "$dfd->{years}";






