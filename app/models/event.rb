class Event < ApplicationRecord
  validates :name, presence: true
  validates :content, presence: true
  validates :start_date, presence: true
  validates :city, presence: true
  
  validates_comparison_of :end_date, greater_than_or_equal_to: :start_date

  has_many :posts
end
