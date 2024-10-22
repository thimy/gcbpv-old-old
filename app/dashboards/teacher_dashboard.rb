require "administrate/base_dashboard"

class TeacherDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    description: Field::SimpleMarkdown.with_options({
      safe_links_only: true,
      filter_html: true,
      with_toc_data: true,
      hard_wrap: true,
      link_attributes: { rel: 'follow' },
      autolink: true,
      tables: true,
      no_intra_emphasis: true,
      strikethrough: true,
      highlight: true,
      space_after_headers: true,
      easymde_options: {
        spell_checker: false,
        hide_icons: %w[guide heading]
      }
    }),
    courses: Field::HasMany,
    instruments: Field::HasMany,
    name: Field::String,
    picture: Field::Image,
    slots: Field::NestedHasMany.with_options(skip: :teacher),
    email: Field::String,
    status: Field::Select.with_options(collection: Teacher::TEACHER_STATUSES),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    id
    name
    email
    status
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    name
    description
    instruments
    picture
    email
    status
    slots
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    name
    description
    instruments
    picture
    email
    status
    slots
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how teachers are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(teacher)
    teacher.name
  end
end
