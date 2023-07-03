class Student < ApplicationRecord
  # A student can takes many classes and has their subscription paid by a payor
  belongs_to :payor
  
  validates :last_name, presence: true
  validates :first_name, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
