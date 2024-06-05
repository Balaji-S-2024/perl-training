#Error Handling;
#
#
#
#
use strict;
use warnings;
use JSON;
use Error ':try';
my $file = $ARGV[0] or die;

# my $jsonHandler;
#
#
#
#

try{


my $jsonValue = do {
	open(my $jsonHandler, '<:encoding(UTF-8)', $file) or die "File Not Found:(";
	
	local $/;
	<$jsonHandler>;
};

my $json = JSON->new;
my $res = $json->decode($jsonValue);

#for(@{$res->{res}}){
	#print $_->{name}."\n";
	#}
	#foreach my $e (@$res) {
	#print $e;
	#}


print decode_json(`"`.$res.`"`);
}

catch Error::Simple with{

	print shift;
	print "\nIn Catch Block\n";
}
#print $res;

