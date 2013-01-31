use utf8;
package Lisa::Schema::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Lisa::Schema::Result::User

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<user>

=cut

__PACKAGE__->table("user");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_nullable: 1

=head2 org

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_nullable => 1 },
  "org",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "email",
  { data_type => "varchar", is_nullable => 1, size => 100 },
);


# Created by DBIx::Class::Schema::Loader v0.07033 @ 2013-01-31 14:51:08
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:kx+ZgbjKLQ/lDozRtywyig


# You can replace this text with custom code or comments, and it will be preserved on regeneration

#__PACKAGE__->belongs_to('name', 'Lisa::Schema::Result::Organisation', 'org'); #need primary keys on database
1;
