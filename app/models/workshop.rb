class Workshop < ApplicationRecord
  # A workshop is a specific class where students can play as a group
  belongs_to :teacher
  has_many :subscription
  has_and_belongs_to_many :season
  has_and_belongs_to_many :subscription

  validates :name, presence: true
  validates :teacher_id, presence: true
end
