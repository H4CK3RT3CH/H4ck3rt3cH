#!/usr/bin/perl
use strict;
use warnings;
use FindBin '$Bin';
use Term::ReadKey;
## Copy@right Alisam Technology see License.txt

## LOGIN
our ($password, @AUTH, @c);

my $passwd;
sub questionlog {
  print $c[4]."[!] $AUTH[0] ";
  ReadMode 2;
  chomp($passwd=ReadLine(0));
  ReadMode 0;
  return $passwd;
}

$passwd=questionlog();
$passwd=Digest::MD5->md5_hex($passwd);
if ($password ne $passwd) { print $c[2]."\n[i] $AUTH[1]\n"; $passwd=questionlog(); }
print "$c[3] Logged in!\n"; mtak(); ptak();

1;
