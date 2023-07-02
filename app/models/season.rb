class Season < ApplicationRecord
  # A season describes one school term
  has_many :subscription
  has_and_belongs_to_many :instrument_class
  has_and_belongs_to_many :workshop
  belongs_to :plan

  validates :start_year, presence: true

  def name
    "#{start_year}-#{start_year + 1}"
  end
end
