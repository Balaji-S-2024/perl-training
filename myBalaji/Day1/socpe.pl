use strict;
use DateTime;
use DateTime::Format::Duration;

# vars: Vriables must be Pre Declared and use;
# refs: 
#
#
#
my $fname = "Vishwa";
my $lname = "Bhai";
my $salary = 90_000_000;
my $curr_time = DateTime->now;

my $yr = 100;;
my $mn;
my $dy;

print "\n$fname $lname $salary $curr_time\n";

# Symbolic Reference

my $a = 10;
my $x = \$a;
$$x = 20;
print "\n$$x";
print "\n$a";

my $str = sprintf "\n%p     %8.2", $x, 12345678;
print "\n$str";

$curr_time->set_time_zone('Asia/Kolkata');

print "\n$curr_time";


# defined or undefined
# undef -> releses the memory that holds 

undef $curr_time;
print "OK\n"; 
if( defined $yr ){
print "Defined\n";
}else{
	print "Not Defined";
}


print "\n0-1 => ";
print int(rand(2));
print "\n".rand(10..2000);


print "\n";

