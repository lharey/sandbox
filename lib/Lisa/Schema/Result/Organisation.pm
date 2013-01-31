use utf8;
package Lisa::Schema::Result::Organisation;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Lisa::Schema::Result::Organisation

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<organisation>

=cut

__PACKAGE__->table("organisation");

=head1 ACCESSORS

=head2 api_key

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "api_key",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);


# Created by DBIx::Class::Schema::Loader v0.07033 @ 2013-01-31 14:51:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:TekExilOJnawklMsOtbCrQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
