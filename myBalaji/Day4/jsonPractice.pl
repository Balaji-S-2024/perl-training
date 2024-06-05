use strict;
use Data::Dumper;

use Scalar::Util qw(reftype);
use JSON::MaybeXS qw(encode_json decode_json);
use JSON::MaybeXS;

# Hash is convted into JSON by providing string to the encode() function
my %athenaPremium = (
	disease => {
		level01 => ["Fever", "Cold"],
		level02 => ["Cardiac Attack", "Surgey"],
	},
	premium => 10000,
	noOfVisit => {
		level01 => 10,
		level02 => 20
	},
	coverdPersons => ["Giridhar", "Vishva", "Rohiht"],
	labsAllowed => ["lab1", "lab2", "lab3", "lab4"]
);

# my $jsonParser = JSON::MaybeXS->new(utf8 => 1, pretty => 1);
# my $convertedJson = $jsonParser->encode(\@athenaPremium);
my $convertedJson = encode_json \%athenaPremium;

print Dumper($convertedJson);

# print "\nTyep - ";
# print "\n";
# print reftype($convertedJson);

# my $convertedJson = $jsonParser->encode($athenaPremium);

# print Dumper $athenaPremium;

