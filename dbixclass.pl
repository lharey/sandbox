#!/usr/bin/env perl

=head1 NAME

dbixclass.pl

=head1 DESCRIPTION

Experimenting with DBIx::Class

=cut

use 5.010;
use strict;
use warnings;

use lib "lib/";

use Encode qw/encode decode/;
use DDP;
use Lisa::Schema;


my $schema = Lisa::Schema->connect('dbi:mysql:dbname=lisa', 'root', 'password1');

p $schema;

my $select_all_orgs = $schema->resultset('Organisation');
my $total_org_rows = $select_all_orgs->count();

p $total_org_rows;

# inserting data
# create - instantiates new row object and inserts into database
my @chars = ("A".."Z", "a".."z");
my $string;
$string .= $chars[rand @chars] for 1..8;
my $org_count = $total_org_rows + 1;
my $neworg = $schema->resultset('Organisation')->create({
   name   => 'Test'.$org_count,
   api_key => $string
});
$org_count++;
p $neworg->in_storage();  ## 1 (TRUE)

# Or
# new - creates a local row object
# insert - inserts it
$neworg = $schema->resultset('Organisation')->new({
   name   => 'Test'.$org_count,
   api_key => $string
});
$org_count++;
p $neworg->in_storage();  ## 0 (FALSE)

$neworg->insert();
p $neworg->in_storage();  ## 1 (TRUE)


exit;
