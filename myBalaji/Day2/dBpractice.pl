use DBI;
use DBD::mysql;

# HTTP HEADER
print "Content-type: text/html \n\n";

 # CONFIG VARIABLES
 $platform = "mysql";
 $database = "athenaPMS";
 $host = "172.17.0.2";
 $port = "3306";
 $tablename = "patient";
 $user = "root";
 $pw = "password";
 my $dsn = "DBI:mysql:dbname = $database;host = $host;port =$port";
 #DATA SOURCE NAME
 #my $dsn = "dbi:Pg:$database:$host:$port";

 # PERL DBI CONNECT
 #$DBIconnect = DBI->connect($dsn, $user, $pw);
 #$DBIConnect=DBI->connect("dbi:Pg:dbname=$database;host=$host;port=$port", $user, $password);
 my $DBIConnect = DBI->connect($dsn, $user, $pw, { RaiseError => 1 })
    or die $DBI::errstr;

 print "Opened database successfully\n";

 print "DB Connected...";

 $sth = $DBIConnect->prepare("select * from patient");
 $sth->execute();
 while ( @row = $sth->fetchrow_array )
 {
         print "@row\n";
 }
 sleep(10);
