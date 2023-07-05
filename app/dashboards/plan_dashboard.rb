require "administrate/base_dashboard"

class PlanDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    awakening_price: Field::String.with_options(searchable: false),
    class_price: Field::String.with_options(searchable: false),
    discovery_price: Field::String.with_options(searchable: false),
    kids_discovery_price: Field::String.with_options(searchable: false),
    name: Field::String,
    obc_markup: Field::String.with_options(searchable: false),
    outbounds_markup: Field::String.with_options(searchable: false),
    workshop_price: Field::String.with_options(searchable: false),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    name
    awakening_price
    class_price
    discovery_price
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    name
    class_price
    workshop_price
    awakening_price
    kids_discovery_price
    discovery_price
    obc_markup
    outbounds_markup
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    name
    class_price
    workshop_price
    awakening_price
    kids_discovery_price
    discovery_price
    obc_markup
    outbounds_markup
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

  # Overwrite this method to customize how plans are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(plan)
    plan.name
  end
end
