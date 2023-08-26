class Season < ApplicationRecord
  # A season describes one school term
  has_many :subscriptions
  has_and_belongs_to_many :courses
  has_and_belongs_to_many :workshops
  has_many :projects, through: :project_instances
  belongs_to :plan

  validates :start_year, presence: true

  def name
    "#{start_year}-#{start_year + 1}"
  end
end
