use strict;
use DBI;
use DBD::mysql;

# Using Text::CSV file to allow
# full CSV Reader and Writer
use Text::CSV;
 
my $csv = Text::CSV->new({ sep_char => ',' });
 
my $file_to_be_read = $ARGV[0] or die;
 
# Reading the file
open(my $data_file, '<', $file_to_be_read) or die;
while (my $line = <$data_file>)
{
chomp $line;

# DATASOURCE;

my $hostname = "172.17.0.9";
my $port = "3306";
my $table = "policy";
my $user = "root";
my $pass = "password";
my $dbname = "athenaPMS";
my $platform = "mysql";

my $dsn = "dbi::mysql:$dbname:$hostname:$port";
my $DBIConnect = DBI->connect("dbi:mysql:$dbname:$hostname", $user,$pass);

my $query = "INSERT INTO policy (pfname, plname, aadhaarno) VALUES (?, ?, ?);";
my $sth = $DBIConnect->prepare($query);


# Parsing the line
if ($csv->parse($line))
{
 
        # Extracting elements
        my @words = $csv->fields();

	$sth->execute(@words[0], @words[1], @words[2]);use strict;
 
 print "\nData Stored in DB";
}
else
{
        # Warning to be displayed
        warn "Line could not be parsed: $line\n";
}
}


