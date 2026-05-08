use utf8;
package LiveryCompanies::Schema::Result::LiveryHall;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

LiveryCompanies::Schema::Result::LiveryHall

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

=head1 TABLE: C<livery_hall>

=cut

__PACKAGE__->table("livery_hall");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 hall_name

  data_type: 'text'
  is_nullable: 0

=head2 company_name

  data_type: 'text'
  is_nullable: 0

=head2 slug

  data_type: 'text'
  is_nullable: 0

=head2 longitude

  data_type: 'real'
  is_nullable: 0

=head2 latitude

  data_type: 'real'
  is_nullable: 0

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
  "hall_name",
  { data_type => "text", is_nullable => 0 },
  "company_name",
  { data_type => "text", is_nullable => 0 },
  "slug",
  { data_type => "text", is_nullable => 0 },
  "longitude",
  { data_type => "real", is_nullable => 0 },
  "latitude",
  { data_type => "real", is_nullable => 0 },
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

=head2 C<slug_unique>

=over 4

=item * L</slug>

=back

=cut

__PACKAGE__->add_unique_constraint("slug_unique", ["slug"]);


# Created by DBIx::Class::Schema::Loader v0.07053 @ 2026-05-08 16:55:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:JhvkUYJBqedonNXmYobHhg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
