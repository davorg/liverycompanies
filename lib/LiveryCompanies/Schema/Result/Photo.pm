use utf8;
package LiveryCompanies::Schema::Result::Photo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

LiveryCompanies::Schema::Result::Photo

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=item * L<DBIx::Class::TimeStamp>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime", "TimeStamp");

=head1 TABLE: C<photo>

=cut

__PACKAGE__->table("photo");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 livery_hall_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 filename

  data_type: 'text'
  is_nullable: 0

=head2 caption

  data_type: 'text'
  is_nullable: 1

=head2 created_at

  data_type: 'text'
  default_value: current_timestamp
  is_nullable: 0

=head2 updated_at

  data_type: 'text'
  default_value: current_timestamp
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "livery_hall_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "filename",
  { data_type => "text", is_nullable => 0 },
  "caption",
  { data_type => "text", is_nullable => 1 },
  "created_at",
  {
    data_type     => "text",
    default_value => \"current_timestamp",
    is_nullable   => 0,
  },
  "updated_at",
  {
    data_type     => "text",
    default_value => \"current_timestamp",
    is_nullable   => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<livery_hall_id_filename_unique>

=over 4

=item * L</livery_hall_id>

=item * L</filename>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "livery_hall_id_filename_unique",
  ["livery_hall_id", "filename"],
);

=head1 RELATIONS

=head2 livery_hall

Type: belongs_to

Related object: L<LiveryCompanies::Schema::Result::LiveryHall>

=cut

__PACKAGE__->belongs_to(
  "livery_hall",
  "LiveryCompanies::Schema::Result::LiveryHall",
  { id => "livery_hall_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07053 @ 2026-05-09 17:26:52
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:54UTV6OCsNQbFcypKMsrYA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
