use strict;
use warnings;
use JSON;
use Data::Dumper;

my $file = $ARGV[0] or die;

 my $jsonHandler;
my $jsonValue = do {
	open( $jsonHandler, '<:encoding(UTF-8)', $file) or die "File Not Found:(";
	
	local $/;
	<$jsonHandler>;
};

my $json = JSON->new;
# my $res = $json->decode($jsonValue);
my $res = decode_json($jsonValue);
#for(@{$res->{res}}){
	#print $_->{name}."\n";
	#}
	#foreach my $e (@$res) {
	#print $e;
	#}


	#print decode_json($res);

	#print "\n";
	#print "\n@$res\n";
#print $res;
print Dumper %$res;
