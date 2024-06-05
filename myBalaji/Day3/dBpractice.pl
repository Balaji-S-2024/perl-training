use DBI;
use DBD::mysql;

# HTTP HEADER
print "Content-type: text/html \n\n";

 # CONFIG VARIABLES
 $platform = "mysql";
 $database = "athenaPMS";
 $host = "172.17.0.9";
 $port = "3306";
 $tablename = "patient";
 $user = "root";
 $pw = "password";
 my $dsn = "DBI:mysql:dbname=$database;host=$host;port=$port";
 #DATA SOURCE NAME
 #my $dsn = "dbi:Pg:$database:$host:$port";

 # PERL DBI CONNECT
 #$DBIconnect = DBI->connect($dsn, $user, $pw);
 #$DBIConnect=DBI->connect("dbi:Pg:dbname=$database;host=$host;port=$port", $user, $password);
 my $DBIConnect = DBI->connect($dsn, $user, $pw, { RaiseError => 1 })
    or die $DBI::errstr;

 print "Opened database successfully\n";

 print "DB Connected...";

my  $sth = $DBIConnect->prepare("select * from patient");
 $sth->execute();

 my $query = "INSERT INTO patient (pfname, plame, dob, history, bloodgrp) VALUES ('Vishwa', 'Bhai', '2024-06-02', '', 'B+');";
 $sth = $DBIConnect->prepare($query);
 $sth->execute();

 $sth = $DBIConnect->prepare("SELECT * FROM patient;");
 $sth->execute();

 while ( @row = $sth->fetchrow_array )
 {
	 print "\n";
         print "@row\n";
	 print "\n";
 }
 sleep(1);
