require "administrate/base_dashboard"

class SubscriptionDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    student: Field::BelongsTo,
    season: Field::BelongsTo,
    amount: Field::Number.with_options(
      suffix: "€",
      decimals: 2,
    ),
    amount_paid: Field::Number.with_options(
      suffix: "€",
      decimals: 2,
    ),
    course: Field::HasMany,
    workshop: Field::HasMany,
    payment_state: Field::BelongsTo,
    information: Field::Text,
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
    student
    payment_state
    amount
    amount_paid
    season
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    student
    season
    course
    workshop
    payment_state
    amount
    amount_paid
    information
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    student
    season
    course
    workshop
    payment_state
    amount
    amount_paid
    information
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
  COLLECTION_FILTERS = {
    info: ->(resources) { resources.where(payment_state: 1)},
    registered: ->(resources) { resources.where(payment_state: [2, 3, 4])},
    unpaid: ->(resources) { resources.where(payment_state: 2)},
    to_reimburse: ->(resources) { resources.where(payment_state: 5)}
  }.freeze

  # Overwrite this method to customize how subscriptions are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(subscription)
    "Inscription de #{subscription.student.full_name}"
  end
end
